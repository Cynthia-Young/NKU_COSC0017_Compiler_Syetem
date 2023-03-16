%code top{
    #include <iostream>
    #include <assert.h>
    #include "parser.h"
    extern Ast ast;
    int yylex();
    int yyerror( char const * );
    Type* curType;
}

%code requires {
    #include "Ast.h"
    #include "SymbolTable.h"
    #include "Type.h"
}

%union {
    int itype;
    double ftype;
    char* strtype;
    StmtNode* stmttype;
    ExprNode* exprtype;
    Type* type;
}

%start Program

%token <strtype> ID 
%token <itype> INTEGER
%token <ftype> FLOATING
%token CONST
%token INT VOID FLOAT
%token SEMICOLON
%token RETURN 
%token IF ELSE WHILE
%token BREAK CONTINUE
%token COMMA 
%token ASSIGN
%token OR
%token AND
%token EQUAL UNEQUAL
%token LESS GREATER GREATERorEQUAL LESSorEQUAL
%token ADD SUB
%token MULTI DIVIDE MOD 
%token NOT
%token LPAREN RPAREN LBRACE RBRACE LSQUAREBRACKET RSQUAREBRACKET



%nterm <stmttype> Stmts Stmt BlockStmt IfStmt ReturnStmt DeclStmt FuncDef WhileStmt  EmptyStmt BreakStmt ContinueStmt AssignStmt ExpStmt
%nterm <stmttype> Array var_idlist const_idlist const_id_decl constArray conArrayValue conValueList var_id_decl  varArray varValueList FuncParams FuncParam varArrayValue func_argu const_novalue novalconst
%nterm <exprtype> expr Exp Cond logical_or logical_and equal_expr rela_expr add_minus mult_div_mod one_expr bas_expr left_expr varExp constExp 
%nterm <type> Type

%precedence THEN
%precedence ELSE
%%
Program
    : Stmts {
        ast.setRoot($1);
    }
    ;

Stmts
    : Stmt {$$=$1;}
    | Stmts Stmt {$$ = new SeqNode($1, $2);}
    ;

// 语句
Stmt
    : AssignStmt {$$=$1;}
    | ExpStmt SEMICOLON{$$=$1;}
    | BlockStmt {$$=$1;}
    | IfStmt {$$=$1;}
    | ReturnStmt {$$=$1;}
    | DeclStmt {$$=$1;}
    | FuncDef {$$=$1;}
    | WhileStmt {$$=$1;}
    | EmptyStmt {$$ = $1; }
    | BreakStmt {$$ = $1;}
    | ContinueStmt {$$ = $1;}
    ;

EmptyStmt
    :
    SEMICOLON
    {
        $$ = new EmptyStmt();
    }
    ;

BlockStmt
    :   
    LBRACE  {identifiers = new SymbolTable(identifiers);} 
    Stmts RBRACE 
    {
        $$ = new CompoundStmt($3);
        SymbolTable *top = identifiers;
        identifiers = identifiers->getPrev();
        delete top;
    }
    |
    LBRACE RBRACE
    {
        $$ = new CompoundStmt(nullptr);
    }
    ;

IfStmt
    : IF LPAREN Cond RPAREN Stmt %prec THEN 
    {
        $$ = new IfStmt($3, $5);
    }
    | IF LPAREN Cond RPAREN Stmt ELSE Stmt 
    {
        $$ = new IfElseStmt($3, $5, $7);
    }
    ;

WhileStmt
    :
    WHILE LPAREN Cond RPAREN Stmt
    {
        $$ = new WhileStmt($3, $5);
    }
    ;

Cond
    :
    logical_or {$$ = $1;}
    ;


BreakStmt
    :   
    BREAK SEMICOLON 
    {
        $$ = new BreakStmt();
    }
    ;

ContinueStmt
    :   
    CONTINUE SEMICOLON
    {
        $$ = new ContinueStmt();
    }
    ;

ReturnStmt
    :
    RETURN expr SEMICOLON
    {
        $$ = new ReturnStmt($2);
    }
    |
    RETURN SEMICOLON
    {
        $$ = new ReturnStmt(nullptr);
    }
    ;
ExpStmt
    :   ExpStmt COMMA Exp {
            ExprStmtNode* node = (ExprStmtNode*)$1;
            node->addNext($3);
            $$ = node;
        }
    |   Exp {
            ExprStmtNode* node = new ExprStmtNode();
            node->addNext($1);
            $$ = node;
        }
    ;
//表达式语句
//左值=左值的（与运算 或运算 相等运算 不等运算 大于 小于 大于等于 小于等于 加减 乘除 单目 带括号） 可以连等
//左值的（与运算 或运算 相等运算 不等运算 大于 小于 大于等于 小于等于 加减 乘除 单目 带括号）
AssignStmt
    : left_expr ASSIGN expr SEMICOLON 
    {
        $$ = new AssignStmt($1, $3);
    }
    ;

// 左值表达式
left_expr
    : ID 
    {
        SymbolEntry *se;
        se = identifiers->lookup($1);
        if(se == nullptr)
        {
            fprintf(stderr, "identifier \"%s\" is undefined\n", (char*)$1);
            delete [](char*)$1;
            assert(se != nullptr);
        }
        $$ = new Id(se);
        delete []$1;
    }
    | 
    ID Array
    {
        SymbolEntry *se;
        se = identifiers->lookup($1);
        if(se == nullptr)
        {
            fprintf(stderr, "identifier \"%s\" is undefined\n", (char*)$1);
            delete [](char*)$1;
            assert(se != nullptr);
        }
        Id* curId = new Id(se);
        curId -> AddDimension((ExprStmtNode*)$2);
        $$ = curId ;
        delete []$1;
    }
    ;

Array
    :
    Array LSQUAREBRACKET Exp RSQUAREBRACKET
    {
        ExprStmtNode* node = (ExprStmtNode*)$1;
        node->addNext($3);
        $$ = node;
    }
    |
    LSQUAREBRACKET Exp RSQUAREBRACKET
    {
        ExprStmtNode* node = new ExprStmtNode();
        node->addNext($2);
        $$ = node;        
    }

// 赋值表达式 左值=左值的（与运算 或运算 相等运算 不等运算 大于 小于 大于等于 小于等于 加减 乘除 单目 带括号） 可以连等


//int 或 float型
Exp 
    :
    add_minus
    {
        $$ = $1;
    }
    ;

// 与运算 或运算 相等运算 不等运算 大于 小于 大于等于 小于等于 加减 乘除 单目 带括号
logical_or
    :
    logical_and {$$ = $1;}
    |
    logical_or OR logical_and
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::OR, $1, $3);
    }
    ;

// 与运算 相等运算 不等运算 大于 小于 大于等于 小于等于 加减 乘除 单目 带括号
logical_and
    : equal_expr 
    {
        $$ = $1;
    }
    | 
    logical_and AND equal_expr
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::AND, $1, $3);
    }
    ;

// 相等运算 不等运算 大于 小于 大于等于 小于等于 加减 乘除 单目 带括号
equal_expr
    : rela_expr 
    {
        $$ = $1;
    }
    | equal_expr EQUAL rela_expr
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::EQUAL, $1, $3);
    }
    | 
    equal_expr UNEQUAL rela_expr 
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::UNEQUAL, $1, $3);
    }
    ;
//大于 小于 大于等于 小于等于 加减 乘除 单目 带括号
rela_expr
    : 
    add_minus 
    {
        $$ = $1;
    }
    | 
    rela_expr LESS add_minus
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::LESS, $1, $3);
    }
    | 
    rela_expr GREATER add_minus
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::GREATER, $1, $3);
    }
    | 
    rela_expr LESSorEQUAL add_minus
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::LESSorEQUAL, $1, $3);
    }
    | 
    rela_expr GREATERorEQUAL add_minus
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::GREATERorEQUAL, $1, $3);
    }
    ;

//加减 乘除 单目 带括号
add_minus
    : mult_div_mod 
    {
        $$ = $1;
    }
    | 
    add_minus ADD mult_div_mod 
    {
        SymbolEntry *se;
        if ($1->getType()->isInt() && $3->getType()->isInt())
        {
            se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        }
        else
        {
            se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());            
        }
        $$ = new BinaryExpr(se, BinaryExpr::ADD, $1, $3);
    }
    | 
    add_minus SUB mult_div_mod 
    {
        SymbolEntry *se;
        if ($1->getType()->isInt() && $3->getType()->isInt())
        {
            se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        }
        else
        {
            se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());            
        }
        $$ = new BinaryExpr(se, BinaryExpr::SUB, $1, $3);
    }
    ;
//乘除 单目 带括号
mult_div_mod
    : 
    one_expr 
    {
        $$ = $1;
    }
    |  
    mult_div_mod MULTI one_expr 
    {
        SymbolEntry *se;
        if ($1->getType()->isInt() && $3->getType()->isInt())
        {
            se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        }
        else
        {
            se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());            
        }
        $$ = new BinaryExpr(se, BinaryExpr::MULTI, $1, $3);
    }
    | 
    mult_div_mod DIVIDE one_expr 
    {
        SymbolEntry *se;
        if ($1->getType()->isInt() && $3->getType()->isInt())
        {
            se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        }
        else
        {
            se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());            
        }
        $$ = new BinaryExpr(se, BinaryExpr::DIVIDE, $1, $3);
    }
    | 
    mult_div_mod MOD one_expr 
    {
        SymbolEntry *se;
        if ($1->getType()->isInt() && $3->getType()->isInt())
        {
            se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        }
        else
        {
            se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());            
        }
        $$ = new BinaryExpr(se, BinaryExpr::MOD, $1, $3);
    }
    ;
//单目 带括号
one_expr
    : 
    bas_expr 
    {
        $$ = $1;
    }
    | 
    ID LPAREN func_argu RPAREN 
    {
        SymbolEntry *se;
            se = identifiers->lookup($1);
            if(se == nullptr)
            {
                fprintf(stderr, "identifier \"%s\" is undefined\n", (char*)$1);
                delete [](char*)$1;
                assert(se != nullptr);
            }
            SymbolEntry *tmp = new TemporarySymbolEntry(se->getType(), SymbolTable::getLabel());
            $$ = new FuncCallNode(tmp, new Id(se), (FuncCallParamsNode*)$3);
    }
    | 
    ADD one_expr 
    {
        $$ = $2;
    }
    | 
    SUB one_expr 
    {
        SymbolEntry *se = new TemporarySymbolEntry($2->getType(), SymbolTable::getLabel());
        $$ = new SingleExpr(se, SingleExpr::SUB, $2);
    }
    | 
    NOT one_expr 
    {
        SymbolEntry *se = new TemporarySymbolEntry($2->getType(), SymbolTable::getLabel());
        $$ = new SingleExpr(se, SingleExpr::NOT, $2);
    } 

    ;

//带括号 原始表达式
bas_expr
    : 
    LPAREN expr RPAREN 
    {
        $$ = $2;
    }
    | 
    left_expr 
    {
        $$ = $1;
    }
    | 
    INTEGER 
    {
        SymbolEntry *se = new ConstantSymbolEntry(TypeSystem::intType, $1);
        $$ = new Constant(se);
    }
    | 
    FLOATING
    {
        SymbolEntry *se = new ConstantSymbolEntry(TypeSystem::floatType, $1);
        $$ = new Constant(se);        
    }
    ;

func_argu
    :   
    func_argu COMMA Exp 
    {
        FuncCallParamsNode* node = (FuncCallParamsNode*) $1;
        node->addNext($3);
        $$ = node;
    }
    |
    Exp 
    {
        FuncCallParamsNode* node = new FuncCallParamsNode();
        node->addNext($1);
        $$ = node;    
    }
    |   
    %empty 
    {
        $$ = nullptr;
    }
    ;


DeclStmt
    :
    Type var_idlist SEMICOLON 
    {
        $$ = $2;
    }
    |
    CONST Type const_idlist SEMICOLON
    {
        $$ = $3;
    }
    |
    CONST Type const_novalue SEMICOLON
    {
        $$ = $3;
    }    
    ;
const_novalue
    :
    novalconst{
        DeclStmt* node = new DeclStmt(false);
        node->addNext((DefNode*)$1);
        $$ = node;           
    }
    |
    const_novalue COMMA novalconst
    {
        DeclStmt* node = (DeclStmt*) $1;
        node->addNext((DefNode*)$3);
        $$ = node; 
    }

novalconst
    :
    ID
    {
        Type* type;
        if(curType->isInt()){
            type = TypeSystem::constIntType;
        }
        else{
            type = TypeSystem::constFloatType;
        }
        SymbolEntry *se;
        se = new IdentifierSymbolEntry(type, $1, identifiers->getLevel());
        identifiers->install($1, se);
        $$ = new DefNode(new Id(se), nullptr, true, false);//类型向上转换  
    }
    |
    ID constArray
    {
        Type* type;
        if(curType->isInt())
        {
            type = new ConstArrIntType();
        }
        else
        {
            type = new ConstArrFloatType();
        }   
        SymbolEntry *se;
        se = new IdentifierSymbolEntry(type, $1, identifiers->getLevel());
        identifiers->install($1, se);
        Id* curId = new Id(se);
        curId -> AddDimension((ExprStmtNode*)$2);
        $$ = new DefNode(curId, nullptr, true, true);   
    }
    ;

const_idlist
    :
    const_id_decl
    {
        DeclStmt* node = new DeclStmt(false);
        node->addNext((DefNode*)$1);
        $$ = node;        
    }
    |
    const_idlist COMMA const_id_decl
    {
        DeclStmt* node = (DeclStmt*) $1;
        node->addNext((DefNode*)$3);
        $$ = node;        
    }
    ;

const_id_decl
    :
    ID ASSIGN constExp
    {
        Type* type;
        if(curType->isInt()){
            type = TypeSystem::constIntType;
        }
        else{
            type = TypeSystem::constFloatType;
        }
        SymbolEntry *se;
        se = new IdentifierSymbolEntry(type, $1, identifiers->getLevel());
        identifiers->install($1, se);
        $$ = new DefNode(new Id(se), (Node*)$3, true, false);//类型向上转换        
    }
    |
    ID constArray ASSIGN conArrayValue
    {
        Type* type;
        if(curType->isInt())
        {
            type = new ConstArrIntType();
        }
        else
        {
            type = new ConstArrFloatType();
        }   
        SymbolEntry *se;
        se = new IdentifierSymbolEntry(type, $1, identifiers->getLevel());
        identifiers->install($1, se);
        Id* curId = new Id(se);
        curId -> AddDimension((ExprStmtNode*)$2);
        $$ = new DefNode(curId, (Node*)$4, true, true);   
    }
    ;

conArrayValue
    :
    constExp
    {
        DeclValNode* node = new DeclValNode(true);
        node->setLeafNode((ExprNode*)$1);
        $$ = node;        
    }
    |
    LBRACE conValueList RBRACE
    {
         $$ = $2;
    }
    |
    LBRACE RBRACE
    {
        $$ = new DeclValNode(true);
    }
    ;

conValueList
    :
    conValueList COMMA conArrayValue
    {
        DeclValNode* node = (DeclValNode*)$1;
        node->addNext((DeclValNode*)$3);
        $$ = node;        
    }
    |
    conArrayValue
    {
        DeclValNode* node = new DeclValNode(true);
        node->addNext((DeclValNode*)$1);
        $$ = node;
    }
    ;


var_idlist
    :
    var_id_decl
    {
            DeclStmt* node = new DeclStmt(false);
            node->addNext((DefNode*)$1);
            $$ = node;
    }
    |
    var_idlist COMMA var_id_decl
    {
            DeclStmt* node = (DeclStmt*) $1;
            node->addNext((DefNode*)$3);
            $$ = node;
    }
    ;


var_id_decl
    :  
    ID 
    {
        // 首先将ID插入符号表中
        Type* type;
        if(curType->isInt()){
            type = TypeSystem::intType;
        }
        else{
            type = TypeSystem::floatType;
        }
        SymbolEntry *se;
        se = new IdentifierSymbolEntry(type, $1, identifiers->getLevel());
        identifiers->install($1, se);
        $$ = new DefNode(new Id(se), nullptr, false, false);
    }
    |   
    ID ASSIGN varExp 
    {
        // 首先将ID插入符号表中
        Type* type;
        if(curType->isInt()){
            type = TypeSystem::intType;
        }
        else{
            type = TypeSystem::floatType;
        }
        SymbolEntry *se;
        se = new IdentifierSymbolEntry(type, $1, identifiers->getLevel());
        identifiers->install($1, se);
        $$ = new DefNode(new Id(se), (Node*)$3, false, false);
    }
    |
    ID varArray
    {
        Type* type;
        if(curType->isInt()){
            type = new ArrIntType();
        }
        else{
            type = new ArrFloatType();
        }   
        SymbolEntry* se;
        se = new IdentifierSymbolEntry(type, $1, identifiers->getLevel());
        identifiers->install($1, se);
        Id* curId = new Id(se);
        curId -> AddDimension((ExprStmtNode*)$2);
        $$ = new DefNode(curId, nullptr, false, true);    
    }
    |
    ID varArray ASSIGN varArrayValue
    {
        Type* type;
        if(curType->isInt())
        {
            type = new ArrIntType();
        }
        else
        {
            type = new ArrFloatType();
        }   
        SymbolEntry *se;
        se = new IdentifierSymbolEntry(type, $1, identifiers->getLevel());
        identifiers->install($1, se);
        Id* curId = new Id(se);
        curId -> AddDimension((ExprStmtNode*)$2);
        $$ = new DefNode(curId, (Node*)$4, false, true);    
    }
    ;

varArrayValue
    :
    varExp
    {
        DeclValNode* node = new DeclValNode(false);
        node->setLeafNode((ExprNode*)$1);
        $$ = node;        
    } 
    |
    LBRACE varValueList RBRACE
    {
         $$ = $2;
    }
    |
    LBRACE RBRACE
    {
        $$ = new DeclValNode(false);
    }
    ;

varValueList
    :
    varValueList COMMA varArrayValue
    {
        DeclValNode* node = (DeclValNode*)$1;
        node->addNext((DeclValNode*)$3);
        $$ = node;        
    }
    |
    varArrayValue
    {
        DeclValNode* node = new DeclValNode(false);
        node->addNext((DeclValNode*)$1);
        $$ = node;
    }
    ;

varExp
    :
    add_minus{
        $$ = $1;
    }
    ;

constExp
    :
    add_minus{
        $$ = $1;
    }
    ;

varArray
    :
    Array
    {
        $$ = $1;
    }
    ;

constArray
    :
    Array
    {
        $$ = $1;
    }
    ;

FuncDef
    :
    Type ID 
    {
        Type *funcType;
        funcType = new FunctionType($1,{});
        SymbolEntry *se = new IdentifierSymbolEntry(funcType, $2, identifiers->getLevel());
        identifiers->install($2, se);
        identifiers = new SymbolTable(identifiers);
    }
    LPAREN
    FuncParams
    {
        SymbolEntry *se;
        se = identifiers->lookup($2);
        assert(se != nullptr);
        if($5!=nullptr)
        {
            ((FunctionType*)(se->getType()))->setparamsType(((FuncDefParamsNode*)$5)->getParamsType());
        }
    }
    RPAREN
    BlockStmt
    {
        SymbolEntry *se;
        se = identifiers->lookup($2);
        assert(se != nullptr);
        $$ = new FunctionDef(se,(FuncDefParamsNode*)$5,$8);
        SymbolTable *top = identifiers;
        identifiers = identifiers->getPrev();
        delete top;
        delete []$2;
    }
    ;
// 函数参数列表
FuncParams
    :   FuncParams COMMA FuncParam {
            FuncDefParamsNode* node = (FuncDefParamsNode*)$1;
            node->addNext(((DefNode*)$3)->getId());
            $$ = node;
        }
    |   FuncParam {
            FuncDefParamsNode* node = new FuncDefParamsNode();
            node->addNext(((DefNode*)$1)->getId());
            $$ = node;
        }
    |   %empty {
            $$ = nullptr;
        }
    ;

// 函数参数
FuncParam
    :   Type ID {
            SymbolEntry *se = new IdentifierSymbolEntry($1, $2, identifiers->getLevel());
            identifiers->install($2, se);
            $$ = new DefNode(new Id(se), nullptr, false, false);
        }
    //数组函数参数
    |   Type ID LSQUAREBRACKET RSQUAREBRACKET constArray{
            Type* arrayType; 
            if($1==TypeSystem::intType){
                arrayType = new ArrIntType();
                ((ArrIntType*)arrayType)->addDim(-1);
            }
            else if($1==TypeSystem::floatType){
                arrayType = new ArrFloatType();
                ((ArrFloatType*)arrayType)->addDim(-1);
            }
            //最高维未指定，记为默认值-1
            SymbolEntry *se = new IdentifierSymbolEntry(arrayType, $2, identifiers->getLevel());
            identifiers->install($2, se);
            Id* id = new Id(se);
            id->AddDimension((ExprStmtNode*)$5);
            $$ = new DefNode(id, nullptr, false, true);
        }
    |   Type ID LSQUAREBRACKET RSQUAREBRACKET{
            Type* arrayType; 
            if($1==TypeSystem::intType){
                arrayType = new ArrIntType();
                ((ArrIntType*)arrayType)->addDim(-1);
            }
            else if($1==TypeSystem::floatType){
                arrayType = new ArrFloatType();
                ((ArrFloatType*)arrayType)->addDim(-1);
            }
            //最高维未指定，记为默认值-1
            SymbolEntry *se = new IdentifierSymbolEntry(arrayType, $2, identifiers->getLevel());
            identifiers->install($2, se);
            Id* id = new Id(se);
            $$ = new DefNode(id, nullptr, false, true);
        }
    ;    
    
expr
    :
    logical_or {$$ = $1;}
    ;

Type
    : INT {
        $$ = TypeSystem::intType;
        curType = TypeSystem::intType;
    }
    | VOID {
        $$ = TypeSystem::voidType;
        curType = TypeSystem::voidType;
    }
    | FLOAT{
        $$ = TypeSystem::floatType;
        curType = TypeSystem::floatType;        
    }
    ;
%%

int yyerror(char const* message)
{
    std::cerr<<message<<std::endl;
    return -1;
}
