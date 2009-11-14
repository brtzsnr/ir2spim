%option noyywrap case-insensitive yylineno
%{
#include <string.h>
#include <stdlib.h>
#include "masina.h"
#include "RegisterFile.h"
#include "interpretor.tab.h"
#include "common.h"

int stringSize;
char *sir;
static void addCharInSir(char c);

%}

REG_INDEX [0-9]|([1-9][0-9]+)
REGISTER r[0-9]|r1[0-4]
VREGISTER vr{REG_INDEX}
DREGISTER D[0-7]
VDREGISTER vd{REG_INDEX}

ID [a-z_][a-z_0-9]*
ETICH {ID}:
REAL -?[0-9]+\.[0-9]+
INTEGER [0-9]+
COMMENT ;.*\n
WHITE_SPACE [ \t\n\r]+

%x INIT_STRING
%%

\.data {return BEGIN_DATA;}
\.code {return BEGIN_CODE;}

db {return DEF_BYTE;}
dw {return DEF_INT;}
dd {return DEF_DOUBLE;}
ds {return DEF_VECTOR_BYTE;}

{REAL}		{ yylval.real = atof(yytext); return REAL; }
{INTEGER}	{ yylval.num = strtoul(yytext, NULL, 10); return INT; }
-{INTEGER}	{ yylval.num = (unsigned long)atoi(yytext); return INT; }
\$[0-9ABCDEF]{1,8} { yylval.num = strtoul(yytext+1, NULL, 16); return INT; }

\'.\' { yylval.num = yytext[1]; return CHAR; } // ASCII value of the char


\" {BEGIN INIT_STRING; stringSize=0; sir=NULL;}
<INIT_STRING>\"\" {addCharInSir('\"');}  // Escape sequence
<INIT_STRING>\" {
				 addCharInSir(0);
                 yylval.str = sir;
                 BEGIN INITIAL;
                 return STRING; }        
<INIT_STRING>. {addCharInSir(yytext[0]); }
	
lr {yylval.reg.fileId = REG_R; yylval.reg.index = 14; return REG;}
sp {yylval.reg.fileId = REG_R; yylval.reg.index = 13; return REG;}
{REGISTER} {
	yylval.reg.fileId = REG_R; yylval.reg.index=atoi(yytext+1); 
	if (yylval.reg.index >= REG_R_SIZE)
		Failure2("Registrul R%d nu exista.", yylval.reg.index);
	return REG;
	}
{VREGISTER}		{ yylval.reg.fileId = REG_VR; yylval.reg.index = atoi(yytext+2); return REG; }
{DREGISTER}		{ 
				yylval.reg.fileId = REG_D; yylval.reg.index= atoi(yytext+1); 
				if (yylval.reg.index >= REG_D_SIZE)
					Failure2("Registrul R%d nu exista.", yylval.reg.index);
				return DREG;
				}
{VDREGISTER}	{ yylval.reg.fileId = REG_VD; yylval.reg.index = atoi(yytext+2); return DREG;}

{ETICH} {yylval.str=strLowerCase(yytext);
         yylval.str[strlen(yylval.str)-1]='\0'; //nu se pastreaza si ":"
         return LABEL;
         }

LDRB  return LOAD_B;
LDR   return LOAD_I;
FLDD   return LOAD_F;


STRB return STORE_B;
STR  return STORE_I;
FSTD return STORE_F;

MOV   return MOVE;
add return ADD;
sub return SUB;
mul return MUL;
and return AND;
orr return OR;
eor return XOR;
MVN return NOT;
CMP return CMP;


b return JMP;
beq return JE;
bne return JNE;
bge return JGE;
blt return JLT;
bgt return JGT;
ble return JLE;

bl return CALL;


Faddd return FADD;
Fsubd return FSUB;
FMULD return FMUL;
FDIVD return FDIV;
FCPYD return FMOVE;
FCMPD return FCMP;
FSITOD return I2F;
FTOSID return F2I;

{ID} {yylval.str=strLowerCase(yytext);
      return ID;}
{WHITE_SPACE} {}
{COMMENT} {}
. return yytext[0];
%%

void addCharInSir(char c){
    stringSize++; 
    sir=(char*)realloc(sir, stringSize);
    sir[stringSize-1]=c; 
} 












