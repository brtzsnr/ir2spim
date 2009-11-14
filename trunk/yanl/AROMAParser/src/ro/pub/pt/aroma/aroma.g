grammar aroma;
@lexer::header{
package ro.pub.pt.aroma;

}

@header{
package ro.pub.pt.aroma;
import java.util.LinkedList;
}


prog	returns [Program p]
	:	c=code d=data {$p=new Program($c.ll,$d.ll);};
code returns [LinkedList<Instruction> ll]
	@init{$ll=new LinkedList<Instruction>();}		
	:	'.code' (d=code_stat{$ll.add($d.i);})+;
data returns [LinkedList<Instruction> ll]
	@init{$ll=new LinkedList<Instruction>();}	
	:	'.data' (d=data_stat{$ll.add($d.i);})*;

code_stat returns [Instruction i]
	:	l=label? (i1=aritm_stat{$i=new Instruction($i1.i.getMnemonic(),$i1.i.getOpers(),$l.l);}|
		i1=branch_stat{$i=new Instruction($i1.i.getMnemonic(),$i1.i.getOpers(),$l.l);}|
		i1=mem_stat{$i=new Instruction($i1.i.getMnemonic(),$i1.i.getOpers(),$l.l);}|
		i1=float_stat{$i=new Instruction($i1.i.getMnemonic(),$i1.i.getOpers(),$l.l);});
		
aritm_stat returns [Instruction i]
	:	i1=aritm_2_oper {$i=$i1.i;}|
		i1=aritm_3_oper{$i=$i1.i;}|
		i1=aritm_3_reg{$i=$i1.i;};
		
aritm_2_oper returns [Instruction i]
	:	('MOV'|'mov') r=reg ',' o=oper{
			LinkedList<Operand> ll=new LinkedList<Operand>();
			ll.add(new Operand($r.r));
			ll.add($o.o);
			$i=new Instruction(Mnemonics.MOV,ll);}|
		('MVN'|'mvn') r=reg ',' o=oper{
			LinkedList<Operand> ll=new LinkedList<Operand>();
			ll.add(new Operand($r.r));
			ll.add($o.o);
			$i=new Instruction(Mnemonics.MVN,ll);}|
		('CMP'|'cmp') r=reg ',' o=oper{
			LinkedList<Operand> ll=new LinkedList<Operand>();
			ll.add(new Operand($r.r));
			ll.add($o.o);
			$i=new Instruction(Mnemonics.CMP,ll);};
	
aritm_3_oper returns [Instruction i]
	:	('AND'|'and') r1=reg ',' r2=reg ',' o=oper{
			LinkedList<Operand> ll=new LinkedList<Operand>();
			ll.add(new Operand($r1.r));
			ll.add(new Operand($r2.r));
			ll.add($o.o);
			$i=new Instruction(Mnemonics.AND,ll);}|
		('SUB'|'sub') r1=reg ',' r2=reg ',' o=oper{
			LinkedList<Operand> ll=new LinkedList<Operand>();
			ll.add(new Operand($r1.r));
			ll.add(new Operand($r2.r));
			ll.add($o.o);
			$i=new Instruction(Mnemonics.SUB,ll);}|
		('ORR'|'orr') r1=reg ',' r2=reg ',' o=oper{
			LinkedList<Operand> ll=new LinkedList<Operand>();
			ll.add(new Operand($r1.r));
			ll.add(new Operand($r2.r));
			ll.add($o.o);
			$i=new Instruction(Mnemonics.ORR,ll);}|
		('EOR'|'eor') r1=reg ',' r2=reg ',' o=oper{
			LinkedList<Operand> ll=new LinkedList<Operand>();
			ll.add(new Operand($r1.r));
			ll.add(new Operand($r2.r));
			ll.add($o.o);
			$i=new Instruction(Mnemonics.EOR,ll);}|
		('ADD'|'add') r1=reg ',' r2=reg ',' o=oper{
			LinkedList<Operand> ll=new LinkedList<Operand>();
			ll.add(new Operand($r1.r));
			ll.add(new Operand($r2.r));
			ll.add($o.o);
			$i=new Instruction(Mnemonics.ADD,ll);};
	 
aritm_3_reg returns [Instruction i]
	:	('MUL'|'mul') r1=reg ',' r2=reg ',' r3=reg{
			LinkedList<Operand> ll=new LinkedList<Operand>();
			ll.add(new Operand($r1.r));
			ll.add(new Operand($r2.r));
			ll.add(new Operand($r3.r));
			$i=new Instruction(Mnemonics.MUL,ll);};
	
oper	returns [Operand o]
	:	r=reg{$o=new Operand($r.r);}|
		n=num{$o=new Operand($n.i);};
	
branch_stat returns [Instruction i]
	:	('B'|'b') l=label2{
			LinkedList<Operand> ll=new LinkedList<Operand>();
			ll.add(new Operand($l.l));
			$i=new Instruction(Mnemonics.B,ll);}|
		('BEQ'|'beq') l=label2{
			LinkedList<Operand> ll=new LinkedList<Operand>();
			ll.add(new Operand($l.l));
			$i=new Instruction(Mnemonics.BEQ,ll);}|
		('BNE'|'bne') l=label2{
			LinkedList<Operand> ll=new LinkedList<Operand>();
			ll.add(new Operand($l.l));
			$i=new Instruction(Mnemonics.BNE,ll);}|
		('BGT'|'bgt') l=label2{
			LinkedList<Operand> ll=new LinkedList<Operand>();
			ll.add(new Operand($l.l));
			$i=new Instruction(Mnemonics.BGT,ll);}|
		('BGE'|'bge') l=label2{
			LinkedList<Operand> ll=new LinkedList<Operand>();
			ll.add(new Operand($l.l));
			$i=new Instruction(Mnemonics.BGE,ll);}|
		('BLT'|'blt') l=label2{
			LinkedList<Operand> ll=new LinkedList<Operand>();
			ll.add(new Operand($l.l));
			$i=new Instruction(Mnemonics.BLT,ll);}|
		('BLE'|'ble') l=label2{
			LinkedList<Operand> ll=new LinkedList<Operand>();
			ll.add(new Operand($l.l));
			$i=new Instruction(Mnemonics.BLE,ll);}|
		('BL'|'bl') l=label2{
			LinkedList<Operand> ll=new LinkedList<Operand>();
			ll.add(new Operand($l.l));
			$i=new Instruction(Mnemonics.BL,ll);}|
		('B'|'b') r=reg {
			LinkedList<Operand> ll=new LinkedList<Operand>();
			ll.add(new Operand($r.r));
			$i=new Instruction(Mnemonics.B,ll);}|
		('BL'|'bl') r=reg {
			LinkedList<Operand> ll=new LinkedList<Operand>();
			ll.add(new Operand($r.r));
			$i=new Instruction(Mnemonics.BL,ll);};
		
mem_stat returns [Instruction i]
	:	('LDR'|'ldr') r=reg ',' o=val{
			LinkedList<Operand> l=new LinkedList<Operand>();
			l.add(new Operand($r.r));
			l.add($o.o);
			$i=new Instruction(Mnemonics.LDR,l);}|
		('LDR'|'ldr') r=reg ',' m=mem {
			LinkedList<Operand> l=new LinkedList<Operand>();
			l.add(new Operand($r.r));
			l.add(new Operand($m.mem));
			$i=new Instruction(Mnemonics.LDR,l);}|
		('STR'|'str') r=reg ',' m=mem{
			LinkedList<Operand> l=new LinkedList<Operand>();
			l.add(new Operand($r.r));
			l.add(new Operand($m.mem));
			$i=new Instruction(Mnemonics.STR,l);}|
		('LDRB'|'ldrb') r=reg ',' m=mem{
			LinkedList<Operand> l=new LinkedList<Operand>();
			l.add(new Operand($r.r));
			l.add(new Operand($m.mem));
			$i=new Instruction(Mnemonics.LDRB,l);}|
		('STRB'|'strb') r=reg ',' m=mem{
			LinkedList<Operand> l=new LinkedList<Operand>();
			l.add(new Operand($r.r));
			l.add(new Operand($m.mem));
			$i=new Instruction(Mnemonics.STRB,l);};
		
mem	 returns [MemLoc mem]
	:	'['r=reg ','n=num2 ']' {$mem=new MemLoc($r.r,(int)$n.i.getValue());}|
		'[' r=reg ']'{$mem=new MemLoc($r.r,0);};

float_stat returns [Instruction i]
	:	('FCPYD'|'fcpyd') f1=freg ',' f2=freg {
			LinkedList<Operand> l=new LinkedList<Operand>();
			l.add(new Operand($f1.fr));
			l.add(new Operand($f2.fr));
			$i=new Instruction(Mnemonics.FCPYD,l);
			}|
		('FCMPD'|'fcmpd') f1=freg ',' f2=freg{
			LinkedList<Operand> l=new LinkedList<Operand>();
			l.add(new Operand($f1.fr));
			l.add(new Operand($f2.fr));
			$i=new Instruction(Mnemonics.FCMPD,l);
			}|
		('FADDD'|'faddd') f1=freg ',' f2=freg ',' f3=freg{
			LinkedList<Operand> l=new LinkedList<Operand>();
			l.add(new Operand($f1.fr));
			l.add(new Operand($f2.fr));
			l.add(new Operand($f3.fr));
			$i=new Instruction(Mnemonics.FADDD,l);
			}|
		('FSUBD'|'fsubd') f1=freg ',' f2=freg ',' f3=freg{
			LinkedList<Operand> l=new LinkedList<Operand>();
			l.add(new Operand($f1.fr));
			l.add(new Operand($f2.fr));
			l.add(new Operand($f3.fr));
			$i=new Instruction(Mnemonics.FSUBD,l);
			}|
		('FMULD'|'fmuld') f1=freg ',' f2=freg ',' f3=freg{
			LinkedList<Operand> l=new LinkedList<Operand>();
			l.add(new Operand($f1.fr));
			l.add(new Operand($f2.fr));
			l.add(new Operand($f3.fr));
			$i=new Instruction(Mnemonics.FMULD,l);
			}|
		('FDIVD'|'fdivd') f1=freg ',' f2=freg ',' f3=freg{
			LinkedList<Operand> l=new LinkedList<Operand>();
			l.add(new Operand($f1.fr));
			l.add(new Operand($f2.fr));
			l.add(new Operand($f3.fr));
			$i=new Instruction(Mnemonics.FDIVD,l);
			}|
		('FSITOD'|'fsitod') f=freg ',' r=reg {
			LinkedList<Operand> l=new LinkedList<Operand>();
			l.add(new Operand($f.fr));
			l.add(new Operand($r.r));
			$i=new Instruction(Mnemonics.FSITOD,l);
			}|
		('FTOSID'|'ftosid') r=reg ',' f=freg {
			LinkedList<Operand> l=new LinkedList<Operand>();
			l.add(new Operand($r.r));
			l.add(new Operand($f.fr));
			$i=new Instruction(Mnemonics.FTOSID,l);
			}|
		('FLDD'|'fldd') f=freg ',' m=mem{
			LinkedList<Operand> l=new LinkedList<Operand>();
			l.add(new Operand($f.fr));
			l.add(new Operand($m.mem));
			$i=new Instruction(Mnemonics.FLDD,l);
			}|
		('FSTD'|'fstd') f=freg ',' m=mem{
			LinkedList<Operand> l=new LinkedList<Operand>();
			l.add(new Operand($f.fr));
			l.add(new Operand($m.mem));
			$i=new Instruction(Mnemonics.FSTD,l);
			};
		
reg	returns [Register r]:	
		REG{ String s=$REG.getText().toLowerCase();
		if(s.compareTo("sp")==0)
			$r=new Register(13,false);
		else if(s.compareTo("lr")==0)
			$r=new Register(14,false);
		else
			$r=new Register(Integer.parseInt(s.substring(1)),false);}|
		VREG{$r=new Register(Integer.parseInt($VREG.getText().substring(2)),true);};
REG	:	('R'|'r')DIGIT|('R1'|'r1')('0'..'4')|'SP'|'LR'|'sp'|'lr';	
VREG	:	'VR'NUM|'vr'NUM;

freg	returns [FloatRegister fr]:
		FREG{$fr=new FloatRegister(Integer.parseInt($FREG.getText().substring(1)),false);}|
		VFREG{$fr=new FloatRegister(Integer.parseInt($VFREG.getText().substring(2)),true);};
FREG	:	('D'|'d')('0'..'7');
VFREG	:	('VD'|'vd')NUM;

num	returns [Imm_int i]:
		NUM{$i=new Imm_int(Long.parseLong($NUM.getText()));}
		|HEX_NUM{$i=new Imm_int(Long.parseLong($HEX_NUM.getText().substring(1),16));};	

num2	returns [Imm_int i]:
		'#'NUM{$i=new Imm_int(Long.parseLong($NUM.getText()));};
		

val	returns [Operand o]
	:	'='(n=num {$o=new Operand($n.i);}|
			l=label2 {$o=new Operand($l.l);}|
			n=num '+' l=label2 {$o=new Operand(new Imm_comb($l.l.getName(),$n.i.getValue()));}
					);

data_stat returns [Instruction i]
	:	(l=label)?(('DB'|'db') n=num {	LinkedList<Operand> ll=new LinkedList<Operand>();
						ll.add(new Operand($n.i));
						$i=new Instruction(Mnemonics.DB,ll,l);}|
		('DB'|'db')  CHAR {	char ch=$CHAR.getText().charAt(1);
					Char ch2=new Char(ch);
					LinkedList<Operand> ll=new LinkedList<Operand>();
					ll.add(new Operand(ch2));
						$i=new Instruction(Mnemonics.DB,ll,l);}|
		('DB'|'db') STRING { OpString str=new OpString($STRING.getText());
					LinkedList<Operand> ll=new LinkedList<Operand>();
					ll.add(new Operand(str));
						$i=new Instruction(Mnemonics.DB,ll,l);}|
		('DW'|'dw') (n=num) {	LinkedList<Operand> ll=new LinkedList<Operand>();
					ll.add(new Operand($n.i));
						$i=new Instruction(Mnemonics.DW,ll,l);}|
		('DW'|'dw') l2=label2 {	LinkedList<Operand> ll=new LinkedList<Operand>();
					ll.add(new Operand($l2.l));
						$i=new Instruction(Mnemonics.DW,ll,l);}|
		('DD'|'dd') REAL_NUM {	ImmReal imm_r=new ImmReal(Double.parseDouble($REAL_NUM.getText()));
					LinkedList<Operand> ll=new LinkedList<Operand>();
					ll.add(new Operand(imm_r));
						$i=new Instruction(Mnemonics.DD,ll,l);}|
		('DD'|'dd') n=num {	LinkedList<Operand> ll=new LinkedList<Operand>();
					ll.add(new Operand($n.i));
						$i=new Instruction(Mnemonics.DD,ll,l);}|				
		('DS'|'ds') n=num{	LinkedList<Operand> ll=new LinkedList<Operand>();
					ll.add(new Operand($n.i));
						$i=new Instruction(Mnemonics.DS,ll,l);});
label returns [Imm_label l]
	:	(l2=label2 ':') { $l=$l2.l;};

label2 returns [Imm_label l]
	:	LABEL {$l=new Imm_label($LABEL.getText());};
		
CHAR		:	'\'' ( . ) '\''
		;

STRING	
		:	'"' (EscapeSequence | ~('"'))* '"'
		;

fragment EscapeSequence	
		: 	'""'
		;


fragment
LETTER	:	 ('a'..'z'|'A'..'Z');
fragment
DIGIT 	:	('0'..'9');
fragment
HEXDIGIT:	DIGIT|('A'..'F')|('a'..'f');
fragment
NZHEXDIGIT
	:	('1'..'9')|('A'..'F')|('a'..'f');
LABEL	: (LETTER|'_')(LETTER|DIGIT|'_')*;
WS	:	(' '|'\t'){skip();};
NEWLINE	:	('\r')?('\n') {skip();};
COMMENT	:	';' (~('\n'|'\r'))* {skip();};
NUM	:	('-')?('0'|('1'..'9')DIGIT*);
HEX_NUM	:	'$'NZHEXDIGIT(HEXDIGIT)*;
REAL_NUM:	('-')?(NUM'.'(DIGIT)*);


