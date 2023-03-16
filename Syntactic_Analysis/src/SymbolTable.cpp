#include "SymbolTable.h"
#include <iostream>
#include <sstream>

SymbolEntry::SymbolEntry(Type *type, int kind) 
{
    this->type = type;
    this->kind = kind;
}

ConstantSymbolEntry::ConstantSymbolEntry(Type *type, int value) : SymbolEntry(type, SymbolEntry::CONSTANT)
{
    this->value = value;
}

std::string ConstantSymbolEntry::toStr()
{
    std::ostringstream buffer;
    buffer << value;
    return buffer.str();
}

IdentifierSymbolEntry::IdentifierSymbolEntry(Type *type, std::string name, int scope) : SymbolEntry(type, SymbolEntry::VARIABLE), name(name)
{
    this->scope = scope;
}

std::string IdentifierSymbolEntry::toStr()
{
    return name;
}

TemporarySymbolEntry::TemporarySymbolEntry(Type *type, int label) : SymbolEntry(type, SymbolEntry::TEMPORARY)
{
    this->label = label;
}

std::string TemporarySymbolEntry::toStr()
{
    std::ostringstream buffer;
    buffer << "t" << label;
    return buffer.str();
}

SymbolTable::SymbolTable()
{
    prev = nullptr;
    level = 0;
}

SymbolTable::SymbolTable(SymbolTable *prev)
{
    this->prev = prev;
    this->level = prev->level + 1;
}

/*
    Description: lookup the symbol entry of an identifier in the symbol table
    Parameters: 
        name: identifier name
    Return: pointer to the symbol entry of the identifier

    hint:
    1. The symbol table is a stack. The top of the stack contains symbol entries in the current scope.
    2. Search the entry in the current symbol table at first.
    3. If it's not in the current table, search it in previous ones(along the 'prev' link).
    4. If you find the entry, return it.
    5. If you can't find it in all symbol tables, return nullptr.
*/
SymbolEntry* SymbolTable::lookup(std::string name)
{
    // Todo
    if (symbolTable.count(name) == 1)
    {
        return symbolTable[name];
    }
    else if(prev!=nullptr)
    {
        return prev->lookup(name);
    }
    else return nullptr;
}

// install the entry into current symbol table.
void SymbolTable::install(std::string name, SymbolEntry* entry)
{
    symbolTable[name] = entry;
}

int SymbolTable::counter = 0;
static SymbolTable t;
SymbolTable *identifiers = &t;
SymbolTable *globals = &t;



// char* GetInt = (char*) "getint";
// Type* FTypeGetInt = new FunctionType(TypeSystem::intType,{});
// SymbolEntry* EtrGetInt = new IdentifierSymbolEntry(FTypeGetInt,GetInt,0);
// globals->install(GetInt,EtrGetInt);

// char* Getch = (char*) "getch";
// Type* FTypeGetch = new FunctionType(TypeSystem::intType,{});
// SymbolEntry* EtrGetch = new IdentifierSymbolEntry(FTypeGetch,Getch,0);
// globals->install(Getch,EtrGetch);

// char* GetFloat = (char*) "getfloat";
// Type* FTypeGetFloat = new FunctionType(TypeSystem::floatType,{});
// SymbolEntry* EtrGetFloat = new IdentifierSymbolEntry(FTypeGetFloat,GetFloat,0);
// globals->install(GetFloat,EtrGetFloat);

// char* GetArray = (char*) "getarray";
// std::vertor<Type*> intarrayvec;
// Type* iarrayType =  new IntArrayType();
// ((IntArrayType*)iarrayType)->pushBackDimension(-1);
// intarrayvec.push_back(iarrayType);
// Type* FTypeGetArray = new FunctionType(TypeSystem::intType,intarrayvec);
// SymbolEntry* EtrGetArray = new IdentifierSymbolEntry(FTypeGetArray,GetArray,0);
// globals->install(GetArray,EtrGetArray);

// char* GetFArray = (char*) "getfarray";
// std::vertor<Type*> floatarrayvec;
// Type* farrayType =  new FloatArrayType();
// ((FloatArrayType*)farrayType)->pushBackDimension(-1);
// floatarrayvec.push_back(farrayType);
// Type* FTypeGetFArray = new FunctionType(TypeSystem::floatType,floatarrayvec);
// SymbolEntry* EtrGetFArray = new IdentifierSymbolEntry(FTypeGetFArray,GetFArray,0);
// globals->install(GetFArray,EtrGetFArray);

// char* PutInt = (char*) "putint";
// std::vertor<Type*> putintvec;
// putintvec.push_back(TypeSystem::intType);
// Type* FTypePutInt = new FunctionType(TypeSystem::voidType,putintvec);
// SymbolEntry* EtrPutInt = new IdentifierSymbolEntry(FTypePutInt,PutInt,0);
// globals->install(PutInt,EtrPutInt);

// char* Putch = (char*) "putch";
// std::vertor<Type*> putchvec;
// putchvec.push_back(TypeSystem::intType);
// Type* FTypePutch = new FunctionType(TypeSystem::voidType,putchvec);
// SymbolEntry* EtrPutch = new IdentifierSymbolEntry(FTypePutch,Putch,0);
// globals->install(Putch,EtrPutch);

// char* PutFloat = (char*) "putfloat";
// std::vertor<Type*> putfloatvec;
// putfloatvec.push_back(TypeSystem::floatType);
// Type* FTypePutFloat = new FunctionType(TypeSystem::voidType,putfloatvec);
// SymbolEntry* EtrPutFloat = new IdentifierSymbolEntry(FTypePutFloat,PutFloat,0);
// globals->install(PutFloat,EtrPutFloat);

// char* PutArray = (char*) "putarray";
// std::vertor<Type*> putarrayvec;
// putarrayvec.push_back(TypeSystem::intType);
// Type* arrayType = new IntArrayType();
// ((IntArrayType*)arrayType)->pushBackDimension(-1);
// putarrayvec.push_back(arrayType);
// Type* FTypePutArray = new FunctionType(TypeSystem::voidType,putarrayvec);
// SymbolEntry* EtrPutArray = new IdentifierSymbolEntry(FTypePutArray,PutArray,0);
// globals->install(PutArray,EtrPutArray);

// char* PutFArray = (char*) "putfarray";
// std::vertor<Type*> putfarrayvec;
// putfarrayvec.push_back(TypeSystem::intType);
// Type* farrayType = new FloatArrayType();
// ((FloatArrayType*)farrayType)->pushBackDimension(-1);
// putfarrayvec.push_back(farrayType);
// Type* FTypePutFArray = new FunctionType(TypeSystem::voidType,putfarrayvec);
// SymbolEntry* EtrPutFArray = new IdentifierSymbolEntry(FTypePutFArray,PutFArray,0);
// globals->install(PutFArray,EtrPutFArray);

// char* StartTime = (char*) "starttime";
// Type* FTypeStartTime = new FunctionType(TypeSystem::voidType,{});
// SymbolEntry* EtrStartTime = new IdentifierSymbolEntry(FTypeStartTime,StartTime,0);
// globals->install(StartTime,EtrStartTime);

// char* StopTime = (char*) "stoptime";
// Type* FTypeStopTime = new FunctionType(TypeSystem::voidType,{});
// SymbolEntry* EtrStopTime = new IdentifierSymbolEntry(FTypeStopTime,StopTime,0);
// globals->install(StopTime,EtrStopTime);