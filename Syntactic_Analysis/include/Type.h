#ifndef __TYPE_H__
#define __TYPE_H__
#include <vector>
#include <string>

class Type
{
private:
    int kind;
protected:
//Todo_constint
    enum {FUNC, VOID, INT, ConstInt, FLOAT, ConstFloat, ArrInt, ArrFloat, ConstArrInt, ConstArrFloat};
public:
    Type(int kind) : kind(kind) {};
    virtual ~Type() {};
    virtual std::string toStr() = 0;
    bool isVoid() const {return kind == VOID;};
    bool isFunc() const {return kind == FUNC;};

    bool isInt() const {return kind == INT;};
    bool isConstInt() const {return kind == ConstInt;};

    bool isFloat() const {return kind == FLOAT;};
    bool isConstFloat() const {return kind == ConstFloat;};

    bool isArrInt() const {return kind == ArrInt;};
    bool isConstArrInt() const {return kind == ConstArrInt;};

    bool isArrFloat() const {return kind == ArrFloat;};
    bool isConstArrFloat() const {return kind == ConstArrFloat;};

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
    void setparamsType(std::vector<Type*>);
    std::string toStr();
};

class IntType : public Type
{
private:
    int size;
public:
    IntType(int size) : Type(Type::INT), size(size){};
    std::string toStr();
};

class ConstIntType : public Type
{
public:
    ConstIntType() : Type(Type::ConstInt){};
    std::string toStr();
};

class FloatType : public Type
{
private:
    int size;
public:
    FloatType(int size) : Type(Type::FLOAT), size(size){};
    std::string toStr();
};

class ConstFloatType : public Type
{
public:
    ConstFloatType() : Type(Type::ConstFloat){};
    std::string toStr();
};

class ArrIntType : public Type
{
private:
    std::vector<int> dim;
public:
    ArrIntType() : Type(Type::ArrInt){};
    void addDim(int);
    std::vector<int> getDim();
    std::string toStr();
};

class ConstArrIntType : public Type
{
private:
    std::vector<int> dim;    
public:
    ConstArrIntType() : Type(Type::ConstArrInt){};
    void addDim(int);
    std::vector<int> getDim();
    std::string toStr();
};

class ArrFloatType : public Type
{
private:
    std::vector<int> dim;
public:
    ArrFloatType() : Type(Type::ArrFloat){};
    void addDim(int);
    std::vector<int> getDim();    
    std::string toStr();
};

class ConstArrFloatType : public Type
{
private:
    std::vector<int> dim;
public:
    ConstArrFloatType() : Type(Type::ConstArrFloat){};
    void addDim(int);
    std::vector<int> getDim();
    std::string toStr();
};



class TypeSystem
{
private:
    static VoidType commonVoid;
    static IntType commonInt;
    static ConstIntType commonConstInt;
    static FloatType commonFloat;
    static ConstFloatType commonConstFloat;
    static ArrIntType commonArrInt;
    static ConstArrIntType commonConstArrInt;
    static ArrFloatType commonArrFloat;
    static ConstArrFloatType commonConstArrFloat;
public:
    static Type *voidType;
    static Type *intType;
    static Type *constIntType;
    static Type *floatType;
    static Type *constFloatType;
    static Type *arrintType;
    static Type *constarrIntType;
    static Type *arrfloatType;
    static Type *constarrfloatType;
};

#endif
