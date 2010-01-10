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
str_const16:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const1
	.byte	0, 0, 0, 0
str_const15:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const2
	.ascii	"Main"
	.byte	0, 0, 0, 0
str_const14:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const3
	.ascii	"C"
	.byte	0, 0, 0
str_const13:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const3
	.ascii	"P"
	.byte	0, 0, 0
str_const12:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const4
	.ascii	"IO"
	.byte	0, 0
str_const11:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const5
	.ascii	"String"
	.byte	0, 0
str_const10:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const2
	.ascii	"Bool"
	.byte	0, 0, 0, 0
str_const9:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const6
	.ascii	"Int"
	.byte	0
str_const8:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const5
	.ascii	"Object"
	.byte	0, 0
str_const7:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const0
	.ascii	"_prim_slot"
	.byte	0, 0
str_const6:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const7
	.ascii	"SELF_TYPE"
	.byte	0, 0, 0
str_const5:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const7
	.ascii	"_no_class"
	.byte	0, 0, 0
str_const4:
	.word	3
	.word	8
	.word	String_dispatch
	.word	int_const8
	.ascii	"<basic class>"
	.byte	0, 0, 0
str_const3:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const9
	.ascii	"C.method()\n"
	.byte	0
str_const2:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const3
	.ascii	"\n"
	.byte	0, 0, 0
str_const1:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const9
	.ascii	"P.method()\n"
	.byte	0
str_const0:
	.word	3
	.word	12
	.word	String_dispatch
	.word	int_const10
	.ascii	"_tests/simple/inheritance.cl"
	.byte	0, 0, 0, 0
int_const10:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	28
int_const9:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	11
int_const8:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	13
int_const7:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	9
int_const6:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	3
int_const5:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	6
int_const4:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	2
int_const3:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	1
int_const2:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	4
int_const1:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	0
int_const0:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	10
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
	.word	str_const8
	.word	str_const9
	.word	str_const10
	.word	str_const11
	.word	str_const12
	.word	str_const13
	.word	str_const15
	.word	str_const14
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
	.word	P.method
Main_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	Main.main
C_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	C.method
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
	.word	5
	.word	P_dispatch
	.word	0
	.word	0
Main_protObj:
	.word	6
	.word	5
	.word	Main_dispatch
	.word	0
	.word	0
C_protObj:
	.word	7
	.word	5
	.word	C_dispatch
	.word	0
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

# web count: 4
# VR0-[[0, 11)]-{0}-[3, 9, 10] --> $s0
# VR1-[[2, 4)]-{1}-[3] --> $s1
# VR1-[[4, 6)]-{2}-[5] --> $s1
# VR1-[[7, 10)]-{3}-[9] --> $s1
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
	li	$s1, 10
	sw	$s1, 12 ($s0)
	la	$s1, IO_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	jal	IO_init
	sw	$s1, 16 ($s0)
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

# web count: 5
# VR0-[[0, 15)]-{0}-[7, 13, 14] --> $s0
# VR1-[[2, 4)]-{1}-[3] --> $s1
# VR1-[[5, 8)]-{2}-[7] --> $s1
# VR1-[[8, 10)]-{3}-[9] --> $s1
# VR1-[[11, 14)]-{4}-[13] --> $s1
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
	la	$s1, P_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	jal	P_init
	sw	$s1, 16 ($s0)
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

# web count: 26
# VR0-[[0, 3), [3, 8), [8, 17), [17, 22), [22, 37), [37, 42), [42, 50)]-{0}-[1, 35, 49, 22, 15] --> $s0
# VR1-[[1, 3), [3, 8), [8, 12)]-{1}-[2, 9, 11] --> $s1
# VR1-[[14, 15)]-{7}-[] --> $s1
# VR1-[[15, 17), [17, 22), [22, 32)]-{8}-[16, 29, 31] --> $s1
# VR1-[[34, 35)]-{17}-[] --> $s1
# VR1-[[35, 37), [37, 42), [42, 46)]-{18}-[36, 43, 45] --> $s1
# VR1-[[48, 49)]-{24}-[] --> $s1
# VR1-[[49, 51)]-{25}-[50] --> $s1
# VR2-[[3, 5)]-{2}-[4] --> $s2
# VR2-[[5, 7)]-{3}-[6] --> $s2
# VR2-[[8, 11)]-{4}-[10] --> $s2
# VR2-[[11, 13)]-{5}-[12] --> $s2
# VR2-[[12, 14)]-{6}-[13] --> $s1
# VR2-[[17, 19)]-{9}-[18] --> $s2
# VR2-[[19, 21)]-{10}-[20] --> $s2
# VR2-[[22, 28)]-{11}-[27] --> $s2
# VR2-[[28, 31)]-{14}-[30] --> $s2
# VR2-[[31, 33)]-{15}-[32] --> $s2
# VR2-[[32, 34)]-{16}-[33] --> $s1
# VR2-[[37, 39)]-{19}-[38] --> $s2
# VR2-[[39, 41)]-{20}-[40] --> $s2
# VR2-[[42, 45)]-{21}-[44] --> $s2
# VR2-[[45, 47)]-{22}-[46] --> $s2
# VR2-[[46, 48)]-{23}-[47] --> $s1
# VR3-[[23, 25)]-{12}-[24] --> $s3
# VR3-[[26, 29)]-{13}-[27, 28] --> $s3
P.method:
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
	move	$s0, $a0
	lw	$s1, 16 ($s0)
	bnez	$s1, dispatch_notvoid0
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 9
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid0:
	la	$s2, str_const1
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	lw	$s1, 16 ($s0)
	bnez	$s1, dispatch_notvoid1
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 10
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid1:
	lw	$s2, 12 ($s0)
	la	$s3, Int_protObj
	move	$a0, $s3
	jal	Object.copy
	move	$s3, $a0
	sw	$s2, 12 ($s3)
	move	$s2, $s3
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 16 ($s2)
	jalr	$s1
	move	$s1, $a0
	lw	$s1, 16 ($s0)
	bnez	$s1, dispatch_notvoid2
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 11
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid2:
	la	$s2, str_const2
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	move	$s1, $s0
	move	$a0, $s1
	j	__P.method_epilogue
__P.method_epilogue:
	## restoring registers
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

# web count: 14
# VR0-[[0, 3), [3, 8), [8, 14)]-{0}-[1, 13] --> $s0
# VR1-[[1, 3), [3, 8), [8, 10)]-{1}-[2, 8, 9] --> $s1
# VR1-[[12, 13)]-{6}-[] --> $s1
# VR1-[[13, 15), [15, 20), [20, 22)]-{7}-[21, 20, 14] --> $s1
# VR1-[[24, 25)]-{12}-[] --> $s0
# VR1-[[25, 27)]-{13}-[26] --> $s0
# VR2-[[3, 5)]-{2}-[4] --> $s2
# VR2-[[5, 7)]-{3}-[6] --> $s2
# VR2-[[9, 11)]-{4}-[10] --> $s2
# VR2-[[10, 12)]-{5}-[11] --> $s1
# VR2-[[15, 17)]-{8}-[16] --> $s0
# VR2-[[17, 19)]-{9}-[18] --> $s0
# VR2-[[21, 23)]-{10}-[22] --> $s0
# VR2-[[22, 24)]-{11}-[23] --> $s1
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
	move	$s0, $a0
	lw	$s1, 16 ($s0)
	bnez	$s1, dispatch_notvoid3
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 38
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid3:
	move	$a0, $s1
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	lw	$s1, 12 ($s0)
	bnez	$s1, dispatch_notvoid4
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 39
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid4:
	move	$a0, $s1
	lw	$s0, 8 ($s1)
	lw	$s1, 12 ($s0)
	jalr	$s1
	move	$s0, $a0
	li	$s0, 0
	move	$a0, $s0
	j	__Main.main_epilogue
__Main.main_epilogue:
	## restoring registers
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

# web count: 32
# VR0-[[0, 3), [3, 8), [8, 17), [17, 22), [22, 37), [37, 42), [42, 51), [51, 56), [56, 62)]-{0}-[1, 35, 49, 22, 61, 15] --> $s0
# VR1-[[1, 3), [3, 8), [8, 12)]-{1}-[2, 9, 11] --> $s1
# VR1-[[14, 15)]-{7}-[] --> $s1
# VR1-[[15, 17), [17, 22), [22, 32)]-{8}-[16, 29, 31] --> $s1
# VR1-[[34, 35)]-{17}-[] --> $s1
# VR1-[[35, 37), [37, 42), [42, 46)]-{18}-[36, 43, 45] --> $s1
# VR1-[[48, 49)]-{24}-[] --> $s1
# VR1-[[49, 51), [51, 56), [56, 57)]-{25}-[50, 56] --> $s1
# VR1-[[60, 61)]-{30}-[] --> $s1
# VR1-[[61, 63)]-{31}-[62] --> $s1
# VR2-[[3, 5)]-{2}-[4] --> $s2
# VR2-[[5, 7)]-{3}-[6] --> $s2
# VR2-[[8, 11)]-{4}-[10] --> $s2
# VR2-[[11, 13)]-{5}-[12] --> $s2
# VR2-[[12, 14)]-{6}-[13] --> $s1
# VR2-[[17, 19)]-{9}-[18] --> $s2
# VR2-[[19, 21)]-{10}-[20] --> $s2
# VR2-[[22, 28)]-{11}-[27] --> $s2
# VR2-[[28, 31)]-{14}-[30] --> $s2
# VR2-[[31, 33)]-{15}-[32] --> $s2
# VR2-[[32, 34)]-{16}-[33] --> $s1
# VR2-[[37, 39)]-{19}-[38] --> $s2
# VR2-[[39, 41)]-{20}-[40] --> $s2
# VR2-[[42, 45)]-{21}-[44] --> $s2
# VR2-[[45, 47)]-{22}-[46] --> $s2
# VR2-[[46, 48)]-{23}-[47] --> $s1
# VR2-[[51, 53)]-{26}-[52] --> $s2
# VR2-[[53, 55)]-{27}-[54] --> $s2
# VR2-[[57, 59)]-{28}-[58] --> $s1
# VR2-[[58, 60)]-{29}-[59] --> $s2
# VR3-[[23, 25)]-{12}-[24] --> $s3
# VR3-[[26, 29)]-{13}-[27, 28] --> $s3
C.method:
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
	move	$s0, $a0
	lw	$s1, 16 ($s0)
	bnez	$s1, dispatch_notvoid5
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 21
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid5:
	la	$s2, str_const3
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	lw	$s1, 16 ($s0)
	bnez	$s1, dispatch_notvoid6
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 22
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid6:
	lw	$s2, 12 ($s0)
	la	$s3, Int_protObj
	move	$a0, $s3
	jal	Object.copy
	move	$s3, $a0
	sw	$s2, 12 ($s3)
	move	$s2, $s3
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 16 ($s2)
	jalr	$s1
	move	$s1, $a0
	lw	$s1, 16 ($s0)
	bnez	$s1, dispatch_notvoid7
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 23
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid7:
	la	$s2, str_const2
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid8
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 24
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid8:
	move	$a0, $s1
	la	$s1, P_dispatch
	lw	$s2, 12 ($s1)
	jalr	$s2
	move	$s1, $a0
	move	$s1, $s0
	move	$a0, $s1
	j	__C.method_epilogue
__C.method_epilogue:
	## restoring registers
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

