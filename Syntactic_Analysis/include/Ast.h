#ifndef __AST_H__
#define __AST_H__

#include <fstream>
#include <vector>

class SymbolEntry;
class Type;

class Node
{
private:
    static int counter;
    int seq;
public:
    Node();
    int getSeq() const {return seq;};
    virtual void output(int level) = 0;
};
//表达式节点 可以获取类型
class ExprNode : public Node
{
protected:
    SymbolEntry *symbolEntry;
public:
    ExprNode(){};
    ExprNode(SymbolEntry *symbolEntry) : symbolEntry(symbolEntry){};
    Type* getType();
};
//语句节点
class StmtNode : public Node
{};
//表达式语句节点 多条连在一起vector存储 
class ExprStmtNode : public StmtNode
{
private:
    std::vector<ExprNode*> exprList;
public:
    ExprStmtNode(){};
    void addNext(ExprNode* next);
    void output(int level);
};

//语句(双)
class SeqNode : public StmtNode
{
private:
    StmtNode *stmt1, *stmt2;
public:
    SeqNode(StmtNode *stmt1, StmtNode *stmt2) : stmt1(stmt1), stmt2(stmt2){};
    void output(int level);
};
//if_then 语句
class IfStmt : public StmtNode
{
private:
    ExprNode *cond;
    StmtNode *thenStmt;
public:
    IfStmt(ExprNode *cond, StmtNode *thenStmt) : cond(cond), thenStmt(thenStmt){};
    void output(int level);
};
//if_else 语句
class IfElseStmt : public StmtNode
{
private:
    ExprNode *cond;
    StmtNode *thenStmt;
    StmtNode *elseStmt;
public:
    IfElseStmt(ExprNode *cond, StmtNode *thenStmt, StmtNode *elseStmt) : cond(cond), thenStmt(thenStmt), elseStmt(elseStmt) {};
    void output(int level);
};
//while 语句
class WhileStmt : public StmtNode
{
private:
    ExprNode *cond;
    StmtNode *loopStmt;
public:
    WhileStmt(ExprNode *cond, StmtNode *loopStmt) : cond(cond), loopStmt(loopStmt) {};
    void output(int level);
};
//空语句
class EmptyStmt : public StmtNode
{
public:
    EmptyStmt(){};
    void output(int level);
};
//break 语句
class BreakStmt : public StmtNode
{
public:
    BreakStmt(){};
    void output(int level);
};
//continue 语句
class ContinueStmt : public StmtNode
{
public:
    ContinueStmt(){};
    void output(int level);
};
//return 语句
class ReturnStmt : public StmtNode
{
private:
    ExprNode *retValue;
public:
    ReturnStmt(ExprNode*retValue) : retValue(retValue) {};
    void output(int level);
};

class Id : public ExprNode
{
private:
    ExprStmtNode* dimension;
    bool isArray;
public:
    Id(SymbolEntry *se) : ExprNode(se),dimension(nullptr),isArray(false) {};
    SymbolEntry* getSymbolEntry() {return symbolEntry;}
    void AddDimension(ExprStmtNode* dim) 
    {
        dimension = dim;
        isArray = true;
    }
    void output(int level);
};

class DefNode : public StmtNode
{
private:
    bool isConst;
    bool isArray;
    Id* id;
    Node* Value;
public:
    DefNode(Id* id, Node* initVal, bool isConst, bool isArray) : 
        isConst(isConst), isArray(isArray), id(id), Value(initVal){};
    Id* getId() {return id;}
    void output(int level);
};

class DeclStmt : public StmtNode
{
private:
    bool isConst;
    std::vector<DefNode*> defList;
public:
    DeclStmt(bool isConst) : isConst(isConst){};
    void addNext(DefNode* next);
    void output(int level);
};

class DeclValNode: public StmtNode
{
private:
    bool isConst;
    ExprNode* leafNode; 
    std::vector<DeclValNode*> innerList;
public:
    DeclValNode(bool isConst) : 
        isConst(isConst), leafNode(nullptr){};
    void addNext(DeclValNode* next);
    void setLeafNode(ExprNode* leaf);
    bool isLeaf();
    void output(int level);
}; 
class BinaryExpr : public ExprNode
{
private:
    int op;
    ExprNode *expr1, *expr2;
public:
    enum {OR, AND, EQUAL, UNEQUAL, LESS, GREATER, LESSorEQUAL, GREATERorEQUAL, ADD, SUB, MULTI, DIVIDE, MOD};
    BinaryExpr(SymbolEntry *se, int op, ExprNode*expr1, ExprNode*expr2) : ExprNode(se), op(op), expr1(expr1), expr2(expr2){};
    void output(int level);
};

class SingleExpr : public ExprNode
{
private:
    int op;
    ExprNode *expr1;
public:
    enum {ADD, SUB, NOT};
    SingleExpr(SymbolEntry *se, int op, ExprNode*expr1) : ExprNode(se), op(op), expr1(expr1){};
    void output(int level);
};

class Constant : public ExprNode
{
public:
    Constant(SymbolEntry *se) : ExprNode(se){};
    void output(int level);
};
class AssignStmt : public StmtNode
{
private:
    ExprNode *left_expr;
    ExprNode *assign_expr;
public:
    AssignStmt(ExprNode *left_expr, ExprNode *assign_expr) : left_expr(left_expr), assign_expr(assign_expr){};
    void output(int level);
};
class CompoundStmt : public StmtNode
{
private:
    StmtNode *stmt;
public:
    CompoundStmt(StmtNode *stmt) : stmt(stmt) {};
    void output(int level);
};


class FuncCallParamsNode : public StmtNode
{
private:
    std::vector<ExprNode*> paramsList;
public:
    FuncCallParamsNode(){};
    void addNext(ExprNode* next);
    void output(int level);
};

class FuncCallNode : public ExprNode
{
private:
    Id* funcId;
    FuncCallParamsNode* params;
public:
    FuncCallNode(SymbolEntry *se, Id* id, FuncCallParamsNode* params) : ExprNode(se), funcId(id), params(params){};
    void output(int level);
};

class FuncDefParamsNode : public StmtNode
{
private:
    std::vector<Id*> paramsList;
public:
    FuncDefParamsNode() {};
    void addNext(Id* next);
    std::vector<Type*> getParamsType();
    void output(int level);
};

class FunctionDef : public StmtNode
{
private:
    SymbolEntry *se;
    FuncDefParamsNode *params;
    StmtNode *stmt;
public:
    FunctionDef(SymbolEntry *se, FuncDefParamsNode *params, StmtNode *stmt) : se(se), params(params), stmt(stmt){};
    void output(int level);
};

class Ast
{
private:
    Node* root;
public:
    Ast() {root = nullptr;}
    void setRoot(Node*n) {root = n;}
    void output();
};

#endif
