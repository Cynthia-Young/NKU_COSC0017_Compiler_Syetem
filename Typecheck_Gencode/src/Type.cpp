#include "Type.h"
#include <sstream>
//bd
IntType TypeSystem::commonInt = IntType(32);

// Modify finished bd
// IntType TypeSystem::commonBool = IntType(1);
BoolType TypeSystem::commonBool = BoolType(1);
ConstIntType TypeSystem::commonConstInt = ConstIntType();
VoidType TypeSystem::commonVoid = VoidType();

Type* TypeSystem::intType = &commonInt;
Type* TypeSystem::voidType = &commonVoid;
Type* TypeSystem::boolType = &commonBool;
Type* TypeSystem::constIntType = &commonConstInt;

std::string IntType::toStr()
{
    std::ostringstream buffer;
    buffer << "i32" ;//102
    return buffer.str();
}

std::string VoidType::toStr()
{
    return "void";
}
//Modify bd
std::string FunctionType::toStr()
{
    std::ostringstream buffer;
    buffer << returnType->toStr() ;//<< "()";
    return buffer.str();
}

std::string PointerType::toStr()
{
    std::ostringstream buffer;
    buffer << valueType->toStr() << "*";
    return buffer.str();
}

// Modify bool finished
std::string BoolType::toStr()
{
    return "i1";
}

std::string ConstIntType::toStr()
{
    return "i32";
}
//yxy

Type* TypeSystem::getMaxType(Type* type1, Type* type2){ //YXY
    if(type1->isInt() || type2->isInt()) return intType;
    else return boolType;
}

bool TypeSystem::needCast(std::string src, std::string target) { //YXY 102
    if(src=="i32" && target=="i32") {
        return false;
    }
    if(src=="i1" && target=="i1") {
        return false;
    }
    return true;
}


void FunctionType::setparamsType(std::vector<Type*> in) //YXY
{
    paramsType = in;
}