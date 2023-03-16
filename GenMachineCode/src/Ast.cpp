#include "Ast.h"
#include "SymbolTable.h"
#include "Unit.h"
#include "Instruction.h"
#include "IRBuilder.h"
#include <string>
#include "Type.h"
#include <assert.h>

extern FILE *yyout;
int Node::counter = 0;
IRBuilder* Node::builder = nullptr;

//while栈
std::stack<WhileStmt*> whileStack; //lab6

SymbolEntry* cur_func = nullptr;//lab6
Type* cur_retType = nullptr;
bool funcReturned = false; //lab6

int Branch = 0;

//用 for auto 做calculate可能会地址出问题，记得替换成下标访问

Node::Node()
{
    seq = counter++;
}

void Node::backPatch(std::vector<Instruction*> &list, BasicBlock*bb)
{
    for(auto &inst:list)
    {
        if(inst->isCond())
            dynamic_cast<CondBrInstruction*>(inst)->setTrueBranch(bb);
        else if(inst->isUncond())
            dynamic_cast<UncondBrInstruction*>(inst)->setBranch(bb);
    }
}

std::vector<Instruction*> Node::merge(std::vector<Instruction*> &list1, std::vector<Instruction*> &list2)
{
    std::vector<Instruction*> res(list1);
    res.insert(res.end(), list2.begin(), list2.end());
    return res;
}

std::vector<Type*> FuncCallParamsNode::getParamsType()
{
    std::vector<Type*> typeArray;
    for(auto param : paramsList){
        typeArray.push_back(param->getSymPtr()->getType());
    }
    return typeArray;
}

std::vector<ExprNode*> FuncCallParamsNode::getParamsList()
{
    return this->paramsList;
}

std::vector<Type*> FuncDefParamsNode::getParamsType()
{
    std::vector<Type*> typeArray;
    for(auto param : paramsList){
        typeArray.push_back(param->getSymPtr()->getType());
    }
    return typeArray;
}

//output begin here

void Ast::output()
{
    fprintf(stderr, "program\n");
    if(root != nullptr)
    {
        root->output(4);
    }
        
}

void BinaryExpr::output(int level)
{
    std::string op_str;
    std::string type;
    type = symbolEntry->getType()->toStr();
    switch(op)
    {
        case ADD:
            op_str = "add";
            break;
        case SUB:
            op_str = "sub";
            break;
        case MULTI:
            op_str = "mul";
            break;
        case DIVIDE:
            op_str = "div";
            break;
        case MOD:
            op_str = "mod";
            break;
        case AND:
            op_str = "and";
            break;
        case OR:
            op_str = "or";
            break;
        case LESS:
            op_str = "less";
            break;
        case LESSorEQUAL:
            op_str = "lesseq";
            break;
        case GREATER:
            op_str = "great";
            break;
        case GREATERorEQUAL:
            op_str = "greateq";
            break;
        case EQUAL:
            op_str = "eq";
            break;
        case UNEQUAL:
            op_str = "neq";
            break;
    }
    fprintf(stderr, "%*cBinaryExpr\top: %s     type:%s\n", level, ' ', op_str.c_str(),type.c_str());
    expr1->output(level + 4);
    expr2->output(level + 4);
}

void SingleExpr::output(int level)
{
    std::string op_str;
    std::string type;
    type = symbolEntry->getType()->toStr();
    switch(op)
    {
        case SUB:
            op_str = "sub";
            break;
        case NOT:
            op_str = "not";
            break;  
    }
    fprintf(stderr, "%*cSingleExpr\top: %s     type:%s\n", level, ' ', op_str.c_str(),type.c_str());
    expr1->output(level + 4);
}

void Constant::output(int level)
{
    std::string type, value;
    type = symbolEntry->getType()->toStr();
    value = symbolEntry->toStr();
    if(this->getSymPtr()->getType()->isAnyFloat())
        fprintf(stderr, "%*cFloatLiteral\tvalue: %s\ttype: %s\n", level, ' ',value.c_str(), type.c_str());
    else
        fprintf(stderr, "%*cIntegerLiteral\tvalue: %s\ttype: %s\n", level, ' ',value.c_str(), type.c_str());
}

void Id::output(int level)
{
    std::string name, type;
    int scope;
    name = symbolEntry->toStr();
    type = symbolEntry->getType()->toStr();
    scope = dynamic_cast<IdentifierSymbolEntry*>(symbolEntry)->getScope();
    fprintf(stderr, "%*cId\tname: %s\tscope: %d\ttype: %s\tsize: %d\n", level, ' ',
            name.c_str(), scope, type.c_str(),symbolEntry->getType()->getSize());
    //0106
    if(this->isArray() && this->dimension != nullptr)
    {
        fprintf(stderr, "%*cArrayDimensions\n", level+4, ' ');
        dimension -> output(level+4);   
    }
}

void CompoundStmt::output(int level)
{
    fprintf(stderr, "%*cCompoundStmt\n", level, ' ');
    if(stmt != nullptr) stmt->output(level + 4);
}

void SeqNode::output(int level)
{
    stmt1->output(level);
    stmt2->output(level);
}
//forArray
void ArrValNode::output(int level)
{
    std::string constStr;
    if(isConstArrVal()) constStr="Const";
    else constStr = "Variable";
    std::string typeStr;
    if(this->isList()) typeStr="ValList";
    else if(this->isExp()) typeStr = "Expr" ;
    fprintf(stderr, "%*cArrValNode\t%s\t%s\n", level, ' ', constStr.c_str(),typeStr.c_str());
    if(this->isList())
        for(auto child : childList)
        {
            child->output(level+4);
        }
    if(this->isExp()){
        selfExp->output(level+4);
    }    
}

void DefNode::output(int level)
{
    std::string constStr = isConst ? "Const" : "Variable";
    std::string arrayStr = isArray ? "Array" : "NonArray";
    fprintf(stderr, "%*cDefNode\t%s\t%s\n", level, ' ', constStr.c_str(), arrayStr.c_str());
    id->output(level+4);
    if(Value == nullptr){
        fprintf(stderr, "%*cThis variable/constant is not assigned\n", level+4, ' ');
    }
    else{
        Value->output(level+4);
    }    
}

void DeclStmt::output(int level)
{
    fprintf(stderr, "%*cDeclStmt\n", level, ' ');
    for(auto it	: defList)
	{
		it -> output(level);
	}
}

void IfStmt::output(int level)
{
    fprintf(stderr, "%*cIfStmt\n", level, ' ');
    cond->output(level + 4);
    thenStmt->output(level + 4);
}

void IfElseStmt::output(int level)
{
    fprintf(stderr, "%*cIfElseStmt\n", level, ' ');
    cond->output(level + 4);
    thenStmt->output(level + 4);
    elseStmt->output(level + 4);
}

void ReturnStmt::output(int level)
{
    fprintf(stderr, "%*cReturnStmt\n", level, ' ');
    if(retValue != nullptr) retValue->output(level + 4);
}

void AssignStmt::output(int level)
{
    fprintf(stderr, "%*cAssignStmt\n", level, ' ');
    lval->output(level + 4);
    expr->output(level + 4);
}

void WhileStmt::output(int level)
{
    fprintf(stderr, "%*cWhileStmt\n", level, ' ');  
    cond->output(level + 4);
    loopStmt->output(level + 4);
}

void BreakStmt::output(int level)
{
    fprintf(stderr, "%*cBreakStmt\n", level, ' ');
}

void ContinueStmt::output(int level)
{
    fprintf(stderr, "%*cContinueStmt\n", level, ' ');
}

void EmptyStmt::output(int level)
{
    fprintf(stderr, "%*cEmptyStmt\n", level, ' ');    
}

void ExprStmtNode::output(int level)
{
    fprintf(stderr, "%*cExprStmtNode\n", level, ' ');
    for(auto expr : exprList)
    {
        expr->output(level+4);
    }
}

void ArrDimNode::output(int level)
{
    fprintf(stderr, "%*cArrDim\n", level, ' ');
    for(auto dim : dimList)
    {
        // fprintf(stderr,"dim.kind : %d\n",dim->getexprkind());
        dim->output(level+4);
    }    
}

void FunctionDef::output(int level)
{
    std::string name, type;
    name = se->toStr();
    type = se->getType()->toStr();
    fprintf(stderr, "%*cFunctionDefine function name: %s, type: %s\n", level, ' ', 
            name.c_str(), type.c_str());

    if(params!=nullptr){
        params->output(level+4);
    }
    else{
        fprintf(stderr, "%*cFuncDefParamsNode NULL\n", level+4, ' ');
    }

    stmt->output(level + 4);
}

void FuncDefParamsNode::output(int level)
{
    fprintf(stderr, "%*cFuncDefParamsNode\n", level, ' ');
    for(auto param : paramsList){
        param->output(level+4);
    }
}

void FuncCallParamsNode::output(int level)
{
    fprintf(stderr, "%*cFuncCallParamsNode\n", level, ' ');
    for(auto param : paramsList){
        param->output(level+4);
    }
}

void FuncCallNode::output(int level)
{
    std::string name, type;
    int scope;
    SymbolEntry* funcEntry = funcId->getSymPtr();
    name = funcEntry->toStr();
    type = funcEntry->getType()->toStr();
    scope = dynamic_cast<IdentifierSymbolEntry*>(funcEntry)->getScope();
    fprintf(stderr, "%*cFuncCallNode\tfuncName: %s\t funcType: %s\tscope: %d\n", 
            level, ' ', name.c_str(), type.c_str(), scope);
    if(params!=nullptr){
        params->output(level+4);
    }
    else{
        fprintf(stderr, "%*cFuncCallParamsNode NULL\n", level+4, ' ');
    }    
}

//output end




//caculate begin here

void Ast::Calculate(Node** n)
{
    if(root != nullptr)
    {
        root->Calculate(nullptr);
    }
}

void SingleExpr::Calculate(Node** n)
{
    expr1->Calculate((Node**)&expr1);

    Type* expr1_type = expr1->getSymPtr()->getType();
    if(expr1_type->isFunc()) expr1_type = ((FunctionType*)(expr1->getSymPtr()->getType()))->getRetType();

    if(n == nullptr) return;

    if(expr1_type->isConst())
    {
        double val=0;
        int v1 = expr1->getSymPtr()->isConstant() ? ((ConstantSymbolEntry*)(expr1->getSymPtr()))->getValue() : ((IdentifierSymbolEntry*)(expr1->getSymPtr()))->value;
        if(this->op == SingleExpr::SUB)  
        {
            val = -v1;
            if(this->getSymPtr()->getType()->isAnyInt())
                *n = new Constant(new ConstantSymbolEntry(TypeSystem::constIntType, val));           
            else
                *n = new Constant(new ConstantSymbolEntry(TypeSystem::constFloatType, val));            
        }  
        else if(this->op == SingleExpr::NOT)  {
            val = !v1;
            *n = new Constant(new ConstantSymbolEntry(TypeSystem::constIntType, val));
        }
                   
    }
    
}

void BinaryExpr::Calculate(Node** n)
{
    // fprintf(stderr,"BinaryExpr::Calculate%d begin  op:%d\n",b,op);
    expr1->Calculate((Node**)&expr1);
    expr2->Calculate((Node**)&expr2);

    Type* expr1_type = expr1->getSymPtr()->getType();
    Type* expr2_type = expr2->getSymPtr()->getType();
    if(expr1_type->isFunc()) expr1_type = ((FunctionType*)(expr1->getSymPtr()->getType()))->getRetType();
    if(expr2_type->isFunc()) expr2_type = ((FunctionType*)(expr2->getSymPtr()->getType()))->getRetType();

    if(n == nullptr) return;
    // fprintf(stderr,"BinaryCal%d expr1_type->isConst()%d   expr2_type->isConst()%d\n",cu,expr1_type->isConst(),expr2_type->isConst());
    if(expr1_type->isConst() && expr2_type->isConst())
    {
        double v1 = expr1->getSymPtr()->isConstant() ? ((ConstantSymbolEntry*)(expr1->getSymPtr()))->getValue() : ((IdentifierSymbolEntry*)(expr1->getSymPtr()))->value;
        double v2 = expr2->getSymPtr()->isConstant() ? ((ConstantSymbolEntry*)(expr2->getSymPtr()))->getValue() : ((IdentifierSymbolEntry*)(expr2->getSymPtr()))->value;
        if(this->op >= BinaryExpr::ADD)
        {
            // fprintf(stderr,"BinaryExpr::Calculate  v1:%d  v2:%d op:%d\n ",v1,v2,op);
            double val;
            if(op == ADD) val = v1 + v2;
            else if(op == SUB) val = v1 - v2;
            else if(op == MULTI) val = v1 * v2;
            else if(op == DIVIDE) val = v1 / v2;
            else if(op == MOD) val = (int)v1 % (int)v2;
            if(this->getSymPtr()->getType()->isAnyInt())
            {
                // fprintf(stderr,"BinaryCal%dbefore op%d  n%d\n",cu,op,*n);
                *n = new Constant(new ConstantSymbolEntry(TypeSystem::constIntType, val));   
                // fprintf(stderr,"BinaryCal%dafter op%d  n%d\n",cu,op,*n);        
            }    
            else
            {
                *n = new Constant(new ConstantSymbolEntry(TypeSystem::constFloatType, val));
            }
                
        }
        else if(this->op <= BinaryExpr::GREATERorEQUAL)
        {
            bool val;
            if(op == OR) val = (v1 || v2) ;
            else if(op == AND) val = (v1 && v2);
            else if(op == EQUAL) val = (v1 == v2);
            else if(op == UNEQUAL) val = (v1 != v2);
            else if(op == LESS) val = (v1 < v2);
            else if(op == LESSorEQUAL) val = (v1 <= v2);
            else if(op == GREATER) val = (v1 > v2);
            else if(op == GREATERorEQUAL) val = (v1 >= v2);  
            *n = new Constant(new ConstantSymbolEntry(TypeSystem::constIntType, val));
        }
    }
}

void Constant::Calculate(Node** n)
{
    //do noting
}
 
void Id::Calculate(Node** n)
{
    if(this->isArray()) this->ArrCalculate(n);
    else
    {
        if(symbolEntry->getType()->isConst())
        {
            IdentifierSymbolEntry* se = (IdentifierSymbolEntry*)(this->symbolEntry);
            if(n != nullptr) *n = new Constant(new ConstantSymbolEntry(se->getType(), se->value)); 
        }
    }
}

void IfStmt::Calculate(Node** n)
{
    cond->Calculate((Node**)&cond);
    if(thenStmt != nullptr) thenStmt->Calculate(nullptr);
}
 
void IfElseStmt::Calculate(Node** n)
{
    cond->Calculate((Node**)&cond);
    if(thenStmt != nullptr) thenStmt->Calculate(nullptr);
    if(elseStmt != nullptr) elseStmt->Calculate(nullptr);
}
 
void CompoundStmt::Calculate(Node** n)
{
    if(stmt != nullptr) stmt->Calculate(nullptr);
}
 
void SeqNode::Calculate(Node** n)
{
    if(stmt1 != nullptr) stmt1->Calculate(nullptr);
    if(stmt2 != nullptr) stmt2->Calculate(nullptr);
}
// 全局赋值可能需要改一改
void DefNode::Calculate(Node** n)
{
    id->Calculate(nullptr);

    if(this->Value == nullptr) return;

    if(id->getSymPtr()->getType()->isArray()) this->ArrCalculate(n);
    else
    {
        Value->Calculate((Node**)&(this->Value));
        if(Value->isStmt()) 
        {
            Value = new Constant(new ConstantSymbolEntry(TypeSystem::constIntType, 1));
            ((IdentifierSymbolEntry*)(id->getSymPtr()))->value = ((ConstantSymbolEntry*)((ExprNode*)Value)->getSymPtr())->getValue();
            return;
        }
        //常量或者全局变量
        if(id->getSymPtr()->getType()->isConst() || ((IdentifierSymbolEntry*)(id->getSymPtr()))->isGlobal())
        {
            //id赋值
            ((IdentifierSymbolEntry*)(id->getSymPtr()))->value = ((ConstantSymbolEntry*)((ExprNode*)Value)->getSymPtr())->getValue();
        }        
    }   
}

void DeclStmt::Calculate(Node** n)
{
    if(this->defList.size() != 0 )
    {
        for(auto def : defList)
        {
            def->Calculate(nullptr);
        }
    }
}

void ReturnStmt::Calculate(Node** n)
{
    if(retValue != nullptr) 
    {
        retValue->Calculate((Node**)&retValue);
    }

    //涉及到retType 赋值放到了类型检查里
}

void AssignStmt::Calculate(Node** n)
{
    //lval不可能是constant 没有赋值的必要
    lval->Calculate(nullptr);
    expr->Calculate((Node**)&expr);
}

void EmptyStmt::Calculate(Node** n)
{
    //do noting
}

void WhileStmt::Calculate(Node** n)
{
    cond->Calculate((Node**)&cond);
    loopStmt->Calculate(nullptr);
}

void BreakStmt::Calculate(Node** n)
{
    //do noting
}

void ContinueStmt::Calculate(Node** n)
{
    //do nothing
}

void ExprStmtNode::Calculate(Node** n)
{
    for(auto expr : this->exprList)
        expr->Calculate((Node**)&expr);
}

void FunctionDef::Calculate(Node** n)
{
    if(this->params != nullptr) params->Calculate(nullptr);
    stmt->Calculate(nullptr);
}

void FuncDefParamsNode::Calculate(Node** n)
{
    if(this->paramsList.size() != 0)
    {
        for(auto param : paramsList)
            param->Calculate(nullptr);//Id没有计算的必要
    }
}

void FuncCallNode::Calculate(Node** n)
{
    if(this->params != nullptr) params->Calculate(nullptr);
}

void FuncCallParamsNode::Calculate(Node** n)
{
    for(auto param : paramsList)
        param->Calculate((Node**)&param);
}


//caculate end here





//typecheck begin here



void Ast::typeCheck()
{
    if(root != nullptr)
    {
        root->Calculate(nullptr);
        root->typeCheck();
    }  
}

void SingleExpr::typeCheck()
{

    this->expr1->typeCheck();

    Type* expr1_type = expr1->getSymPtr()->getType();
    if(expr1_type->isFunc()) expr1_type = ((FunctionType*)(expr1->getSymPtr()->getType()))->getRetType();

    //返回值为 void 的函数调用结果参与了某表达式计算 类型检查3
    if(expr1_type->isVoid() == true )
    {
        fprintf(stderr, "invalid operands of types 'void' to unary operation ");
        exit(EXIT_FAILURE);
    }

    if(op == SingleExpr::SUB)
    {
        this->getSymPtr()->setType(TypeSystem::intType);
        if(expr1_type->isAnyFloat()) this->getSymPtr()->setType(TypeSystem::floatType); 
    }
    else this->getSymPtr()->setType(TypeSystem::boolType);
}

void BinaryExpr::typeCheck()
{
    // Todo

    this->expr1->typeCheck();
    this->expr2->typeCheck();

    Type* expr1_type = expr1->getSymPtr()->getType();
    Type* expr2_type = expr2->getSymPtr()->getType();
    if(expr1_type->isFunc()) expr1_type = ((FunctionType*)(expr1->getSymPtr()->getType()))->getRetType();
    if(expr2_type->isFunc()) expr2_type = ((FunctionType*)(expr2->getSymPtr()->getType()))->getRetType();   

    //返回值为 void 的函数调用结果参与了某表达式计算 类型检查3
    if(expr1_type->isVoid() == true || expr2_type->isVoid() == true)
    {
        fprintf(stderr, "invalid operands of types 'void' to binary operation ");
        exit(EXIT_FAILURE);
    }  

    if(this->op >= BinaryExpr::ADD) 
    {
        this->getSymPtr()->setType(TypeSystem::preciseType(expr1_type, expr2_type));
    }
    else if(this->op <= BinaryExpr::GREATERorEQUAL) 
    { 
        this->getSymPtr()->setType(TypeSystem::boolType); 
    }

    if(op == AND || op == OR) 
    {
        if(!expr1->getSymPtr()->getType()->isBool() || expr1->getSymPtr()->isConstant()) 
        {
            Constant* zeroNode = new Constant(new ConstantSymbolEntry(TypeSystem::constIntType, 0));
            TemporarySymbolEntry* tmpSe = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
            if(expr1->getexprkind() == ExprNode::CONSTANT) 
            {
                int val = ((ConstantSymbolEntry*)(expr1->getSymPtr()))->getValue();
                expr1 = new Constant(new ConstantSymbolEntry(TypeSystem::constIntType, val));
            }
            BinaryExpr* newCond = new BinaryExpr(tmpSe, BinaryExpr::UNEQUAL, zeroNode, expr1);
            expr1 = newCond;
        }
        if(!expr2->getSymPtr()->getType()->isBool() || expr2->getSymPtr()->isConstant()) {
            Constant* zeroNode = new Constant(new ConstantSymbolEntry(TypeSystem::constIntType, 0));
            TemporarySymbolEntry* tmpSe = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
            if(expr2->getexprkind() == ExprNode::CONSTANT) 
            {
                int val = ((ConstantSymbolEntry*)(expr2->getSymPtr()))->getValue();
                expr2 = new Constant(new ConstantSymbolEntry(TypeSystem::constIntType, val));
            }
            BinaryExpr* newCond = new BinaryExpr(tmpSe, BinaryExpr::UNEQUAL, zeroNode, expr2);
            expr2 = newCond;
        }
    }

}

void Constant::typeCheck()
{
    // do nothing
}

void Id::typeCheck()
{
    // Todo
    if(this->isArray())
    {
        this->ArrtypeCheck();
    }
    else
    {
    }
}

void IfStmt::typeCheck()
{
    // Todo
    cond->typeCheck();

    if(!cond->getSymPtr()->getType()->isBool() || cond->getSymPtr()->isConstant()) 
    {
        // fprintf(stderr,"\"Type Conversion\": int -> bool\n");
        Constant* zeroNode = new Constant(new ConstantSymbolEntry(TypeSystem::constIntType, 0));
        TemporarySymbolEntry* tmpSe = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        if(cond->getexprkind() == ExprNode::CONSTANT )
        {
            int val = ((ConstantSymbolEntry*)(cond->getSymPtr()))->getValue();
            cond = new Constant(new ConstantSymbolEntry(TypeSystem::constIntType, val));
        }
        BinaryExpr* newCond = new BinaryExpr(tmpSe, BinaryExpr::UNEQUAL, zeroNode, cond);
        cond = newCond;
    }

    if(thenStmt != nullptr) thenStmt -> typeCheck();

}

void IfElseStmt::typeCheck()
{
    // Todo

    cond->typeCheck();

    if(!cond->getSymPtr()->getType()->isBool() || cond->getSymPtr()->isConstant()) 
    {
        // fprintf(stderr,"\"Type Conversion\": int -> bool\n");
        Constant* zeroNode = new Constant(new ConstantSymbolEntry(TypeSystem::constIntType, 0));
        TemporarySymbolEntry* tmpSe = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        if(cond->getexprkind() == ExprNode::CONSTANT )
        {
            int val = ((ConstantSymbolEntry*)(cond->getSymPtr()))->getValue();
            cond = new Constant(new ConstantSymbolEntry(TypeSystem::constIntType, val));
        }
        BinaryExpr* newCond = new BinaryExpr(tmpSe, BinaryExpr::UNEQUAL, zeroNode, cond);
        cond = newCond;
    }

    if(thenStmt != nullptr) thenStmt -> typeCheck();
    if(elseStmt != nullptr) elseStmt -> typeCheck();
}

void CompoundStmt::typeCheck()
{
    // Todo
    if (stmt != nullptr)
        stmt ->typeCheck();
}

void SeqNode::typeCheck()
{
    // Todo
    if(stmt1 != nullptr) stmt1->typeCheck();
    if(stmt2 != nullptr) stmt2->typeCheck();
}

void DefNode::typeCheck()
{
    this->id->typeCheck();
    if(this->Value == nullptr) return;

    if(id->getSymPtr()->getType()->isArray())
    {
        this->ArrtypeCheck();
    }
    else
    {
        Value->typeCheck();
    }
}

void DeclStmt::typeCheck()
{
    // Todo
    if(this->defList.size() != 0 )
    {
        for(auto def : defList)
            def->typeCheck();
    }
}

void ReturnStmt::typeCheck()
{
    // Todo
    if(cur_retType == nullptr)
    {
        fprintf(stderr,"\"@%s\": expected unqualified-id before 'return' \n",((IdentifierSymbolEntry*)cur_func)->getName().c_str());
        exit(EXIT_FAILURE);        
    }
    else
    {
        if (cur_retType -> isVoid())
        {
            if(retValue != nullptr)  //有return值 但 函数是void
            {
                fprintf(stderr,"\"@%s\": return-statement with a value, in function returning 'void' \n",((IdentifierSymbolEntry*)cur_func)->getName().c_str());
                exit(EXIT_FAILURE);
            }
        }
        else
        {
            if(retValue == nullptr)//无return值 但 函数非void
            {
                fprintf(stderr, "\"@%s\": return-statement with no value, in function returning '%s' \n ",((IdentifierSymbolEntry*)cur_func)->getName().c_str(),cur_retType->toStr().c_str());
                exit(EXIT_FAILURE);
            }
        }        
    }
    this->retType = cur_retType;
    funcReturned = true;

    if(retValue == nullptr) 
    {
        return;
    }
    retValue->typeCheck();

    if(retValue->isStmt())
    {
        if(retType->isAnyFloat()) this->retValue = new Constant(new ConstantSymbolEntry(TypeSystem::constFloatType, 1));
        else if(retType->isAnyInt()) this->retValue = new Constant(new ConstantSymbolEntry(TypeSystem::constIntType, 1));
        else this->retValue = new Constant(new ConstantSymbolEntry(TypeSystem::constBoolType, 1));
    }
}

void AssignStmt::typeCheck()
{
    // Todo
    this->lval->typeCheck();
    this->expr->typeCheck();
    //右值不能为void
    //左值不能为const
}

void EmptyStmt::typeCheck()
{
    //do noting
}

void WhileStmt::typeCheck()
{
    whileStack.push(this);

    this->cond ->typeCheck();

//类型转换
    if(!cond->getSymPtr()->getType()->isBool() || cond->getSymPtr()->isConstant())
    {
        // fprintf(stderr,"\"Type Conversion\": int -> bool\n");
        Constant* zeroNode = new Constant(new ConstantSymbolEntry(TypeSystem::constIntType, 0));
        TemporarySymbolEntry* tmpSe = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        if(cond->getexprkind() == ExprNode::CONSTANT )
        {
            int val = ((ConstantSymbolEntry*)(cond->getSymPtr()))->getValue();
            cond = new Constant(new ConstantSymbolEntry(TypeSystem::constIntType, val));
        }
        BinaryExpr* newCond = new BinaryExpr(tmpSe, BinaryExpr::UNEQUAL, zeroNode, cond);
        cond = newCond;
    }

    loopStmt->typeCheck();

    whileStack.pop();
}

void BreakStmt::typeCheck()
{
    if (whileStack.size() != 0) this->whileStmt = whileStack.top();
    if(this->whileStmt == nullptr)
    {
        fprintf(stderr,"break statement not within a loop \n");
        exit(EXIT_FAILURE);        
    }
}

void ContinueStmt::typeCheck()
{
    if (whileStack.size() != 0) this->whileStmt = whileStack.top();
    if(this->whileStmt == nullptr)
    {
        fprintf(stderr,"break statement not within a loop \n");
        exit(EXIT_FAILURE);        
    }
}

void ExprStmtNode::typeCheck()
{
    for(auto expr : this->exprList)
        expr->typeCheck();
}

void FunctionDef::typeCheck()
{
    // Todo
    cur_retType = ((FunctionType*) se->getType())->getRetType();
    cur_func = se;

    if(this->params != nullptr) params->typeCheck();
    funcReturned = false;//重命名

    this->stmt->typeCheck();
 
    if(!funcReturned && !cur_retType->isVoid()){
        fprintf(stderr, " \"%s\" : expected a %s type to return, but no returned value found\n", se->toStr().c_str(),cur_retType->toStr().c_str());
        exit(EXIT_FAILURE);
    }

    if(!funcReturned && cur_retType->isVoid())
    {
        this->noretstmt = true;
    }

    cur_retType = nullptr;
    cur_func = nullptr;
    
}

void FuncDefParamsNode::typeCheck()
{
    if(this->paramsList.size() != 0)
    {
        for(auto param : paramsList)
            param->typeCheck();
    }
}

void FuncCallNode::typeCheck()
{
    //类型检查5
    //函数调用 形参实参数目不一致
    std::vector<Type*> defParamsType = (dynamic_cast<FunctionType*>(this->funcId->getSymPtr()->getType()))->getParamsType();  
    int defParamsNUM = defParamsType.size();   
    if(this->params == nullptr)
    {
        if(defParamsNUM!=0)
        {
            fprintf(stderr,"wrong number of arguments to function \"%s\" \n",this->funcId->getSymPtr()->toStr().c_str());
            exit(EXIT_FAILURE);            
        }
        else return;
    }       

    params->typeCheck();

    std::vector<Type*> callParamsType = this->params->getParamsType();
    int callParamsNUM = callParamsType.size();
    if(defParamsNUM != callParamsNUM)
    {
        fprintf(stderr,"wrong number of arguments to function \"%s\" \n",this->funcId->getSymPtr()->toStr().c_str());
        exit(EXIT_FAILURE);
    }

    for(int i=0; i<callParamsNUM; i++)
    {
        Type* defparamType = defParamsType[i];
        Type* callparamType = callParamsType[i];
        if((defparamType->isVoid() && !callparamType->isVoid()) || (!defparamType->isVoid() && callparamType->isVoid()))
        {
            fprintf(stderr,"Unmatched call argument type to function %s \n",this->funcId->getSymPtr()->toStr().c_str());
            exit(EXIT_FAILURE);
        }
    }
}

void FuncCallParamsNode::typeCheck()
{
    for(auto param : paramsList)
        param->typeCheck();
}



//typecheck end here




Operand* bool2int(Type* targetType, Operand* srcoperand, IRBuilder* builder)
{
    Operand* dstOperand = new Operand(new TemporarySymbolEntry(targetType, SymbolTable::getLabel()));
    // Operand* dstOperand = new Operand(new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel()));
    BasicBlock *bb = builder->getInsertBB();
    new ZextInstruction(srcoperand, dstOperand, bb);
    return dstOperand;
}

Operand* int2bool(Type* targetType, Operand* srcoperand, IRBuilder* builder)
{
    Operand* dstOperand = new Operand(new TemporarySymbolEntry(targetType, SymbolTable::getLabel()));
    // Operand* dstOperand = new Operand(new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel()));
    BasicBlock *bb = builder->getInsertBB();
    Operand* zeroNode = new Operand(new ConstantSymbolEntry(TypeSystem::constIntType, 0));
    new CmpInstruction(CmpInstruction::NE, dstOperand, zeroNode, srcoperand, bb);  
    return dstOperand;
}

Operand* float2int(Type* targetType, Operand* srcoperand, IRBuilder* builder)
{
    Operand* dstOperand = new Operand(new TemporarySymbolEntry(targetType, SymbolTable::getLabel()));
    // Operand* dstOperand = new Operand(new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel()));
    BasicBlock *bb = builder->getInsertBB();
    new CastInstruction(CastInstruction::Float2Int, srcoperand, dstOperand, bb);
    return dstOperand;
}

Operand* int2float(Type* targetType, Operand* srcoperand, IRBuilder* builder)
{
    Operand* dstOperand = new Operand(new TemporarySymbolEntry(targetType, SymbolTable::getLabel()));
    // Operand* dstOperand = new Operand(new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel()));
    BasicBlock *bb = builder->getInsertBB();
    new CastInstruction(CastInstruction::Int2Float, srcoperand, dstOperand, bb);
    return dstOperand;
}

Operand* typeCast(Type* targetType, Operand* srcoperand, IRBuilder* builder) { //lab6
    if(!TypeSystem::needCast(srcoperand->getType()->toStr().c_str(), targetType->toStr().c_str()))  return srcoperand;
    else if(targetType->isAnyInt() && srcoperand->getType()->isBool()) return bool2int(targetType, srcoperand, builder);
    else if(targetType->isBool() && srcoperand->getType()->isAnyInt()) return int2bool(targetType, srcoperand, builder);
    else if(targetType->isAnyInt() && srcoperand->getType()->isAnyFloat()) return float2int(targetType, srcoperand, builder);
    else if(targetType->isAnyFloat() && srcoperand->getType()->isAnyInt()) return int2float(targetType, srcoperand, builder);
}



//genCode begin here





void Ast::genCode(Unit *unit)
{
    IRBuilder *builder = new IRBuilder(unit);
    Node::setIRBuilder(builder);
    root->genCode();

}

void SingleExpr::genCode()
{
    // fprintf(stderr,"SingleExpr::genCode\n");
    BasicBlock *bb = builder->getInsertBB();
    Function *func = bb->getParent();

    Type* expr1_type = expr1->getSymPtr()->getType();
    if(expr1_type->isFunc()) expr1_type = ((FunctionType*)(expr1->getSymPtr()->getType()))->getRetType();
    
    if(op == SUB)
    {
        expr1->genCode();

        Operand *src1 = new Operand(new ConstantSymbolEntry(TypeSystem::constIntType, 0));
        Operand* src2 = expr1->getOperand();
        if(expr1_type->isAnyFloat())
        {
            src1 = new Operand(new ConstantSymbolEntry(TypeSystem::constFloatType, 0));
            src2 = typeCast(TypeSystem::floatType, src2, builder); 
            new FBinaryInstruction(BinaryInstruction::SUB, dst, src1, src2, bb); //0112
        }
        else
        {
            src2 = typeCast(TypeSystem::intType, src2, builder); 
            new BinaryInstruction(BinaryInstruction::SUB, dst, src1, src2, bb);
        }
    }
    else if(op == NOT)
    {
        Branch--;
        expr1->genCode();
        Branch++;
        Operand *src1 = new Operand(new ConstantSymbolEntry(TypeSystem::constIntType, 0));
        Operand *src2 = expr1->getOperand();
        if(expr1_type->isAnyFloat())
        {
            src1 = new Operand(new ConstantSymbolEntry(TypeSystem::constFloatType, 0));
            src2 = typeCast(TypeSystem::floatType, src2, builder); 
            new FCmpInstruction(CmpInstruction::E, dst, src1, src2, bb);
        }
        else
        {
            src2 = typeCast(TypeSystem::intType, src2, builder);
            new CmpInstruction(CmpInstruction::E, dst, src1, src2, bb);
        }

        if(Branch > 0)
        {
            BasicBlock* trueBlock, *falseBlock, *mergeBlock;
            trueBlock = new BasicBlock(func);
            falseBlock = new BasicBlock(func);
            mergeBlock = new BasicBlock(func);
            true_list.push_back(new CondBrInstruction(trueBlock, falseBlock, dst, bb));
            false_list.push_back(new UncondBrInstruction(mergeBlock, falseBlock));
        }
        
    }
}

void BinaryExpr::genCode()
{
    // fprintf(stderr,"BinaryExpr::genCode%d begin  op:%d\n",b++,op);
    BasicBlock *bb = builder->getInsertBB();
    Function *func = bb->getParent();

    Type* expr1_type = expr1->getSymPtr()->getType();
    Type* expr2_type = expr2->getSymPtr()->getType();
    if(expr1_type->isFunc()) expr1_type = ((FunctionType*)(expr1->getSymPtr()->getType()))->getRetType();
    if(expr2_type->isFunc()) expr2_type = ((FunctionType*)(expr2->getSymPtr()->getType()))->getRetType();   

    if (op == AND)
    {
        BasicBlock *trueBB = new BasicBlock(func);  // if the result of lhs is true, jump to the trueBB.
        Branch = 1;
        expr1->genCode();
        backPatch(expr1->trueList(), trueBB);
        builder->setInsertBB(trueBB);               // set the insert point to the trueBB so that intructions generated by expr2 will be inserted into it.
        expr2->genCode();
        true_list = expr2->trueList();
        false_list = merge(expr1->falseList(), expr2->falseList());
    }
    else if(op == OR)
    {
        BasicBlock *falseBB = new BasicBlock(func); //放expr2的中间代码 如果expr1是错的跳转到falseBB
        Branch = 1;
        expr1->genCode();
        backPatch(expr1->falseList(), falseBB);
        builder->setInsertBB(falseBB);
        expr2->genCode();
        true_list = merge(expr1->trueList(), expr2->trueList()); //都对了不知道跳到哪 
        false_list = expr2->falseList(); //expr2错了不知道跳到哪儿
    }
    else if(op >= EQUAL && op <= GREATERorEQUAL)
    {
        Branch--;
        expr1->genCode();
        expr2->genCode();
        Branch++;

        Operand *src1 = expr1->getOperand();
        Operand *src2 = expr2->getOperand();
        if(expr1_type->isAnyFloat()||expr2_type->isAnyFloat())
        {
            src1 = typeCast(TypeSystem::floatType, src1, builder);
            src2 = typeCast(TypeSystem::floatType, src2, builder);
        }
        else if(expr1_type->isAnyInt()||expr2_type->isAnyInt())
        {
            src1 = typeCast(TypeSystem::intType, src1, builder);
            src2 = typeCast(TypeSystem::intType, src2, builder);            
        }
        else//也许可以删掉
        {
            src1 = typeCast(TypeSystem::boolType, src1, builder);
            src2 = typeCast(TypeSystem::boolType, src2, builder);  
        }

        int opcode = -1;
        //{E, NE, L, LE, G, GE}
        switch (op)
        {
        case EQUAL:
            opcode = CmpInstruction::E;
            break;
        case UNEQUAL:
            opcode = CmpInstruction::NE;
            break;
        case LESS:
            opcode = CmpInstruction::L;
            break;
        case LESSorEQUAL:
            opcode = CmpInstruction::LE;
            break;
        case GREATER:
            opcode = CmpInstruction::G;
            break;
        case GREATERorEQUAL:
            opcode = CmpInstruction::GE;
            break;
        }

        //float
        if(expr1_type->isAnyFloat()||expr2_type->isAnyFloat())
        {
            new FCmpInstruction(opcode, dst, src1, src2, bb);
        }
        else{
            new CmpInstruction(opcode, dst, src1, src2, bb);
        }
        
        if(Branch > 0)//改名可以
        {
            BasicBlock* trueBlock, *falseBlock, *mergeBlock;
            trueBlock = new BasicBlock(func);
            falseBlock = new BasicBlock(func);
            mergeBlock = new BasicBlock(func);
            true_list.push_back(new CondBrInstruction(trueBlock, falseBlock, dst, bb));
            false_list.push_back(new UncondBrInstruction(mergeBlock, falseBlock));
        }
    }
    else if(op >= ADD && op <= MOD)
    {
        expr1->genCode();
        expr2->genCode();


        Operand *src1 = expr1->getOperand();
        Operand *src2 = expr2->getOperand();

        if(expr1_type->isAnyFloat()||expr2_type->isAnyFloat())
        {
            src1 = typeCast(TypeSystem::floatType, src1, builder);
            src2 = typeCast(TypeSystem::floatType, src2, builder);

        }
        else if(expr1_type->isAnyInt()||expr2_type->isAnyInt())
        {
            src1 = typeCast(TypeSystem::intType, src1, builder);
            src2 = typeCast(TypeSystem::intType, src2, builder);

        }
        else
        {
            src1 = typeCast(TypeSystem::boolType, src1, builder);
            src2 = typeCast(TypeSystem::boolType, src2, builder);  
        }

        int opcode;
        switch (op)
        {
        case ADD:
            opcode = BinaryInstruction::ADD;
            break;
        case SUB:
            opcode = BinaryInstruction::SUB;
            break;
        case MULTI:
            opcode = BinaryInstruction::MUL;
            break;
        case DIVIDE:
            opcode = BinaryInstruction::DIV;
            break;
        case MOD:
            opcode = BinaryInstruction::MOD;
            break;
        }
        //float
        if(expr1_type->isAnyFloat()||expr2_type->isAnyFloat())
        {
           
            new FBinaryInstruction(opcode, dst, src1, src2, bb);
        }
        else
        {
            new BinaryInstruction(opcode, dst, src1, src2, bb);
        }
    }

}

void Constant::genCode()
{
    // we don't need to generate code.
}

void Id::genCode()
{
    // fprintf(stderr,"Id::genCode\n");

    if(getSymPtr()->getType()->isArray())
    {
        this->ArrgenCode();
       
    }
    else
    {
        if(getSymPtr()->getType()->isConst()) return;
        BasicBlock *bb = builder->getInsertBB();
        Operand *addr = dynamic_cast<IdentifierSymbolEntry*>(symbolEntry)->getAddr();
        dst = new Operand(new TemporarySymbolEntry(dst->getType(), SymbolTable::getLabel()));
        new LoadInstruction(dst, addr, bb);
    }
}

void IfStmt::genCode()
{
  
    Branch = 1;

    Function *func;
    BasicBlock *then_bb, *end_bb;

    func = builder->getInsertBB()->getParent();
    then_bb = new BasicBlock(func);
    end_bb = new BasicBlock(func);

    cond->genCode();
    backPatch(cond->trueList(), then_bb);
    backPatch(cond->falseList(), end_bb);

    builder->setInsertBB(then_bb);
    thenStmt->genCode();
    then_bb = builder->getInsertBB();
    new UncondBrInstruction(end_bb, then_bb);

    builder->setInsertBB(end_bb);
}

void IfElseStmt::genCode()
{

    Branch = 1;

    Function *func;
    BasicBlock *then_bb, *end_bb, *else_bb;

    func = builder->getInsertBB()->getParent();
    then_bb = new BasicBlock(func);
    end_bb = new BasicBlock(func);
    else_bb = new BasicBlock(func);

    cond->genCode();
    backPatch(cond->trueList(), then_bb);
    backPatch(cond->falseList(), else_bb);

    builder->setInsertBB(then_bb);
    thenStmt->genCode();
    then_bb = builder->getInsertBB();
    new UncondBrInstruction(end_bb, then_bb);
    
    builder->setInsertBB(else_bb);
    elseStmt->genCode();
    else_bb = builder->getInsertBB();
    new UncondBrInstruction(end_bb, else_bb);    

    builder->setInsertBB(end_bb);
}

void CompoundStmt::genCode()
{
    // Todo
    if(stmt!=nullptr) stmt -> genCode();
}

void SeqNode::genCode()
{
    // Todo
    stmt1 -> genCode();
    stmt2 -> genCode();
}

void DefNode::genCode()
{
    IdentifierSymbolEntry *se = dynamic_cast<IdentifierSymbolEntry *>(id->getSymPtr());
    if(se->isGlobal())
    {

        Operand *addr;
        SymbolEntry *addr_se;
        addr_se = new IdentifierSymbolEntry(*se);
        addr_se->setType(new PointerType(se->getType()));
        addr = new Operand(addr_se);
        se->setAddr(addr);
        // 添加到全局变量
        this->builder->getUnit()->insertGlobal(se);
    }
    else if(se->isLocal())
    {
        Function *func = builder->getInsertBB()->getParent();
        BasicBlock *entry = func->getEntry();
        Instruction *alloca;
        Operand *addr;
        SymbolEntry *addr_se;
        Type *type;
        type = new PointerType(se->getType());
        addr_se = new TemporarySymbolEntry(type, SymbolTable::getLabel());
        addr = new Operand(addr_se);
        alloca = new AllocaInstruction(addr, se);                   // allocate space for local id in function stack.
        entry->insertFront(alloca);                                 // allocate instructions should be inserted into the begin of the entry block.
        se->setAddr(addr);                                          // set the addr operand in symbol entry so that we can use it in subsequent code generation.
    }

    //store
    BasicBlock *bb = builder->getInsertBB();
    Operand* addr = se->getAddr();
    if(Value != nullptr)
    {
    
        if(se->getType()->isArray())
        {
            this->ArrgenCode();
        }
        else
        {
            Value->genCode();
            Operand *src = typeCast(se->getType(), dynamic_cast<ExprNode *>(Value) ->getOperand(),builder);
            new StoreInstruction(addr, src, bb);
        }
    }
}

void DeclStmt::genCode()
{
    // fprintf(stderr,"DeclStmt::genCode\n");
    for(auto defnode:defList)
    {
        defnode -> genCode();
    }
}
void ReturnStmt::genCode()
{
    // Todo
    // fprintf(stderr,"ReturnStmt::genCode\n");
    BasicBlock *bb = builder->getInsertBB();
    if(retValue != nullptr)
    {

        retValue->genCode();

        Operand* op = typeCast(retType, retValue->getOperand(),builder);
        new RetInstruction(op, bb);
    }
    else
    {
        new RetInstruction(nullptr, bb);
    }
}

void AssignStmt::genCode()
{
    // fprintf(stderr,"AssignStmt::genCode\n");
    BasicBlock *bb = builder->getInsertBB();
    expr->genCode();
    Operand *addr = dynamic_cast<IdentifierSymbolEntry*>(lval->getSymPtr())->getAddr();

    Operand *src = expr->getOperand();
    /***
     * We haven't implemented array yet, the lval can only be ID. So we just store the result of the `expr` to the addr of the id.
     * If you want to implement array, you have to caculate the address first and then store the result into it.
     */
    if(lval->getSymPtr()->getType()->isArray())
    {
        this->ArrgenCode();
    }    
    else new StoreInstruction(addr, src, bb);
}

void EmptyStmt::genCode()
{
    //donoting
}

void WhileStmt::genCode()
{
    // fprintf(stderr,"WhileStmt::genCode\n");
    Branch = 1;

    Function *func = builder->getInsertBB()->getParent();
    BasicBlock *bb = builder->getInsertBB();

    BasicBlock *cond_bb, *end_bb, *loop_bb;

    cond_bb = new BasicBlock(func);
    loop_bb = new BasicBlock(func);
    end_bb = new BasicBlock(func);

    this->condBlock = cond_bb;
    this->endBlock = end_bb;

    new UncondBrInstruction(cond_bb, bb);

    builder->setInsertBB(cond_bb);

    cond->genCode();
    backPatch(cond->trueList(), loop_bb);
    backPatch(cond->falseList(), end_bb);

    //break continue
    builder->setInsertBB(loop_bb);
    loopStmt->genCode();

    loop_bb = builder->getInsertBB();
    new UncondBrInstruction(cond_bb, loop_bb);

    builder->setInsertBB(end_bb);

}

void BreakStmt::genCode()
{
    BasicBlock *bb = builder->getInsertBB(); 
    Function* func = builder->getInsertBB()->getParent();

    new UncondBrInstruction(this->whileStmt->getEnd(), bb);

    BasicBlock* succ_bb = new BasicBlock(func);
    builder->setInsertBB(succ_bb);
}

void ContinueStmt::genCode()
{
    BasicBlock *bb = builder->getInsertBB(); 
    Function* func = builder->getInsertBB()->getParent();

    new UncondBrInstruction(this->whileStmt->getCond(), bb);

    BasicBlock* succ_bb = new BasicBlock(func);
    builder->setInsertBB(succ_bb);
}

void ExprStmtNode::genCode()
{
    for(auto expr:exprList)
    {
        expr -> genCode();
    }
}

void FunctionDef::genCode()
{
    Unit *unit = builder->getUnit();
    Function *func = new Function(unit, se);
    BasicBlock *entry = func->getEntry();
    // set the insert point to the entry basicblock of this function.
    builder->setInsertBB(entry);

    if(params!=nullptr) //lab6
    { 
        params->genCode();
    }

    stmt->genCode();

    if(this->noretstmt) 
    {
        ReturnStmt* voidRet = new ReturnStmt(nullptr);
        voidRet->genCode();
    }
    /**
     * Construct control flow graph. You need do set successors and predecessors for each basic block.
     * Todo
    */
    for (auto block = func->begin(); block != func->end(); block++) 
    {
        // 清除ret之后的全部指令
        Instruction* cur = (*block)->begin();
        while(cur != (*block)->end()) 
        {
            if(cur->isRet()) 
            {
                while(cur != (*block)->rbegin()) 
                {
                    (*block)->remove(cur->getNext());
                }
                break;
            }
            cur = cur->getNext();
        }

        Instruction* Prev = (*block)->rbegin();

        if (Prev->isCond()) 
        {
            BasicBlock *trueBlock = dynamic_cast<CondBrInstruction*>(Prev)->getTrueBranch();
            BasicBlock *falseBlock = dynamic_cast<CondBrInstruction*>(Prev)->getFalseBranch();
            (*block)->addSucc(trueBlock);
            trueBlock->addPred(*block);
            (*block)->addSucc(falseBlock);
            falseBlock->addPred(*block);
        } 

        if (Prev->isUncond()) 
        {
            BasicBlock* nextBlock = dynamic_cast<UncondBrInstruction*>(Prev)->getBranch();
            (*block)->addSucc(nextBlock);
            nextBlock->addPred(*block);
        }
    }   
}

void FuncDefParamsNode::genCode()
{
    Function *func = builder->getInsertBB()->getParent();
    BasicBlock *entry = func->getEntry();

    for(auto param : paramsList)
    {
        func->insertparam(param->getOperand()); 
        IdentifierSymbolEntry* se = dynamic_cast<IdentifierSymbolEntry*>(param->getSymPtr());

        Type *paramtype = new PointerType(param->getSymPtr()->getType());//声明参数类型的指针
        SymbolEntry *new_se = new TemporarySymbolEntry(paramtype, SymbolTable::getLabel());//为参数类型指针建立临时变量符号表项
        
        Operand* addr = new Operand(new_se); //参数类型的指针的符号表项的操作数
        Instruction *alloca = new AllocaInstruction(addr, se);// allocate space for local id in function stack.
       
        entry->insertFront(alloca); //首个基本块的第一条指令为分配指令     // allocate instructions should be inserted into the begin of the entry block.
        se->setAddr(addr);
        Operand *src = param->getOperand();

        new StoreInstruction(addr, src, entry);
    }    
}

void FuncCallNode::genCode()
{
    // fprintf(stderr,"FuncCallNode::genCode\n");
    BasicBlock *bb = builder->getInsertBB();

    IdentifierSymbolEntry *se = dynamic_cast<IdentifierSymbolEntry *>(funcId->getSymPtr());
    //库函数
    if(se->isLib())
    {
        this->builder->getUnit()->insertLibfunc(se);
    }
    //类型转换
    if (params != nullptr)
    {
        params->genCode();
        std::vector<ExprNode*> callParams = params->getParamsList();
        std::vector<Operand*> operandArray;
        for(int i=0; i < (int)callParams.size(); i++)
        {
            Operand* op = callParams[i]->getOperand();
            op = typeCast(callParams[i]->getSymPtr()->getType(), op, builder);
            if(callParams[i]->getSymPtr()->isConstant()||callParams[i]->getSymPtr()->getType()->isConst())
            { 
                double val = callParams[i]->getSymPtr()->isConstant() ? ((ConstantSymbolEntry*)(callParams[i]->getSymPtr()))->getValue() : ((IdentifierSymbolEntry*)(callParams[i]->getSymPtr()))->value;
                Operand* replace ;
                Operand* origin;
                if(callParams[i]->getSymPtr()->getType()->isInt())
                {
                    replace = new Operand(new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel()));
                    origin = new Operand(new ConstantSymbolEntry(TypeSystem::constIntType, val));
                }
                else if(callParams[i]->getSymPtr()->getType()->isFloat())
                {
                    replace = new Operand(new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel()));
                    origin = new Operand(new ConstantSymbolEntry(TypeSystem::constFloatType, val));
                }
                new LoadInstruction(replace, origin, bb);
                op = replace;
            }

            operandArray.push_back(op);
        }
        new CallInstruction(dst, dynamic_cast<IdentifierSymbolEntry*>(funcId->getSymPtr()), operandArray, bb);       
    }
    else
    {
        std::vector<Operand*> emptyparamList;
        new CallInstruction(dst, dynamic_cast<IdentifierSymbolEntry*>(funcId->getSymPtr()), emptyparamList, bb);     
    }
}

void FuncCallParamsNode::genCode()
{
    Branch++;
    for(auto param : paramsList)
    {
        param -> genCode();
    }
    Branch--;    
}


//genCode end here





//Array begin here


//  forArray
        Type *curArrType = nullptr;//当前赋值中的数组的类型
        Operand* curArrAddr = nullptr;//当前赋值中的数组的基址
        std::vector<int> curArrDims;//当前处理数组的维度
        int curDeepth = 0;//当前已处理深数
        std::vector<ExprNode*> curArrVals;//当前要给数组的值
        int curOffset = 0;




void ArrDimNode::DimInit(IdentifierSymbolEntry* se)
{
    // fprintf(stderr,"\n");
    for(auto dim : this->dimList)
    {
        //Constant 或 constId与Constant的计算式(Calculate得到)
        if(dim->getSymPtr()->isConstant())
        {
            int val = (int)(((ConstantSymbolEntry*)(dim->getSymPtr()))->getValue());
            if(se->getType()->isArrInt())   ((ArrIntType*)(se->getType()))->addDims(val);
            else if(se->getType()->isConstArrInt()) ((ConstArrIntType*)(se->getType()))->addDims(val);
            else if(se->getType()->isArrFloat())    ((ArrFloatType*)(se->getType()))->addDims(val);
            else if(se->getType()->isConstArrFloat())   ((ConstArrFloatType*)(se->getType()))->addDims(val);
            else
            {
                fprintf(stderr,"Assigning values to array dimensions using variables \n");
                exit(EXIT_FAILURE);
            }
        }
        else if(dim->getSymPtr()->getType()->isConst()) //constId 
        {
            int val = ((IdentifierSymbolEntry*)(dim->getSymPtr()))->value;
            if(se->getType()->isArrInt())   ((ArrIntType*)(se->getType()))->addDims(val);
            // else if(se->getType()->isConstArrInt()) ((ConstArrIntType*)(se->getType()))->addDims(val,isparam);
            else if(se->getType()->isArrFloat())    ((ArrFloatType*)(se->getType()))->addDims(val);
            // else if(se->getType()->isConstArrFloat())   ((ConstArrFloatType*)(se->getType()))->addDims(val,isparam);
            else
            {
                fprintf(stderr,"Assigning values to array dimensions using variables \n");
                exit(EXIT_FAILURE);
            }            
        }
    }
}

void ArrDimNode::Calculate(Node**)
{
    // fprintf(stderr,"ArrDimNode::Calculate\n");
    for(int i = 0; i<dimList.size(); i++)
    {

        dimList[i]->Calculate((Node**)(&(dimList[i])));
    }    
}
//from DefNode::ArrCalculate
void ArrValNode::Calculate(Node**)
{
    if(isExp())
    {
        assert(selfExp != nullptr);
        selfExp->Calculate((Node**)&(selfExp));
        curArrVals.push_back(selfExp);
    }
    if(isList())
    {
        curDeepth++;

        int NonEmptySize = 0;
        for(auto child : childList)
        {
            child->Calculate((Node**)&child);
            NonEmptySize++;
        }

        int padSize = 1;
        //对于深度为1的:a[2][3] = {1},目标是填满 2*3=6个
        //对于深度为2的:a[4][2] = {1,2,{3},{5},6,7} 中的{3}目标是填满 2 个
        //对于深度为2的:a[2][3] = {1,2,3,{4,5}} 中的{4,5}目标是填满 3 个
        //对于深度为2的:a[4][2] = {{1, 2}, {3, 4}, {}, 7}中{}目标是填2个 
        //n维深度最多就是n
        int DimSize = (int)(curArrDims.size());
        for(int i = curDeepth - 1; i<DimSize; i++)
        {
            padSize = padSize*curArrDims[i];
        }
        
        int t = 0;
        if(curDeepth-1 < DimSize)  t = curArrDims[curDeepth-1];

        while( (curDeepth-1 == DimSize && NonEmptySize == 0) || (curDeepth-1<DimSize && NonEmptySize < t ) || (curArrVals.size() % padSize != 0))
        {
            ConstantSymbolEntry* zeroSe;
            if(curArrType->isAnyInt())  zeroSe = new ConstantSymbolEntry(TypeSystem::constIntType,0);
            else if(curArrType->isAnyFloat())   zeroSe = new ConstantSymbolEntry(TypeSystem::constFloatType,0);
            curArrVals.push_back(new Constant(zeroSe));
      
            NonEmptySize++;
        }

        curDeepth--;
    }
}

void DefNode::ArrCalculate(Node**)
{
    /*
    id 的 caluculate 在数组与非数组的共同部分完成 
    只是对赋给数组的值做类型检查 
    调用ArrValNode::Calculate
    */   
   //Value为空走不到这步

    //获取数组维度数据,将{{{{}{}}}}展成{}
    curArrAddr = nullptr;
    curOffset = 0;
    curArrDims.clear();
    curDeepth = 0;
    curArrVals.clear();
    bool isconstArr = ((ArrValNode*)(this->Value))->isConstArrVal();
    curArrType =id->getSymPtr()->getType();

    if(curArrType->isArrInt())   curArrDims=((ArrIntType*)(curArrType))->getDims();
    else if(curArrType->isConstArrInt())    curArrDims=((ConstArrIntType*)(curArrType))->getDims();
    else if(curArrType->isArrFloat())    curArrDims=((ArrFloatType*)(curArrType))->getDims();
    else if(curArrType->isConstArrFloat())   curArrDims=((ConstArrFloatType*)(curArrType))->getDims();
    else    exit(EXIT_FAILURE);

    Value->Calculate((Node**)&Value);//void ArrValNode::Calculate(Node**)

    ArrValNode* newValue = new ArrValNode(isconstArr);
    
    for(auto exp : curArrVals)
    {
        ArrValNode* node = new ArrValNode(isconstArr);
        node->setExp(exp);
        newValue->addChild(node);
    }

    this->Value = newValue;

    //Id 是 const
    IdentifierSymbolEntry* se = ((IdentifierSymbolEntry*)(id->getSymPtr()));
    if(se->getType()->isConst() || se->isGlobal())
    {
        if(se->arrVal.size() == 0)
        {
            for(auto child : newValue->childList)
            {
            if(child->getselfExp() == nullptr) exit(EXIT_FAILURE);
                ExprNode* Exp = child->getselfExp();
                double val = ((ConstantSymbolEntry*)(child->getselfExp()->getSymPtr()))->getValue();
                se->arrVal.push_back(val);                
            }
        }
    }

}

void Id::ArrCalculate(Node**)
{
    /*
    调用ArrDimNode::Calculate 完成维度数值的计算

    由DefNode::typeCheck至此 各维度计算完都应该是const
    要给数组类型添加维度信息
    */
   if(this->dimension != nullptr)
   {
        this->dimension->Calculate(nullptr);//ArrDimNode::Calculate(Node**) 先计算
        if(! this->getSymPtr()->getType()-> ArrInitFinsh)
        {
            this->dimension->DimInit(((IdentifierSymbolEntry*)(this->getSymPtr())));//填充type
            this->getSymPtr()->getType()-> ArrInitFinsh = true;
        }
   }

}





void DefNode::ArrtypeCheck()
{
    /*
    id 的 typecheck 在数组与非数组的共同部分完成 
    只是对赋给数组的值做类型检查 
    调用ArrValNode::typeCheck
    */
   this->Value->typeCheck();
}
// from Id::ArrtypeCheck
void ArrDimNode::typeCheck()
{
    for(auto dim : this->dimList)
        dim->typeCheck();
}
//from DefNode::ArrtypeCheck
void ArrValNode::typeCheck()
{
    if(isExp())
    {
        assert(selfExp != nullptr);
        selfExp->typeCheck();
    }
    if(isList())
    {
        for(auto child : childList)
        {
            child->typeCheck();
        }        
    }    
}

void Id::ArrtypeCheck()
{
    if(this->dimension != nullptr) dimension->typeCheck();
}





        // Type *curArrType = nullptr;//当前赋值中的数组的类型
        // Operand* curArrAddr = nullptr;//当前赋值中的数组的基址
        // std::vector<int> curArrDims;//当前处理数组的维度
        // int curDeepth = 0;//当前已处理深数
        // std::vector<ExprNode*> curArrVals;//当前要给数组的值
        // int curOffset = 0;


//fin
void DefNode::ArrgenCode()
{
    /*
    走到这里Value非空
    用于生成store指令 在ArrValNode::genCode中生成
    */

    IdentifierSymbolEntry *se = dynamic_cast<IdentifierSymbolEntry *>(id->getSymPtr());
    Operand* addr = se->getAddr();

    curArrAddr = addr;
    curOffset = 0;
    curArrDims.clear();
    curDeepth = 0;
    curArrVals.clear();

    curArrType =id->getSymPtr()->getType();

    if(curArrType->isArrInt())   curArrDims=((ArrIntType*)(curArrType))->getDims();
    else if(curArrType->isConstArrInt())    curArrDims=((ConstArrIntType*)(curArrType))->getDims();
    else if(curArrType->isArrFloat())    curArrDims=((ArrFloatType*)(curArrType))->getDims();
    else if(curArrType->isConstArrFloat())   curArrDims=((ConstArrFloatType*)(curArrType))->getDims();
    else    exit(EXIT_FAILURE);

    this->Value->genCode();//ArrValNode::genCode

}
// from DefNode::ArrgenCode
void ArrValNode::genCode()
{
    BasicBlock *bb = builder->getInsertBB();
    if(isExp())
    {
        this->selfExp->genCode();
        Operand* src = selfExp->getOperand();
        Operand* offset = new Operand(new ConstantSymbolEntry(TypeSystem::constIntType, curOffset*4));
        Operand* dst = new Operand(new TemporarySymbolEntry(curArrType, SymbolTable::getLabel()));

        new BinaryInstruction(BinaryInstruction::ADD, dst, offset, curArrAddr, bb);

        new StoreInstruction(dst, src, bb);

    }
    if(isList())
    {
        for(auto child : childList)
        {
            child->genCode();
            curOffset++;
        }        
    }
}

void Id::ArrgenCode()
{
    BasicBlock *bb = builder->getInsertBB();

    Operand *addr = dynamic_cast<IdentifierSymbolEntry*>(symbolEntry)->getAddr();

    if(dimension != nullptr)
    {
        dimension->genCode();//ArrDimNode::genCode
    }

    Type*ArrType = this->getSymPtr()->getType();
    std::vector<int> ArrDims;

    if(ArrType->isArrInt())     ArrDims=((ArrIntType*)(ArrType))->getDims();
    else if(ArrType->isConstArrInt())    ArrDims=((ConstArrIntType*)(ArrType))->getDims();
    else if(ArrType->isArrFloat())    ArrDims=((ArrFloatType*)(ArrType))->getDims();
    else if(ArrType->isConstArrFloat())   ArrDims=((ConstArrFloatType*)(ArrType))->getDims();
    else    exit(EXIT_FAILURE);

    if(ArrDims[0] == -1)
    {
        TemporarySymbolEntry* se = new TemporarySymbolEntry(ArrType, SymbolTable::getLabel());
        Operand* new_addr = new Operand(se);
        new LoadInstruction(new_addr, addr, bb);
        addr = new_addr;
    }
    // fprintf(stderr,"Id::ArrgenCode3\n");
    //偏移量计算
    /*
    对于a[d1][d2] :  a[i1][i2] 需要取第二维的大小   
            offset = i1*d2+i2
    对于a[d1][d2][d3] a[i1][i2][i3] 需要取第二\三维的大小 
            offset = i1*(d2*d3)+i2*(d3)+i3 = d3*(d2*i1+i2)+i3
    对于a[d1][d2][d3] a[i1][i2]  需要取第二\三维的大小
            offset = i1*(d2*d3)+i2*d3 = d3*(d2*i1+i2)
            a[i1]  i1*d2*d3
            a[i1][i2] (d2*i1+i2) * d3  d3要单独乘 *d[size(index)+1-1]乘到d[size(dim)-1]
    递归
    offset[i+1] = dim[i+1]*offset[i]+index[i+1]

    对于维度,除了第一维都要取;
    对于索引,每一维都要取
    */
    //其实是除了第一维都要取,
    int DimNum = ArrDims.size();

    dst = new Operand(new TemporarySymbolEntry(dst->getType(), SymbolTable::getLabel()));

    if (this->dimension != nullptr) //非参数或者二维函数参数
    {
        int IndexNum = dimension->dimList.size();
     
        //offset[0] = index[0]
        Operand* o1 = dimension->dimList[0]->getOperand();
        for(int index = 1; index < IndexNum;   index++)
        {
            //o2 = d2*o1+i2
            //dim[i]
            Operand* d2 = new Operand(new ConstantSymbolEntry(TypeSystem::constIntType, ArrDims[index]));
            Operand* temp = new Operand(new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel()));
            //temp=dim[i]*offset[i-1]
            new BinaryInstruction(BinaryInstruction::MUL, temp, o1, d2, bb);
            o1 = new Operand(new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel()));
            //index[i]
            Operand* i2 = dimension->dimList[index]->getOperand();
            //offset[i]=dim[i]*offset[i-1]+index[i]
            new BinaryInstruction(BinaryInstruction::ADD, o1, temp, i2, bb);
        }
    
        //二维参数
        if(IndexNum < DimNum)
        {
            int i = IndexNum;
            while(i < DimNum)
            {
                Operand* d2 = new Operand(new ConstantSymbolEntry(TypeSystem::constIntType, ArrDims[i]));
                Operand* temp = new Operand(new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel()));
                new BinaryInstruction(BinaryInstruction::MUL, temp, o1, d2, bb);
                o1 = temp;
                i++;
            }
        }
        Operand* Relative_Offset = new Operand(new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel()));
        Operand* num4 = new Operand(new ConstantSymbolEntry(TypeSystem::intType, 4));
        new BinaryInstruction(BinaryInstruction::MUL, Relative_Offset, o1, num4, bb);

        TemporarySymbolEntry* offset_se = new TemporarySymbolEntry(this->getSymPtr()->getType() , SymbolTable::getLabel());
        Operand* Offset = new Operand(offset_se);

        if(( (IdentifierSymbolEntry*)(this->getSymPtr())) -> isGlobal() )
        {
            
            Operand* global_addr = new Operand(new TemporarySymbolEntry(ArrType, SymbolTable::getLabel()));
            new LoadInstruction(global_addr, addr, bb);
            addr = global_addr;
            offset_se->setGlobalArr();
            ((TemporarySymbolEntry*)(dst->getEntry()))->setGlobalArr();

        }
        
        if(IndexNum == DimNum)
        {
            new BinaryInstruction(BinaryInstruction::ADD, Offset, Relative_Offset, addr, bb);
            new LoadInstruction(dst, Offset, bb);
        }
        else
        {
            if(dst->getType()->isArrInt())
            {
                dst->getEntry()->setType(new ArrIntType(*(dynamic_cast<ArrIntType*>(dst->getType()))));
                dynamic_cast<ArrIntType*>(dst->getType())->setPointer(true);
            }
            else if(dst->getType()->isArrFloat())
            {
                dst->getEntry()->setType(new ArrFloatType(*(dynamic_cast<ArrFloatType*>(dst->getType()))));
                dynamic_cast<ArrFloatType*>(dst->getType())->setPointer(true);
            }
            else if(dst->getType()->isConstArrInt())
            {
                dst->getEntry()->setType(new ConstArrIntType(*(dynamic_cast<ConstArrIntType*>(dst->getType()))));
                dynamic_cast<ConstArrIntType*>(dst->getType())->setPointer(true);
            }
            else if(dst->getType()->isConstArrFloat())
            {
                dst->getEntry()->setType(new ConstArrFloatType(*(dynamic_cast<ConstArrFloatType*>(dst->getType()))));
                dynamic_cast<ConstArrFloatType*>(dst->getType())->setPointer(true);
            }
            new BinaryInstruction(BinaryInstruction::ADD, dst, Relative_Offset, addr, bb);
        }
    }
    else
    {
        Operand*Relative_Offset = new Operand(new ConstantSymbolEntry(TypeSystem::constIntType, 0));

        TemporarySymbolEntry* offset_se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        Operand* Offset = new Operand(offset_se);

        if(( (IdentifierSymbolEntry*)(this->getSymPtr())) -> isGlobal() )
        {
            Operand* global_addr = new Operand(new TemporarySymbolEntry(ArrType, SymbolTable::getLabel()));
            new LoadInstruction(global_addr, addr, bb);
            addr = global_addr;
            offset_se->setGlobalArr();
            dynamic_cast<TemporarySymbolEntry*>(dst->getEntry())->setGlobalArr();
        } 

            if(dst->getType()->isArrInt())
            {
                dst->getEntry()->setType(new ArrIntType(*(dynamic_cast<ArrIntType*>(dst->getType()))));
                dynamic_cast<ArrIntType*>(dst->getType())->setPointer(true);
            }
            else if(dst->getType()->isArrFloat())
            {
                dst->getEntry()->setType(new ArrFloatType(*(dynamic_cast<ArrFloatType*>(dst->getType()))));
                dynamic_cast<ArrFloatType*>(dst->getType())->setPointer(true);
            }
            else if(dst->getType()->isConstArrInt())
            {
                dst->getEntry()->setType(new ConstArrIntType(*(dynamic_cast<ConstArrIntType*>(dst->getType()))));
                dynamic_cast<ConstArrIntType*>(dst->getType())->setPointer(true);
            }
            else if(dst->getType()->isConstArrFloat())
            {
                dst->getEntry()->setType(new ConstArrFloatType(*(dynamic_cast<ConstArrFloatType*>(dst->getType()))));
                dynamic_cast<ConstArrFloatType*>(dst->getType())->setPointer(true);
            }
            new BinaryInstruction(BinaryInstruction::ADD, dst, Relative_Offset, addr, bb);               
    }
}
        





void ArrDimNode::genCode()
{
    for(auto dim : this->dimList)
        dim->genCode();

}

void AssignStmt::ArrgenCode()
{
    BasicBlock *bb = builder->getInsertBB();

    ArrDimNode* Dim = ((Id*)lval)->getDim();
    Dim->genCode();

    Type*ArrType = lval->getSymPtr()->getType();
    
    std::vector<int> ArrDims;

    if(ArrType->isArrInt())   ArrDims=((ArrIntType*)(ArrType))->getDims(); 
    // else if(ArrType->isConstArrInt())    ArrDims=((ConstArrIntType*)(ArrType))->getDims(); 
    else if(ArrType->isArrFloat())    ArrDims=((ArrFloatType*)(ArrType))->getDims(); 
    // else if(ArrType->isConstArrFloat())   ArrDims=((ConstArrFloatType*)(ArrType))->getDims(); 

    Operand *addr = dynamic_cast<IdentifierSymbolEntry*>(lval->getSymPtr())->getAddr();

    int DimNum = ArrDims.size();
    int IndexNum = Dim->dimList.size();

    Type* targetType = ((PointerType*)(addr->getType()))->getValueType();
    if(targetType->isArrFloat())  targetType = TypeSystem::floatType;

    if(ArrDims[DimNum-1] == -1)
    {
        TemporarySymbolEntry* se = new TemporarySymbolEntry(ArrType, SymbolTable::getLabel());
        Operand* new_addr = new Operand(se);
        new LoadInstruction(new_addr, addr, bb);
        addr = new_addr;        
    }



    Operand* o1 = Dim->dimList[0]->getOperand();
    for(int index = 1; index < IndexNum;   index++)
    {
        //o2 = d2*o1+i2
        //dim[i]
        Operand* d2 = new Operand(new ConstantSymbolEntry(TypeSystem::constIntType, ArrDims[index]));
        Operand* temp = new Operand(new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel()));
        //temp=dim[i]*offset[i-1]
        new BinaryInstruction(BinaryInstruction::MUL, temp, o1, d2, bb);
        o1 = new Operand(new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel()));
        //index[i]
        Operand* i2 = Dim->dimList[index]->getOperand();
        //offset[i]=dim[i]*offset[i-1]+index[i]
        new BinaryInstruction(BinaryInstruction::ADD, o1, temp, i2, bb);
    }

    Operand* Relative_Offset = new Operand(new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel()));
    Operand* num4 = new Operand(new ConstantSymbolEntry(TypeSystem::intType, 4));
    new BinaryInstruction(BinaryInstruction::MUL, Relative_Offset, o1, num4, bb);

    TemporarySymbolEntry* offset_se = new TemporarySymbolEntry(ArrType, SymbolTable::getLabel());
    Operand* Offset = new Operand(offset_se);

    if(( (IdentifierSymbolEntry*)(lval->getSymPtr())) -> isGlobal() )
    {
        Operand* global_addr = new Operand(new TemporarySymbolEntry(ArrType, SymbolTable::getLabel()));
        new LoadInstruction(global_addr, addr, bb);
        addr = global_addr;
        offset_se->setGlobalArr();
    }

    Operand *src = typeCast(targetType, expr->getOperand(), builder);

    new BinaryInstruction(BinaryInstruction::ADD, Offset, Relative_Offset, addr, bb);
    new StoreInstruction(Offset, src, bb);


}




