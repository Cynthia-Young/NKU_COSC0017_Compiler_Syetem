#include "Type.h"
#include <sstream>


VoidType TypeSystem::commonVoid = VoidType();
IntType TypeSystem::commonInt = IntType(4);
ConstIntType TypeSystem::commonConstInt = ConstIntType();
FloatType TypeSystem::commonFloat = FloatType(4);
ConstFloatType TypeSystem::commonConstFloat = ConstFloatType();
ArrIntType TypeSystem::commonArrInt = ArrIntType();
ConstArrIntType TypeSystem::commonConstArrInt = ConstArrIntType();
ArrFloatType TypeSystem::commonArrFloat = ArrFloatType();
ConstArrFloatType TypeSystem::commonConstArrFloat = ConstArrFloatType();


Type* TypeSystem::voidType = &commonVoid;
Type* TypeSystem::intType = &commonInt;
Type* TypeSystem::constIntType = &commonConstInt;
Type* TypeSystem::floatType = &commonFloat;
Type* TypeSystem::constFloatType = &commonConstFloat;
Type* TypeSystem::arrintType = &commonArrInt;
Type* TypeSystem::constarrIntType = &commonConstArrInt;
Type* TypeSystem::arrfloatType = &commonArrFloat;
Type* TypeSystem::constarrfloatType = &commonConstArrFloat;

std::string VoidType::toStr()
{
    return "void";
}

void FunctionType::setparamsType(std::vector<Type*> in)
{
    paramsType = in;
}
std::string FunctionType::toStr()
{
    std::ostringstream buffer;
    buffer << returnType->toStr() << "(";
    for(int i = 0;i < (int)paramsType.size();i++){
        if(i!=0) buffer << ", ";
        buffer << paramsType[i]->toStr();
    }
    buffer << ")";
    return buffer.str();
}




std::string IntType::toStr()
{
    return "int";
}
std::string ConstIntType::toStr()
{
    return "const int";
}
std::string FloatType::toStr()
{
    return "float";
}
std::string ConstFloatType::toStr()
{
    return "const float";
}

std::string ArrIntType::toStr()
{
    return "int array";
}
std::string ConstArrIntType::toStr()
{
    return "const int array";
}
std::string ArrFloatType::toStr()
{
    return "float array";
}
std::string ConstArrFloatType::toStr()
{
    return "const float array";
}

void ArrIntType::addDim(int x)
{
    dim.push_back(x);
}

std::vector<int> ArrIntType::getDim()
{
    return dim;
}

void ConstArrIntType::addDim(int x)
{
    dim.push_back(x);
}

std::vector<int> ConstArrIntType::getDim()
{
    return dim;
}

void ArrFloatType::addDim(int x)
{
    dim.push_back(x);
}

std::vector<int> ArrFloatType::getDim()
{
    return dim;
}

void ConstArrFloatType::addDim(int x)
{
    dim.push_back(x);
}

std::vector<int> ConstArrFloatType::getDim()
{
    return dim;
}