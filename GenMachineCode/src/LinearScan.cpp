#include <algorithm>
#include "LinearScan.h"
#include "MachineCode.h"
#include "LiveVariableAnalysis.h"

LinearScan::LinearScan(MachineUnit *unit)
{
    this->unit = unit;
    for (int i = 4; i < 11; i++)
        regs.push_back(i);
    for (int i = 21; i < 48; i++) 
        fregs.push_back(i);
}

void LinearScan::allocateRegisters()
{
    // fprintf(stderr,"LinearScan::allocateRegisters()\n");
    for (auto &f : unit->getFuncs())
    {
        func = f;
        bool success;
        success = false;
        while (!success)        // repeat until all vregs can be mapped
        {
            computeLiveIntervals();
            success = linearScanRegisterAllocation();
            if (success)        // all vregs can be mapped to real regs
                modifyCode();
            else                // spill vregs that can't be mapped to real regs
                genSpillCode();
        }
    }
}

void LinearScan::makeDuChains()
{
    // fprintf(stderr,"LinearScan::makeDuChains()\n");
    LiveVariableAnalysis lva;
    lva.pass(func);
    du_chains.clear();
    int i = 0;
    std::map<MachineOperand, std::set<MachineOperand *>> liveVar;
    for (auto &bb : func->getBlocks())
    {
        liveVar.clear();
        for (auto &t : bb->getLiveOut())
            liveVar[*t].insert(t);
        int no;
        no = i = bb->getInsts().size() + i;
        for (auto inst = bb->getInsts().rbegin(); inst != bb->getInsts().rend(); inst++)
        {
            (*inst)->setNo(no--);
            for (auto &def : (*inst)->getDef())
            {
                if (def->isVReg())
                {
                    auto &uses = liveVar[*def];
                    du_chains[def].insert(uses.begin(), uses.end());
                    auto &kill = lva.getAllUses()[*def];
                    std::set<MachineOperand *> res;
                    set_difference(uses.begin(), uses.end(), kill.begin(), kill.end(), inserter(res, res.end()));
                    liveVar[*def] = res;
                }
            }
            for (auto &use : (*inst)->getUse())
            {
                if (use->isVReg())
                    liveVar[*use].insert(use);
            }
        }
    }
}

void LinearScan::computeLiveIntervals()
{
    // fprintf(stderr,"LinearScan::computeLiveIntervals()\n");
    makeDuChains();
    intervals.clear();
    for (auto &du_chain : du_chains)
    {
        int t = -1;
        for (auto &use : du_chain.second)
            t = std::max(t, use->getParent()->getNo());
        Interval *interval = new Interval({du_chain.first->getParent()->getNo(), t, false, 0, 0,  du_chain.first->is_float, {du_chain.first}, du_chain.second}); //0112
        intervals.push_back(interval);
    }
    for (auto& interval : intervals) {
        auto uses = interval->uses;
        auto begin = interval->start;
        auto end = interval->end;
        for (auto block : func->getBlocks()) {
            auto liveIn = block->getLiveIn();
            auto liveOut = block->getLiveOut();
            bool in = false;
            bool out = false;
            for (auto use : uses)
                if (liveIn.count(use)) {
                    in = true;
                    break;
                }
            for (auto use : uses)
                if (liveOut.count(use)) {
                    out = true;
                    break;
                }
            if (in && out) {
                begin = std::min(begin, (*(block->begin()))->getNo());
                end = std::max(end, (*(block->rbegin()))->getNo());
            } else if (!in && out) {
                for (auto i : block->getInsts())
                    if (i->getDef().size() > 0 &&
                        i->getDef()[0] == *(uses.begin())) {
                        begin = std::min(begin, i->getNo());
                        break;
                    }
                end = std::max(end, (*(block->rbegin()))->getNo());
            } else if (in && !out) {
                begin = std::min(begin, (*(block->begin()))->getNo());
                int temp = 0;
                for (auto use : uses)
                    if (use->getParent()->getParent() == block)
                        temp = std::max(temp, use->getParent()->getNo());
                end = std::max(temp, end);
            }
        }
        interval->start = begin;
        interval->end = end;
    }
    bool change;
    change = true;
    while (change)
    {
        change = false;
        std::vector<Interval *> t(intervals.begin(), intervals.end());
        for (size_t i = 0; i < t.size(); i++)
            for (size_t j = i + 1; j < t.size(); j++)
            {
                Interval *w1 = t[i];
                Interval *w2 = t[j];
                if (**w1->defs.begin() == **w2->defs.begin())
                {
                    std::set<MachineOperand *> temp;
                    set_intersection(w1->uses.begin(), w1->uses.end(), w2->uses.begin(), w2->uses.end(), inserter(temp, temp.end()));
                    if (!temp.empty())
                    {
                        change = true;
                        w1->defs.insert(w2->defs.begin(), w2->defs.end());
                        w1->uses.insert(w2->uses.begin(), w2->uses.end());
                        // w1->start = std::min(w1->start, w2->start);
                        // w1->end = std::max(w1->end, w2->end);
                        auto w1Min = std::min(w1->start, w1->end);
                        auto w1Max = std::max(w1->start, w1->end);
                        auto w2Min = std::min(w2->start, w2->end);
                        auto w2Max = std::max(w2->start, w2->end);
                        w1->start = std::min(w1Min, w2Min);
                        w1->end = std::max(w1Max, w2Max);
                        auto it = std::find(intervals.begin(), intervals.end(), w2);
                        if (it != intervals.end())
                            intervals.erase(it);
                    }
                }
            }
    }
    sort(intervals.begin(), intervals.end(), compareStart);
}

bool LinearScan::linearScanRegisterAllocation()
{
    // Todo

    bool ret = true;

    active.clear();
    regs.clear();
    fregs.clear(); 
    for (int i = 4; i < 11; i++)
        regs.push_back(i);
    for (int i = 21; i < 48; i++)
        fregs.push_back(i); 
    /*
    遍历 active 列表，
    看该列表中是否存在结束时间早于unhandled interval 的 interval

    判断 active 列表中 interval 的数目和可用的物理寄存器数目是否相等 
    ——是否有可分配的物理寄存器
    */
    for(auto &interval : intervals)
    {
        expireOldIntervals(interval);
        if(!interval->freg){ 
            if(regs.size() == 0)
            {
                /*
                    需要进行寄存器溢出操作
                    具体为在 active列表中最后一个 interval 和当前 unhandled interval 中选择一个 interval 将其溢出到栈中，
                    选择策略:谁的活跃区间结束时间更晚，
                    如果是 unhandled interval 的结束时间更晚
                        置位其 spill 标志位
                    如果是 active 列表中的 interval 结束时间更晚
                        置位其 spill 标志位
                        并将其占用的寄存器分配给 unhandled interval
                        再按照 unhandled interval活跃区间结束位置，将其插入到 active 列表中。
                */
                spillAtInterval(interval);
                ret = false;
            }
            else
            {
                /*
                    有可用于分配的物理寄存器
                    为 unhandled interval 分配物理寄存器
                    按照活跃区间结束位置，将其插入到 active 列表中即可。
                */
                interval->rreg = regs.back();
                regs.pop_back();
                active.push_back(interval);
                sort(active.begin(), active.end(), compareEnd);
            }
        }
        else{
            if(fregs.size() == 0)
            {
                spillAtInterval(interval);
                ret = false;
            }
            else
            {
                interval->rreg = fregs.back();
                fregs.pop_back();
                active.push_back(interval);
                sort(active.begin(), active.end(), compareEnd);
            }
        }
    }

    return ret;
}

void LinearScan::modifyCode()
{

    for (auto &interval : intervals)
    {
        func->addSavedRegs(interval->rreg);
        for (auto def : interval->defs)
            def->setReg(interval->rreg);
        for (auto use : interval->uses)
            use->setReg(interval->rreg);
    }
}

void LinearScan::genSpillCode()
{

    for(auto &interval:intervals)
    {
        if(!interval->spill) //不溢出
            continue;
        // TODO
        /* HINT:
         * The vreg should be spilled to memory.
         * 1. insert ldr inst before the use of vreg
         * 2. insert str inst after the def of vreg
         */ 
        /*
            1. 为其在栈内分配空间，获取当前在栈内相对 FP 的偏移；
            2. 遍历其 USE 指令的列表，在 USE 指令前插入 LoadMInstruction，将其从栈内加载到目前的虚拟寄存器中;
            3. 遍历其 DEF 指令的列表，在 DEF 指令后插入 StoreMInstruction，将其从目前的虚拟寄存器中存到栈内;
        插入结束后，会迭代进行以上过程，重新活跃变量分析，进行寄存器分配，直至没有溢出情况出现。
        */
        interval->disp = func->AllocSpace(4);
        auto off = new MachineOperand(MachineOperand::IMM, interval->disp);
        auto fp = new MachineOperand(MachineOperand::REG, 11);        
        for (auto use : interval->uses) 
        {
            if(!use->is_float){
                auto ldr = new LoadMInstruction(use->getParent()->getParent(), use, fp, off, LoadMInstruction::LDR);
                use->getParent()->getParent()->insertBefore(use->getParent(),ldr);
            }
            else{
                auto ldr = new LoadMInstruction(use->getParent()->getParent(), use, fp, off, LoadMInstruction::VLDR);
                use->getParent()->getParent()->insertBefore(use->getParent(),ldr);
            }
            
        }
        for (auto def : interval->defs) 
        {
            if(!def->is_float){
                auto str = new StoreMInstruction(def->getParent()->getParent(), def, fp, off, StoreMInstruction::STR);
                def->getParent()->getParent()->insertAfter(def->getParent(),str);
            }
            else{
                auto str = new StoreMInstruction(def->getParent()->getParent(), def, fp, off, StoreMInstruction::VSTR);
                def->getParent()->getParent()->insertAfter(def->getParent(),str);
            }
        }
    }
}

void LinearScan::expireOldIntervals(Interval *interval)
{
    // Todo
    /*
    遍历 active 列表，
    看该列表中是否存在结束时间早于unhandled interval 的 interval
    有，则说明此时为其分配的物理寄存器可以回收,用于后续的分配
    将其在 active 列表删除
    */

    for(std::vector<Interval*>::iterator it = active.begin(); it != active.end(); )
    {
        if((*it)->end >= interval->start) break;
        if ((*it)->rreg < 11) {
            regs.push_back((*it)->rreg);//释放寄存器
            it = active.erase(find(active.begin(), active.end(), *it));
            sort(regs.begin(), regs.end());
        }
        else
        {
            fregs.push_back((*it)->rreg);//释放寄存器
            it = active.erase(find(active.begin(), active.end(), *it));
            sort(fregs.begin(), fregs.end()); 
        }
    }


}
//modify bd finish
void LinearScan::spillAtInterval(Interval *interval)
{
    // Todo
    /*
        如果是 unhandled interval 的结束时间更晚
            置位其 spill 标志位
        如果是 active 列表中最后一个 interval 结束时间更晚
            置位其 spill 标志位
            并将其占用的寄存器分配给 unhandled interval
            再按照 unhandled interval活跃区间结束位置，将其插入到 active 列表中。
    */
//    fprintf(stderr,"LinearScan::spillAtInterval(Interval *interval)\n");

    if(active.back()->end <= interval->end) 
        interval->spill = true;
    else
    {
        active.back()->spill = true;
        interval->rreg = active.back()->rreg;
        active.push_back(interval);
        sort(active.begin(), active.end(), compareEnd);
    }
}

bool LinearScan::compareStart(Interval *a, Interval *b)
{
    return a->start < b->start;
}
bool LinearScan::compareEnd(Interval *a, Interval *b)
{
    return a->end < b->end;
}