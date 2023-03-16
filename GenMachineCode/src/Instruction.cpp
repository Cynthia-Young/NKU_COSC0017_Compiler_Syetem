#include "Instruction.h"
#include "BasicBlock.h"
#include <iostream>
#include <cassert>
#include "Function.h"
#include "Type.h"
#include <vector>
extern FILE* yyout;

Instruction::Instruction(unsigned instType, BasicBlock *insert_bb)
{
    prev = next = this;
    opcode = -1;
    this->instType = instType;
    if (insert_bb != nullptr)
    {
        insert_bb->insertBack(this);
        parent = insert_bb;
    }
}

Instruction::~Instruction()
{
    parent->remove(this);
}

BasicBlock *Instruction::getParent()
{
    return parent;
}

void Instruction::setParent(BasicBlock *bb)
{
    parent = bb;
}

void Instruction::setNext(Instruction *inst)
{
    next = inst;
}

void Instruction::setPrev(Instruction *inst)
{
    prev = inst;
}

Instruction *Instruction::getNext()
{
    return next;
}

Instruction *Instruction::getPrev()
{
    return prev;
}

BinaryInstruction::BinaryInstruction(unsigned opcode, Operand *dst, Operand *src1, Operand *src2, BasicBlock *insert_bb) : Instruction(BINARY, insert_bb)
{
    this->opcode = opcode;
    operands.push_back(dst);
    operands.push_back(src1);
    operands.push_back(src2);
    dst->setDef(this);
    src1->addUse(this);
    src2->addUse(this);
}

BinaryInstruction::~BinaryInstruction()
{
    operands[0]->setDef(nullptr);
    if(operands[0]->usersNum() == 0)
        delete operands[0];
    operands[1]->removeUse(this);
    operands[2]->removeUse(this);
}

void BinaryInstruction::output() const
{
    std::string s1, s2, s3, op, type;
    s1 = operands[0]->toStr();
    s2 = operands[1]->toStr();
    s3 = operands[2]->toStr();
    type = operands[0]->getType()->toStr();
    switch (opcode)
    {
    case ADD:
        op = "add";
        break;
    case SUB:
        op = "sub";
        break;
    case MUL:
        op = "mul";
        break;
    case DIV:
        op = "sdiv";
        break;
    case MOD:
        op = "srem";
        break;
    default:
        break;
    }
    fprintf(yyout, "  %s = %s %s %s, %s\n", s1.c_str(), op.c_str(), type.c_str(), s2.c_str(), s3.c_str());
    fprintf(stderr, "  %s = %s %s %s, %s\n", s1.c_str(), op.c_str(), type.c_str(), s2.c_str(), s3.c_str());
}

CmpInstruction::CmpInstruction(unsigned opcode, Operand *dst, Operand *src1, Operand *src2, BasicBlock *insert_bb): Instruction(CMP, insert_bb){
    this->opcode = opcode;
    operands.push_back(dst);
    operands.push_back(src1);
    operands.push_back(src2);
    dst->setDef(this);
    src1->addUse(this);
    src2->addUse(this);
}

CmpInstruction::~CmpInstruction()
{
    operands[0]->setDef(nullptr);
    if(operands[0]->usersNum() == 0)
        delete operands[0];
    operands[1]->removeUse(this);
    operands[2]->removeUse(this);
}

void CmpInstruction::output() const
{
    std::string s1, s2, s3, op, type;
    s1 = operands[0]->toStr();
    s2 = operands[1]->toStr();
    s3 = operands[2]->toStr();
    type = operands[1]->getType()->toStr();
    switch (opcode)
    {
    case E:
        op = "eq";
        break;
    case NE:
        op = "ne";
        break;
    case L:
        op = "slt";
        break;
    case LE:
        op = "sle";
        break;
    case G:
        op = "sgt";
        break;
    case GE:
        op = "sge";
        break;
    default:
        op = "";
        break;
    }

    fprintf(yyout, "  %s = icmp %s %s %s, %s\n", s1.c_str(), op.c_str(), type.c_str(), s2.c_str(), s3.c_str());
    fprintf(stderr, "  %s = icmp %s %s %s, %s\n", s1.c_str(), op.c_str(), type.c_str(), s2.c_str(), s3.c_str());
}

UncondBrInstruction::UncondBrInstruction(BasicBlock *to, BasicBlock *insert_bb) : Instruction(UNCOND, insert_bb)
{
    branch = to;
}

void UncondBrInstruction::output() const
{
    fprintf(yyout, "  br label %%B%d\n", branch->getNo());
    fprintf(stderr, "  br label %%B%d\n", branch->getNo());
}

void UncondBrInstruction::setBranch(BasicBlock *bb)
{
    branch = bb;
}

BasicBlock *UncondBrInstruction::getBranch()
{
    return branch;
}

CondBrInstruction::CondBrInstruction(BasicBlock*true_branch, BasicBlock*false_branch, Operand *cond, BasicBlock *insert_bb) : Instruction(COND, insert_bb){
    this->true_branch = true_branch;
    this->false_branch = false_branch;
    cond->addUse(this);
    operands.push_back(cond);
}

CondBrInstruction::~CondBrInstruction()
{
    operands[0]->removeUse(this);
}

void CondBrInstruction::output() const
{
    std::string cond, type;
    cond = operands[0]->toStr();
    type = operands[0]->getType()->toStr();
    int true_label = true_branch->getNo();
    int false_label = false_branch->getNo();
    fprintf(yyout, "  br %s %s, label %%B%d, label %%B%d\n", type.c_str(), cond.c_str(), true_label, false_label);
    fprintf(stderr, "  br %s %s, label %%B%d, label %%B%d\n", type.c_str(), cond.c_str(), true_label, false_label);
}

void CondBrInstruction::setFalseBranch(BasicBlock *bb)
{
    false_branch = bb;
}

BasicBlock *CondBrInstruction::getFalseBranch()
{
    return false_branch;
}

void CondBrInstruction::setTrueBranch(BasicBlock *bb)
{
    true_branch = bb;
}

BasicBlock *CondBrInstruction::getTrueBranch()
{
    return true_branch;
}

RetInstruction::RetInstruction(Operand *src, BasicBlock *insert_bb) : Instruction(RET, insert_bb)
{
    if(src != nullptr)
    {
        operands.push_back(src);
        src->addUse(this);
    }
}

RetInstruction::~RetInstruction()
{
    if(!operands.empty())
        operands[0]->removeUse(this);
}

void RetInstruction::output() const
{
    if(operands.empty())
    {
        fprintf(yyout, "  ret void\n");
        fprintf(stderr, "  ret void\n");
    }
    else
    {
        std::string ret, type;
        ret = operands[0]->toStr();
        type = operands[0]->getType()->toStr();
        fprintf(yyout, "  ret %s %s\n", type.c_str(), ret.c_str());
        fprintf(stderr, "  ret %s %s\n", type.c_str(), ret.c_str());
    }
}

AllocaInstruction::AllocaInstruction(Operand *dst, SymbolEntry *se, BasicBlock *insert_bb) : Instruction(ALLOCA, insert_bb)
{
    operands.push_back(dst);
    dst->setDef(this);
    this->se = se;
}

AllocaInstruction::~AllocaInstruction()
{
    operands[0]->setDef(nullptr);
    if(operands[0]->usersNum() == 0)
        delete operands[0];
}
//0112
void AllocaInstruction::output() const
{
    std::string dst, type;
    dst = operands[0]->toStr();
    type = se->getType()->toStr();
    fprintf(yyout, "  %s = alloca %s, align %d\n", dst.c_str(), type.c_str(),se->getType()->getSize());
    
    fprintf(stderr, "  %d\n",TypeSystem::floatType->getSize());
    fprintf(stderr, "  %s = alloca %s, align %d\n", dst.c_str(), type.c_str(),se->getType()->getSize());
}

LoadInstruction::LoadInstruction(Operand *dst, Operand *src_addr, BasicBlock *insert_bb) : Instruction(LOAD, insert_bb)
{
    operands.push_back(dst);
    operands.push_back(src_addr);
    dst->setDef(this);
    src_addr->addUse(this);
}

LoadInstruction::~LoadInstruction()
{
    operands[0]->setDef(nullptr);
    if(operands[0]->usersNum() == 0)
        delete operands[0];
    operands[1]->removeUse(this);
}

void LoadInstruction::output() const
{
    std::string dst = operands[0]->toStr();
    std::string src = operands[1]->toStr();
    std::string src_type;
    std::string dst_type;
    dst_type = operands[0]->getType()->toStr();
    src_type = operands[1]->getType()->toStr();
    fprintf(yyout, "  %s = load %s, %s %s, align 4\n", dst.c_str(), dst_type.c_str(), src_type.c_str(), src.c_str());
    fprintf(stderr, "  %s = load %s, %s %s, align 4\n", dst.c_str(), dst_type.c_str(), src_type.c_str(), src.c_str());
}

StoreInstruction::StoreInstruction(Operand *dst_addr, Operand *src, BasicBlock *insert_bb) : Instruction(STORE, insert_bb)
{
    operands.push_back(dst_addr);
    operands.push_back(src);
    dst_addr->addUse(this);
    src->addUse(this);
}

StoreInstruction::~StoreInstruction()
{
    operands[0]->removeUse(this);
    operands[1]->removeUse(this);
}

void StoreInstruction::output() const
{
    std::string dst = operands[0]->toStr();
    std::string src = operands[1]->toStr();
    std::string dst_type = operands[0]->getType()->toStr();
    std::string src_type = operands[1]->getType()->toStr();

    fprintf(yyout, "  store %s %s, %s %s, align 4\n", src_type.c_str(), src.c_str(), dst_type.c_str(), dst.c_str());
    fprintf(stderr, "  store %s %s, %s %s, align 4\n", src_type.c_str(), src.c_str(), dst_type.c_str(), dst.c_str());
}

//lab6 begin
CallInstruction::CallInstruction(Operand *dst, IdentifierSymbolEntry* func, std::vector<Operand*> params, BasicBlock *insert_bb) : Instruction(CALL, insert_bb)
{
    operands.push_back(dst);
    dst->setDef(this);
    for(auto param : params)
    {
        operands.push_back(param);
        param->addUse(this);
    }
    funcse = func;
}

CallInstruction::~CallInstruction()
{
    operands[0]->setDef(nullptr);
    if(operands[0]->usersNum() == 0)
        delete operands[0];
    for(int i = 1;i<(int)operands.size(); i++){
        operands[i]->removeUse(this);
    }
}

void CallInstruction::output() const
{
    //call void @putch(
    std::string dst = operands[0]->toStr();
    std::string dst_type;
    dst_type = operands[0]->getType()->toStr();
    Type* returnType = dynamic_cast<FunctionType*>(funcse->getType())->getRetType();
    if(!returnType->isVoid())//仅当返回值为非void时，向临时寄存器赋值
    {
        fprintf(yyout, "  %s =", dst.c_str());
        fprintf(stderr, "  %s =", dst.c_str());
    }
    fprintf(yyout, "  call %s %s(", dst_type.c_str(), funcse->toStr().c_str());
    fprintf(stderr, "  call %s %s(", dst_type.c_str(), funcse->toStr().c_str());
    for(int i = 1;i<(int)operands.size(); i++){
        std::string src = operands[i]->toStr();
        std::string src_type = operands[i]->getType()->toStr();
        if(i!=1){
            fprintf(yyout, ", ");
            fprintf(stderr, ", ");
        }
        // if((operands[i]->getEntry())->isVariable() && dynamic_cast<IdentifierSymbolEntry*>(operands[i]->getEntry())->isGlobal()){
        //     fprintf(yyout, "%s %f", src_type.c_str(), (int)dynamic_cast<IdentifierSymbolEntry*>(operands[i]->getEntry())->value);
        // }
        // else{
            fprintf(yyout, "%s %s", src_type.c_str(), src.c_str());
        // }
        fprintf(stderr, "%s %s", src_type.c_str(), src.c_str());
    }
    fprintf(yyout, ")\n");
    fprintf(stderr, ")\n");
}

ZextInstruction::ZextInstruction ( Operand *src,Operand *dst,  BasicBlock *insert_bb) : Instruction(ZEXT,insert_bb)
{

    operands.push_back(dst);
    operands.push_back(src);
    dst->setDef(this);
    src->addUse(this);
}

ZextInstruction::~ZextInstruction()
{
    operands[0]->setDef(nullptr);
    if(operands[0]->usersNum() == 0)
        delete operands[0];
    operands[1]->removeUse(this);
}

void ZextInstruction ::output() const
{    
    Operand* dst=operands[0];
    Operand* src=operands[1];
    fprintf(yyout,"  %s = zext i1 %s to i32\n",dst->toStr().c_str(),src->toStr().c_str() );
    fprintf(stderr,"  %s = zext i1 %s to i32\n",dst->toStr().c_str(),src->toStr().c_str() );
}

FBinaryInstruction::FBinaryInstruction(unsigned opcode, Operand *dst, Operand *src1, Operand *src2, BasicBlock *insert_bb) : Instruction(BINARY, insert_bb)
{
    this->opcode = opcode;
    operands.push_back(dst);
    operands.push_back(src1);
    operands.push_back(src2);
    dst->setDef(this);
    src1->addUse(this);
    src2->addUse(this);
}

FBinaryInstruction::~FBinaryInstruction()
{
    operands[0]->setDef(nullptr);
    if(operands[0]->usersNum() == 0)
        delete operands[0];
    operands[1]->removeUse(this);
    operands[2]->removeUse(this);
}
//Modify 补全二元运算
void FBinaryInstruction::output() const
{    
    //fprintf(stderr,"6789%d\n",opcode == DIV);
    std::string s1, s2, s3, op, type;
    s1 = operands[0]->toStr();
    s2 = operands[1]->toStr();
    s3 = operands[2]->toStr();
    type = operands[0]->getType()->toStr();
    switch (opcode)
    {
    case BinaryInstruction::ADD:  //0112
        op = "fadd";
        break;
    case BinaryInstruction::SUB:
        op = "fsub";
        break;
    case BinaryInstruction::MUL:
        op = "fmul";
        break;
    case BinaryInstruction::DIV:
        op = "fdiv";
        break;
    default:
        break;
    }
    fprintf(yyout, "  %s = %s %s %s, %s\n", s1.c_str(), op.c_str(), type.c_str(), s2.c_str(), s3.c_str());
    fprintf(stderr, "  %s = %s %s %s, %s\n", s1.c_str(), op.c_str(), type.c_str(), s2.c_str(), s3.c_str());
}

FCmpInstruction::FCmpInstruction(unsigned opcode, Operand *dst, Operand *src1, Operand *src2, BasicBlock *insert_bb): Instruction(CMP, insert_bb){
    this->opcode = opcode;
    operands.push_back(dst);
    operands.push_back(src1);
    operands.push_back(src2);
    dst->setDef(this);
    src1->addUse(this);
    src2->addUse(this);
}

FCmpInstruction::~FCmpInstruction()
{
    operands[0]->setDef(nullptr);
    if(operands[0]->usersNum() == 0)
        delete operands[0];
    operands[1]->removeUse(this);
    operands[2]->removeUse(this);
}

void FCmpInstruction::output() const
{
    std::string s1, s2, s3, op, type;
    s1 = operands[0]->toStr();
    s2 = operands[1]->toStr();
    s3 = operands[2]->toStr();
    type = operands[1]->getType()->toStr();
    switch (opcode)
    {
    case E:
        op = "oeq";
        break;
    case NE:
        op = "one";
        break;
    case L:
        op = "olt";
        break;
    case LE:
        op = "ole";
        break;
    case G:
        op = "ogt";
        break;
    case GE:
        op = "oge";
        break;
    default:
        op = "";
        break;
    }

    fprintf(yyout, "  %s = fcmp %s %s %s, %s\n", s1.c_str(), op.c_str(), type.c_str(), s2.c_str(), s3.c_str());
    fprintf(stderr, "  %s = fcmp %s %s %s, %s\n", s1.c_str(), op.c_str(), type.c_str(), s2.c_str(), s3.c_str());
}

CastInstruction::CastInstruction(unsigned opcode, Operand *src, Operand *dst, BasicBlock *insert_bb) : Instruction(IFCAST, insert_bb)
{
    this->opcode = opcode;
    operands.push_back(src);
    operands.push_back(dst);
    dst->setDef(this);
    src->addUse(this);
}

CastInstruction::~CastInstruction()
{
    operands[0]->setDef(nullptr);
    if(operands[0]->usersNum() == 0)
        delete operands[0];
    operands[1]->removeUse(this);
}

void CastInstruction::output() const
{
    std::string src = operands[0]->toStr();
    std::string dst = operands[1]->toStr();
    std::string src_type = operands[0]->getType()->toStr();
    std::string dst_type = operands[1]->getType()->toStr();
    std::string castType;
    switch(opcode) {
        case Int2Float:
            castType = "sitofp";
            break;
        case Float2Int:
            castType = "fptosi";
            break;
        default:
            castType = "";
            break;
    }
    fprintf(yyout, "  %s = %s %s %s to %s\n", dst.c_str(), castType.c_str(), src_type.c_str(), src.c_str(), dst_type.c_str());
    fprintf(stderr, "  %s = %s %s %s to %s\n", dst.c_str(), castType.c_str(), src_type.c_str(), src.c_str(), dst_type.c_str());


}

MachineOperand* Instruction::genMachineOperand(Operand* ope)
{

    auto se = ope->getEntry();
    Type* opeType = ope->getEntry()->getType();
    MachineOperand* mope = nullptr;
    if(se->isConstant()) //常数
    {
        if(ope->getType()->isFloat())
            mope = new MachineOperand(MachineOperand::IMM, dynamic_cast<ConstantSymbolEntry*>(se)->getValue(), true);
        else
            mope = new MachineOperand(MachineOperand::IMM, dynamic_cast<ConstantSymbolEntry*>(se)->getValue());  
    }        
    else if(se->isTemporary())  //临时 operand的第一个构造函数
    {
        if(opeType->isPointer())
        {
            if(((PointerType*)opeType)->getValueType()->isArray())
                mope = new MachineOperand(MachineOperand::IMM, dynamic_cast<TemporarySymbolEntry*>(se)->getOffset());
        }
        else
        {
            if(opeType->isFloat())
                mope = new MachineOperand(MachineOperand::VREG, dynamic_cast<TemporarySymbolEntry*>(se)->getLabel(), true);
            else
                mope = new MachineOperand(MachineOperand::VREG, dynamic_cast<TemporarySymbolEntry*>(se)->getLabel());
        }

    }   
    else if(se->isVariable()) 
    {

        auto id_se = dynamic_cast<IdentifierSymbolEntry*>(se);
        if(id_se->isGlobal())  //全局变量
        {
            mope = new MachineOperand(id_se->toStr().c_str());
        }
        else 
        if(id_se->isParam())  //函数参数 4个 0-3号物理寄存器
        {
            if(ope->getType()->isFloat())
            {
                int index = 0;
                for (auto param : this->parent->getParent()->params)
                {
                    if(ope == param) break;
                    if(param->getType()->isFloat()) index++;
                }
                if (index < int(this->parent->getParent()->params.size()))
                {
                    if(index < 4)
                    {
                        mope = new MachineOperand(MachineOperand::REG, index+16, true); //0112
                    }
                    else
                    {
                        //超过四个参数
                        mope = new MachineOperand(MachineOperand::REG, 3);
                    }
                }
            }
            else
            {
                int index = 0;
                for (auto param : this->parent->getParent()->params)
                {
                    if(ope == param) break;
                    if(!param->getType()->isFloat()) index++;
                }
                if (index < int(this->parent->getParent()->params.size()))
                {
                    if(index < 4)
                    {
                        mope = new MachineOperand(MachineOperand::REG, index);
                    }
                    else
                    {
                        //超过四个参数
                        mope = new MachineOperand(MachineOperand::REG, 3);
                    }
                }
            }



        }
        else 
        if(id_se->getType() == TypeSystem::constIntType)
        {
            mope = new MachineOperand(MachineOperand::IMM, id_se->value);
	    }
        else if(id_se->getType() == TypeSystem::constFloatType)
            mope = new MachineOperand(MachineOperand::IMM, id_se->value, true);
        else
        {

            mope = new MachineOperand(id_se->toStr().c_str());
        }
    }
    return mope;
    
}

MachineOperand* Instruction::genMachineReg(int reg) 
{
    return new MachineOperand(MachineOperand::REG, reg);
}

MachineOperand* Instruction::genMachineVReg(bool isFloat) 
{
    return new MachineOperand(MachineOperand::VREG, SymbolTable::getLabel(), isFloat);
}

MachineOperand* Instruction::genMachineImm(int val) 
{
    return new MachineOperand(MachineOperand::IMM, val);
}

MachineOperand* Instruction::genMachineLabel(int block_no)
{
    std::ostringstream buf;
    buf << ".L" << block_no;
    std::string label = buf.str();
    return new MachineOperand(label);
}

void AllocaInstruction::genMachineCode(AsmBuilder* builder)
{
    /* HINT:
    * Allocate stack space for local variabel
    * Store frame offset in symbol entry */
   //为所有局部变量分配空间 并保存偏移量

    auto cur_func = builder->getFunction();
    int offset = cur_func->AllocSpace(se->getType()->getSize());
    dynamic_cast<TemporarySymbolEntry*>(operands[0]->getEntry())->setOffset(-offset);

}

void LoadInstruction::genMachineCode(AsmBuilder* builder)
{
    /*
    涉及到数组的 ：
        1.Id->参数 先load数组的地址    
                new LoadInstruction(new_addr, addr, bb)//tmporary-identifier
        2.Id->全局地址标签
                new LoadInstruction(global_addr, addr, bb)//tmporary-identifier
        3.Id->根据索引下标计算偏移量，从 偏移量+基址 load
                new LoadInstruction(dst, Offset, bb)//tmporary-identifier/temporary(参数)
    */
    auto cur_block = builder->getBlock();
    MachineInstruction* cur_inst = nullptr;
    // Load global operand
    //全局变量或者常量
    if(operands[1]->getEntry()->isVariable() && dynamic_cast<IdentifierSymbolEntry*>(operands[1]->getEntry())->isGlobal())
    {

        if(operands[0]->getType()->isArray())
        {
            auto dst = genMachineOperand(operands[0]);
            auto src = genMachineOperand(operands[1]);
            cur_inst = new LoadMInstruction(cur_block, dst, src);
            cur_block->InsertInst(cur_inst); 
        }
        else
        {

            auto dst = genMachineOperand(operands[0]);
            auto internal_reg1 = genMachineVReg(); 
            auto internal_reg2 = new MachineOperand(*internal_reg1);
            auto src = genMachineOperand(operands[1]);
            // example: load r0, addr_a在全局的地址标签中将其地址加载到寄存器中
            cur_inst = new LoadMInstruction(cur_block, internal_reg1, src);
            cur_block->InsertInst(cur_inst);
            // example: load r1, [r0]该地址中加载出其实际的值

            if(operands[0]->getType()->isFloat())   
                cur_inst = new LoadMInstruction(cur_block, dst, internal_reg2, nullptr, LoadMInstruction::VLDR);
            else
                cur_inst = new LoadMInstruction(cur_block, dst, internal_reg2);
            cur_block->InsertInst(cur_inst);
        }    

    }
    // Load operand from temporary variable 
    else if(operands[1]->getEntry()->isTemporary() && operands[1]->getDef() && operands[1]->getDef()->isAlloc())//分配了空间
    {
        // example: load r1, [r0, #4]

        auto dst = genMachineOperand(operands[0]);
        auto src1 = genMachineReg(11);//FP
        auto src2 = genMachineImm(dynamic_cast<TemporarySymbolEntry*>(operands[1]->getEntry())->getOffset());//存偏移量

        if(operands[0]->getType()->isFloat())
            cur_inst = new LoadMInstruction(cur_block, dst, src1, src2, LoadMInstruction::VLDR);
        else
            cur_inst = new LoadMInstruction(cur_block, dst, src1, src2);
        cur_block->InsertInst(cur_inst);
        //保留函数参数偏移量
        if (dynamic_cast<TemporarySymbolEntry*>(operands[1]->getEntry())->getOffset()>= 0) 
        {
            cur_block->getParent()->SaveParamOffset(src2);
        }
    }
    // Load local operand
    //load局部操作数
    else
    {

        if(operands[0]->getType()->isArray())
        {

            Type*ArrType = operands[1]->getType();

            std::vector<int> ArrDims;


            if(ArrType->isArrInt())     ArrDims=((ArrIntType*)(ArrType))->getDims();
            else if(ArrType->isConstArrInt())    ArrDims=((ConstArrIntType*)(ArrType))->getDims();
            else if(ArrType->isArrFloat())    ArrDims=((ArrFloatType*)(ArrType))->getDims();
            else if(ArrType->isConstArrFloat())   ArrDims=((ConstArrFloatType*)(ArrType))->getDims();

            
            if(!(((TemporarySymbolEntry*)(operands[1]->getEntry()))->getGlobalArr() )&& !(ArrDims[0]==-1))
            {
                //非参数 非全局

                auto dst = genMachineOperand(operands[0]);
                auto src = genMachineOperand(operands[1]);
                auto src1 = genMachineReg(11);//FP
                auto internal_reg1 = genMachineVReg(); 
//0115
                if(abs(((ConstantSymbolEntry*)(operands[1]->getEntry()))->getValue())>255)
                {
                    auto internal_reg = genMachineVReg();
                    cur_inst = new LoadMInstruction(cur_block, internal_reg, src);
                    cur_block->InsertInst(cur_inst);
                    src = new MachineOperand(*internal_reg);
                }

                //dst = src + fp
                cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::ADD, internal_reg1, src1, src);
                cur_block->InsertInst(cur_inst);

                if(operands[0]->getType()->isFloat())
                    cur_inst = new LoadMInstruction(cur_block, dst, internal_reg1, nullptr, LoadMInstruction::VLDR);
                else 
                    cur_inst =new LoadMInstruction(cur_block, dst, internal_reg1);
                    
                cur_block->InsertInst(cur_inst);
            }    
            else
            {

                auto dst = genMachineOperand(operands[0]);
                auto src = genMachineOperand(operands[1]);
                if(operands[0]->getType()->isFloat())
                    cur_inst = new LoadMInstruction(cur_block, dst, src, nullptr, LoadMInstruction::VLDR);
                else    
                    cur_inst = new LoadMInstruction(cur_block, dst, src);
                cur_block->InsertInst(cur_inst);
            }                   
        }
        else
        {

            auto dst = genMachineOperand(operands[0]);
            auto src = genMachineOperand(operands[1]);
            if(operands[0]->getType()->isFloat())
                cur_inst = new LoadMInstruction(cur_block, dst, src, nullptr, LoadMInstruction::VLDR); 
            else
                cur_inst = new LoadMInstruction(cur_block, dst, src);    
            cur_block->InsertInst(cur_inst);
        }
    }

}

void StoreInstruction::genMachineCode(AsmBuilder* builder)
{

    /*
    涉及到数组的：
    1.把数组声明时赋的值中的Exp存入dst(偏移量+基址)
            new StoreInstruction(dst, src, bb)
    2.赋值表达式，右值的操作数存入左值的地址
            new StoreInstruction(Offset, src, bb);
    */


   //store参数  如果index>=5,直接改目的地址的偏移量
    if(operands[1]->getEntry()->isVariable())
    {
        auto id_se = dynamic_cast<IdentifierSymbolEntry*>(operands[1]->getEntry());
        if(id_se->isParam())//如果当前是存参数 则直接修改dst的offset
        {
            int index = 0;
            bool find = false;
            if(operands[1]->getType()->isAnyFloat())
            {
                for (auto param : this->parent->getParent()->params)
                {
                    if(operands[1] == param) 
                    {
                        break;
                    }
                    if(param->getType()->isFloat()) index++;
                }
            }
            else
            {
                for (auto param : this->parent->getParent()->params)
                    {
                        if(operands[1] == param) 
                        {
                            break;
                        }
                        if(!param->getType()->isInt()) index++;
                    }                
            }

            if (index < int(this->parent->getParent()->params.size()))
            {
                if(index >= 4)
                {
                    index = index-4;
                    dynamic_cast<TemporarySymbolEntry*>(operands[0]->getEntry())->setOffset(4*index);
                    return;
                }
            }            
        }
        
    }
   
    auto cur_block = builder->getBlock();
    MachineInstruction* cur_inst = nullptr;

    auto src = genMachineOperand(operands[1]);
    // if(src->isImm())
    if(operands[1]->getEntry()->isConstant())
    {
        if(operands[1]->getType()->isFloat())
        {
            auto internal_reg1 = genMachineVReg();
            cur_inst = new LoadMInstruction(cur_block, internal_reg1, src);
            cur_block->InsertInst(cur_inst);
            internal_reg1 = new MachineOperand(*internal_reg1);
            auto internal_reg2 = genMachineVReg(true);
            cur_inst = new MovMInstruction(cur_block, MovMInstruction::VMOV, internal_reg2, internal_reg1);
            cur_block->InsertInst(cur_inst);
            src =  new MachineOperand(*internal_reg2);
        }
        else
        {
            auto internal_reg1 = genMachineVReg();
            cur_inst = new LoadMInstruction(cur_block, internal_reg1, src);
            cur_block->InsertInst(cur_inst);
            src = new MachineOperand(*internal_reg1);            
        }

    }
   
    // store global operand
    //全局变量或者常量
    if(operands[0]->getEntry()->isVariable() && dynamic_cast<IdentifierSymbolEntry*>(operands[0]->getEntry())->isGlobal())
    {
        // fprintf(stderr,"StoreInstruction case1\n");
        auto dst = genMachineOperand(operands[0]);
        auto internal_reg1 = genMachineVReg(); 
        auto internal_reg2 = new MachineOperand(*internal_reg1);
        // example: load r0, addr_a
        //在全局的地址标签中将其地址加载到寄存器中
        cur_inst = new LoadMInstruction(cur_block, internal_reg1, dst); //dst load进 internal_reg
        cur_block->InsertInst(cur_inst);
        // example: store r1, [r0]
        if(operands[1]->getType()->isFloat())
            cur_inst = new StoreMInstruction(cur_block, src, internal_reg2, nullptr, StoreMInstruction::VSTR); //src 存入 internal_reg
        else
            cur_inst = new StoreMInstruction(cur_block, src, internal_reg2); //src 存入 internal_reg
        cur_block->InsertInst(cur_inst);
    }
    // store local operand
    else if(operands[0]->getEntry()->isTemporary() && operands[0]->getDef() && operands[0]->getDef()->isAlloc())
    {
        // example: store r1, [r0, #4] 把r1放入r0+4
        // auto src = genMachineOperand(operands[1]);

        auto dst0 = genMachineReg(11); //FP
        auto dst = genMachineImm(dynamic_cast<TemporarySymbolEntry*>(operands[0]->getEntry())->getOffset());
//TODO 偏移量
        if(abs(dynamic_cast<TemporarySymbolEntry*>(operands[0]->getEntry())->getOffset()) > 255)
        {
            auto internal_reg = genMachineVReg();
            cur_inst = new LoadMInstruction(cur_block, internal_reg, dst);
            cur_block->InsertInst(cur_inst);
            dst = new MachineOperand(*internal_reg);
        }
        //float
        if(operands[1]->getType()->isFloat())
            cur_inst = new StoreMInstruction(cur_block, src, dst0, dst, StoreMInstruction::VSTR); 
        else
            cur_inst = new StoreMInstruction(cur_block, src, dst0, dst); 
        cur_block->InsertInst(cur_inst);
  
    }  
    // store operand from temporary variable
    //store 临时变量 
    else
    {
        if(operands[0]->getEntry()->getType()->isArray())
        {
            Type*ArrType = operands[0]->getType();
            std::vector<int> ArrDims;
            // bool isParamArr;
            if(ArrType->isArrInt())     ArrDims=((ArrIntType*)(ArrType))->getDims();
            else if(ArrType->isConstArrInt())    ArrDims=((ConstArrIntType*)(ArrType))->getDims();
            else if(ArrType->isArrFloat())    ArrDims=((ArrFloatType*)(ArrType))->getDims();
            else if(ArrType->isConstArrFloat())   ArrDims=((ConstArrFloatType*)(ArrType))->getDims();
            else    exit(EXIT_FAILURE);

            auto dst = genMachineOperand(operands[0]);
            if( !(((TemporarySymbolEntry*)(operands[0]->getEntry()))->getGlobalArr())  && !(ArrDims[0]==-1))//0114
            {
                //非参数非全局：fp+偏移量
                auto src1 = genMachineReg(11);//FP
                // auto dst = genMachineOperand(operands[1]);
                auto internal_reg1 = genMachineVReg(); 
//0115
                if(abs(((ConstantSymbolEntry*)(operands[0]->getEntry()))->getValue())>255)
                {
                    auto internal_reg = genMachineVReg();
                    cur_inst = new LoadMInstruction(cur_block, internal_reg, dst);
                    cur_block->InsertInst(cur_inst);
                    dst = new MachineOperand(*internal_reg);                    
                }

                cur_inst =  new BinaryMInstruction(cur_block, BinaryMInstruction::ADD, internal_reg1, src1, dst);
                cur_block->InsertInst(cur_inst);  

                internal_reg1 = new MachineOperand(*internal_reg1);

                if(operands[1]->getType()->isFloat())
                    cur_inst = new StoreMInstruction(cur_block, src, internal_reg1, nullptr, StoreMInstruction::VSTR); 
                else
                    cur_inst = new StoreMInstruction(cur_block, src, internal_reg1);

                cur_block->InsertInst(cur_inst);               
            }
            else
            {
                if(operands[1]->getType()->isFloat())
                    cur_inst = new StoreMInstruction(cur_block, src, dst, nullptr, StoreMInstruction::VSTR); 
                else
                    cur_inst = new StoreMInstruction(cur_block, src, dst);
                cur_block->InsertInst(cur_inst);
            }

        }
        else
        {
            // example: store r1, [r0]  r1 存入 r0
            auto dst = genMachineOperand(operands[0]);
            // auto src = genMachineOperand(operands[1]);
            if(operands[1]->getType()->isFloat())
                cur_inst = new StoreMInstruction(cur_block, src, dst, nullptr, StoreMInstruction::VSTR);
            else
                cur_inst = new StoreMInstruction(cur_block, src, dst);
            cur_block->InsertInst(cur_inst);
        }

    }

    
}

//modify bd LoadMInstruction MachineOperand BinaryMInstruction
void BinaryInstruction::genMachineCode(AsmBuilder* builder)
{

    auto cur_block = builder->getBlock();
    auto dst = genMachineOperand(operands[0]);
    auto src1 = genMachineOperand(operands[1]);
    auto src2 = genMachineOperand(operands[2]);
    /* HINT:
    * The source operands of ADD instruction in ir code both can be immediate num.
    * However, it's not allowed in assembly code.
    * So you need to insert LOAD/MOV instrucrion to load immediate num into register.
    * As to other instructions, such as MUL, CMP, you need to deal with this situation, too.*/
    MachineInstruction* cur_inst = nullptr;
    //是立即数的话要先load进来
    if(src1->isImm())
    {
        auto internal_reg = genMachineVReg();
        cur_inst = new LoadMInstruction(cur_block, internal_reg, src1);
        cur_block->InsertInst(cur_inst);
        src1 = new MachineOperand(*internal_reg);
    }

    if(opcode != ADD && opcode != SUB)
    {   
        
        if (src2->isImm()) 
        {
            auto temp_reg = genMachineVReg();
            cur_inst = new LoadMInstruction(cur_block, temp_reg, src2);
            cur_block->InsertInst(cur_inst);
            src2 = new MachineOperand(*temp_reg);
        }
    }

    MachineOperand* product;
    switch (opcode)
    {
    case ADD:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::ADD, dst, src1, src2);
        break;
    case SUB:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::SUB, dst, src1, src2);
        break;
    case MUL:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::MUL, dst, src1, src2);
        break;
    case DIV:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::DIV, dst, src1, src2);
        break;
    case MOD:
        //dst =src1/src2
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::DIV, dst, src1, src2);
        cur_block->InsertInst(cur_inst);
        //product =dst*src2
        product = new MachineOperand(*dst);
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::MUL, product, dst, new MachineOperand(*src2));
        cur_block->InsertInst(cur_inst);
        //dst = src1-product
        dst = new MachineOperand(*product);
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::SUB, dst, new MachineOperand(*src1), product);
        break;
    case AND:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::AND, dst, src1, src2);
        break;
    case OR:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::OR, dst, src1, src2);
        break;
    default:
        break;
    }
    cur_block->InsertInst(cur_inst);

}


//modify bd LoadMInstruction MachineOperand MovMInstruction CmpMInstruction
void CmpInstruction::genMachineCode(AsmBuilder* builder)
{

    MachineBlock* cur_block = builder->getBlock();
    MachineInstruction* cur_inst = nullptr;

    cur_block->Cond = opcode;//设置当前块的cond类型

    MachineOperand* src1 = genMachineOperand(operands[1]);
    MachineOperand* src2 = genMachineOperand(operands[2]);
    
    //load立即数
    if(src1->isImm())
    {
        auto internal_reg = genMachineVReg();
        cur_inst = new LoadMInstruction(cur_block, internal_reg, src1);
        cur_block->InsertInst(cur_inst);
        src1 = new MachineOperand(*internal_reg);
    }
    if (src2->isImm()) 
    {
        auto temp_reg = genMachineVReg();
        cur_inst = new LoadMInstruction(cur_block, temp_reg, src2);
        cur_block->InsertInst(cur_inst);
        src2 = new MachineOperand(*temp_reg);
    }

    cur_inst = new CmpMInstruction(cur_block, src1, src2, opcode);
    cur_block->InsertInst(cur_inst);
        
    
    int true_op = opcode;
    int false_op; 
    
    switch (opcode)
    {
    case E:
        true_op = MachineInstruction::condType::EQ;
        false_op =  MachineInstruction::condType::NE;
        break;
    case NE:
        true_op = MachineInstruction::condType::NE;
        false_op =  MachineInstruction::condType::EQ;
        break;
    case L:
        true_op = MachineInstruction::condType::LT;
        false_op =  MachineInstruction::condType::GE;
        break;
    case LE:
        true_op = MachineInstruction::condType::LE;
        false_op =  MachineInstruction::condType::GT;
        break;
    case G:
        true_op = MachineInstruction::condType::GT;
        false_op =  MachineInstruction::condType::LE;
        break;  
    case GE:
        true_op = MachineInstruction::condType::GE;
        false_op =  MachineInstruction::condType::LT;
        break;         
    default:
        break;
    }

        cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, genMachineOperand(operands[0]), genMachineImm(1), true_op);
        cur_block->InsertInst(cur_inst);

        cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, genMachineOperand(operands[0]), genMachineImm(0), false_op);
        cur_block->InsertInst(cur_inst);
    


}

//modify bd BranchMInstruction MachineOperand
void UncondBrInstruction::genMachineCode(AsmBuilder* builder)
{

    MachineBlock* cur_block = builder->getBlock();
    MachineInstruction* cur_inst = nullptr;
    std::ostringstream label;
    label <<  ".L" << branch->getNo();
    cur_inst = new BranchMInstruction(cur_block, BranchMInstruction::B, new MachineOperand(label.str()));
    cur_block->InsertInst(cur_inst);

}

//modify bd BranchMInstruction MachineOperand
void CondBrInstruction::genMachineCode(AsmBuilder* builder)
{

    MachineBlock* cur_block = builder->getBlock();
    MachineInstruction* cur_inst = nullptr;

    std::ostringstream Tlabel;
    Tlabel <<  ".L" << true_branch->getNo();
    cur_inst = new BranchMInstruction(cur_block, BranchMInstruction::B, new MachineOperand(Tlabel.str()), cur_block->Cond);   
    cur_block->InsertInst(cur_inst);
    
    std::ostringstream Flabel;
    Flabel <<  ".L" << false_branch->getNo();
   cur_inst = new BranchMInstruction(cur_block, BranchMInstruction::B, new MachineOperand(Flabel.str()));
    cur_block->InsertInst(cur_inst);

}
//modify yxy LoadMInstruction BranchMInstruction MachineOperand MovMInstruction
void RetInstruction::genMachineCode(AsmBuilder* builder)
{
    /* HINT:
    * 1. Generate mov instruction to save return value in r0
    * 2. Restore callee saved registers and sp, fp
    * 3. Generate bx instruction */


    auto cur_block = builder->getBlock();
    MachineInstruction* cur_inst = nullptr;

    //当函数有返回值时 mov：save return value in r0

    if(!operands.empty())
    {
        auto src = genMachineOperand(operands[0]);
        if(src->isImm())
        {
            auto internal_reg = genMachineVReg();
            cur_inst = new LoadMInstruction(cur_block, internal_reg, src);
            cur_block->InsertInst(cur_inst);
            src = new MachineOperand(*internal_reg);            
        } 
        if (operands[0]->getType()->isFloat())
        {
            
            auto dst = new MachineOperand(MachineOperand::REG, 16, true); 
            cur_inst = new MovMInstruction(cur_block, MovMInstruction::VMOV, dst, src);
        }
        else
        {
            auto dst = new MachineOperand(MachineOperand::REG, 0);//r0
            cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, dst, src);
        }
        cur_block->InsertInst(cur_inst);

    }
    
    auto dst = new MachineOperand(".L" + this->getParent()->getParent()->getSymPtr()->toStr().erase(0,1) + "_END");
    cur_inst = new BranchMInstruction(cur_block, BranchMInstruction::B, dst);
    cur_block->InsertInst(cur_inst);

}

//modify yxy MachineOperand MovMInstruction StackMInstruction BranchMInstruction
void CallInstruction::genMachineCode(AsmBuilder* builder)
{

    auto cur_block = builder->getBlock();
    MachineInstruction* cur_inst = nullptr;

    int fnum = 0, inum = 0;

    for(int i = 1; i < int(operands.size()); i++) 
    {
        Type* curType = operands[i]->getType();
        if(curType->isFloat())  fnum++;
        else if(curType->isArrFloat() && !((ArrFloatType *)curType)->isPoniter())    
        {
            if(((ArrFloatType *)curType)->isPoniter()) inum++;
            else fnum++;
        }
        else if(curType->isConstArrFloat())  
        { 
            if(((ConstArrFloatType *)curType)->isPoniter()) inum++;
            else fnum++;
        }   
        else inum++; 
        // else if(curType->isInt())   inum++;
        // else if(curType->isArrInt())    inum++;
        // else if(curType->isConstArrInt())   inum++; 
    }

    int saveNum = 0;

    for(unsigned int i = operands.size() - 1; i > 0; i--)
    {

        bool Pointer = false;
        Type* curType = operands[i]->getType();
        SymbolEntry* curEntry = operands[i]->getEntry();

        if(curType->isArray())
        {
            if(curType->isArrInt())
            {
                if(((ArrIntType *)curType)->getDims()[0] != -1 && ((ArrIntType *)curType)->isPoniter())
                    Pointer = true;
            }     
            else if(curType->isConstArrInt()) 
            {
                if(((ConstArrIntType *)curType)->getDims()[0] != -1 && ((ConstArrIntType *)curType)->isPoniter())
                    Pointer = true;
            }   
            else if(curType->isArrFloat())   
            {
                if(((ArrFloatType *)curType)->getDims()[0] != -1 && ((ArrFloatType *)curType)->isPoniter())
                    Pointer = true;
            } 
            else if(curType->isConstArrFloat())  
            { 
                if(((ConstArrFloatType *)curType)->getDims()[0] != -1 && ((ConstArrFloatType *)curType)->isPoniter())
                    Pointer = true;
            }  
        }

        if(Pointer)
        {
            //数组指针
            MachineOperand*  dst_addr;
            if(((TemporarySymbolEntry*)curEntry)->getGlobalArr())//全局不需要计算偏移量
            {
                dst_addr = genMachineOperand(operands[i]);
            }
            else
            {
                auto internal_reg = genMachineReg(11);
                auto src = genMachineOperand(operands[i]);
                dst_addr = genMachineVReg();

                cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::ADD, dst_addr, internal_reg, src);
                cur_block->InsertInst(cur_inst);                
            }
            
            if(inum <= 4)//r0-r3
            {
                auto dst = new MachineOperand(MachineOperand::REG, inum-1);
                cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, dst, dst_addr);
                cur_block->InsertInst(cur_inst);
            }
            else
            {
                saveNum++;
                cur_inst = new StackMInstruction(cur_block, StackMInstruction::PUSH, dst_addr);
                cur_block->InsertInst(cur_inst);
            }
            inum = inum - 1;
        }
        else
        {
            //左起前4个参数通过s0-s3传递
            //浮点数寄存器
            if(curType->isFloat())
            {
                if(fnum <= 4)
                {
                    auto dst = new MachineOperand(MachineOperand::REG, fnum-1+16, true);//r0-r3 //0112
                    auto src = genMachineOperand(operands[i]);
                    if(src->isImm()) { //如果是立即数先Load出来
                        MachineOperand* internal_reg = genMachineVReg();
                        cur_inst = new LoadMInstruction(cur_block, internal_reg, src);
                        cur_block->InsertInst(cur_inst);
                        src = new MachineOperand(*internal_reg);
                    }
                    cur_inst = new MovMInstruction(cur_block, MovMInstruction::VMOV, dst, src);
                    cur_block->InsertInst(cur_inst);
                }
                else
                {
                    saveNum++;                
                    MachineOperand* operand = genMachineOperand(operands[i]);
                    if(operand->isImm()) { //如果是立即数先Load出来
                        MachineOperand* internal_reg = genMachineVReg();
                        cur_inst = new LoadMInstruction(cur_block, internal_reg, operand);
                        cur_block->InsertInst(cur_inst);
                        operand = genMachineVReg(true);
                        cur_inst = new MovMInstruction(cur_block, MovMInstruction::VMOV, operand, internal_reg);
                        cur_block->InsertInst(cur_inst);
                    }

                    cur_inst = new StackMInstruction(cur_block, StackMInstruction::VPUSH, operand); //yxy 
                    cur_block->InsertInst(cur_inst);
                }
                fnum--;
            }
            else 
            {

                if(inum <= 4){
                    
                    auto dst = new MachineOperand(MachineOperand::REG, inum-1);//r0-r3
                    cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, dst, genMachineOperand(operands[i]));
                    cur_block->InsertInst(cur_inst);
                }
                else
                {
                    MachineOperand* operand = genMachineOperand(operands[i]);
                    if(operand->isImm()) { //如果是立即数先Load出来
                        MachineOperand* internal_reg = genMachineVReg();
                        cur_inst = new LoadMInstruction(cur_block, internal_reg, operand);
                        cur_block->InsertInst(cur_inst);
                        operand = new MachineOperand(*internal_reg);
                    }

                    cur_inst = new StackMInstruction(cur_block, StackMInstruction::PUSH, operand); //yxy 
                    cur_block->InsertInst(cur_inst);
                }
                inum--;
            }    
        }
 
    }
    
    //生成跳转指令来进入 Callee 函数；
    cur_inst = new BranchMInstruction(cur_block, BranchMInstruction::BL, new MachineOperand(funcse->getName(),true));
    cur_block->InsertInst(cur_inst);

    
    if(dynamic_cast<FunctionType*>(this->funcse->getType())->getRetType() != TypeSystem::voidType)
    {

        auto dst = genMachineOperand(operands[0]);
        if(dynamic_cast<FunctionType*>(this->funcse->getType())->getRetType() == TypeSystem::floatType)
        {
            operands[0]->getEntry()->setType(TypeSystem::floatType);
            auto dst = genMachineOperand(operands[0]);

            auto src0 = new MachineOperand(MachineOperand::REG, 16, true); //0112
            cur_inst = new MovMInstruction(cur_block, MovMInstruction::VMOV, dst, src0);
        }   
        else if(dynamic_cast<FunctionType*>(this->funcse->getType())->getRetType() == TypeSystem::intType)
        {
            auto src0 = new MachineOperand(MachineOperand::REG, 0);
            cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, dst, src0);
        }    
        cur_block->InsertInst(cur_inst);
    }


    //现场恢复的工作
    // 恢复 SP 寄存器

    if(saveNum != 0)
    {
        auto sp1 = new MachineOperand(MachineOperand::REG, 13);
        auto src = genMachineImm(saveNum * 4);
        auto sp2 = new MachineOperand(MachineOperand::REG, 13);
        if(abs(saveNum * 4)>255)
        {
            auto internal_reg = genMachineVReg();
            cur_inst = new LoadMInstruction(cur_block, internal_reg, src);
            cur_block->InsertInst(cur_inst);
            src = new MachineOperand(*internal_reg);            
        }
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::ADD, sp1, sp2, src);
        cur_block->InsertInst(cur_inst);
    }


}
//modify yxy LoadMInstruction MachineOperand ZextMInstruction
void ZextInstruction::genMachineCode(AsmBuilder* builder)
{


    MachineBlock* cur_block = builder->getBlock();
    MachineInstruction* cur_inst = nullptr;

    MachineOperand* src = genMachineOperand(operands[1]);
    MachineOperand* dst = genMachineOperand(operands[0]);

    if(src->isImm())
    {
        auto internal_reg = genMachineVReg();
        cur_inst = new LoadMInstruction(cur_block, internal_reg, src);
        cur_block->InsertInst(cur_inst);
        src = new MachineOperand(*internal_reg);
    }

    cur_inst = new ZextMInstruction(cur_block, dst, src);
    cur_block->InsertInst(cur_inst);

}


//0106YXY
void FBinaryInstruction::genMachineCode(AsmBuilder* builder)
{
    // TODO:

    auto cur_block = builder->getBlock();
    auto dst = genMachineOperand(operands[0]);
    auto src1 = genMachineOperand(operands[1]);
    auto src2 = genMachineOperand(operands[2]);
    MachineInstruction* cur_inst = nullptr;
    //是立即数的话要先load进来
    if(src1->isImm())
    {
        auto tmp_reg = genMachineVReg(true);
        auto internal_reg = genMachineVReg();
        cur_inst = new LoadMInstruction(cur_block, internal_reg, src1); 
        cur_block->InsertInst(cur_inst);
        internal_reg = new MachineOperand(*internal_reg);
        cur_inst = new MovMInstruction(cur_block, MovMInstruction::VMOV,tmp_reg, internal_reg);
        cur_block->InsertInst(cur_inst);
        src1 = new MachineOperand(*tmp_reg);
    }

    if (src2->isImm()) 
    {
        auto temp_reg = genMachineVReg(true);
        auto internal_reg = genMachineVReg();
        cur_inst = new LoadMInstruction(cur_block, internal_reg, src2); 
        cur_block->InsertInst(cur_inst);
        src2 = new MachineOperand(*internal_reg);
        cur_inst = new MovMInstruction(cur_block, MovMInstruction::VMOV,temp_reg, internal_reg);
        cur_block->InsertInst(cur_inst);
        src2 = new MachineOperand(*temp_reg);
    }

    MachineOperand* product;
    switch (opcode)
    {
    case BinaryInstruction::ADD: 
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::VADD, dst, src1, src2);
        break;
    case BinaryInstruction::SUB:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::VSUB, dst, src1, src2);
        break;
    case BinaryInstruction::MUL:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::VMUL, dst, src1, src2);
        break;
    case BinaryInstruction::DIV:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::VDIV, dst, src1, src2);
        break;
    default:
        break;
    } 
    cur_block->InsertInst(cur_inst);

}


void FCmpInstruction::genMachineCode(AsmBuilder* builder)
{
    // TODO
    // fprintf(stderr,"FCmpInstruction::genMachineCode\n");
    MachineBlock* cur_block = builder->getBlock();
    MachineInstruction* cur_inst = nullptr;

    cur_block->Cond = opcode;

    MachineOperand* src1 = genMachineOperand(operands[1]);
    MachineOperand* src2 = genMachineOperand(operands[2]);
    //是立即数的话要先load进来
    if(src1->isImm())
    {
        MachineOperand* tmp_reg = genMachineVReg(true);
        MachineOperand* internal_reg = genMachineVReg();
        cur_inst = new LoadMInstruction(cur_block, internal_reg, src1);
        cur_block->InsertInst(cur_inst);
        internal_reg = new MachineOperand(*internal_reg);
        cur_inst = new MovMInstruction(cur_block, MovMInstruction::VMOV,tmp_reg, internal_reg);
        cur_block->InsertInst(cur_inst);
        src1 = new MachineOperand(*tmp_reg);
    }
    if (src2->isImm()) 
    {
        MachineOperand* tmp_reg = genMachineVReg(true);
        MachineOperand* internal_reg = genMachineVReg();
        cur_inst = new LoadMInstruction(cur_block, internal_reg, src2);
        cur_block->InsertInst(cur_inst);
        internal_reg = new MachineOperand(*internal_reg);
        cur_inst = new MovMInstruction(cur_block, MovMInstruction::VMOV,tmp_reg, internal_reg);
        cur_block->InsertInst(cur_inst);
        src2 = new MachineOperand(*tmp_reg);
    }

    cur_inst = new CmpMInstruction(cur_block, src1, src2, opcode, CmpMInstruction::VCMP);
    cur_block->InsertInst(cur_inst);
    //condType 0EQ==, 1NE!=, 2LT<, 3LE<= , 4GT>, 5GE>=, NONE };
    //opcode   E, NE, L, LE, G, GE
    cur_inst = new VmrsMInstruction(cur_block);
    cur_block->InsertInst(cur_inst);
        
    int true_op = opcode;
    int false_op; 
    
    switch (opcode)
    {
    case E:
        true_op = MachineInstruction::condType::EQ;
        false_op =  MachineInstruction::condType::NE;
        break;
    case NE:
        true_op = MachineInstruction::condType::NE;
        false_op =  MachineInstruction::condType::EQ;
        break;
    case L:
        true_op = MachineInstruction::condType::LT;
        false_op =  MachineInstruction::condType::GE;
        break;
    case LE:
        true_op = MachineInstruction::condType::LE;
        false_op =  MachineInstruction::condType::GT;
        break;
    case G:
        true_op = MachineInstruction::condType::GT;
        false_op =  MachineInstruction::condType::LE;
        break;  
    case GE:
        true_op = MachineInstruction::condType::GE;
        false_op =  MachineInstruction::condType::LT;
        break;         
    default:
        // fprintf(stderr,"invaild opcode\n");
        break;
    }

        cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, genMachineOperand(operands[0]), genMachineImm(1), true_op);
        cur_block->InsertInst(cur_inst);

        cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, genMachineOperand(operands[0]), genMachineImm(0), false_op);
        cur_block->InsertInst(cur_inst);

    // fprintf(stderr,"FCmpInstruction::genMachineCode  end\n");

}

void CastInstruction::genMachineCode(AsmBuilder* builder)
{

    MachineBlock* cur_block = builder->getBlock();
    MachineInstruction* cur_inst = nullptr;
    MachineOperand* src = genMachineOperand(operands[0]);
    MachineOperand* dst = genMachineOperand(operands[1]); //0112
    if(opcode == Int2Float)
    {
   
        if(src->isImm())
        {
            auto tmp_reg = genMachineVReg();
            cur_inst = new LoadMInstruction(cur_block, tmp_reg, src);
            cur_block->InsertInst(cur_inst);
            src = new MachineOperand(*tmp_reg);
        }
        auto mop1 = genMachineVReg(true);
        cur_inst = new MovMInstruction(cur_block, MovMInstruction::VMOV, mop1, src);
        cur_block->InsertInst(cur_inst);
        auto mop2 = new MachineOperand(*mop1);
        cur_inst = new VcvtMInstruction(cur_block, VcvtMInstruction::S2F, dst, mop2);
        cur_block->InsertInst(cur_inst);
    }
    else{
        if(src->isImm())
        {
            auto tmp_reg = genMachineVReg(true);
            auto internal_reg = genMachineVReg();
            cur_inst = new LoadMInstruction(cur_block, internal_reg, src);
            cur_block->InsertInst(cur_inst);
            internal_reg = new MachineOperand(*internal_reg);
            cur_inst = new MovMInstruction(cur_block, MovMInstruction::VMOV, tmp_reg, internal_reg);
            cur_block->InsertInst(cur_inst);
            src = tmp_reg;
        }
        auto mop1 = genMachineVReg(true);
        cur_inst = new VcvtMInstruction(cur_block, VcvtMInstruction::F2S, mop1, src);
        cur_block->InsertInst(cur_inst);
        auto mop2 = new MachineOperand(*mop1);
        cur_inst = new MovMInstruction(cur_block, MovMInstruction::VMOV, dst, mop2);
        cur_block->InsertInst(cur_inst);
    }


}
