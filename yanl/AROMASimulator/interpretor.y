%{
#define YYDEBUG 1
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include "masina.h"
#include "asamblor.h"
#include "simulator.h"
#include "MemorySystem.h"
#include "RegisterFile.h"

int yyerror(char*);
int yylex();
char* concat2Strings(char* str1, char* str2);
char* concat3Strings(char* str1, char* str2, char* str3);
void readConfig();

extern int yylineno;
extern unsigned long  memPtr; //pointer la primul spatiu liber in memorie
extern unsigned long current_PC;
extern int reg_no, dreg_no;
unsigned long hasData = 0; // 1 if the program has a .data section. 
unsigned long codeEnd; // First location after code. Valid if hasData = true


int errNo=0,i; //numarul de erori
int print_memory_map, //booleeni pt. informatia de debug - cititi din fisierul de configurare
    print_asm_instr, 
    print_exec_instr, 
    more_debug;
%}

%union{
	Register reg;
	unsigned long num;
	double real;
	char* str; // allocated via malloc
 }
 
%token<num> INT CHAR

%token<real> REAL

%token <str> BEGIN_DATA BEGIN_CODE 
             DEF_INT DEF_DOUBLE DEF_BYTE DEF_VECTOR_BYTE 
               STRING
	     ID LABEL
	     MOVE LOAD_B LOAD_F LOAD_I STORE_B STORE_F STORE_I
             ADD SUB MUL AND OR XOR NOT 
	     CMP JMP JE JNE JGT JLT JGE JLE CALL
	     FADD FSUB FMUL FDIV FMOVE FCMP F2I I2F
             
%token <reg> REG DREG
//%type<str> expression_imm immediate int_val 
%%

program : code_section   
          data_section   
        ;
	 
data_section : BEGIN_DATA { hasData = 1; codeEnd = current_PC; current_PC = DSEG_START;} var_list  {}
             ;
	     
var_list : var_list variable {}
         | /*lambda*/
	 ;	     

variable : LABEL { addLabel($1); } 
         | DEF_BYTE INT { addByte((unsigned char)$2); }
         | DEF_BYTE CHAR {addByte((unsigned char)$2);}
         | DEF_BYTE STRING { addString($2); }
         | DEF_INT INT { addInt($2); }
         | DEF_INT ID { addIntExpression($2); }
// Supports a sum or difference of labels and constants
//         | DEF_INT expression_imm {addInt( $2 ); }
         | DEF_VECTOR_BYTE INT {int i; for(i=0; i<(int)($2); i++) addByte(0); }
         | DEF_DOUBLE REAL {addDouble($2);}
         | DEF_DOUBLE INT {addDouble((double)($2));}
	 ;	 

	 
code_section : BEGIN_CODE { current_PC = CSEG_START;} instr_list     {};
	      	 
instr_list : instr_list instruction {}
           | /*lambda*/
	   ;	          

instruction : LABEL { addLabel($1); }
            | MOVE REG ',' REG			{ addInstruction(I_MOV_R, &$2, &$4, &rNULL, NULL, 0); } 
            | MOVE REG ',' INT			{ addInstruction(I_MOV_I, &$2, &rNULL, &rNULL, NULL, $4); } 
            | ADD REG ',' REG ',' REG	{ addInstruction(I_ADD_R, &$2, &$4, &$6, NULL, 0); } 
            | ADD REG ',' REG ',' INT	{ addInstruction(I_ADD_I, &$2, &$4, &rNULL, NULL, $6); } 
            | SUB REG ',' REG ',' REG	{ addInstruction(I_SUB_R, &$2, &$4, &$6, NULL, 0); } 
            | SUB REG ',' REG ',' INT	{ addInstruction(I_SUB_I, &$2, &$4, &rNULL, NULL, $6); } 
            | MUL REG ',' REG ',' REG	{ addInstruction(I_MUL, &$2, &$4, &$6, NULL, 0);} 
            | AND REG ',' REG ',' REG	{ addInstruction(I_AND_R, &$2, &$4, &$6, NULL, 0); } 
            | AND REG ',' REG ',' INT	{ addInstruction(I_AND_I, &$2, &$4, &rNULL, NULL, $6); } 
            | OR REG ',' REG ',' REG	{ addInstruction(I_ORR_R, &$2, &$4, &$6, NULL, 0); } 
            | OR REG ',' REG ',' INT	{ addInstruction(I_ORR_I, &$2, &$4, &rNULL, NULL, $6); } 
            | XOR REG ',' REG ',' REG	{ addInstruction(I_EOR_R, &$2, &$4, &$6, NULL, 0); } 
            | XOR REG ',' REG ',' INT	{ addInstruction(I_EOR_I, &$2, &$4, &rNULL, NULL, $6); } 
            | NOT REG ',' REG			{ addInstruction(I_MVN_R, &$2, &$4, &rNULL, NULL, 0); } 
            | NOT REG ',' INT			{ addInstruction(I_MVN_I, &$2, &rNULL, &rNULL, NULL, $4); } 
            | CMP REG ',' REG			{ addInstruction(I_CMP_R, &rNULL, &$2, &$4, NULL, 0); } 
            | CMP REG ',' INT			{ addInstruction(I_CMP_I, &rNULL, &$2, &rNULL, NULL, $4); } 

            | JMP ID					{ addInstruction(I_B_I, &rNULL, &rNULL, &rNULL, $2, 0); } 
            | JE ID						{ addInstruction(I_BEQ, &rNULL, &rNULL, &rNULL, $2, 0); } 
            | JNE ID					{ addInstruction(I_BNE, &rNULL, &rNULL, &rNULL, $2, 0); } 
            | JGE ID					{ addInstruction(I_BGE, &rNULL, &rNULL, &rNULL, $2, 0); } 
            | JLT ID					{ addInstruction(I_BLT, &rNULL, &rNULL, &rNULL, $2, 0); } 
            | JGT ID					{ addInstruction(I_BGT, &rNULL, &rNULL, &rNULL, $2, 0); } 
            | JLE ID					{ addInstruction(I_BLE, &rNULL, &rNULL, &rNULL, $2, 0); } 
            | JMP REG					{ addInstruction(I_B_R, &rNULL, &$2, &rNULL, NULL, 0); }
            | CALL ID					{ addInstruction(I_BL_I, &rNULL, &rNULL, &rNULL, $2, 0);}
            | CALL REG					{ addInstruction(I_BL_R, &rNULL, &$2, &rNULL, NULL, 0); }

            | LOAD_I REG ',' '=' INT	{ addInstruction(I_MOV_I, &$2, &rNULL, &rNULL, NULL, $5);}
            | LOAD_I REG ',' '=' ID		{ addInstruction(I_MOV_I, &$2, &rNULL, &rNULL, $5, 0);}
            | LOAD_I REG ',' '=' ID '+' INT {addInstruction(I_MOV_I, &$2, &rNULL, &rNULL, $5, $7);}
            | LOAD_I REG ',' '[' REG ',' '#' INT ']' {addInstruction(I_LDR, &$2, &$5, &rNULL, NULL, $8);}
            | LOAD_I REG ',' '[' REG ']' {addInstruction(I_LDR, &$2, &$5, &rNULL, NULL, 0);}
            | LOAD_B REG ',' '[' REG ',' '#' INT ']' {addInstruction(I_LDRB, &$2, &$5, &rNULL, NULL, $8);}
            | LOAD_B REG ',' '[' REG ']' {addInstruction(I_LDRB, &$2, &$5, &rNULL, NULL, 0);}
            | STORE_I REG ',' '[' REG ',' '#' INT ']' {addInstruction(I_STR, &rNULL, &$2, &$5, NULL, $8);}
            | STORE_I REG ',' '[' REG ']' {addInstruction(I_STR, &rNULL, &$2, &$5, NULL, 0);}
            | STORE_B REG ',' '[' REG ',' '#' INT ']' {addInstruction(I_STRB, &rNULL, &$2, &$5, NULL, $8);}
            | STORE_B REG ',' '[' REG ']' {addInstruction(I_STRB, &rNULL, &$2, &$5, NULL, 0);}

            | FMOVE DREG ',' DREG			{addInstruction(I_FCPYD, &$2, &$4, &rNULL, NULL, 0);}
            | FADD DREG ',' DREG ',' DREG	{addInstruction(I_FADDD, &$2, &$4, &$6, NULL, 0); } 
            | FSUB DREG ',' DREG ',' DREG	{addInstruction(I_FSUBD, &$2, &$4, &$6, NULL, 0); } 
            | FMUL DREG ',' DREG ',' DREG	{addInstruction(I_FMULD, &$2, &$4, &$6, NULL, 0); } 
            | FDIV DREG ',' DREG ',' DREG	{addInstruction(I_FDIVD, &$2, &$4, &$6, NULL, 0); } 
            | FCMP DREG ',' DREG			{addInstruction(I_FCMPD, &rNULL, &$2, &$4, NULL, 0);}
            | I2F DREG ',' REG				{addInstruction(I_FSITOD, &$2, &$4, &rNULL, NULL, 0); } 
            | F2I REG ',' DREG				{addInstruction(I_FTOSID, &$2, &$4, &rNULL, NULL, 0); } 
            | LOAD_F DREG ',' '[' REG ',' '#' INT ']' {addInstruction(I_FLDD, &$2, &$5, &rNULL, NULL, $8);}
            | LOAD_F DREG ',' '[' REG ']' {addInstruction(I_FLDD, &$2, &$5, &rNULL, NULL, 0);}
            | STORE_F DREG ',' '[' REG ',' '#' INT ']' {addInstruction(I_FSTD, &rNULL, &$2, &$5, NULL, $8);}
            | STORE_F DREG ',' '[' REG ']' {addInstruction(I_FSTD, &rNULL, &$2, &$5, NULL, 0);}
            ; 

// No longer used, kept for possible future improvements
/*
expression_imm : expression_imm '+' immediate {$$=concat3Strings($1,"+",$3);}
               | expression_imm '-' immediate {$$=concat3Strings($1,"-",$3);}
               | immediate
               ;

immediate : ID 
          | INT
          ;  
*/
%%
	  
extern FILE* yyin;

int main(int argc, char** argv){
//  yydebug=1;
  if(argc<2){  //daca nu exista suficienti parametri
    fprintf(stderr, "Nu s-a specificat fisierul sursa.\n");
    return 0;  
  }
  readConfig(); 

  yyin=fopen(argv[1],"rt");
  if(yyin==NULL){
    fprintf(stderr,"Nu s-a putut deschide fisierul %s.\n",argv[1]);
    return 0;  
  }

  //initializarea memoriei, a registrilor si a indicelui la memorie
  defineMemoryRange(CSEG_START, CSEG_END, MEM_CODE);
  defineMemoryRange(DSEG_START, DSEG_END, MEM_DATA);
  defineMemoryRange(HSEG_START, HSEG_END, MEM_HEAP);
  defineMemoryRange(SSEG_START, SSEG_END, MEM_DATA); 
  
  memPtr = 0; 
  
  defineRegisterFile(REG_PC, 1, REG_TYPE_INT32);
  defineRegisterFile(REG_SR, 1, REG_TYPE_INT32);
  defineRegisterFile(REG_R, REG_R_SIZE, REG_TYPE_INT32);
  defineRegisterFile(REG_VR, 0, REG_TYPE_INT32);
  defineRegisterFile(REG_D, REG_D_SIZE, REG_TYPE_DOUBLE);
  defineRegisterFile(REG_VD, 0, REG_TYPE_DOUBLE);
  
  while(!feof(yyin))
    yyparse();  
  
  if (hasData)
  	current_PC = codeEnd;  
  addRuntimeLibrary(); // Add runtime in code segment 
  
  assembler();
  if (print_exec_instr)
	fprintf(stderr, "Asamblarea s-a terminat cu succes, incepe executia:\n");
  execute(CSEG_START);
  return 0;
}

int yyerror(char* error){
  fprintf(stderr,"%d : %s\n",yylineno,error);
  exit(EXIT_FAILURE);
}

char* concat3Strings(char* str1, char* str2, char* str3){
  char* result;  
  unsigned int l1, l2, l3;
  l1=strlen(str1); l2=strlen(str2); l3=strlen(str3);
  result=(char*)malloc(l1+l2+l3+1);
  strcpy(result,str1); strcpy(result+l1,str2); strcpy(result+l1+l2,str3);
  return result;
}

char* concat2Strings(char* str1, char* str2){
  char* result;  
  unsigned l1, l2;
  l1=strlen(str1); l2=strlen(str2); 
  result=(char*)malloc(l1+l2+1);
  strcpy(result,str1); strcpy(result+l1,str2); 
  return result;
}

/** Citeste fisierul de configurare */
void readConfig(){
  FILE *f;
  char text[20];
  f=fopen("config", "r");
  if(f==NULL)
	return; // Nu s-a putut deschide fisierul de configurare.
  
  fscanf(f, "%s", &text);
  if(strcmp(text, "PRINT_MEMORY_MAP")==0){
    fscanf(f, "%d", &print_memory_map);
    fscanf(f, "%s", &text);
  }
  if(strcmp(text, "PRINT_ASM_INSTR")==0){
    fscanf(f, "%d", &print_asm_instr);
    fscanf(f, "%s", &text);
  }
  if(strcmp(text, "PRINT_EXEC_INSTR")==0){
    fscanf(f, "%d", &print_exec_instr);
    fscanf(f, "%s", &text);
  }
  if(strcmp(text, "MORE_DEBUG")==0){
    fscanf(f, "%d", &more_debug);
    fscanf(f, "%s", &text);
  }
  if(strcmp(text, "REG_NO")==0){
    fscanf(f, "%d", &reg_no);
    fscanf(f, "%s", &text);
  }
  if(strcmp(text, "DREG_NO")==0){
    fscanf(f, "%d", &dreg_no);
  }
}




















