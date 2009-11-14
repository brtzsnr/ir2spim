#include <stdlib.h>
#include <stdio.h>
#include "common.h"
#include "masina.h"
#include "simulator.h"
#include "asamblor.h"
#include "MemorySystem.h"
#include "RegisterFile.h"

#define _MAX_INT 0x7FFFFFFF
#define _MIN_INT 0x80000000

extern int reg_no, dreg_no;
//MInstruction **mCode; //codul "masina"
int *latency, //latentele registrilor - dupa cati cicli noua valoare va fi disponibila
    cycleNo, //numarul de cicli care a trecut de la inceputul programului
    stalls,  //numarul de cicli in care programul a asteptat stabilizarea unor valori
    cycles[INSTRUCTION_COUNT],
    loopCount,
    loopStart, loopEnd;

extern int *reg;
extern double* dreg;
//extern char *_memory;
extern int memPtr, //adresa primului spatiu de memorie liber
           instNo, //numarul de instructiuni ocupate
           print_memory_map, print_exec_instr;


/** Procedura principala prin care se executa programul asm */
int execute(unsigned long programStart){

  setReg(rPC, programStart);
 
  /** EXEC: To be revisited for the execution time framework 
  latency=(int*)malloc(reg_no*sizeof(int));
  for(i=0;i<reg_no;i++)
    latency[i]=0;
  setCycles();
  addImplicitInputsOutputs();

  cycleNo=0;
  stalls=0;
  */

//  $sp=((MEMORY_SIZE-1 >> 2) <<2 )-4;          //$sp arata primul spatiu de pe stiva liber
//  store_int($sp, codeSize-1); //adresa de terminare a programului !!!!!!!!!!!!!!!!!!!!!
//  $sp-=4;   
                
  while(getReg(rPC)) 
  {
    // Fetch, decode and execute units in one step!
    executeInstruction(loadInstruction(getReg(rPC)));
  }
    

  if(print_memory_map)
    printMemoryMap();
  return 0;
}

static void nextPC(void)
{
    setReg(rPC, getReg(rPC) + sizeof(MInstruction*));
}

enum { CMP_LESS = 0xFFFFFFFF, CMP_EQUAL = 0, CMP_GREATER = 1 };

static unsigned long intCompare(long x, long y)
{
    return x<y ? CMP_LESS :  x>y ? CMP_GREATER : CMP_EQUAL;
}
static unsigned long doubleCompare(double x, double y)
{
    return x<y ? CMP_LESS :  x>y ? CMP_GREATER : CMP_EQUAL;
}

void printRegValues(Register *reg, unsigned numRegs);

int executeInstruction(MInstruction* m){
  double doubleValue;
  unsigned long value;
  unsigned char byteValue;
  
  if(m==NULL)
    Failure("EROARE la executie, se incearca executarea unei instructiuni inexistente.\n");

  if(print_exec_instr){
    fprintf(stdout, "PC=$%08x : ",getReg(rPC));  // redirect later to traceFile
    printMInstruction(m);
  }
  /** EXEC framework
   * waitForRegisters(instr);
   */

  switch(m->mnemonic)
  {
    case I_MOV_R: 
        setReg(m->outputs[0], getReg(m->inputs[0]));
        nextPC();
        break;
    case I_MOV_I: 
        setReg(m->outputs[0], m->imm);
        nextPC();
        break;

    case I_ADD_R: 
        setReg(m->outputs[0], getReg(m->inputs[0]) + getReg(m->inputs[1]));
        nextPC();
        break;
    case I_ADD_I: 
        setReg(m->outputs[0], getReg(m->inputs[0]) + m->imm);
        nextPC();
        break;
    
    case I_SUB_R: 
        setReg(m->outputs[0], getReg(m->inputs[0]) - getReg(m->inputs[1]));
        nextPC();
        break;
    case I_SUB_I: 
        setReg(m->outputs[0], getReg(m->inputs[0]) - m->imm);
        nextPC();
        break;
    
    case I_MUL: 
        setReg(m->outputs[0], (unsigned long)((long)getReg(m->inputs[0]) * (long)getReg(m->inputs[1])));
        nextPC();
        break;

    case I_AND_R: 
        setReg(m->outputs[0], getReg(m->inputs[0]) & getReg(m->inputs[1]));
        nextPC();
        break;
    case I_AND_I: 
        setReg(m->outputs[0], getReg(m->inputs[0]) & m->imm);
        nextPC();
        break;
    
    case I_ORR_R: 
        setReg(m->outputs[0], getReg(m->inputs[0]) | getReg(m->inputs[1]));
        nextPC();
        break;
    case I_ORR_I: 
        setReg(m->outputs[0], getReg(m->inputs[0]) | m->imm);
        nextPC();
        break;
    
    case I_EOR_R: 
        setReg(m->outputs[0], getReg(m->inputs[0]) ^ getReg(m->inputs[1]));
        nextPC();
        break;
    case I_EOR_I: 
        setReg(m->outputs[0], getReg(m->inputs[0]) ^ m->imm);
        nextPC();
        break;
    
    case I_MVN_R: 
        setReg(m->outputs[0], ~getReg(m->inputs[0]));
        nextPC();
        break;
    case I_MVN_I: 
        setReg(m->outputs[0], ~(m->imm));
        nextPC();
        break;
    
    case I_CMP_R: 
        setReg(rSR, intCompare((long)getReg(m->inputs[0]), (long)getReg(m->inputs[1])));
        nextPC();
        break;
    case I_CMP_I: 
        setReg(rSR, intCompare((long)getReg(m->inputs[0]), (long)m->imm));
        nextPC();
        break;
        
    case I_B_I: 
        setReg(rPC, m->imm);
        break;       
    case I_B_R: 
        setReg(rPC, getReg(m->inputs[0]));
        break;
        
    case I_BEQ:
        if (getReg(rSR) == CMP_EQUAL)
            setReg(rPC, m->imm);
        else
            nextPC();
        break;      
    case I_BNE:
        if (getReg(rSR) != CMP_EQUAL)
            setReg(rPC, m->imm);
        else
            nextPC();
        break;       
    case I_BGE:
        if (getReg(rSR) != CMP_LESS)
            setReg(rPC, m->imm);
        else
            nextPC();
        break;      
    case I_BLT:
        if (getReg(rSR) == CMP_LESS)
            setReg(rPC, m->imm);
        else
            nextPC();
        break;       
    case I_BGT:
        if (getReg(rSR) == CMP_GREATER)
            setReg(rPC, m->imm);
        else
            nextPC();
        break;      
    case I_BLE:
        if (getReg(rSR) != CMP_GREATER)
            setReg(rPC, m->imm);
        else
            nextPC();
        break;
        
    case I_BL_I: 
        nextPC();
        setReg(rLR, getReg(rPC));
        setReg(rPC, m->imm);
        break;        
    case I_BL_R: 
        nextPC();
        setReg(rLR, getReg(rPC));
        setReg(rPC, getReg(m->inputs[0]));
        break;

    case I_LDR: 
        loadData(getReg(m->inputs[0]) + m->imm, &value, sizeof(value));
        setReg(m->outputs[0], value);
        nextPC();
        break;
    case I_LDRB: 
        loadData(getReg(m->inputs[0]) + m->imm, &byteValue, sizeof(byteValue));
        setReg(m->outputs[0], byteValue);
        nextPC();
        break;

    case I_STR: 
        value = getReg(m->inputs[0]);
        storeData(getReg(m->inputs[1]) + m->imm, &value, sizeof(value));
        nextPC();
        break;
    case I_STRB: 
        byteValue = (unsigned char)getReg(m->inputs[0]);
        storeData(getReg(m->inputs[1]) + m->imm, &byteValue, sizeof(byteValue));
        nextPC();
        break;

     case I_FLDD: 
        loadData(getReg(m->inputs[0]) + m->imm, &doubleValue, sizeof(doubleValue));
        setDReg(m->outputs[0], doubleValue);
        nextPC();
        break;
    case I_FSTD: 
        doubleValue = getDReg(m->inputs[0]);
        storeData(getReg(m->inputs[1]) + m->imm, &doubleValue, sizeof(doubleValue));
        nextPC();
        break;

    case I_FCPYD: 
        setDReg(m->outputs[0], getDReg(m->inputs[0]));
        nextPC();
        break;
    case I_FADDD: 
        setDReg(m->outputs[0], getDReg(m->inputs[0]) + getDReg(m->inputs[1]));
        nextPC();
        break;
    case I_FSUBD: 
        setDReg(m->outputs[0], getDReg(m->inputs[0]) - getDReg(m->inputs[1]));
        nextPC();
        break;
    case I_FMULD: 
        setDReg(m->outputs[0], getDReg(m->inputs[0]) * getDReg(m->inputs[1]));
        nextPC();
        break;
    case I_FDIVD: 
        setDReg(m->outputs[0], getDReg(m->inputs[0]) / getDReg(m->inputs[1]));
        nextPC();
        break;
    case I_FCMPD: 
        setReg(rSR, doubleCompare(getDReg(m->inputs[0]), getDReg(m->inputs[1])));
        nextPC();
        break;
 
    case I_FSITOD: 
        setDReg(m->outputs[0], (long)getReg(m->inputs[0]));
        nextPC();
        break;
    case I_FTOSID: 
        setReg(m->outputs[0], (unsigned long)(long)getDReg(m->inputs[0]));
        nextPC();
        break;
               
    case IX_WRITEINTEGER:
        fprintf(stdout, "%d", getReg(rR0));
        setReg(rPC, getReg(rLR)); // Return from subroutine
        break;
    case IX_WRITECHARACTER:
        fprintf(stdout, "%c", (char)getReg(rR0));
        setReg(rPC, getReg(rLR)); // Return from subroutine
        break;
    case IX_WRITEBOOLEAN:
        fprintf(stdout, getReg(rR0) ? "true" : "false");
        setReg(rPC, getReg(rLR)); // Return from subroutine
        break;
    case IX_WRITEREAL:
        fprintf(stdout, "%f", getDReg(rD0));
        setReg(rPC, getReg(rLR)); // Return from subroutine
        break;
    case IX_WRITESTRING:
        {
            unsigned long i, start, len;
            start = getReg(rR0);
            len = getReg(rR1);
            for (i=0; i<len; i++)
            {
                loadData(start+i, &byteValue, sizeof(byteValue));
                if (!byteValue) break; 
                fprintf(stdout, "%c", byteValue);
            }           
        }
        setReg(rPC, getReg(rLR)); // Return from subroutine
        break;
        
    case IX_READINTEGER:
        fscanf(stdin, "%d", &value);
        setReg(rR0, value);
        setReg(rPC, getReg(rLR)); // Return from subroutine
        break;
    case IX_READCHARACTER:
        fscanf(stdin, "%c", &byteValue);
        setReg(rR0, byteValue);
        setReg(rPC, getReg(rLR)); // Return from subroutine
        break;
    case IX_READREAL:
        fscanf(stdin, "%lf", &doubleValue);
        setDReg(rD0, doubleValue);
        setReg(rPC, getReg(rLR)); // Return from subroutine
        break;

    case IX_DIV:
        setReg(rR0, (unsigned long)((long)getReg(rR0) / (long)getReg(rR1)));
        setReg(rPC, getReg(rLR)); // Return from subroutine
        break;
    case IX_MOD:
        setReg(rR0, (unsigned long)((long)getReg(rR0) % (long)getReg(rR1)));
        setReg(rPC, getReg(rLR)); // Return from subroutine
        break;

    case IX_NEW:
        setReg(rR0, newData(getReg(rR0)));
        setReg(rPC, getReg(rLR)); // Return from subroutine
        break;
    case IX_DISPOSE:
        disposeData(getReg(rR0));
        setReg(rPC, getReg(rLR)); // Return from subroutine
        break;

   default:
        assert(0); 
  }
  
  /** EXEC framework
  setDestinationLatencies(instr);
  advanceCycles(cycles[instr->mnemonic]);
  */

  if (print_exec_instr)
  {
    fprintf(stdout,(" => "));
	printRegValues(m->outputs, OUTPUT_NO);
    fprintf(stdout,("\n"));
  }
  return 1;
}

/** Asteapta ca valorile citite in surse sa se stabilizeze - in functie de latentele 
    registrilor */
void waitForRegisters(MInstruction *instr){
  int max=0;
/*  int i; for(i=0;i<INPUT_NO;i++){
    if(instr->inputs[i]!=NULL && latency[instr->inputs[i]-reg]>max)
      max=latency[instr->inputs[i]-reg];
  }
  if(max>0){
    stalls+=max;
    advanceCycles(max);
  } */
  // not implemented yet
  advanceCycles(0);
}

/** Numarul de cicli va avansa cu cycleNo */
void advanceCycles(int no){
    /*
  int i;
  for(i=0;i<reg_no;i++)
    latency[i]=(latency[i]>no ? latency[i]-no : 0);
  cycleNo+=no;
  */
}

/** Se seteaza numarul de cicli pentru fiecare instructiune */
void setCycles(){
    /*
  int i;
  for(i=0;i<INSTR_NO;i++)
    cycles[i] = 1;
    */
}

/** Seteaza latente in registrii modificati de instructiunea care s-a executat */
void setDestinationLatencies(MInstruction *instr){
    /*
 int i;
 for(i=0;i<reg_no;i++)
   latency[i] = 0;
   */
}

/** Adauga la instructiunile masina registri cititi si scrisi implicit */
void addImplicitInputsOutputs(){
    /*
  int i;
  for(i=0;i<instNo; i++){
    MInstruction *instr=mCode[i];
    if(instr!=NULL){
      // nothing yet
    }
  }
  */
}

void printRegName(Register *reg)
{
	fprintf(stdout,"%s%d:",regtype(reg->fileId), reg->index);
}

void printRegValues(Register *reg, unsigned numRegs)
{
	unsigned int i;
	fprintf(stdout, "( ");
	for (i=0; i<numRegs; i++, reg++)
		if (reg->fileId != REG_NULL)
		{
			printRegName(reg);
			if (reg->fileId == REG_VD || reg->fileId == REG_D)
				fprintf(stdout,"%f ", getDReg(*reg));
			else
				fprintf(stdout,"%08x ", getReg(*reg));
		}
	fprintf(stdout, ")");
}

void printMInstruction(MInstruction *instr){
  int i;
  if(instr!=NULL){ //instructiunea trebuie sa fie !=NULL deoarece se executa
    fprintf(stdout,"%s ",getInstructionName(instr->mnemonic));
    if(instr->outputs[0].fileId != REG_NULL)
        fprintf(stdout,"%s%d ",regtype(instr->outputs[0].fileId),instr->outputs[0].index);

    for(i=0;i<2;i++)
      if(instr->inputs[i].fileId != REG_NULL)
	  {
        fprintf(stdout,"%s%d ",regtype(instr->inputs[i].fileId),instr->inputs[i].index);
	  }
    switch(instr->mnemonic){
      case I_MOV_I:
      case I_AND_I:
      case I_ADD_I:
      case I_SUB_I:
      case I_ORR_I:
      case I_EOR_I:
      case I_MVN_I:
      case I_CMP_I:
      case I_B_I:
      case I_BGT:
      case I_BGE:
      case I_BLT:
      case I_BLE:
      case I_BEQ:
      case I_BNE:
      case I_BL_I:
      case I_LDR:
      case I_LDRB:
      case I_STR:
      case I_STRB:
      case I_FLDD:
      case I_FSTD:
        fprintf(stdout,"$%08x ",instr->imm);
    }
	printRegValues(instr->inputs, INPUT_NO);
  } 
}


void printStack(){
/*  int i;
  printf("Continutul stivei, de la sp+4 catre MEMORY_SIZE:\n");
  for(i=$sp+4;i<(((MEMORY_SIZE-1)/4)*4);i++)
    printf("%x  ", _memory[i]);
  printf("\n");*/
}

void store_int(int address, int value){
	storeData(address, &value, sizeof(value));	
	/*
  _memory[address]=(char)(value & 0xFF);
  _memory[address+1]=(char)((value & 0xFF00) >>8);
  _memory[address+2]=(char)((value & 0xFF0000) >> 16);
  _memory[address+3]=(char)((value & 0xFF000000) >> 24);
  */
}






