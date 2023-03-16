#ifndef __SYMBOLTABLE_H__
#define __SYMBOLTABLE_H__

#include <string>
#include <map>
#include <vector>

class Type;
class Operand;

class SymbolEntry
{
private:
    int kind;
protected:
    enum {CONSTANT, VARIABLE, TEMPORARY};
    Type *type;

public:
    SymbolEntry(Type *type, int kind);
    virtual ~SymbolEntry() {};
    bool isConstant() const {return kind == CONSTANT;};
    bool isTemporary() const {return kind == TEMPORARY;};
    bool isVariable() const {return kind == VARIABLE;};
    Type* getType() {return type;};
    void setType(Type *type) {this->type = type;};
    virtual std::string toStr() = 0;
    // You can add any function you need here.
};


/*  
    Symbol entry for literal constant. Example:

    int a = 1;

    Compiler should create constant symbol entry for literal constant '1'.
*/
class ConstantSymbolEntry : public SymbolEntry
{
private:
    double value;

public:
    ConstantSymbolEntry(Type *type, int value);
    ConstantSymbolEntry(Type *type, double value);
    virtual ~ConstantSymbolEntry() {};
    double getValue() const {return value;};
    std::string toStr();
    // You can add any function you need here.
    void setValue(double v) {value = v;};
};


/* 
    Symbol entry for identifier. Example:

    int a;
    int b;
    void f(int c)
    {
        int d;
        {
            int e;
        }
    }

    Compiler should create identifier symbol entries for variables a, b, c, d and e:

    | variable | scope    |
    | a        | GLOBAL   |
    | b        | GLOBAL   |
    | c        | PARAM    |
    | d        | LOCAL    |
    | e        | LOCAL +1 |
*/
class IdentifierSymbolEntry : public SymbolEntry
{
private:
    enum {GLOBAL, PARAM, LOCAL};
    std::string name;
    int scope;
    Operand *addr;  // The address of the identifier.
    // You can add any field you need here.

public:
    IdentifierSymbolEntry(Type *type, std::string name, int scope);
    virtual ~IdentifierSymbolEntry() {};
    std::string toStr();
    bool isGlobal() const {return scope == GLOBAL;};
    bool isParam() const {return scope == PARAM;};
    bool isLocal() const {return scope >= LOCAL;};
    int getScope() const {return scope;};
    void setAddr(Operand *addr) {this->addr = addr;};
    Operand* getAddr() {return addr;};
    // You can add any function you need here.
    void outputgloabl();   //全局变量
    void outputlibfunc();  //库函数输出
    double value;  //赋值 //float
    std::string getName(){return name;};  //获取名字
    bool isLib();   //库函数判断
    std::vector<double> arrVal; //float
};


/* 
    Symbol entry for temporary variable created by compiler. Example:

    int a;
    a = 1 + 2 + 3;

    The compiler would generate intermediate code like:

    t1 = 1 + 2
    t2 = t1 + 3
    a = t2

    So compiler should create temporary symbol entries for t1 and t2:

    | temporary variable | label |
    | t1                 | 1     |
    | t2                 | 2     |
*/
class TemporarySymbolEntry : public SymbolEntry
{
private:
    int stack_offset;
    int label;

    bool isGlobalArr; //0106  forArray
public:
    TemporarySymbolEntry(Type *type, int label);
    virtual ~TemporarySymbolEntry() {};
    std::string toStr();
    int getLabel() const {return label;};
    void setOffset(int offset) { this->stack_offset = offset; };
    int getOffset() { return this->stack_offset; };
    // You can add any function you need here.
    void setGlobalArr() {isGlobalArr = true;};
    bool getGlobalArr() {return isGlobalArr;};
};

// symbol table managing identifier symbol entries
class SymbolTable
{
private:
    std::map<std::string, SymbolEntry*> symbolTable;
    SymbolTable *prev;
    int level;
    static int counter;
public:
    SymbolTable();
    SymbolTable(SymbolTable *prev);
    void install(std::string name, SymbolEntry* entry);
    SymbolEntry* lookup(std::string name);
    SymbolTable* getPrev() {return prev;};
    int getLevel() {return level;};
    static int getLabel() {return counter++;};
    //lab6 变量常量重定义 && 函数重定义
    bool isRedef(std::string name);
    bool isFuncRedef(std::string name, std::vector<Type*> paramlist);
};

extern SymbolTable *identifiers;
extern SymbolTable *globals;

#endif
