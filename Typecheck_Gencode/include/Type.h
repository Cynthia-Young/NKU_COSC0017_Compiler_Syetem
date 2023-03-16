#ifndef __TYPE_H__
#define __TYPE_H__
#include <vector>
#include <string>
//Modify LAB5 + bool （+ float  + array const的处理）
//finished bd
class Type
{
private:
    int kind;
protected:
    enum {INT, VOID, FUNC, PTR, BOOL, ConstInt};
public:
    Type(int kind) : kind(kind) {};
    virtual ~Type() {};
    virtual std::string toStr() = 0;
    bool isInt() const {return kind == INT||kind == ConstInt;};//bd
    bool isVoid() const {return kind == VOID;};
    bool isFunc() const {return kind == FUNC;};
    bool isBool() const {return kind == BOOL;};
    bool isConstInt() const {return kind == ConstInt;};
    bool isConst() const {return kind == ConstInt;}//??
    int getKind() const {return kind;}
};

class IntType : public Type
{
private:
    int size;
public:
    IntType(int size) : Type(Type::INT), size(size){};
    std::string toStr();
};

class VoidType : public Type
{
public:
    VoidType() : Type(Type::VOID){};
    std::string toStr();
};

class FunctionType : public Type
{
private:
    Type *returnType;
    std::vector<Type*> paramsType;
public:
    FunctionType(Type* returnType, std::vector<Type*> paramsType) : 
    Type(Type::FUNC), returnType(returnType), paramsType(paramsType){};
    Type* getRetType() {return returnType;};
    std::string toStr();
    //yxy
    void setparamsType(std::vector<Type*>); //YXY
    std::vector<Type*> getParamsType() {return this->paramsType;} //YXY
};

class PointerType : public Type
{
private:
    Type *valueType;
public:
    PointerType(Type* valueType) : Type(Type::PTR) {this->valueType = valueType;};
    std::string toStr();
    //yxy
    Type* getValueType() {return this->valueType;}; //YXY
};

//finished bd
class BoolType : public Type
{
private:
    int size;
public:
    BoolType(int size) : Type(Type::BOOL), size(size){};
    std::string toStr();
};

class ConstIntType : public Type
{
public:
    ConstIntType() : Type(Type::INT){};//bd
    std::string toStr();
};

class TypeSystem
{
private:
    static IntType commonInt;
    //finished bd
    static BoolType commonBool;
    static ConstIntType commonConstInt;    
    // static IntType commonBool;
    static VoidType commonVoid;
public:
    static Type *intType;
    static Type *voidType;
    static Type *boolType;
    static Type *constIntType;

    static Type* getMaxType(Type* type1, Type* type2);//YXY
    // static bool needCast(Type* type1, Type* type2);//YXY 
    static bool needCast(std::string src, std::string target); //102
};

#endif
