#ifndef __masina_h
#define __masina_h

#include "RegisterFile.h"

#include <assert.h>
//#define assert(x) if(!(x)){ printf("Assertion failed in line %d file %s", __LINE__, __FILE__); exit(1); }

#define CSEG_START 0x10000000    // code segment start
#define CSEG_END   0x1FFFFFFF
#define DSEG_START 0x20000000    // data segment start
#define DSEG_END   0x3FFFFFFF
#define HSEG_START 0x40000000        // heap start
#define HSEG_END   0x7FFFFFFF     
#define SSEG_START 0x80000000      // stack start 
#define SSEG_END   0xFFFFFFFF

// Register families
// PC = program counter
// SR = status register (0xFFFFFFFF = less, 0 = equal, 1 = greater )
enum { REG_NULL, REG_PC, REG_SR, REG_R, REG_VR, REG_D, REG_VD };

#define REG_R_SIZE 15
#define REG_D_SIZE 8

// Predefined special register aliases
extern Register rSR;
extern Register rPC;
extern Register rLR;
extern Register rSP;
extern Register rR1;
extern Register rR0;
extern Register rD0;

// Should not appear in any read/write request
extern Register rNULL;

typedef enum {
	I_MOV_R, I_MOV_I, 
	I_ADD_R, I_ADD_I, I_SUB_R, I_SUB_I, I_MUL, 
	I_AND_R, I_AND_I, I_ORR_R, I_ORR_I, I_EOR_R, I_EOR_I, 
	I_MVN_R, I_MVN_I, I_CMP_I, I_CMP_R,
	I_B_I, I_B_R, I_BEQ, I_BNE, I_BGE, I_BLT, I_BGT, I_BLE,
	I_BL_I, I_BL_R,
	I_LDR, I_LDRB, I_STR, I_STRB,
	I_FLDD, I_FSTD,
	I_FCPYD, I_FADDD, I_FSUBD, I_FMULD, I_FDIVD, I_FCMPD, I_FSITOD, I_FTOSID,
	IX_WRITEINTEGER, IX_WRITECHARACTER, IX_WRITEBOOLEAN, IX_WRITESTRING, IX_WRITEREAL,
	IX_READINTEGER, IX_READCHARACTER, IX_READREAL,
	IX_DIV, IX_MOD, 
	IX_NEW, IX_DISPOSE,
	INSTRUCTION_COUNT
} InstructionMnemonic;

#define INPUT_NO 2
#define OUTPUT_NO 1 

typedef struct tag_MInstruction{
  InstructionMnemonic mnemonic;
  Register inputs[INPUT_NO];    //registri de intrare - NULL daca nu sunt folositi
  Register outputs[OUTPUT_NO];  //registri de iesire
  unsigned long imm;           //operand imediat
} MInstruction; //Machine Instruction

// Dimension of an instruction in code memory
#define MInstructionSize sizeof(MInstruction*)

#endif
