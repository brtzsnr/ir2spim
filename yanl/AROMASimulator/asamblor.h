#include "masina.h"

typedef struct{
  char* expression;
  unsigned long address;
} LazyExpression;

typedef struct{
  char* name;
  unsigned long value;  //reprezinta adresa instructiunii urmatoare
} Label;

typedef struct{
  char* name;
  unsigned long value;  //reprezinta adresa primei instructiuni din procedura
} Procedure;

 
typedef struct{
  InstructionMnemonic mnemonic;
  Register dest, src1, src2; // nu stim daca REGISTER sau DREGISTER - depinde de instructiune
  unsigned long imm; //operand imediat
  char* immExpression; //expresia care da operandul imediat
} Instruction;



void addInt(unsigned long value);
void addIntExpression(char *expression);
void addByte(unsigned char value);
void addDouble(double value);
void addString(char *str);

void printMemoryMap();
void addLabel(char* labelName);
int getLabelValue(char* labelName);
void addInstruction(int mnemonic, Register* dest, Register* src1, Register* src2, 
					char* immediateExpression, unsigned long immediateValue);

int evaluateImmediate(char* immediate);
int computeImmediateExpression(char* expression);
void computeImmediateExpressions(void);
void encode(void);
void assembler(void);
void addRuntimeLibrary(void);
char* getInstructionName(InstructionMnemonic mnemonic);
void printInstruction(Instruction* instr);
void printCode(void);
char *regtype(unsigned long fileId);









