#ifndef __INSTRUCTION_H__
#define __INSTRUCTION_H__

#include "Operand.h"
#include "AsmBuilder.h"
#include <vector>
#include <map>
#include <sstream>

class BasicBlock;

class Instruction
{
public:
    Instruction(unsigned instType, BasicBlock *insert_bb = nullptr);
    virtual ~Instruction();
    BasicBlock *getParent();
    bool isUncond() const {return instType == UNCOND;};
    bool isCond() const {return instType == COND;};
    bool isRet() const {return instType == RET;};  //lab6
    bool isAlloc() const {return instType == ALLOCA;};
    void setParent(BasicBlock *);
    void setNext(Instruction *);
    void setPrev(Instruction *);
    Instruction *getNext();
    Instruction *getPrev();
    int getType() {return instType;};
    virtual void output() const = 0;
    MachineOperand* genMachineOperand(Operand*);
    MachineOperand* genMachineReg(int reg);
    MachineOperand* genMachineVReg(bool is_float = false);
    MachineOperand* genMachineImm(int val);
    MachineOperand* genMachineLabel(int block_no);
    virtual void genMachineCode(AsmBuilder*) = 0;
protected:
    unsigned instType;
    unsigned opcode;
    Instruction *prev;
    Instruction *next;
    BasicBlock *parent;
    std::vector<Operand*> operands;
    enum {BINARY, COND, UNCOND, RET, LOAD, STORE, CMP, ALLOCA, CALL, ZEXT, FBINARY, FCMP, IFCAST};   //lab6 增加类型 CALL ZEXT
};

// meaningless instruction, used as the head node of the instruction list.
class DummyInstruction : public Instruction
{
public:
    DummyInstruction() : Instruction(-1, nullptr) {};
    void output() const {};
    void genMachineCode(AsmBuilder*) {};
};

class AllocaInstruction : public Instruction
{
public:
    AllocaInstruction(Operand *dst, SymbolEntry *se, BasicBlock *insert_bb = nullptr);
    ~AllocaInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
private:
    SymbolEntry *se;
};

class LoadInstruction : public Instruction
{
public:
    LoadInstruction(Operand *dst, Operand *src_addr, BasicBlock *insert_bb = nullptr);
    ~LoadInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
};

class StoreInstruction : public Instruction
{
public:
    StoreInstruction(Operand *dst_addr, Operand *src, BasicBlock *insert_bb = nullptr);
    ~StoreInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
};

class BinaryInstruction : public Instruction
{
public:
    BinaryInstruction(unsigned opcode, Operand *dst, Operand *src1, Operand *src2, BasicBlock *insert_bb = nullptr);
    ~BinaryInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
    enum {SUB, ADD, AND, OR, MUL, DIV, MOD};  //lab6
};

class CmpInstruction : public Instruction
{
public:
    CmpInstruction(unsigned opcode, Operand *dst, Operand *src1, Operand *src2, BasicBlock *insert_bb = nullptr);
    ~CmpInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
    enum {E, NE, L, LE, G, GE};
};

// unconditional branch
class UncondBrInstruction : public Instruction
{
public:
    UncondBrInstruction(BasicBlock*, BasicBlock *insert_bb = nullptr);
    void output() const;
    void setBranch(BasicBlock *);
    BasicBlock *getBranch();
    void genMachineCode(AsmBuilder*);
protected:
    BasicBlock *branch;
};

// conditional branch
class CondBrInstruction : public Instruction
{
public:
    CondBrInstruction(BasicBlock*, BasicBlock*, Operand *, BasicBlock *insert_bb = nullptr);
    ~CondBrInstruction();
    void output() const;
    void setTrueBranch(BasicBlock*);
    BasicBlock* getTrueBranch();
    void setFalseBranch(BasicBlock*);
    BasicBlock* getFalseBranch();
    void genMachineCode(AsmBuilder*);
protected:
    BasicBlock* true_branch;
    BasicBlock* false_branch;
};

class RetInstruction : public Instruction
{
public:
    RetInstruction(Operand *src, BasicBlock *insert_bb = nullptr);
    ~RetInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
};

//lab6
class CallInstruction : public Instruction
{
public:
    IdentifierSymbolEntry* funcse;
    CallInstruction(Operand* dst, IdentifierSymbolEntry* func, std::vector<Operand*> params, BasicBlock* insert_bb = nullptr);    
    ~CallInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*); //lab7
};

class ZextInstruction : public Instruction
{
public:
    ZextInstruction(Operand *dst, Operand *src, BasicBlock *insert_bb = nullptr);
    ~ZextInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);  //lab7
};

//float 
//Modify 补全二元运算 finished yxy
class FBinaryInstruction : public Instruction
{
public:
    FBinaryInstruction(unsigned opcode, Operand *dst, Operand *src1, Operand *src2, BasicBlock *insert_bb = nullptr);
    ~FBinaryInstruction();
    void output() const;
    enum {SUB, ADD, MUL, DIV};
    void genMachineCode(AsmBuilder*);
};

class FCmpInstruction : public Instruction
{
public:
    FCmpInstruction(unsigned opcode, Operand *dst, Operand *src1, Operand *src2, BasicBlock *insert_bb = nullptr);
    ~FCmpInstruction();
    void output() const;
    enum {E, NE, L, GE, G, LE};
    void genMachineCode(AsmBuilder*);
};

//float  类型转换
class CastInstruction : public Instruction
{
public:
    CastInstruction(unsigned opcode, Operand *src, Operand *dst, BasicBlock *insert_bb = nullptr);
    ~CastInstruction();
    void output() const;
    enum {Int2Float, Float2Int};
    void genMachineCode(AsmBuilder*);
};

#endif
