#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "common.h"
#include "masina.h"
#include "asamblor.h"
#include "MemorySystem.h"

extern int errNo, print_memory_map, print_asm_instr;

int reg_no=256,dreg_no=128;
int *reg;
double * dreg;

//char *_memory, *stack, *heap;
unsigned long memPtr; //adresa primului spatiu de memorie liber
Instruction **code = NULL;
unsigned long current_PC; //numarul de instructiuni ocupate
extern unsigned long programStart; //prima instructiune din program

LazyExpression **lexprMap; //lista de variabile nume/adresa
Label **labelMap; //lista de etichete nume/valoare
Procedure **procedureMap; //lista de proceduri nume/valoare=adresa de start
unsigned int exprNo=0;   //numarul de expressi de evaluat
unsigned int labelNo=0;
unsigned int instNo=0;

char getByte(int number, int byteNo);

Register rSR = { REG_SR, 0 };
Register rPC = { REG_PC, 0 };
Register rLR = { REG_R, 14 };
Register rSP = { REG_R, 13 };
Register rR1 = { REG_R, 1 };
Register rR0 = { REG_R, 0 };
Register rD0 = { REG_D, 0 };

// Should not appear in any read/write request
Register rNULL = { REG_NULL, 0 };


/** Ce executa asamblorul */
void assembler(){
  if(print_memory_map)
    printMemoryMap();

  computeImmediateExpressions();

  if(print_asm_instr)  
    printCode();
  encode();
 
  if (errNo!=0){
	  Failure2("Asamblarea s-a terminat cu %d erori, nu se trece la executie.\n",errNo);
  }
}

// Add runtime library
void addRuntimeLibrary(void)
{
	addLabel("writeinteger"); addInstruction(IX_WRITEINTEGER, &rNULL, &rNULL, &rNULL, NULL, 0);
	addLabel("writecharacter"); addInstruction(IX_WRITECHARACTER, &rNULL, &rNULL, &rNULL, NULL, 0);
	addLabel("writeboolean"); addInstruction(IX_WRITEBOOLEAN, &rNULL, &rNULL, &rNULL, NULL, 0);
	addLabel("writestring"); addInstruction(IX_WRITESTRING, &rNULL, &rNULL, &rNULL, NULL, 0);
	addLabel("writereal"); addInstruction(IX_WRITEREAL, &rNULL, &rNULL, &rNULL, NULL, 0);
	addLabel("readinteger"); addInstruction(IX_READINTEGER, &rNULL, &rNULL, &rNULL, NULL, 0);
	addLabel("readcharacter"); addInstruction(IX_READCHARACTER, &rNULL, &rNULL, &rNULL, NULL, 0);
	addLabel("readreal"); addInstruction(IX_READREAL, &rNULL, &rNULL, &rNULL, NULL, 0);
	addLabel("_div"); addInstruction(IX_DIV, &rNULL, &rNULL, &rNULL, NULL, 0);
	addLabel("_mod"); addInstruction(IX_MOD, &rNULL, &rNULL, &rNULL, NULL, 0);
	addLabel("_new"); addInstruction(IX_NEW, &rNULL, &rNULL, &rNULL, NULL, 0);
	addLabel("_dispose"); addInstruction(IX_DISPOSE, &rNULL, &rNULL, &rNULL, NULL, 0);
}

/** Aloca spatiu in memorie pentru o noua variabila si o adauga in map-ul de
* variabile dupa nume, daca are nume
* elements - cate elemente daca este vector, altfel - 1
* size - dimensiunea unui element
*/

void addInt_internal(unsigned long offset, unsigned long value){
/* nu aliniem */
	storeData(offset, &value, sizeof(unsigned long));
};
void addByte(unsigned char byte){
/* nu aliniem */
	storeData(current_PC, &byte, 1);
    current_PC ++; 
};

void addString(char *str) {
	size_t len = strlen(str);
	storeData(current_PC, str, len);
	current_PC += len;
};

void addDouble(double value){
/* nu aliniem */
	storeData(current_PC, &value, sizeof(double));
	current_PC += sizeof(double); 
};

void addInt(unsigned long value){
	addInt_internal(current_PC, value);
	current_PC += sizeof(unsigned long);
}

void addIntExpression(char* expression){
  LazyExpression* newVar;
  
    newVar=(LazyExpression*)malloc(sizeof(LazyExpression));
    newVar->expression=expression;
    newVar->address=current_PC;
    lexprMap=realloc(lexprMap,(exprNo+1)*sizeof(LazyExpression*));
    lexprMap[exprNo]=newVar;
    exprNo++;
	current_PC += sizeof(int);
}

/** Intoarce byte-ul cu indicele byteNo(de la 0 la...) din numar
*/
char getByte(int number, int byteNo){
  char byteVal;
  number=number >> (sizeof(number)-byteNo-1)*8;
  byteVal=(char)number & 0x000000FF;
  return byteVal;
}

/** Adauga o eticheta */
void addLabel(char* labelName){
  unsigned int i;
  Label *newLabel;
  for(i=0;i<labelNo;i++)
    if (strcmp(labelMap[i]->name, labelName)==0){
      printf("Eticheta: %s a mai fost declarata.\n",labelName);
      errNo++;
      return;
    }

  newLabel=(Label*)malloc(sizeof(Label));  
  newLabel->name=labelName;
  newLabel->value=current_PC; //lungimea codului=adresa instructiunii urmatoare
  labelMap=(Label**)realloc(labelMap,(labelNo+1)*sizeof(Label*));
  labelMap[labelNo]=newLabel;
  labelNo++;
}

/** Intoarce (valoarea etichetei )adresa instructiunii etichetate sau -1 daca nu exista */
int getLabelValue(char* labelName){
  unsigned int i;
  for(i=0;i<labelNo;i++){
    if (strcmp(labelMap[i]->name, labelName)==0)
      return labelMap[i]->value;
  }
  return -1;
}


/** Forma generala de adaugare a unei instructiuni */
void addInstruction(int mnemonic, Register* dest, Register* src1, Register* src2, 
					char* immediateExpression, unsigned long immediateValue)
{
  int inst_idx = current_PC - CSEG_START;
  Instruction *instr=(Instruction*)malloc(sizeof(Instruction));

  instr->mnemonic=mnemonic;
  instr->dest=*(dest);
  instr->src1=*(src1);
  instr->src2=*(src2);
  instr->immExpression=immediateExpression;
  instr->imm = immediateValue;
  
  assert(inst_idx>=0);
  assert(inst_idx % MInstructionSize == 0);
  
  inst_idx /= MInstructionSize;
  assert(inst_idx == instNo);

  instNo ++;
  code=(Instruction**)realloc(code, (instNo)*sizeof(Instruction*));
  code[inst_idx]=instr;
  current_PC += MInstructionSize;
}

/** Afiseaza harta memoriei */
void printMemoryMap(){
/* No longer used
  int i;
  printf("Harta memoriei:");
  for(i=0;i<memPtr;i++)
    printf("0x%x  ",0xff & _memory[i]);
  printf("\n");
*/
}

/** Evaluates an immediate to a int */
int evaluateImmediate(char* immediate){
  int value;
  char **endPtr;

  endPtr=(char**)malloc(sizeof(char*));
  value=(int)strtol(immediate,endPtr,0);
  if(value!=0 || (value==0 && **endPtr=='\0'))
    return value; 
  value=getLabelValue(immediate);
  if(value!=-1) return value;
//  printf("Valoarea mea: %s\n", immediate);
  fprintf(stderr,"EROARE: Identificator %s nedeclarat.\n",immediate);
  errNo++;  
  return value;
}

/** Calculeaza rezultatul unei expresii de imediati */
int computeImmediateExpression(char* expression){
  int value=0,newValue,i;
  int len;
  char *immed, oper,oldOperator;

  oldOperator=' ';
  immed=(char*)malloc(strlen(expression)+1);
 
  do{
    oper=' ';
    immed[0]=expression[0]; //iau prima cifra sau eventualul semn
	len = strlen(expression);
    for(i=1; i<len; i++){
      if(expression[i]=='+'){ 
        oper='+';
        break;
      }  
      else if(expression[i]=='-'){
        oper='-';
        break;
      } 
      else immed[i]=expression[i];
    }
    immed[i]='\0';
    newValue=evaluateImmediate(immed);
    switch(oldOperator){
      case '+': value+=newValue;; break;
      case '-': value-=newValue; break;
      default: value=newValue; break;
    }
    if(i!=strlen(expression)){
      expression=expression+i+1;
      oldOperator=oper;
    }
    else break;
  }  while(1);
  return value;
}

/** Calculeaza valorile imediatilor din toate instructiunile */
void computeImmediateExpressions(void){
  unsigned int i;
  for(i=0;i<instNo; i++){
    Instruction *instr=code[i];
    if(instr==NULL)
       continue;     
    if(instr->immExpression==NULL)
      continue;
    instr->imm += computeImmediateExpression(instr->immExpression);
	instr->immExpression = NULL;
  }

  for(i=0;i<exprNo; i++){
    unsigned int value;
    LazyExpression *expr=lexprMap[i];
    assert(expr!=NULL);
    if(expr->expression==NULL)
      continue;
    value = computeImmediateExpression(expr->expression);
    addInt_internal(expr->address ,value);
  }
}

/** Encodeaza instructiunile asm in instructiuni masina */
void encode(void){
  unsigned int i,j;
  for(i=0;i<instNo;i++){
    MInstruction* mCode = (MInstruction*)malloc(sizeof(MInstruction));
    if(code[i]==NULL){
      continue;
    }
    mCode->mnemonic=code[i]->mnemonic;
    mCode->outputs[0]=code[i]->dest;
    mCode->inputs[0]=code[i]->src1;
    mCode->inputs[1]=code[i]->src2;
    mCode->imm=code[i]->imm;
    for(j=1; j<OUTPUT_NO; j++)
      mCode->outputs[j]=rNULL;
    for(j=2; j<INPUT_NO; j++)
      mCode->inputs[j]=rNULL;
      
    storeInstruction(CSEG_START + i * sizeof(mCode), mCode);

    free(code[i]);  
  }
  free(code);
}

/** Afiseaza lista de instructiuni */
void printCode(void){
  unsigned int i;
  for(i=0;i<instNo;i++){
    printf("%08x: ", CSEG_START + i * MInstructionSize);
    printInstruction(code[i]);
  }
}

char *regtype(unsigned long fileId){
	switch(fileId)
	{
	case REG_R: return "r";
	case REG_VR: return "vr";
	case REG_D: return "d";
	case REG_VD: return "vd";
	default: return "";
	}
}

/** Afiseaza o instructiune */
void printInstruction(Instruction* instr){
  if(instr==NULL)
    printf("\n");
  else{
    printf("%s ",getInstructionName(instr->mnemonic));
    if(instr->dest.fileId!=REG_NULL) printf("%s%d ",regtype(instr->dest.fileId), instr->dest.index);
	if(instr->src1.fileId!=REG_NULL) printf("%s%d ",regtype(instr->src1.fileId), instr->src1.index);
	if(instr->src2.fileId!=REG_NULL) printf("%s%d ",regtype(instr->src2.fileId), instr->src2.index);
    if(instr->immExpression!=NULL || instr->imm) printf("$%08x ",instr->imm);
    printf("\n");
  } 
}


static char *mnemonics[] = {
	"MOV", "MOV", 
	"ADD", "ADD", "SUB", "SUB", "MUL", 
	"AND", "AND", "ORR", "ORR", "EOR", "EOR", 
	"MVN", "MVN", "CMP", "CMP",
	"B", "B", "BEQ", "BNE", "BGE", "BLT", "BGT", "BLE",
	"BL", "BL",
	"LDR", "LDRB", "STR", "STRB",
	"FLDD", "FSTD",
	"FCPYD", "FADDD", "FSUBD", "FMULD", "FDIVD", "FCMPD", "FSITOD", "FTOSID",
	"writeInteger", "writeCharacter", "writeBoolean", "writeString", "writeReal",
	"readInteger", "readCharacter", "readReal",
	"_div", "_mod", 
	"_new", "_dispose",
};

char* getInstructionName(InstructionMnemonic mnemonic){
	assert(mnemonic < INSTRUCTION_COUNT);
	return mnemonics[mnemonic];
}

/// Utility functions

char *strLowerCase(const char *str)
{
	size_t len = strlen(str);
	char *res = malloc(len+1);
	if (res)
	{
		const char *pc = str;
		char *pr=res;
		char c;
		do {
			c = *pc;
			*pr = tolower(c);
			pc++;
			pr++;
		}
		while (c);
	}
	return res;
}
