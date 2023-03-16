#ifndef __AST_H__
#define __AST_H__

#include <fstream>
#include "Operand.h"
#include<stack>//bd
#include<vector>//yxy

class SymbolEntry;
class Unit;
class Function;
class BasicBlock;
class Instruction;
class IRBuilder;
class Type;//yxy

class Node
{
private:
    static int counter;
    int seq;
protected:
    std::vector<Instruction*> true_list;
    std::vector<Instruction*> false_list;
    static IRBuilder *builder;
    void backPatch(std::vector<Instruction*> &list, BasicBlock*bb);
    std::vector<Instruction*> merge(std::vector<Instruction*> &list1, std::vector<Instruction*> &list2);
    //Modify 类型转换
    Operand* typeCast(Type* targetType, Operand* operand); //YXY
public:
    Node();
    int getSeq() const {return seq;};
    static void setIRBuilder(IRBuilder*ib) {builder = ib;};
    virtual void output(int level) = 0;
    virtual void typeCheck() = 0;
    virtual void genCode() = 0;
    std::vector<Instruction*>& trueList() {return true_list;}
    std::vector<Instruction*>& falseList() {return false_list;}
};
//表达式节点
class ExprNode : public Node
{
protected:
    SymbolEntry *symbolEntry;
    Operand *dst;   // The result of the subtree is stored into dst.
public:
    ExprNode(SymbolEntry *symbolEntry) : symbolEntry(symbolEntry){dst = new Operand(symbolEntry);};
    Operand* getOperand() {return dst;};
    SymbolEntry* getSymPtr() {return symbolEntry;};
    //Modify 类型 getType setType finished yxy
    Type* getType(){return symbolEntry->getType();};
    void setType(Type* type){ symbolEntry->setType(type);};
};

class BinaryExpr : public ExprNode
{
private:
    int op;
    ExprNode *expr1, *expr2;
public:
    enum {OR, AND, EQUAL, UNEQUAL, LESS, GREATER, LESSorEQUAL, GREATERorEQUAL, ADD, SUB, MULTI, DIVIDE, MOD};//Modify 补全二元运算符 finished
    BinaryExpr(SymbolEntry *se, int op, ExprNode*expr1, ExprNode*expr2) : ExprNode(se), op(op), expr1(expr1), expr2(expr2){dst = new Operand(se);};
    void output(int level);
    void typeCheck();
    void genCode();
};

//Modify 一元运算
class SingleExpr : public ExprNode
{
private:
    int op;
    ExprNode *expr1;
public:
    enum { SUB, NOT}; //yxy
    SingleExpr(SymbolEntry *se, int op, ExprNode*expr1) : ExprNode(se), op(op), expr1(expr1){};
    void output(int level);
    void typeCheck();//Modify 
    void genCode();    
};
//常量
class Constant : public ExprNode
{
public:
    Constant(SymbolEntry *se) : ExprNode(se){dst = new Operand(se);};
    void output(int level);
    void typeCheck();
    void genCode();
};
//id
class Id : public ExprNode
{
    //Modify 数组
public:
    // Id(SymbolEntry *se) : ExprNode(se){SymbolEntry *temp = new TemporarySymbolEntry(se->getType(), SymbolTable::getLabel()); dst = new Operand(temp);};
    //Id(SymbolEntry *se) : ExprNode(se){dst = new Operand(se);};
    Id(SymbolEntry *se);
    // Id(SymbolEntry *se) : ExprNode(se){};
    void output(int level);
    SymbolEntry* getSymbolEntry() {return symbolEntry;}

    void typeCheck();
    void genCode();
    //Modify 数组
};
//语句节点
class StmtNode : public Node
{};

//表达式语句节点
//Modify 表达式语句节点 (多条连在一起vector存储) 
class ExprStmtNode : public StmtNode
{
private:
    std::vector<ExprNode*> exprList;
public:
    ExprStmtNode(){};
    void addNext(ExprNode* next);
    void output(int level);
    //Modify ExprStmtNode
    void typeCheck();
    void genCode();
    //Modify 表达式语句节点（数组）
};
//空语句EmptyStmt
class EmptyStmt : public StmtNode
{
public:
    EmptyStmt(){};
    void genCode();//LAB 6
    void typeCheck();//LAB 6
    void output(int level);
};

//while break continue语句
//Modify 当前while入栈 Finished bd
//Modify 增加成员变量condBlock、endBlock 为break,continue做准备 Finished bd
class WhileStmt : public StmtNode
{
private:
    ExprNode *cond;
    StmtNode *loopStmt;
    BasicBlock* condBlock;
    BasicBlock* endBlock;
public:
    WhileStmt(ExprNode *Cond, StmtNode *LoopStmt):cond(Cond),loopStmt(LoopStmt),condBlock{nullptr},endBlock(nullptr){};
    BasicBlock* getCond(){return this->condBlock;}
    BasicBlock* getEnd(){return this->endBlock;}
    void output(int level);
    void genCode();//LAB 6
    void typeCheck();//LAB 6
};
//Modify 记录当前while Finished bd
class BreakStmt : public StmtNode
{
private:
    WhileStmt * whileStmt;   
public:
    BreakStmt():whileStmt(nullptr){};
    void genCode();//LAB 6
    void typeCheck();//LAB 6
    void output(int level);
};
//Modify 记录当前while Finished bd
class ContinueStmt : public StmtNode
{
private:
    WhileStmt * whileStmt;  
public:
    ContinueStmt():whileStmt(nullptr){};   
    void genCode();//LAB 6
    void typeCheck();//LAB 6
    void output(int level);
};


//Modify 变量初始化？？数组


//语句块
class CompoundStmt : public StmtNode
{
private:
    StmtNode *stmt;
public:
    CompoundStmt(StmtNode *stmt) : stmt(stmt) {};
    void output(int level);
    void typeCheck();
    void genCode();
};

//双StmtNode
class SeqNode : public StmtNode
{
private:
    StmtNode *stmt1, *stmt2;
public:
    SeqNode(StmtNode *stmt1, StmtNode *stmt2) : stmt1(stmt1), stmt2(stmt2){};
    void output(int level);
    void typeCheck();
    void genCode();
};

//声明节点
class DefNode : public StmtNode
{
    //Modify 数组
private:
    bool isConst;
    // bool isArray;
    Id* id;
    Node* Value;
public:
    // DefNode(Id* id, Node* initVal, bool isConst, bool isArray) : isConst(isConst), isArray(isArray), id(id), Value(initVal){};
    DefNode(Id* id, Node* initVal, bool isConst) : isConst(isConst), id(id), Value(initVal){};
    Id* getId() {return id;}
    void output(int level);
    void typeCheck();
    void genCode();
};
//声明语句
class DeclStmt : public StmtNode
{
private:
    bool isConst;
    std::vector<DefNode*> defList;
public:
    DeclStmt(bool isConst) : isConst(isConst){};
    void addNext(DefNode* next);
    void output(int level);
    void typeCheck();
    void genCode();
};
//if-then语句
class IfStmt : public StmtNode
{
private:
    ExprNode *cond;
    StmtNode *thenStmt;
public:
    IfStmt(ExprNode *cond, StmtNode *thenStmt) : cond(cond), thenStmt(thenStmt){};
    void output(int level);
    void typeCheck();
    void genCode();
};
//if-else语句
class IfElseStmt : public StmtNode
{
private:
    ExprNode *cond;
    StmtNode *thenStmt;
    StmtNode *elseStmt;
public:
    IfElseStmt(ExprNode *cond, StmtNode *thenStmt, StmtNode *elseStmt) : cond(cond), thenStmt(thenStmt), elseStmt(elseStmt) {};
    void output(int level);
    void typeCheck();
    void genCode();
};
//return 语句
//Modify 增加返回类型，做类型检查
class ReturnStmt : public StmtNode
{
private:
    ExprNode *retValue;
    //Modify 返回类型
    Type* retType;
public:
    ReturnStmt(ExprNode*retValue) : retValue(retValue) {};
    void output(int level);
    void typeCheck();
    void genCode();
};
//赋值语句
class AssignStmt : public StmtNode
{
private:
    ExprNode *lval;
    ExprNode *expr;
public:
    AssignStmt(ExprNode *lval, ExprNode *expr) : lval(lval), expr(expr) {};
    void output(int level);
    void typeCheck();
    void genCode();
};

//函数调用参数
class FuncCallParamsNode : public StmtNode
{
private:
    std::vector<ExprNode*> paramsList;
public:
    FuncCallParamsNode(){};
    void addNext(ExprNode* next);
    void output(int level);
    void typeCheck();//Modify
    void genCode();

    std::vector<Type*> getParamsType();//bd
    std::vector<Operand*> getOperandList();//bd
    std::vector<ExprNode*> getParamsList();//bd

};
//函数调用
class FuncCallNode : public ExprNode
{
private:
    Id* funcId;
    FuncCallParamsNode* params = nullptr;
public:
    FuncCallNode(SymbolEntry *se, Id* id, FuncCallParamsNode* params) : ExprNode(se), funcId(id), params(params){};
    void output(int level);
    void typeCheck();//Modify
    void genCode();    
};
//函数定义参数
class FuncDefParamsNode : public StmtNode
{
private:
    std::vector<Id*> paramsList;
public:
    FuncDefParamsNode() {};
    void addNext(Id* next);
    std::vector<Type*> getParamsType();//yxy
    void output(int level);
    void typeCheck();//Modify
    void genCode();
};
//函数定义
class FunctionDef : public StmtNode
{
private:
    SymbolEntry *se;
    FuncDefParamsNode *params;
    StmtNode *stmt;
public:
    FunctionDef(SymbolEntry *se, FuncDefParamsNode *params, StmtNode *stmt) : se(se), params(params), stmt(stmt){};
    void output(int level);
    void typeCheck();
    void genCode();
};
class Ast
{
private:
    Node* root;
public:
    Ast() {root = nullptr;}
    void setRoot(Node*n) {root = n;}
    void output();
    void typeCheck();
    void genCode(Unit *unit);
};

//Modify 循环栈

#endif
