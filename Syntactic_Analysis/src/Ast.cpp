#include "Ast.h"
#include "SymbolTable.h"
#include <string>
#include "Type.h"

extern FILE *yyout;
int Node::counter = 0;

Node::Node()
{
    seq = counter++;
}

void Ast::output()
{
    fprintf(yyout, "program\n");
    if(root != nullptr)
        root->output(4);
}

Type* ExprNode::getType()
{
    return symbolEntry->getType();
}

void SeqNode::output(int level)
{
    fprintf(yyout, "%*cSequence\n", level, ' ');
    stmt1->output(level + 4);
    stmt2->output(level + 4);
}

void EmptyStmt::output(int level)
{
    fprintf(yyout, "%*cEmptyStmt\n", level, ' ');
}

void IfStmt::output(int level)
{
    fprintf(yyout, "%*cIfStmt\n", level, ' ');
    cond->output(level + 4);
    thenStmt->output(level + 4);
}

void IfElseStmt::output(int level)
{
    fprintf(yyout, "%*cIfElseStmt\n", level, ' ');
    cond->output(level + 4);
    thenStmt->output(level + 4);
    elseStmt->output(level + 4);
}

void WhileStmt::output(int level)
{
    fprintf(yyout, "%*cWhileStmt\n", level, ' ');
    cond->output(level + 4);
    loopStmt->output(level + 4);
}

void BreakStmt::output(int level)
{
    fprintf(yyout, "%*cBreakStmt\n", level, ' ');
}

void ContinueStmt::output(int level)
{
    fprintf(yyout, "%*cContinueStmt\n", level, ' ');
}

void ReturnStmt::output(int level)
{
    fprintf(yyout, "%*cReturnStmt\n", level, ' ');
    if (retValue != nullptr)
        retValue->output(level + 4);
}

void Id::output(int level)
{
    std::string name, type;
    int scope;
    name = symbolEntry->toStr();
    type = symbolEntry->getType()->toStr();
    scope = dynamic_cast<IdentifierSymbolEntry*>(symbolEntry)->getScope();
    fprintf(yyout, "%*cId\tname: %s\tscope: %d\ttype: %s\n", level, ' ',
            name.c_str(), scope, type.c_str());
    if (isArray && dimension != nullptr)
    {
        dimension -> output(level+4);
    }
}

void DeclStmt::addNext(DefNode* next)
{
    defList.push_back(next);
}

void DeclStmt::output(int level)
{
    fprintf(yyout, "%*cDeclStmt\n", level, ' ');
    for(auto it	: defList)
	{
		it -> output(level);
	}
}

void DefNode::output(int level)
{
    std::string constStr = isConst ? "Const" : "Variable";
    std::string arrayStr = isArray ? "Array" : "NonArray";
    fprintf(yyout, "%*cDefNode\t%s\t%s\n", level, ' ', constStr.c_str(), arrayStr.c_str());
    id->output(level+4);
    if(Value == nullptr){
        fprintf(yyout, "%*cThis variable/constant is not assigned\n", level+4, ' ');
    }
    else{
        Value->output(level+4);
    }
}

void DeclValNode::addNext(DeclValNode* next)
{
    innerList.push_back(next);
}

void DeclValNode::output(int level)
{
    std::string constStr = isConst ? "Const" : "Variable";
    fprintf(yyout, "%*cDeclValNode\t%s\n", level, ' ', constStr.c_str());
    for(auto child : innerList)
    {
        child->output(level+4);
    }
    if(leafNode!=nullptr){
        leafNode->output(level+4);
    }
}

void DeclValNode::setLeafNode(ExprNode* leaf)
{
    leafNode = leaf;
}

bool DeclValNode::isLeaf()
{
    return innerList.empty();
}

void BinaryExpr::output(int level)
{
    std::string op_str;
    switch(op)
    {
        case OR:
            op_str = "or";
            break;
        case AND:
            op_str = "and";
            break;
        case EQUAL:
            op_str = "equal";
            break;
        case UNEQUAL:
            op_str = "unequal";
            break;
        case LESS:
            op_str = "less";
            break;
        case GREATER:
            op_str = "greater";
            break;
        case LESSorEQUAL:
            op_str = "lessorequal";
            break;
        case GREATERorEQUAL:
            op_str = "greaterorequal";
            break;
        case ADD:
            op_str = "add";
            break;
        case SUB:
            op_str = "sub";
            break;
        case MULTI:
            op_str = "multi";
            break;
        case DIVIDE:
            op_str = "divide";
            break;
        case MOD:
            op_str = "mod";
            break;        
    }
    fprintf(yyout, "%*cBinaryExpr\top: %s\n", level, ' ', op_str.c_str());
    expr1->output(level + 4);
    expr2->output(level + 4);
}

void SingleExpr::output(int level)
{
    std::string op_str;
    switch(op)
    {
        case ADD:
            op_str = "add";
            break;
        case SUB:
            op_str = "sub";
            break;
        case NOT:
            op_str = "not";
            break;  
    }
    fprintf(yyout, "%*cSingleExpr\top: %s\n", level, ' ', op_str.c_str());
    expr1->output(level + 4);
}

void Constant::output(int level)
{
    std::string type, value;
    type = symbolEntry->getType()->toStr();
    value = symbolEntry->toStr();
    fprintf(yyout, "%*cIntegerLiteral\tvalue: %s\ttype: %s\n", level, ' ',
            value.c_str(), type.c_str());
}



void CompoundStmt::output(int level)
{
    fprintf(yyout, "%*cCompoundStmt\n", level, ' ');
    if (stmt!= nullptr)
        stmt->output(level + 4);
}


void AssignStmt::output(int level)
{
    fprintf(yyout, "%*cAssignStmt\n", level, ' ');
    left_expr->output(level + 4);
    assign_expr->output(level + 4);
}
void FuncDefParamsNode::addNext(Id* next)
{
    paramsList.push_back(next);
}

std::vector<Type*> FuncDefParamsNode::getParamsType()
{
    std::vector<Type*> typeArray;
    for(auto param : paramsList){
        typeArray.push_back(param->getType());
    }
    return typeArray;
}

void FuncDefParamsNode::output(int level)
{
    fprintf(yyout, "%*cFuncDefParamsNode\n", level, ' ');
    for(auto param : paramsList){
        param->output(level+4);
    }
}

void FunctionDef::output(int level)
{
    std::string name, type;
    name = se->toStr();
    type = se->getType()->toStr();
    fprintf(yyout, "%*cFunctionDefine function name: %s, type: %s\n", level, ' ', 
            name.c_str(), type.c_str());
    if(params!=nullptr){
        params->output(level+4);
    }
    else{
        fprintf(yyout, "%*cFuncDefParamsNode NULL\n", level+4, ' ');
    }
    stmt->output(level + 4);
}

void FuncCallNode::output(int level)
{
    std::string name, type;
    int scope;
    SymbolEntry* funcEntry = funcId->getSymbolEntry();
    name = funcEntry->toStr();
    type = funcEntry->getType()->toStr();
    scope = dynamic_cast<IdentifierSymbolEntry*>(funcEntry)->getScope();
    fprintf(yyout, "%*cFuncCallNode\tfuncName: %s\t funcType: %s\tscope: %d\n", 
            level, ' ', name.c_str(), type.c_str(), scope);
    if(params!=nullptr){
        params->output(level+4);
    }
    else{
        fprintf(yyout, "%*cFuncCallParamsNode NULL\n", level+4, ' ');
    }
}

void FuncCallParamsNode::addNext(ExprNode* next)
{
    paramsList.push_back(next);
}

void FuncCallParamsNode::output(int level)
{
    fprintf(yyout, "%*cFuncCallParamsNode\n", level, ' ');
    for(auto param : paramsList){
        param->output(level+4);
    }
}
void ExprStmtNode::addNext(ExprNode* next)
{
    exprList.push_back(next);
}
void ExprStmtNode::output(int level)
{
    fprintf(yyout, "%*cExprStmtNode\n", level, ' ');
    for(auto expr : exprList)
    {
        expr->output(level+4);
    }
}
