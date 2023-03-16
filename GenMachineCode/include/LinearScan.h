/**
 * linear scan register allocation
 */

#ifndef _LINEARSCAN_H__
#define _LINEARSCAN_H__
#include <set>
#include <map>
#include <vector>
#include <list>

class MachineUnit;
class MachineOperand;
class MachineFunction;


class LinearScan
{
private:
    struct Interval
    {
        int start;
        int end;
        bool spill; // 这个vreg是否应该溢出到内存中
        int disp;   // displacement in stack
        int rreg;   // 如果vreg未溢出到内存，则从虚拟寄存器映射的实寄存器
        bool freg;
        std::set<MachineOperand *> defs;
        std::set<MachineOperand *> uses;
    };
    MachineUnit *unit;
    MachineFunction *func;
    std::vector<int> regs;
    std::map<MachineOperand *, std::set<MachineOperand *>> du_chains;
    std::vector<Interval*> intervals;
    static bool compareStart(Interval*a, Interval*b);
    void expireOldIntervals(Interval *interval);
    void spillAtInterval(Interval *interval);
    void makeDuChains();
    void computeLiveIntervals();
    bool linearScanRegisterAllocation();
    void modifyCode();
    void genSpillCode();
    //bd lab7
    std::vector<int> fregs;
    std::vector<Interval*> active;
    static bool compareEnd(Interval*a, Interval*b);
    static bool victimComp(Interval* active, Interval* candidate){return active->end < candidate->start;}
public:
    LinearScan(MachineUnit *unit);
    void allocateRegisters();

};

#endif