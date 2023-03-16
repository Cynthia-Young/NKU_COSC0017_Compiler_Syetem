#ifndef __TYPE_H__
#define __TYPE_H__
#include <vector>
#include <string>

class Type
{
private:
    
    bool isconst;
protected:
   
    enum {INT, FLOAT, VOID, FUNC, PTR, BOOL, ConstInt, ConstFloat, ArrInt, ConstArrInt, ArrFloat, ConstArrFloat}; //float
    int size; 
public:
    int kind;
    // Type(int kind , int size) : kind(kind), size(size) {};
    // Type(int kind ) : kind(kind), size(0) {};
    Type(int kind , int size , bool isconst = false) : kind(kind),isconst(isconst), size(size) {};
    Type(int kind ,bool isconst = false) : kind(kind),isconst(isconst), size(0) {};
    virtual ~Type() {};
    virtual std::string toStr() = 0;
    bool isInt() const {return kind == INT||kind == ConstInt;};  //lab6
    bool isFloat() const {return kind == FLOAT||kind == ConstFloat;}; //float
    bool isVoid() const {return kind == VOID;};
    bool isFunc() const {return kind == FUNC;};
    bool isBool() const {return kind == BOOL;};
    bool isPointer() const {return kind == PTR ;}
    bool isConstInt() const {return kind == ConstInt;};
    bool isArrFloat() const {return kind == ArrFloat ;}; //float
    bool isArrInt() const {return kind == ArrInt ;};//0106
    bool isConstArrInt() const {return kind == ConstArrInt;};//0106    
    bool isConstArrFloat() const {return kind == ConstArrFloat;};//Float
    
    bool isAnyInt() const {return kind == INT||kind == ConstInt||kind == ArrInt || kind == ConstArrInt;} //0106
    bool isAnyFloat() const {return kind == FLOAT || kind ==ConstFloat || kind == ArrFloat || kind == ConstArrFloat; }//0107 add

    bool isAnyArrFloat() const {return  kind == ArrFloat || kind == ConstArrFloat;};
    bool isArray() const {return kind == ArrInt || kind == ConstArrInt;} //0105
    bool isConst() const {return kind == ConstInt || kind == ConstArrInt || kind ==ConstFloat || kind == ConstArrFloat;}//0106
    
    int  getKind() const {return kind;};
    int getSize() const {return this->size;};//bd lab7

    bool ArrInitFinsh = false;
};
//bd lab7
class IntType : public Type
{
public:
    IntType(int size) : Type(Type::INT, size){};
    std::string toStr();
};

class FloatType : public Type //float
{
private:
    bool need_fp = false;
public:
    FloatType(int size) : Type(Type::FLOAT, size){}; //0112
    std::string toStr();
    void setNeedFP(bool flag){need_fp = flag;}
    bool isNeedFP() const {return need_fp;}    
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
    //lab6
    void setparamsType(std::vector<Type*>);
    std::vector<Type*> getParamsType() {return this->paramsType;}
};

class PointerType : public Type
{
private:
    Type *valueType;
public:
    PointerType(Type* valueType) : Type(Type::PTR) {this->valueType = valueType;};
    std::string toStr();
    //lab6
    Type* getValueType() {return this->valueType;};
};

class BoolType : public Type
{
public:
    BoolType(int size) : Type(Type::BOOL , size){};
    std::string toStr();
};


class ConstIntType : public Type
{
public:
    ConstIntType() : Type(Type::ConstInt, 4){};//bd
    std::string toStr();
};

class ConstFloatType : public Type
{
public:
    ConstFloatType() : Type(Type::ConstFloat, 4){};//float
    std::string toStr();
};



//forArray
class ArrIntType : public Type
{
private:
    std::vector<int> dim;
    bool Pointer;
public:
    ArrIntType() : Type(Type::ArrInt ,4){Pointer = false;}
    void addDims(int x);
    std::vector<int> getDims();
    void setPointer(bool x) {Pointer = x;}
    bool isPoniter() {return Pointer;}
    std::string toStr();


};

//forArray
class ConstArrIntType : public Type
{
private:
    std::vector<int> dim;
    bool Pointer;    
public:
    ConstArrIntType() : Type(Type::ConstArrInt, 4){Pointer = false;};
    void addDims(int x);
    std::vector<int> getDims();
    void setPointer(bool x) {Pointer = x;}
    bool isPoniter() {return Pointer;}
    std::string toStr();


};

//float
class ArrFloatType : public Type
{
private:
    std::vector<int> dim;
    bool Pointer;
public:
    ArrFloatType() : Type(Type::ArrFloat ,4){Pointer = false;}
    void addDims(int x);
    std::vector<int> getDims();
    void Point(bool x) {Pointer = x;}
    void setPointer(bool x) {Pointer = x;}
    bool isPoniter() {return Pointer;}
    std::string toStr();


};

//float
class ConstArrFloatType : public Type
{
private:
    std::vector<int> dim;
    bool Pointer;    
public:
    ConstArrFloatType() : Type(Type::ConstArrFloat, 4){Pointer = false;};
    void addDims(int x);
    std::vector<int> getDims();
    void setPointer(bool x) {Pointer = x;}
    bool isPoniter() {return Pointer;}
    std::string toStr();


};

class TypeSystem
{
private:
    static IntType commonInt;
    static FloatType commonFloat; //float
    static VoidType commonVoid;
    //lab6
    static BoolType commonBool;
    static BoolType commonConstBool;
    static ConstIntType commonConstInt;    
    static ConstFloatType commonConstFloat; //float
public:
    static Type *intType;
    static Type *floatType; //float
    static Type *voidType;
    static Type *boolType;
    static Type* constBoolType;
    static Type *constIntType; //lab6
    static Type *constFloatType; //float

    //lab6
    static Type* preciseType(Type* type1, Type* type2);
    static bool needCast(std::string src, std::string target);
};

#endif
