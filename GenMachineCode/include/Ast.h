#ifndef __AST_H__
#define __AST_H__

#include <fstream>
#include "Operand.h"
#include<stack>
#include<vector>
#include<Type.h>

class SymbolEntry;
class Unit;
class Function;
class BasicBlock;
class Instruction;
class IRBuilder;
class Type;

class Node
{
private:
    static int counter;
    int seq;
protected:
    enum{STMT , EXPR};
    int kind;
protected:
    std::vector<Instruction*> true_list;
    std::vector<Instruction*> false_list;
    static IRBuilder *builder;
    void backPatch(std::vector<Instruction*> &list, BasicBlock*bb);
    std::vector<Instruction*> merge(std::vector<Instruction*> &list1, std::vector<Instruction*> &list2);

public:
    Node();
    Node(int k):kind(k){};  
    int getSeq() const {return seq;};
    static void setIRBuilder(IRBuilder*ib) {builder = ib;};
    virtual void output(int level) = 0;
    virtual void typeCheck() = 0;
    virtual void genCode() = 0;
    std::vector<Instruction*>& trueList() {return true_list;}
    std::vector<Instruction*>& falseList() {return false_list;}
    bool isExpr(){return kind == EXPR;}
    bool isStmt(){return kind == STMT;}

    virtual void Calculate(Node**)= 0;

};

class ExprNode : public Node
{
protected:
    SymbolEntry *symbolEntry;
    Operand *dst;   // The result of the subtree is stored into dst.    
    int exprkind;
public:
    enum{BINARYEXPR , SINGLEEXPR , CONSTANT , ID , FUNCCALL};  
    ExprNode(SymbolEntry *symbolEntry , int kind) : Node(Node::EXPR),symbolEntry(symbolEntry),exprkind(kind){};
    Operand* getOperand() {return dst;};
    SymbolEntry* getSymPtr() {return symbolEntry;};
    int getexprkind() const {return exprkind;}
};

class StmtNode : public Node
{
// protected:
//     enum{BINARYEXPR , SINGLEEXPR , CONSTANT , ID , FUNCCALL};  
//     int stmtkind;    
public:
    StmtNode():Node(Node::STMT){};
};

class ExprStmtNode : public StmtNode
{
    std::vector<ExprNode*> exprList;//存放语句序列
public:

    ExprStmtNode(){};
    void addNext(ExprNode* next){exprList.push_back(next);};//增加语句 或者数组下标
    void output(int level);
    void typeCheck();
    void genCode();

    void Calculate(Node**);
};

class ArrValNode : public StmtNode
{
private:
    bool isConst;
    ExprNode* selfExp; 
    
public:
    std::vector<ArrValNode*> childList;//括号里套括号{{},{,{}}}
    ArrValNode(bool isConst) : isConst(isConst), selfExp(nullptr){};
    // std::vector<ArrValNode*> getInnerList() {return childList;}
    void addChild(ArrValNode* child){childList.push_back(child);}
    void setExp(ExprNode* val){ selfExp = val;}
    bool isExp() {return selfExp != nullptr && childList.size() == 0;}
    bool isEmptyList() {return selfExp == nullptr && childList.size() == 0;}
    bool isList() {return selfExp == nullptr;};
    ExprNode* getselfExp() {return selfExp;}
    bool isConstArrVal() const { return isConst;}
    void output(int level);
    void typeCheck();
    void genCode();    

    void Calculate(Node**);
}; 

class ArrDimNode : public StmtNode
{
private:
    bool isParam = false;
public:
    std::vector<ExprNode*> dimList;//数组下标索引信息
    ArrDimNode(){};
    void addNextDim(ExprNode* next){dimList.push_back(next);};//增加数组下标
    void output(int level);
    void typeCheck();
    void genCode();
    void setParam(ExprNode* empytyDim) {dimList.insert(dimList.begin(), empytyDim);}
    bool isParamDim() {return isParam;}
    int getDimNum() {return dimList.size()+1*(isParam);}
    void DimInit(IdentifierSymbolEntry* se);
    void Calculate(Node**);
};

class BinaryExpr : public ExprNode
{
private:
    int op;
    ExprNode *expr1, *expr2;
public:
    enum {OR, AND, EQUAL, UNEQUAL, LESS, GREATER, LESSorEQUAL, GREATERorEQUAL, ADD, SUB, MULTI, DIVIDE, MOD};
    BinaryExpr(SymbolEntry *se, int op, ExprNode*expr1, ExprNode*expr2) : ExprNode(se , ExprNode::BINARYEXPR), op(op), expr1(expr1), expr2(expr2){dst = new Operand(se);};
    void output(int level);
    void typeCheck();
    void genCode();

    void Calculate(Node**);
};

class SingleExpr : public ExprNode
{
private:
    int op;
    ExprNode *expr1;
public:
    enum { SUB, NOT};
    SingleExpr(SymbolEntry *se, int op, ExprNode*expr1) : ExprNode(se , ExprNode::SINGLEEXPR), op(op), expr1(expr1){dst = new Operand(se);};
    void output(int level);
    void typeCheck();
    void genCode(); 

    void Calculate(Node**);
};

class Constant : public ExprNode
{
public:
    Constant(SymbolEntry *se) : ExprNode(se , ExprNode::CONSTANT){dst = new Operand(se);};
    void output(int level);
    void typeCheck();
    void genCode();

    void Calculate(Node**);
};

class Id : public ExprNode
{
private:
    ArrDimNode* dimension;
public:
    bool initFinish = false;
    Id(SymbolEntry *se) : ExprNode(se , ExprNode::ID),dimension(nullptr){ dst = new Operand(se);};
    Id(SymbolEntry *se , ArrDimNode* dim): ExprNode(se , ExprNode::ID),dimension(dim){dst = new Operand(se);};//Id 的 
    void output(int level);
    void typeCheck();
    void genCode();
    void setDimension(ArrDimNode* dim){dimension = dim;}//开始为空是因为
    ArrDimNode* getDim(){return dimension;}
    void ArrgenCode();
    void ArrtypeCheck();
    bool isArray() {return this-> getSymPtr()->getType()->isArray();}

    void Calculate(Node**);
    void ArrCalculate(Node**);

};


class CompoundStmt : public StmtNode //多条语句的整体
{
private:
    StmtNode *stmt;
public:
    CompoundStmt(StmtNode *stmt) : stmt(stmt) {};
    void output(int level);
    void typeCheck();
    void genCode();

    void Calculate(Node**);
};

class SeqNode : public StmtNode
{
private:
    StmtNode *stmt1, *stmt2;
public:
    SeqNode(StmtNode *stmt1, StmtNode *stmt2) : stmt1(stmt1), stmt2(stmt2){};
    void output(int level);
    void typeCheck();
    void genCode();

    void Calculate(Node**);
};

class DefNode : public StmtNode
{
private:
    Id* id;
    Node* Value;//ExpreNode or ArrValNode  
    bool isConst;
    bool isArray;
public:
    DefNode(Id* id, Node* Val, bool isconst, bool isarray = false) : id(id), Value(Val), isConst(isconst), isArray(isarray) {};
    Id* getId() {return id;}
    void output(int level);
    void typeCheck();
    void genCode();
    void ArrgenCode();
    void ArrtypeCheck();

    void Calculate(Node**);
    void ArrCalculate(Node**);
};

class DeclStmt : public StmtNode
{
private:
    bool isConst;
    std::vector<DefNode*> defList;
public:
    DeclStmt(bool isConst) : isConst(isConst){};
    void addNext(DefNode* next){defList.push_back(next);};
    void output(int level);
    void typeCheck();
    void genCode();

    void Calculate(Node**);
};


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

    void Calculate(Node**);
};

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

    void Calculate(Node**);
};

class ReturnStmt : public StmtNode
{
private:
    ExprNode *retValue;
    Type* retType;
public:
    ReturnStmt(ExprNode*retValue) : retValue(retValue),retType(nullptr) {};
    void output(int level);
    void typeCheck();
    void genCode();

    void Calculate(Node**);
};

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
    void ArrgenCode();

    void Calculate(Node**);
};

//lab6
class EmptyStmt : public StmtNode
{
public:
    EmptyStmt(){};
    void genCode();
    void typeCheck();
    void output(int level);

    void Calculate(Node**);
};

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
    void genCode();
    void typeCheck();

    void Calculate(Node**);
};

class BreakStmt : public StmtNode
{
private:
    WhileStmt * whileStmt;   
public:
    BreakStmt():whileStmt(nullptr){};
    void genCode();
    void typeCheck();
    void output(int level);

    void Calculate(Node**);
};

class ContinueStmt : public StmtNode
{
private:
    WhileStmt * whileStmt;  
public:
    ContinueStmt():whileStmt(nullptr){}; 
    void genCode();
    void typeCheck();
    void output(int level);

    void Calculate(Node**);
};

class FuncDefParamsNode : public StmtNode
{
private:
    std::vector<Id*> paramsList;
public:
    FuncDefParamsNode() {};
    void addNext(Id* next){paramsList.push_back(next);};
    std::vector<Type*> getParamsType();
    void output(int level);
    void typeCheck();
    void genCode();

    void Calculate(Node**);
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
    void typeCheck();
    void genCode();
    bool noretstmt = false;

    void Calculate(Node**);
};

class FuncCallParamsNode : public StmtNode
{
private:
    std::vector<ExprNode*> paramsList;
public:
    FuncCallParamsNode(){};
    void addNext(ExprNode* next){paramsList.push_back(next);};
    void output(int level);
    void typeCheck();
    void genCode();

    std::vector<Type*> getParamsType();
    std::vector<ExprNode*> getParamsList();

    void Calculate(Node**);
};

class FuncCallNode : public ExprNode
{
private:
    Id* funcId;
    FuncCallParamsNode* params = nullptr;
public:
    FuncCallNode(SymbolEntry *se, Id* id, FuncCallParamsNode* params) : ExprNode(se, ExprNode::FUNCCALL), funcId(id), params(params){dst = new Operand(se);};
    void output(int level);
    void typeCheck();
    void genCode();

    void Calculate(Node**);
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

    void Calculate(Node**);
};

#endif
