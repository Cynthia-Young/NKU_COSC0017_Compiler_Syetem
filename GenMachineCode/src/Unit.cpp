#include "Unit.h"
#include "Type.h"

void Unit::insertFunc(Function *f)
{
    func_list.push_back(f);
}

//lab6 begin
void Unit::insertGlobal(IdentifierSymbolEntry *se)
{
    global_list.push_back(se);
}

void Unit::insertLibfunc(IdentifierSymbolEntry *se)
{
    bool find = false;

    for (auto libfunc : libfunc_list)
    {
        if(libfunc->getName() == se->getName())
        {
            find = true;
        }
    }
    if (find==false) libfunc_list.push_back(se);
}
//lab6 end

void Unit::removeFunc(Function *func)
{
    func_list.erase(std::find(func_list.begin(), func_list.end(), func));
}

void Unit::output() const
{
    for (auto global : global_list)
    {
        global -> outputgloabl();
    }

    for (auto libfunc : libfunc_list)
    {
        libfunc -> outputlibfunc();
    }

    for (auto &func : func_list)
        func->output();
}

void Unit::genMachineCode(MachineUnit* munit) 
{
    AsmBuilder* builder = new AsmBuilder();
    builder->setUnit(munit);
    //每个函数生成汇编代码
    for (auto decl : global_list)
    {
        if( (!decl->isLib() && !decl->getType()->isConst()) || decl->getType()->isArray())
        {
            munit->InsertGlobalDecl(decl);
        }
    }

    for (auto &func : func_list)
        func->genMachineCode(builder); 
}

Unit::~Unit()
{
    for(auto &func:func_list)
        delete func;
}


