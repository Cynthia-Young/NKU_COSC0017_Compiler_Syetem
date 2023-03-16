#include "Unit.h"

void Unit::insertFunc(Function *f)
{
    func_list.push_back(f);
}

void Unit::removeFunc(Function *func)
{
    func_list.erase(std::find(func_list.begin(), func_list.end(), func));
}

//Modify 全局变量 finished bd
void Unit::insertGlobal(IdentifierSymbolEntry *se)
{
    global_list.push_back(se);
}

//Modify 库函数 finished bd
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

Unit::~Unit()
{
    for(auto &func:func_list)
        delete func;
}
