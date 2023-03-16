#include "MachineCode.h"
#include "Type.h"
#include <math.h>
#include<string.h>
extern FILE* yyout;

int MachineBlock::spilt_label = 0;

MachineOperand::MachineOperand(int tp, float val, bool is_float)
{
    this->type = tp;
    this->is_float = is_float;
    if(tp == MachineOperand::IMM)
    {
        if(this->is_float)
            this->f_val = val;
        else
            this->i_val =val;
    }
    else 
        this->reg_no = val;
}

MachineOperand::MachineOperand(int tp, int val)
{
    this->type = tp;
    this->is_float = false;
    if(tp == MachineOperand::IMM)
        this->i_val = val;
    else 
        this->reg_no = val;
}

MachineOperand::MachineOperand(std::string label, bool func)
{

    this->type = MachineOperand::LABEL;
    this->label = label;
    this->func = func;
}

bool MachineOperand::operator==(const MachineOperand&a) const
{
    if (this->type != a.type)
        return false;
    if (this->type == IMM)
    {
        if(!this->is_float) return this->i_val == a.i_val;
        else return this->f_val == a.f_val;
    }
        
    return this->reg_no == a.reg_no;
}

bool MachineOperand::operator<(const MachineOperand&a) const
{
    if(this->type == a.type)
    {
        if(this->type == IMM)
            if(!this->is_float) return this->i_val < a.i_val;
            else return this->f_val < a.f_val;
        return this->reg_no < a.reg_no;
    }
    return this->type < a.type;

    if (this->type != a.type)
        return false;
    if (this->type == IMM)
        if(!this->is_float) return this->i_val < a.i_val;
        else return this->f_val < a.f_val;
    return this->reg_no == a.reg_no;
}

void MachineOperand::PrintReg()
{
    switch (reg_no)
    {
    case 11:
        fprintf(yyout, "fp");
        // fprintf(stderr, "fp");

        break;
    case 13:
        fprintf(yyout, "sp");
        // fprintf(stderr, "sp");

        break;
    case 14:
        fprintf(yyout, "lr");
        // fprintf(stderr, "lr");

        break;
    case 15:
        fprintf(yyout, "pc");
        // fprintf(stderr, "pc");

        break;
    default:
        if(is_float){
            fprintf(yyout, "s%d", reg_no-16);
            // fprintf(stderr, "s%d", reg_no-16);

        } //0112
        else{
            fprintf(yyout, "r%d", reg_no);
            // fprintf(stderr, "r%d", reg_no);

        }
        break;
    }
}

//bd 函数定义输出 finish
void MachineOperand::output() 
{
    /* HINT：print operand
    * Example:
    * immediate num 1 -> print #1;
    * register 1 -> print r1;
    * lable addr_a -> print addr_a; */

    switch (this->type)
    {
    case IMM:
        if(is_float)
        {
            fprintf(yyout, "#%f", this->f_val);
            // fprintf(stderr, "#%f", this->f_val);
        }
        else
        {
            fprintf(yyout, "#%d", this->i_val);
            // fprintf(stderr, "#%d", this->i_val);
        }
        break;
    case VREG:
        fprintf(yyout, "v%d", this->reg_no);
        // fprintf(stderr, "v%d", this->reg_no);
        break;
    case REG:
        PrintReg();
        break;
    case LABEL:
        if (this->label.substr(0, 2) == ".L" ){
            fprintf(yyout, "%s", this->label.c_str());
            // fprintf(stderr, "%s", this->label.c_str());
        }

        else if (func){
            fprintf(yyout, "%s", this->label.c_str());
            // fprintf(stderr, "%s", this->label.c_str());
        }
        else{
            fprintf(yyout, "addr_%s_%d", this->label.erase(0,1).c_str() ,parent->getParent()->getParent()->getParent()->getno());
            // fprintf(stderr, "addr_%s_%d", this->label.erase(0,1).c_str() ,parent->getParent()->getParent()->getParent()->getno());
        }
    default:
        break;
    }
}

//modify 补全 bd finish
void MachineInstruction::PrintCond()
{
    // TODO
    //{ EQ, NE, LT, LE , GT, GE, NONE }
    // fprintf(stderr,"in machine opcode is %d\n",cond);
    switch (cond)
    {
        case EQ:
            fprintf(yyout, "eq");
            // fprintf(stderr, "eq");
            break;
        case NE:
            fprintf(yyout, "ne");
            // fprintf(stderr, "ne");
            break;
        case LT:
            fprintf(yyout, "lt");
            // fprintf(stderr, "lt");
            break;
        case LE:
            fprintf(yyout, "le");
            // fprintf(stderr, "le");
            break;
        case GT:
            fprintf(yyout, "gt");
            // fprintf(stderr, "gt");
            break;
        case GE:
            fprintf(yyout, "ge");
            // fprintf(stderr, "ge");
            break;
        default:
            break;
    }
}

BinaryMInstruction::BinaryMInstruction(MachineBlock* p, int op, MachineOperand* dst, MachineOperand* src1, MachineOperand* src2, int cond)
{
    this->parent = p;
    this->type = MachineInstruction::BINARY;
    this->op = op;
    this->cond = cond;
    this->def_list.push_back(dst);
    this->use_list.push_back(src1);
    this->use_list.push_back(src2);
    dst->setParent(this);
    src1->setParent(this);
    src2->setParent(this);
}

//modify 补全 bd finish
void BinaryMInstruction::output() 
{
    // fprintf(stderr, "BinaryMInstruction::output() \n");
    // TODO: 
    // Complete other instructions
    switch (this->op)
    {
    case BinaryMInstruction::ADD:
        fprintf(yyout, "\tadd ");
        // fprintf(stderr, "\tadd ");
        this->PrintCond();
        this->def_list[0]->output();
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[0]->output();
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[1]->output();
        fprintf(yyout, "\n");
        // fprintf(stderr, "\n");
        break;
    case BinaryMInstruction::SUB:
        fprintf(yyout, "\tsub ");
        // fprintf(stderr, "\tsub ");
        this->PrintCond();
        this->def_list[0]->output();
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[0]->output();
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[1]->output();
        fprintf(yyout, "\n");
        // fprintf(stderr, "\n");
        break;
    case BinaryMInstruction::MUL:
        fprintf(yyout, "\tmul ");
        // fprintf(stderr, "\tmul ");
        this->PrintCond();
        this->def_list[0]->output();
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[0]->output();
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[1]->output();
        fprintf(yyout, "\n");
        // fprintf(stderr, "\n");
        break;    
    case BinaryMInstruction::DIV:
        fprintf(yyout, "\tsdiv ");
        // fprintf(stderr, "\tsdiv ");
        this->PrintCond();
        this->def_list[0]->output();
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[0]->output();
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[1]->output();
        fprintf(yyout, "\n");
        // fprintf(stderr, "\n");
        break;
    case BinaryMInstruction::AND:
        fprintf(yyout, "\tand ");
        // fprintf(stderr, "\tand ");
        this->PrintCond();
        this->def_list[0]->output();
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[0]->output();
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[1]->output();
        fprintf(yyout, "\n");
        // fprintf(stderr, "\n");
        break;
    case BinaryMInstruction::OR:
        fprintf(yyout, "\torr ");
        // fprintf(stderr, "\torr ");
        this->PrintCond();
        this->def_list[0]->output();
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[0]->output();
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[1]->output();
        fprintf(yyout, "\n");
        // fprintf(stderr, "\n");
        break;
    case BinaryMInstruction::VADD:
        fprintf(yyout, "\tvadd.f32 ");
        // fprintf(stderr, "\tvadd.f32 ");
        this->PrintCond();
        this->def_list[0]->output();
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[0]->output();
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[1]->output();
        fprintf(yyout, "\n");
        // fprintf(stderr, "\n");
        break;
    case BinaryMInstruction::VSUB:
        fprintf(yyout, "\tvsub.f32 ");
        // fprintf(stderr, "\tvsub.f32 ");
        this->PrintCond();
        this->def_list[0]->output();
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[0]->output();
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[1]->output();
        fprintf(yyout, "\n");
        // fprintf(stderr, "\n");
        break;
    case BinaryMInstruction::VMUL:
        fprintf(yyout, "\tvmul.f32 ");
        // fprintf(stderr, "\tvmul.f32 ");
        this->PrintCond();
        this->def_list[0]->output();
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[0]->output();
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[1]->output();
        fprintf(yyout, "\n");
        // fprintf(stderr, "\n");
        break;
    case BinaryMInstruction::VDIV:
        fprintf(yyout, "\tvdiv.f32 ");
        // fprintf(stderr, "\tvdiv.f32 ");
        this->PrintCond();
        this->def_list[0]->output();
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[0]->output();
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[1]->output();
        fprintf(yyout, "\n");
        // fprintf(stderr, "\n");
        break;
    default:
        break;
    } //0112
}

LoadMInstruction::LoadMInstruction(MachineBlock* p,MachineOperand* dst, MachineOperand* src1, MachineOperand* src2, int opcode, int cond)
{
    this->parent = p;
    this->type = MachineInstruction::LOAD;
    this->op = opcode;
    this->cond = cond;
    this->def_list.push_back(dst);
    this->use_list.push_back(src1);
    if (src2)
        this->use_list.push_back(src2);
    dst->setParent(this);
    src1->setParent(this);
    if (src2)
        src2->setParent(this);
}

void LoadMInstruction::output()
{
    switch(this->op) {
        case LoadMInstruction::LDR:
            fprintf(yyout, "\tldr ");
            // fprintf(stderr, "\tldr ");
            break;
        case LoadMInstruction::VLDR:
            fprintf(yyout, "\tvldr.32 ");
            // fprintf(stderr, "\tvldr.32 ");
            break;
        default:
            break;
    }
    this->def_list[0]->output();
    // fprintf(stderr,"MachineOperand se->se->isTemporary()\n");
    fprintf(yyout, ", ");
    // fprintf(stderr, ", ");

    // Load immediate num, eg: ldr r1, =8
    if(this->use_list[0]->isImm())
    {
        if(this->use_list[0]->is_float){
            float val = this->use_list[0]->getfVal();
            uint32_t val_int =  reinterpret_cast<uint32_t&>(val);
            fprintf(yyout, "=%u\n", val_int);
            //fprintf(yyout, "=%d\n", this->use_list[0]->getfVal()); 
            // fprintf(stderr, "=%d\n", this->use_list[0]->getfVal()); 
        }
        else{
            fprintf(yyout, "=%d\n", (int)this->use_list[0]->getiVal());
            // fprintf(stderr, "=%d\n", (int)this->use_list[0]->getiVal());
        }
        return;
    }

    // Load address
    if(this->use_list[0]->isReg()||this->use_list[0]->isVReg()){
        fprintf(yyout, "[");
        // fprintf(stderr, "[");
    }

    this->use_list[0]->output();
    if( this->use_list.size() > 1 )
    {
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[1]->output();
    }

    if(this->use_list[0]->isReg()||this->use_list[0]->isVReg()){
        fprintf(yyout, "]");
        // fprintf(stderr, "]");
    }
    fprintf(yyout, "\n");
    // fprintf(stderr, "\n");
}
//modify bd finish
StoreMInstruction::StoreMInstruction(MachineBlock* p,MachineOperand* src1, MachineOperand* src2, MachineOperand* src3, int opcode, int cond)
{
    // TODO
    this->parent = p;
    this->type = MachineInstruction::STORE;
    this->op = opcode;
    this->cond = cond;
    this->use_list.push_back(src1);
    this->use_list.push_back(src2);
    if (src3)
        this->use_list.push_back(src3);
    src1->setParent(this);
    src2->setParent(this);
    if (src3)
        src3->setParent(this);
}
//modify bd finish
void StoreMInstruction::output()
{
    // TODO
    switch(this->op)
    {
        case StoreMInstruction::STR:
            fprintf(yyout, "\tstr ");
            // fprintf(stderr, "\tstr ");
            break;
        case StoreMInstruction::VSTR:
            fprintf(yyout, "\tvstr.32 ");
            // fprintf(stderr, "\tvstr.32 ");
            break;
    }

    this->use_list[0]->output();
    fprintf(yyout, ", ");
    // fprintf(stderr, ", ");

    // Store address
    if(this->use_list[1]->isReg()||this->use_list[1]->isVReg()){
        fprintf(yyout, "[");
        // fprintf(stderr, "[");
    }
    this->use_list[1]->output();
    if( this->use_list.size() > 2 )
    {
        fprintf(yyout, ", ");
        // fprintf(stderr, ", ");
        this->use_list[2]->output();
    }

    if(this->use_list[1]->isReg()||this->use_list[1]->isVReg()){
        fprintf(yyout, "]");
        // fprintf(stderr, "]");
    }
    fprintf(yyout, "\n");
    // fprintf(stderr, "\n");
}


//modify yxy
MovMInstruction::MovMInstruction(MachineBlock* p, int opcode, 
    MachineOperand* dst, MachineOperand* src,
    int cond)
{
    // TODO
    this->parent = p;
    this->type = MachineInstruction::MOV;
    this->op = opcode;
    this->cond = cond;
    this->def_list.push_back(dst);
    this->use_list.push_back(src);
    dst->setParent(this);
    src->setParent(this);
}
//modify yxy
void MovMInstruction::output() 
{
    // TODO
    switch(this->op) {
        case MovMInstruction::MOV:
            fprintf(yyout, "\tmov");
            // fprintf(stderr, "\tmov");
            break;
        case MovMInstruction::VMOV:
            fprintf(yyout, "\tvmov");
            // fprintf(stderr, "\tvmov");
            break;
        default:
            break;
    }
    PrintCond();
    fprintf(yyout, " ");
    // fprintf(stderr, " ");
    this->def_list[0]->output();
    fprintf(yyout, ", ");
    // fprintf(stderr, ", ");
    this->use_list[0]->output();
    fprintf(yyout, "\n");
    // fprintf(stderr, "\n");
}



//modify bd finish
BranchMInstruction::BranchMInstruction(MachineBlock* p, int op, MachineOperand* dst, int cond)
{
    // TODO
    this->parent = p;
    this->type = MachineInstruction::BRANCH;
    this->op = op;
    this->cond = cond;
    this->def_list.push_back(dst);
    dst->setParent(this);    
}
//modify bd finish
void BranchMInstruction::output()
{
    // TODO
switch (this->op)
    {
        //B, BL, BX
    case BranchMInstruction::B:
        fprintf(yyout, "\tb");
        // fprintf(stderr, "\tb");
        this->PrintCond();
        fprintf(yyout, " ");
        // fprintf(stderr, " ");
        this->def_list[0]->output();
        fprintf(yyout, "\n");
        // fprintf(stderr, "\n");
        break;
    case BranchMInstruction::BL:
        fprintf(yyout, "\tbl ");
        // fprintf(stderr, "\tbl ");
        this->PrintCond();
        fprintf(yyout, " ");
        // fprintf(stderr, " ");
        this->def_list[0]->output();
        fprintf(yyout, "\n");
        // fprintf(stderr, "\n");
        break;
    case BranchMInstruction::BX:
        fprintf(yyout, "\tbx ");
        // fprintf(stderr, "\tbx ");
        this->PrintCond();
        fprintf(yyout, " ");
        // fprintf(stderr, " ");
        this->def_list[0]->output();
        fprintf(yyout, "\n");
        // fprintf(stderr, "\n");
        break;
    default:
        break;
    }
}
//modify bd finish
CmpMInstruction::CmpMInstruction(MachineBlock* p, MachineOperand* src1, MachineOperand* src2, int cond, int opcode)
{
    // TODO
    this->parent = p;
    this->type = opcode;
    this->cond = cond;
    this->use_list.push_back(src1);
    this->use_list.push_back(src2);
    src1->setParent(this);
    src2->setParent(this);  
}
//modify bd finish
void CmpMInstruction::output()
{
    // TODO
    // Jsut for reg alloca test
    // delete it after test
    switch(this->type) {
        case CMP:
            fprintf(yyout, "\tcmp ");
            // fprintf(stderr, "\tcmp ");
            break;
        case VCMP:
            fprintf(yyout, "\tvcmp.f32 ");
            // fprintf(stderr, "\tvcmp.f32 ");
            break;
        default:
            break;
    }
    this->use_list[0]->output();
    fprintf(yyout, ", ");
    // fprintf(stderr, ", ");
    this->use_list[1]->output();
    fprintf(yyout, "\n");
    // fprintf(stderr, "\n");
}



//modify yxy
StackMInstruction::StackMInstruction(MachineBlock* p, int op, 
    MachineOperand* src,
    int cond)
{
    // TODO
    this->parent = p;
    this->type = MachineInstruction::STACK;
    this->op = op;
    this->cond = cond;
    this->use_list.push_back(src);
    for(auto reg : use_list)
    {
        reg->setParent(this);
    }
}
StackMInstruction::StackMInstruction(MachineBlock* p, int op, 
                std::vector<MachineOperand*> src,
                int cond )
{
    this->parent = p;
    this->type = MachineInstruction::STACK;
    this->op = op;
    this->cond = cond;
    this->use_list = src;
    for(auto reg : use_list){
        reg->setParent(this);
    }
}

//modify yxy
void StackMInstruction::output()
{
    // TODO
    if(use_list.size()==0) return;
    char* a;
    switch(op){
    case PUSH:
        a = "\tpush {";
        break;
    case POP:
        a = "\tpop {";
        break;
     case VPUSH:
        a = "\tvpush {";
        break;
    case VPOP:
        a = "\tvpop {";
        break; //0112
    }
    for(int i=0; i<ceil(use_list.size()/16.0);i++)
    {
        fprintf(yyout, a);
        // fprintf(stderr, a);
        this->use_list[16*i]->output();
        for (long unsigned int j = 1; j < 16 && 16*i+j < use_list.size(); j++) {
            fprintf(yyout, ", ");
            // fprintf(stderr, ", ");
            this->use_list[16*i+j]->output();
        }
        fprintf(yyout, "}\n");
        // fprintf(stderr, "}\n");
    } 
}

//modify zext指令 yxy
ZextMInstruction::ZextMInstruction(MachineBlock *p, MachineOperand *dst, MachineOperand *src, int cond) {
    this->parent = p;
    this->type = MachineInstruction::ZEXT;
    this->cond = cond;
    this->def_list.push_back(dst);
    this->use_list.push_back(src);
    dst->setParent(this);
    src->setParent(this);
}

void ZextMInstruction::output() {
    fprintf(yyout, "\tuxtb ");
    // fprintf(stderr, "\tuxtb ");
    def_list[0]->output();
    fprintf(yyout, ", ");
    // fprintf(stderr, ", ");
    use_list[0]->output();
    fprintf(yyout, "\n");
    // fprintf(stderr, "\n");
}

VcvtMInstruction::VcvtMInstruction(MachineBlock* p, int op, MachineOperand* dst, MachineOperand* src, int cond) {
    this->parent = p;
    this->type = MachineInstruction::VCVT;
    this->op = op;
    this->cond = cond;
    this->def_list.push_back(dst);
    this->use_list.push_back(src);
    dst->setParent(this);
    src->setParent(this);
}

void VcvtMInstruction::output() {
    switch (this->op) {
        case VcvtMInstruction::F2S:
            fprintf(yyout, "\tvcvt.s32.f32 ");
            // fprintf(stderr, "\tvcvt.s32.f32 ");
            break;
        case VcvtMInstruction::S2F:
            fprintf(yyout, "\tvcvt.f32.s32 ");
            // fprintf(stderr, "\tvcvt.f32.s32 ");
            break;
        default:
            break;
    }
    PrintCond();
    fprintf(yyout, " ");
    // fprintf(stderr, " ");
    this->def_list[0]->output();
    fprintf(yyout, ", ");
    // fprintf(stderr, ", ");
    this->use_list[0]->output();
    fprintf(yyout, "\n");
    // fprintf(stderr, "\n");
}


VmrsMInstruction::VmrsMInstruction(MachineBlock* p) {
    this->parent = p;
    this->type = MachineInstruction::VMRS;
}

void VmrsMInstruction::output() {
    fprintf(yyout, "\tvmrs APSR_nzcv, FPSCR\n");
    // fprintf(stderr, "\tvmrs APSR_nzcv, FPSCR\n");
}


MachineFunction::MachineFunction(MachineUnit* p, SymbolEntry* sym_ptr) 
{ 
    this->parent = p; 
    this->sym_ptr = sym_ptr; 
    this->stack_size = 0;
};

 

//modify 空块 undo
//quest
void MachineBlock::output()
{
    fprintf(yyout, ".L%d:\n", this->no);
    // fprintf(stderr, ".L%d:\n", this->no);
    if(inst_list.size() != 0)
    {
        int Num = 0;
        for(auto iter : inst_list)
        {
            iter->output();  
            Num++;
            
        }
        if(Num % 500 == 0) {
            fprintf(yyout, "\tb .B%d\n", spilt_label);
            // fprintf(stderr, "\tb .B%d\n", spilt_label);
            fprintf(yyout, ".LTORG\n");
            // fprintf(stderr, ".LTORG\n");
            parent->getParent()->PrintGlobal();
            fprintf(yyout, ".B%d:\n", spilt_label++);
            // fprintf(stderr, ".B%d:\n", spilt_label++);
        }              
    }

}

//modify bd finish 在前
void MachineBlock::insertBefore(MachineInstruction* dst, MachineInstruction* src)
{
    std::vector<MachineInstruction*>::iterator pos = find(inst_list.begin(), inst_list.end(), dst);
    inst_list.insert(pos, src);
}
//modify bd finish 之后
void MachineBlock::insertAfter(MachineInstruction* dst, MachineInstruction* src)
{
    std::vector<MachineInstruction*>::iterator pos = 1 + find(inst_list.begin(), inst_list.end(), dst);
    inst_list.insert(pos, src);    
}


//modify
void MachineFunction::output()
{
    // const char *func_name = this->sym_ptr->toStr().c_str() + 1;
    char *func_name = new char[strlen(this->sym_ptr->toStr().c_str() + 1)];
    strcpy(func_name, this->sym_ptr->toStr().c_str() + 1);
    fprintf(yyout, "\t.global %s\n", func_name);
    fprintf(yyout, "\t.type %s , %%function\n", func_name);
    fprintf(yyout, "%s:\n", func_name);
    // fprintf(stderr, "\t.global %s\n", func_name);
    // fprintf(stderr, "\t.type %s , %%function\n", func_name);
    // fprintf(stderr, "%s:\n", func_name);
    // TODO
    /* Hint:
    *  1. Save fp
    *  2. fp = sp
    *  3. Save callee saved register
    *  4. Allocate stack space for local variable */

    MachineOperand *fp = new MachineOperand(MachineOperand::REG, 11);
    MachineOperand *sp = new MachineOperand(MachineOperand::REG, 13);
    MachineOperand *lr = new MachineOperand(MachineOperand::REG, 14);
    std::vector<MachineOperand*> regs;
    std::vector<MachineOperand*> fregs;
    for (auto no : saved_regs)  //0112
    {
        if(no<16){
            MachineOperand * reg = new MachineOperand(MachineOperand::REG, no);
            regs.push_back(reg);
        }
        else{
            MachineOperand * reg = new MachineOperand(MachineOperand::REG, no, true);
            fregs.push_back(reg);
        }
    }
    regs.push_back(fp);
    regs.push_back(lr);

    (new StackMInstruction(nullptr, StackMInstruction::PUSH, regs)) ->output();
    (new StackMInstruction(nullptr, StackMInstruction::VPUSH, fregs)) ->output(); //0112
    // (new StackMInstruction(nullptr, StackMInstruction::PUSH, fp)) ->output();
    
    (new MovMInstruction(nullptr, MovMInstruction::MOV, fp, sp))->output();
    // Traverse all the block in block_list to print assembly code.
    (new BinaryMInstruction(nullptr, BinaryMInstruction::SUB, sp, sp, new MachineOperand(MachineOperand::IMM, AllocSpace(0))))->output();




    // for(auto iter : block_list)
    //     iter->output();
//0115
    std::queue<MachineBlock*> q;
    std::set<MachineBlock*> v;
    q.push(block_list[0]);
    v.insert(block_list[0]);
    int cnt = 0;
    while(!q.empty()) {
        MachineBlock* cur = q.front();
        q.pop();
        cur->output();
        cnt += int(cur->getInsts().size());
        if(cnt > 160) {
            fprintf(yyout, "\tb .F%d\n", parent->getno());
            fprintf(yyout, ".LTORG\n");
            parent->PrintGlobal();
            fprintf(yyout, ".F%d:\n", parent->getno()-1);
            cnt = 0;
        }
        
        for(auto iter : cur->getSuccs()) {
            if(v.find(iter) == v.end()) {
                q.push(iter);
                v.insert(iter);
            }
        }
    }




    // output label .LEND
    fprintf(yyout, ".L%s_END:\n", this->sym_ptr->toStr().erase(0,1).c_str());
    // fprintf(stderr, ".L%s_END:\n", this->sym_ptr->toStr().erase(0,1).c_str());
    //2. Restore callee saved registers and sp, fp
    sp = new MachineOperand(MachineOperand::REG, 13);
    MachineOperand *size =new MachineOperand(MachineOperand::IMM, this->AllocSpace(0));
    (new BinaryMInstruction(nullptr, BinaryMInstruction::ADD,sp, sp, size))->output();
    
    
    //恢复saved registers和fp

    (new StackMInstruction(nullptr, StackMInstruction::VPOP, fregs)) ->output(); //0112
    (new StackMInstruction(nullptr, StackMInstruction::POP, regs)) ->output();

    // 3. Generate bx instruction
    lr = new MachineOperand(MachineOperand::REG, 14);
    (new BranchMInstruction(nullptr, BranchMInstruction::BX, lr))->output();
    
    fprintf(yyout, "\n");
    // fprintf(stderr, "\n");
}


//modify bd finish了吧
//0106
void MachineUnit::PrintGlobalDecl()
{
    // TODO:
    // You need to print global variable/const declarition code;
    if(GlobalDecl_list.size() != 0){
        fprintf(yyout, "\t.data\n");
        // fprintf(stderr, "\t.data\n");

    } 
    //0106
    for (auto global: GlobalDecl_list)
    {
        if(global->getType()->isArray())
        {
            this->PrintGlobalArrDecl(global);//0106
        }
        else
        {
            fprintf(yyout, "\t.global %s\n", global->getName().c_str());
            fprintf(yyout, "\t.align 4\n");
            fprintf(yyout,"\t.size %s, %d\n", global->getName().c_str(), global->getType()->getSize());
            fprintf(yyout, "%s:\n", global->getName().c_str());

            // fprintf(stderr, "\t.global %s\n", global->getName().c_str());
            // fprintf(stderr, "\t.align 4\n");
            // fprintf(stderr,"\t.size %s, %d\n", global->getName().c_str(), global->getType()->getSize());
            // fprintf(stderr, "%s:\n", global->getName().c_str());
            if(global->getType()->isInt())
            {
                fprintf(yyout, "\t.word %d\n", (int)global->value); 
                // fprintf(stderr, "\t.word %d\n", (int)global->value); 
            }
            else
            {
                //floattodo
                auto value = float(global->value);
                uint32_t temp = reinterpret_cast<uint32_t&>(value);
                fprintf(yyout, "\t.word %u\n", temp);
                // fprintf(stderr, "\t.word %u\n", temp);
                
            }
            
        }
     
    }

}
//modify bd finish了吧

void MachineUnit::PrintGlobal()
{
    for (auto global: GlobalDecl_list)
    {
        fprintf(yyout, "addr_%s_%d:\n", global->getName().c_str(),no);
        fprintf(yyout, "\t.word %s\n", global->getName().c_str()); 

        // fprintf(stderr, "addr_%s_%d:\n", global->getName().c_str(),no);
        // fprintf(stderr, "\t.word %s\n", global->getName().c_str());   
    }
    no++;
}

//modify bd finish了吧
void MachineUnit::output()
{
    // TODO
    /* Hint:
    * 1. You need to print global variable/const declarition code;
    * 2. Traverse all the function in func_list to print assembly code;
    * 3. Don't forget print bridge label at the end of assembly code!! */
    fprintf(yyout, "\t.arch armv8-a\n");
    fprintf(yyout, "\t.fpu vfpv3-d16\n");
    fprintf(yyout, "\t.arch_extension crc\n");
    fprintf(yyout, "\t.arm\n");

    // fprintf(stderr, "\t.arch armv8-a\n");
    // fprintf(stderr, "\t.fpu vfpv3-d16\n");
    // fprintf(stderr, "\t.arch_extension crc\n");
    // fprintf(stderr, "\t.arm\n");
    //print global variable/const declarition code
    PrintGlobalDecl();
    fprintf(yyout, "\t.text\n");
    // fprintf(stderr, "\t.text\n");

    //Traverse all the function in func_list to print assembly code
    for(auto iter : func_list)
        iter->output();
    //print bridge label at the end of assembly code
    PrintGlobal();
}
//0106
//forArray
void MachineUnit::PrintGlobalArrDecl(IdentifierSymbolEntry* se)
{
    if(se->arrVal.size() == 0)
    {
        fprintf(yyout, "\t.comm\t%s,%d,4\n", se->getName().c_str(), se->getType()->getSize());
        // fprintf(stderr, "\t.comm\t%s,%d,4\n", se->getName().c_str(), se->getType()->getSize());
    }
    else
    {
        fprintf(yyout, "\t.global %s\n", se->getName().c_str());
        fprintf(yyout, "\t.align 4\n");
        fprintf(yyout,"\t.size %s, %d\n", se->getName().c_str(), se->getType()->getSize());
        fprintf(yyout, "%s:\n", se->getName().c_str());   

        // fprintf(stderr, "\t.global %s\n", se->getName().c_str());
        // fprintf(stderr, "\t.align 4\n");
        // fprintf(stderr,"\t.size %s, %d\n", se->getName().c_str(), se->getType()->getSize());
        // fprintf(stderr, "%s:\n", se->getName().c_str());         
        if(se->getType()->isAnyInt())  
        {
            for(auto val : se->arrVal){
                fprintf(yyout, "\t.word %d\n", int(val));
                // fprintf(stderr, "\t.word %d\n", int(val));
            }
        }
        else
        {
            //floattodo
            for(auto val : se->arrVal) 
            {
                auto value = float(val);
                uint32_t outval = reinterpret_cast<uint32_t&>(value);
                fprintf(yyout, "\t.word %u\n", outval);
                // fprintf(stderr, "\t.word %u\n", outval);
            }
        }
    }
}
