#include "Type.h"
#include <sstream>

IntType TypeSystem::commonInt = IntType(4);
FloatType TypeSystem::commonFloat = FloatType(4);
//lab6
BoolType TypeSystem::commonBool = BoolType(1);
BoolType TypeSystem::commonConstBool = BoolType(1);
ConstIntType TypeSystem::commonConstInt = ConstIntType();
ConstFloatType TypeSystem::commonConstFloat = ConstFloatType();

VoidType TypeSystem::commonVoid = VoidType();

Type* TypeSystem::intType = &commonInt;
Type* TypeSystem::floatType = &commonFloat;
Type* TypeSystem::voidType = &commonVoid;
Type* TypeSystem::boolType = &commonBool;
Type* TypeSystem::constBoolType = &commonConstBool;
Type* TypeSystem::constIntType = &commonConstInt; //lab6
Type* TypeSystem::constFloatType = &commonConstFloat;

std::string IntType::toStr()
{
    std::ostringstream buffer;
    buffer << "i32"; //lab6
    return buffer.str();
}

std::string FloatType::toStr()
{
    return "float";
}

std::string VoidType::toStr()
{
    return "void";
}

std::string FunctionType::toStr()
{
    std::ostringstream buffer;
    buffer << returnType->toStr() ;//lab6
    return buffer.str();
}

std::string PointerType::toStr()
{
    std::ostringstream buffer;
    buffer << valueType->toStr() << "*";
    return buffer.str();
}

//lab6 begin
std::string BoolType::toStr()
{
    return "i1";
}

std::string ConstIntType::toStr()
{
    return "i32";
}

std::string ConstFloatType::toStr()
{
    return "float";
}


std::string ArrIntType::toStr()
{
    return "int array";

}

std::string ConstArrIntType::toStr()
{
    return "int array";

}

//float
std::string ArrFloatType::toStr()
{
    return "float array";
}

std::string ConstArrFloatType::toStr()
{
    return "float array";
}

Type* TypeSystem::preciseType(Type* type1, Type* type2)
{ 
    if(type1->isAnyFloat() || type2->isAnyFloat()) return floatType;
    if(type1->isAnyInt() || type2->isAnyInt()) return intType;
    else return boolType;
}

bool TypeSystem::needCast(std::string src, std::string target) 
{ 
    if((src=="i32"||src=="int array") && (target=="i32"||target=="int array")) 
    {
        return false;
    }
    if((src=="float"||src=="float array") &&( target=="float"||target=="float array"))
    {
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
//lab6 end



void ArrIntType::addDims(int x)
{
    int newsize;
    if(x > 0)
    {
        newsize = this->size * x;   
    }
    else 
        newsize = 4;
    this->size = newsize;
    dim.push_back(x);

}

std::vector<int> ArrIntType::getDims()
{
    return dim;
}
 
void ConstArrIntType::addDims(int x)
{
    int newsize;
    if(x > 0)
    {
        newsize = this->size * x;   
    }
    else 
        newsize = 4;
    this->size = newsize;
    dim.push_back(x);

}
 
std::vector<int> ConstArrIntType::getDims()
{
    return dim;
}

void ArrFloatType::addDims(int x)
{
    int newsize;
    if(x > 0)
    {
        newsize = this->size * x;   
    }
    else 
        newsize = 4;
    this->size = newsize;
    dim.push_back(x);

}

std::vector<int> ArrFloatType::getDims()
{
    return dim;
}

void ConstArrFloatType::addDims(int x)
{
    int newsize;
    if(x > 0)
    {
        newsize = this->size * x;   
    }
    else 
        newsize = 4;
    this->size = newsize;
    dim.push_back(x);

}

std::vector<int> ConstArrFloatType::getDims()
{
    return dim;
}