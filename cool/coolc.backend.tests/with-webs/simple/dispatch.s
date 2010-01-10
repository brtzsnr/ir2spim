	.data
	.align	2
	.globl	class_nameTab
	.globl	Main_protObj
	.globl	Int_protObj
	.globl	String_protObj
	.globl	bool_const0
	.globl	bool_const1
	.globl	_int_tag
	.globl	_bool_tag
	.globl	_string_tag
	.globl	_MemMgr_INITIALIZER
	.globl	_MemMgr_COLLECTOR
	.globl	_MemMgr_TEST
_MemMgr_INITIALIZER:
	.word	_NoGC_Init
_MemMgr_COLLECTOR:
	.word	_NoGC_Collect
_MemMgr_TEST:
	.word	0
_int_tag:
	.word	1
_bool_tag:
	.word	2
_string_tag:
	.word	3
str_const19:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const4
	.ascii	"Main"
	.byte	0, 0, 0, 0
str_const18:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const0
	.ascii	"C"
	.byte	0, 0, 0
str_const17:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const0
	.ascii	"P"
	.byte	0, 0, 0
str_const16:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const5
	.ascii	"IO"
	.byte	0, 0
str_const15:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const6
	.ascii	"String"
	.byte	0, 0
str_const14:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const4
	.ascii	"Bool"
	.byte	0, 0, 0, 0
str_const13:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const7
	.ascii	"Int"
	.byte	0
str_const12:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const6
	.ascii	"Object"
	.byte	0, 0
str_const11:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const3
	.ascii	"_prim_slot"
	.byte	0, 0
str_const10:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0, 0, 0
str_const9:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const8
	.ascii	"_no_class"
	.byte	0, 0, 0
str_const8:
	.word	3
	.word	8
	.word	String_dispatch
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0, 0, 0
str_const7:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const10
	.ascii	"FALSE"
	.byte	0, 0, 0
str_const6:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const4
	.ascii	"TRUE"
	.byte	0, 0, 0, 0
str_const5:
	.word	3
	.word	8
	.word	String_dispatch
	.word	int_const11
	.ascii	"C.method2()\n"
	.byte	0, 0, 0, 0
str_const4:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const6
	.ascii	"false\n"
	.byte	0, 0
str_const3:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const10
	.ascii	"true\n"
	.byte	0, 0, 0
str_const2:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const0
	.ascii	"\n"
	.byte	0, 0, 0
str_const1:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const1
	.byte	0, 0, 0, 0
str_const0:
	.word	3
	.word	11
	.word	String_dispatch
	.word	int_const12
	.ascii	"_tests/simple/dispatch.cl"
	.byte	0, 0, 0
int_const12:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	25
int_const11:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	12
int_const10:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	5
int_const9:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	13
int_const8:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	9
int_const7:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	3
int_const6:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	6
int_const5:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	2
int_const4:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	4
int_const3:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	10
int_const2:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	20
int_const1:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	0
int_const0:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	1
bool_const1:
	.word	2
	.word	4
	.word	Object_dispatch
	.word	1
bool_const0:
	.word	2
	.word	4
	.word	Object_dispatch
	.word	0
class_nameTab:
	.word	str_const12
	.word	str_const13
	.word	str_const14
	.word	str_const15
	.word	str_const16
	.word	str_const17
	.word	str_const19
	.word	str_const18
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	Int_protObj
	.word	Int_init
	.word	Bool_protObj
	.word	Bool_init
	.word	String_protObj
	.word	String_init
	.word	IO_protObj
	.word	IO_init
	.word	P_protObj
	.word	P_init
	.word	Main_protObj
	.word	Main_init
	.word	C_protObj
	.word	C_init
Object_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
String_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	String.concat
	.word	String.length
	.word	String.substr
IO_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
P_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	P.method1
Main_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	Main.main
C_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	P.method1
	.word	C.method2
Object_protObj:
	.word	0
	.word	3
	.word	Object_dispatch
Int_protObj:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	0
Bool_protObj:
	.word	2
	.word	4
	.word	Object_dispatch
	.word	0
String_protObj:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const1
	.word	0
IO_protObj:
	.word	4
	.word	3
	.word	IO_dispatch
P_protObj:
	.word	5
	.word	4
	.word	P_dispatch
	.word	0
Main_protObj:
	.word	6
	.word	4
	.word	Main_dispatch
	.word	0
C_protObj:
	.word	7
	.word	4
	.word	C_dispatch
	.word	0
heap_start:
	.word	0

	.text
	.globl	Int_init
	.globl	String_init
	.globl	Bool_init
	.globl	Main_init
	.globl	Main.main
void_disp_handler:
	lw	$t1, 4 ($sp)
	jal	_dispatch_abort
void_case_handler:
	lw	$t1, 4 ($sp)
	jal	_case_abort2
# web count: 0
Object_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	j	__Object_init_epilogue
__Object_init_epilogue:
	## restoring registers
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 0
Int_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	j	__Int_init_epilogue
__Int_init_epilogue:
	## restoring registers
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 0
Bool_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	j	__Bool_init_epilogue
__Bool_init_epilogue:
	## restoring registers
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 0
String_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	j	__String_init_epilogue
__String_init_epilogue:
	## restoring registers
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 0
IO_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	j	__IO_init_epilogue
__IO_init_epilogue:
	## restoring registers
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 3
# VR0-[[0, 9)]-{0}-[7, 8] --> $s0
# VR1-[[2, 4)]-{1}-[3] --> $s1
# VR1-[[5, 8)]-{2}-[7] --> $s1
P_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	sw	$s1, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	Object_init
	la	$s1, IO_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	jal	IO_init
	sw	$s1, 12 ($s0)
	move	$a0, $s0
	j	__P_init_epilogue
__P_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s1, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 3
# VR0-[[0, 9)]-{0}-[7, 8] --> $s0
# VR1-[[2, 4)]-{1}-[3] --> $s1
# VR1-[[5, 8)]-{2}-[7] --> $s1
Main_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	sw	$s1, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	Object_init
	la	$s1, C_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	jal	C_init
	sw	$s1, 12 ($s0)
	move	$a0, $s0
	j	__Main_init_epilogue
__Main_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s1, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
C_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	P_init
	move	$a0, $s0
	j	__C_init_epilogue
__C_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 79
# VR0-[[0, 7), [7, 12), [12, 21), [21, 26), [26, 41), [41, 46), [46, 55), [55, 57), [57, 62), [62, 71), [71, 73), [73, 78), [78, 86), [86, 89), [89, 94), [94, 109), [109, 114), [114, 123), [123, 128), [128, 136)]-{0}-[19, 87, 71, 55, 5, 39, 107, 121, 135] --> $s0
# VR1-[[1, 7), [7, 12), [12, 21), [21, 26), [26, 27)]-{1}-[26] --> $s1
# VR2-[[2, 7), [7, 12), [12, 21), [21, 26), [26, 41), [41, 46), [46, 54)]-{2}-[53] --> $s2
# VR3-[[3, 7), [7, 12), [12, 21), [21, 26), [26, 41), [41, 46), [46, 55), [55, 57), [57, 62), [62, 71), [71, 73), [73, 78), [78, 86), [86, 89), [89, 94), [94, 109), [109, 114), [114, 123), [123, 128), [128, 129)]-{3}-[128] --> $s3
# VR4-[[4, 5)]-{4}-[] --> $s4
# VR4-[[86, 89), [89, 94), [94, 95)]-{46}-[94] --> $s1
# VR4-[[149, 150)]-{78}-[] --> $s0
# VR4-[[150, 152)]-{79}-[151] --> $s0
# VR5-[[5, 7), [7, 12), [12, 16)]-{5}-[6, 13, 15] --> $s4
# VR5-[[18, 19)]-{11}-[] --> $s4
# VR5-[[19, 21), [21, 26), [26, 36)]-{12}-[35, 33, 20] --> $s4
# VR5-[[38, 39)]-{21}-[] --> $s1
# VR5-[[39, 41), [41, 46), [46, 50)]-{22}-[49, 40, 47] --> $s1
# VR5-[[52, 53)]-{28}-[] --> $s1
# VR5-[[53, 55)]-{29}-[54] --> $s1
# VR5-[[55, 57), [57, 62), [62, 66)]-{30}-[65, 56, 63] --> $s1
# VR5-[[68, 69)]-{36}-[] --> $s1
# VR5-[[69, 71), [85, 86), [86, 87)]-{37, 45}-[86] --> $s2
# VR5-[[71, 73), [73, 78), [78, 82)]-{38}-[81, 79, 72] --> $s1
# VR5-[[84, 85)]-{44}-[] --> $s1
# VR5-[[87, 89), [89, 94), [94, 104)]-{47}-[103, 101, 88] --> $s2
# VR5-[[106, 107)]-{56}-[] --> $s1
# VR5-[[107, 109), [109, 114), [114, 118)]-{57}-[117, 115, 108] --> $s1
# VR5-[[120, 121)]-{63}-[] --> $s1
# VR5-[[121, 123), [123, 128), [128, 132)]-{64}-[129, 131, 122] --> $s1
# VR5-[[134, 135)]-{70}-[] --> $s1
# VR5-[[135, 137), [137, 142), [142, 146)]-{71}-[136, 143, 145] --> $s1
# VR5-[[148, 150)]-{77}-[149] --> $s1
# VR6-[[7, 9)]-{6}-[8] --> $s5
# VR6-[[9, 11)]-{7}-[10] --> $s5
# VR6-[[12, 15)]-{8}-[14] --> $s5
# VR6-[[15, 17)]-{9}-[16] --> $s5
# VR6-[[16, 18)]-{10}-[17] --> $s4
# VR6-[[21, 23)]-{13}-[22] --> $s5
# VR6-[[23, 25)]-{14}-[24] --> $s5
# VR6-[[26, 32)]-{15}-[31] --> $s5
# VR6-[[32, 35)]-{18}-[34] --> $s1
# VR6-[[35, 37)]-{19}-[36] --> $s1
# VR6-[[36, 38)]-{20}-[37] --> $s4
# VR6-[[41, 43)]-{23}-[42] --> $s4
# VR6-[[43, 45)]-{24}-[44] --> $s4
# VR6-[[46, 49)]-{25}-[48] --> $s4
# VR6-[[49, 51)]-{26}-[50] --> $s4
# VR6-[[50, 52)]-{27}-[51] --> $s1
# VR6-[[57, 59)]-{31}-[58] --> $s2
# VR6-[[59, 61)]-{32}-[60] --> $s2
# VR6-[[62, 65)]-{33}-[64] --> $s2
# VR6-[[65, 67)]-{34}-[66] --> $s2
# VR6-[[66, 68)]-{35}-[67] --> $s1
# VR6-[[73, 75)]-{39}-[74] --> $s2
# VR6-[[75, 77)]-{40}-[76] --> $s2
# VR6-[[78, 81)]-{41}-[80] --> $s2
# VR6-[[81, 83)]-{42}-[82] --> $s2
# VR6-[[82, 84)]-{43}-[83] --> $s1
# VR6-[[89, 91)]-{48}-[90] --> $s4
# VR6-[[91, 93)]-{49}-[92] --> $s4
# VR6-[[94, 100)]-{50}-[99] --> $s4
# VR6-[[100, 103)]-{53}-[102] --> $s1
# VR6-[[103, 105)]-{54}-[104] --> $s1
# VR6-[[104, 106)]-{55}-[105] --> $s2
# VR6-[[109, 111)]-{58}-[110] --> $s2
# VR6-[[111, 113)]-{59}-[112] --> $s2
# VR6-[[114, 117)]-{60}-[116] --> $s2
# VR6-[[117, 119)]-{61}-[118] --> $s2
# VR6-[[118, 120)]-{62}-[119] --> $s1
# VR6-[[123, 125)]-{65}-[124] --> $s2
# VR6-[[125, 127)]-{66}-[126] --> $s2
# VR6-[[128, 131)]-{67}-[130] --> $s2
# VR6-[[131, 133)]-{68}-[132] --> $s2
# VR6-[[132, 134)]-{69}-[133] --> $s1
# VR6-[[137, 139)]-{72}-[138] --> $s0
# VR6-[[139, 141)]-{73}-[140] --> $s0
# VR6-[[142, 145)]-{74}-[144] --> $s0
# VR6-[[145, 147)]-{75}-[146] --> $s0
# VR6-[[146, 148)]-{76}-[147] --> $s1
# VR7-[[27, 29)]-{16}-[28] --> $s1
# VR7-[[30, 33)]-{17}-[32, 31] --> $s6
# VR7-[[95, 97)]-{51}-[96] --> $s1
# VR7-[[98, 101)]-{52}-[100, 99] --> $s5
P.method1:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	sw	$s1, 0 ($sp)
	addi $sp, $sp, -4
	sw	$s2, 0 ($sp)
	addi $sp, $sp, -4
	sw	$s3, 0 ($sp)
	addi $sp, $sp, -4
	sw	$s4, 0 ($sp)
	addi $sp, $sp, -4
	sw	$s5, 0 ($sp)
	addi $sp, $sp, -4
	sw	$s6, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	lw	$s1, 16 ($fp)
	lw	$s2, 12 ($fp)
	lw	$s3, 8 ($fp)
	li	$s4, 0
	lw	$s4, 12 ($s0)
	bnez	$s4, dispatch_notvoid0
	la	$s5, str_const0
	move	$a0, $s5
	li	$s5, 10
	sw	$s5, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid0:
	la	$s5, str_const1
	move	$a0, $s4
	sw	$s5, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s5, 8 ($s4)
	lw	$s4, 12 ($s5)
	jalr	$s4
	move	$s4, $a0
	lw	$s4, 12 ($s0)
	bnez	$s4, dispatch_notvoid1
	la	$s5, str_const0
	move	$a0, $s5
	li	$s5, 11
	sw	$s5, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid1:
	move	$s5, $s1
	la	$s1, Int_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s6, $a0
	sw	$s5, 12 ($s6)
	move	$s1, $s6
	move	$a0, $s4
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s1, 8 ($s4)
	lw	$s4, 16 ($s1)
	jalr	$s4
	move	$s1, $a0
	lw	$s1, 12 ($s0)
	bnez	$s1, dispatch_notvoid2
	la	$s4, str_const0
	move	$a0, $s4
	li	$s4, 12
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid2:
	la	$s4, str_const2
	move	$a0, $s1
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s4, 8 ($s1)
	lw	$s1, 12 ($s4)
	jalr	$s1
	move	$s1, $a0
	move	$s1, $s2
	beqz	$s1, ite_false0
	lw	$s1, 12 ($s0)
	bnez	$s1, dispatch_notvoid3
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 16
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid3:
	la	$s2, str_const3
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	li	$s2, 1
	b	ite_end0
ite_false0:
	lw	$s1, 12 ($s0)
	bnez	$s1, dispatch_notvoid4
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 17
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid4:
	la	$s2, str_const4
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	li	$s2, 0
ite_end0:
	move	$s1, $s2
	lw	$s2, 12 ($s0)
	bnez	$s2, dispatch_notvoid5
	la	$s4, str_const0
	move	$a0, $s4
	li	$s4, 20
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid5:
	move	$s4, $s1
	la	$s1, Int_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s5, $a0
	sw	$s4, 12 ($s5)
	move	$s1, $s5
	move	$a0, $s2
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s1, 8 ($s2)
	lw	$s2, 16 ($s1)
	jalr	$s2
	move	$s1, $a0
	lw	$s1, 12 ($s0)
	bnez	$s1, dispatch_notvoid6
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 21
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid6:
	la	$s2, str_const2
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	lw	$s1, 12 ($s0)
	bnez	$s1, dispatch_notvoid7
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 22
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid7:
	move	$s2, $s3
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	lw	$s1, 12 ($s0)
	bnez	$s1, dispatch_notvoid8
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 23
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid8:
	la	$s0, str_const2
	move	$a0, $s1
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s1)
	lw	$s1, 12 ($s0)
	jalr	$s1
	move	$s1, $a0
	move	$s0, $s1
	li	$s0, 20
	move	$a0, $s0
	j	__P.method1_epilogue
__P.method1_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s6, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s5, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s4, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s3, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s2, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s1, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 20
	jr	$ra

# web count: 19
# VR0-[[0, 3), [3, 8), [8, 20)]-{0}-[1, 19] --> $s0
# VR1-[[1, 3), [3, 8), [8, 16)]-{1}-[2, 11, 15] --> $s1
# VR1-[[18, 19)]-{9}-[] --> $s1
# VR1-[[19, 21), [21, 26), [26, 34)]-{10}-[33, 20, 29] --> $s1
# VR1-[[36, 38)]-{18}-[37] --> $s0
# VR2-[[3, 5)]-{2}-[4] --> $s2
# VR2-[[5, 7)]-{3}-[6] --> $s2
# VR2-[[8, 13)]-{4}-[12] --> $s2
# VR2-[[15, 17)]-{7}-[16] --> $s2
# VR2-[[16, 18)]-{8}-[17] --> $s1
# VR2-[[21, 23)]-{11}-[22] --> $s0
# VR2-[[23, 25)]-{12}-[24] --> $s0
# VR2-[[26, 31)]-{13}-[30] --> $s0
# VR2-[[33, 35)]-{16}-[34] --> $s0
# VR2-[[34, 36)]-{17}-[35] --> $s1
# VR3-[[9, 14)]-{5}-[13] --> $s3
# VR3-[[27, 32)]-{14}-[31] --> $s2
# VR4-[[10, 15)]-{6}-[14] --> $s4
# VR4-[[28, 33)]-{15}-[32] --> $s3
Main.main:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	sw	$s1, 0 ($sp)
	addi $sp, $sp, -4
	sw	$s2, 0 ($sp)
	addi $sp, $sp, -4
	sw	$s3, 0 ($sp)
	addi $sp, $sp, -4
	sw	$s4, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	lw	$s1, 12 ($s0)
	bnez	$s1, dispatch_notvoid9
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 42
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid9:
	li	$s2, 10
	li	$s3, 1
	la	$s4, str_const6
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	lw	$s1, 12 ($s0)
	bnez	$s1, dispatch_notvoid10
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 43
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid10:
	li	$s0, 20
	li	$s2, 0
	la	$s3, str_const7
	move	$a0, $s1
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s1)
	lw	$s1, 12 ($s0)
	jalr	$s1
	move	$s0, $a0
	move	$a0, $s0
	j	__Main.main_epilogue
__Main.main_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s4, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s3, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s2, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s1, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 2
# VR0-[[0, 1)]-{0}-[] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s0
C.method2:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	la	$s0, str_const5
	move	$a0, $s0
	j	__C.method2_epilogue
__C.method2_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

