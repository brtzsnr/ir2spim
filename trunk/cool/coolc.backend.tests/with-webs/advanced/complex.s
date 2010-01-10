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
	.word	int_const2
	.byte	0, 0, 0, 0
str_const15:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const3
	.ascii	"Complex"
	.byte	0
str_const14:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const4
	.ascii	"Main"
	.byte	0, 0, 0, 0
str_const13:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const0
	.ascii	"IO"
	.byte	0, 0
str_const12:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const5
	.ascii	"String"
	.byte	0, 0
str_const11:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const4
	.ascii	"Bool"
	.byte	0, 0, 0, 0
str_const10:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const1
	.ascii	"Int"
	.byte	0
str_const9:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const5
	.ascii	"Object"
	.byte	0, 0
str_const8:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const6
	.ascii	"_prim_slot"
	.byte	0, 0
str_const7:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const7
	.ascii	"SELF_TYPE"
	.byte	0, 0, 0
str_const6:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const7
	.ascii	"_no_class"
	.byte	0, 0, 0
str_const5:
	.word	3
	.word	8
	.word	String_dispatch
	.word	int_const8
	.ascii	"<basic class>"
	.byte	0, 0, 0
str_const4:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const9
	.ascii	"I"
	.byte	0, 0, 0
str_const3:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const9
	.ascii	"+"
	.byte	0, 0, 0
str_const2:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const1
	.ascii	"=(\n"
	.byte	0
str_const1:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const1
	.ascii	"=)\n"
	.byte	0
str_const0:
	.word	3
	.word	11
	.word	String_dispatch
	.word	int_const10
	.ascii	"_tests/advanced/complex.cl"
	.byte	0, 0
int_const10:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	26
int_const9:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	1
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
	.word	10
int_const5:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	6
int_const4:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	4
int_const3:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	7
int_const2:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	0
int_const1:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	3
int_const0:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	2
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
	.word	str_const9
	.word	str_const10
	.word	str_const11
	.word	str_const12
	.word	str_const13
	.word	str_const14
	.word	str_const15
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
	.word	Main_protObj
	.word	Main_init
	.word	Complex_protObj
	.word	Complex_init
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
Main_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Main.main
Complex_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Complex.init
	.word	Complex.print
	.word	Complex.reflect_0
	.word	Complex.reflect_X
	.word	Complex.reflect_Y
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
	.word	int_const2
	.word	0
IO_protObj:
	.word	4
	.word	3
	.word	IO_dispatch
Main_protObj:
	.word	5
	.word	3
	.word	Main_dispatch
Complex_protObj:
	.word	6
	.word	5
	.word	Complex_dispatch
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

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
Main_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	IO_init
	move	$a0, $s0
	j	__Main_init_epilogue
__Main_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 3
# VR0-[[0, 7)]-{0}-[3, 5, 6] --> $s0
# VR1-[[2, 4)]-{1}-[3] --> $s1
# VR1-[[4, 6)]-{2}-[5] --> $s1
Complex_init:
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
	jal	IO_init
	li	$s1, 0
	sw	$s1, 12 ($s0)
	li	$s1, 0
	sw	$s1, 16 ($s0)
	move	$a0, $s0
	j	__Complex_init_epilogue
__Complex_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s1, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 42
# VR0-[[0, 7), [7, 12), [12, 23), [23, 28), [28, 34), [34, 39), [39, 46), [46, 51), [51, 58), [58, 59), [73, 74)]-{0}-[58, 73] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s1
# VR1-[[4, 7), [7, 12), [12, 18)]-{2}-[17, 6, 14] --> $s1
# VR1-[[20, 23), [23, 28), [28, 34), [34, 39), [39, 45)]-{9}-[21, 44] --> $s1
# VR1-[[87, 89)]-{42}-[88] --> $s0
# VR2-[[7, 9)]-{3}-[8] --> $s2
# VR2-[[9, 11)]-{4}-[10] --> $s2
# VR2-[[12, 16)]-{5}-[15] --> $s2
# VR2-[[17, 19)]-{7}-[18] --> $s2
# VR2-[[18, 20)]-{8}-[19] --> $s1
# VR2-[[21, 23), [23, 28), [28, 30)]-{10}-[22, 29, 28] --> $s2
# VR2-[[32, 34), [34, 39), [39, 41)]-{15}-[33, 39, 40] --> $s2
# VR2-[[43, 46), [46, 51), [51, 57)]-{20}-[56] --> $s2
# VR2-[[56, 58)]-{27}-[57] --> $s1
# VR2-[[58, 60), [60, 65), [65, 69)]-{28}-[68, 66, 59] --> $s1
# VR2-[[71, 73), [86, 87), [87, 88)]-{34, 41}-[87] --> $s1
# VR2-[[73, 75), [75, 80), [80, 84)]-{35}-[81, 83, 74] --> $s1
# VR3-[[13, 17)]-{6}-[16] --> $s3
# VR3-[[23, 25)]-{11}-[24] --> $s3
# VR3-[[25, 27)]-{12}-[26] --> $s3
# VR3-[[29, 31)]-{13}-[30] --> $s3
# VR3-[[30, 32)]-{14}-[31] --> $s2
# VR3-[[34, 36)]-{16}-[35] --> $s3
# VR3-[[36, 38)]-{17}-[37] --> $s3
# VR3-[[40, 42)]-{18}-[41] --> $s3
# VR3-[[41, 43)]-{19}-[42] --> $s2
# VR3-[[44, 46), [46, 51), [51, 53)]-{21}-[51, 52, 45] --> $s3
# VR3-[[55, 57)]-{26}-[56] --> $s3
# VR3-[[60, 62)]-{29}-[61] --> $s0
# VR3-[[62, 64)]-{30}-[63] --> $s0
# VR3-[[65, 68)]-{31}-[67] --> $s0
# VR3-[[68, 70)]-{32}-[69] --> $s0
# VR3-[[69, 71)]-{33}-[70] --> $s1
# VR3-[[75, 77)]-{36}-[76] --> $s0
# VR3-[[77, 79)]-{37}-[78] --> $s0
# VR3-[[80, 83)]-{38}-[82] --> $s0
# VR3-[[83, 85)]-{39}-[84] --> $s0
# VR3-[[84, 86)]-{40}-[85] --> $s1
# VR4-[[46, 48)]-{22}-[47] --> $s1
# VR4-[[48, 50)]-{23}-[49] --> $s1
# VR4-[[52, 54)]-{24}-[53] --> $s1
# VR4-[[53, 55)]-{25}-[54] --> $s3
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
	move	$s0, $a0
	la	$s1, Complex_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	jal	Complex_init
	bnez	$s1, dispatch_notvoid0
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 3
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid0:
	li	$s2, 2
	li	$s3, 3
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 28 ($s2)
	jalr	$s1
	move	$s1, $a0
	move	$s2, $s1
	bnez	$s2, dispatch_notvoid1
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 4
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid1:
	move	$a0, $s2
	lw	$s3, 8 ($s2)
	lw	$s2, 40 ($s3)
	jalr	$s2
	move	$s2, $a0
	bnez	$s2, dispatch_notvoid2
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 4
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid2:
	move	$a0, $s2
	lw	$s3, 8 ($s2)
	lw	$s2, 44 ($s3)
	jalr	$s2
	move	$s2, $a0
	move	$s3, $s1
	bnez	$s3, dispatch_notvoid3
	la	$s1, str_const0
	move	$a0, $s1
	li	$s1, 4
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid3:
	move	$a0, $s3
	lw	$s1, 8 ($s3)
	lw	$s3, 36 ($s1)
	jalr	$s3
	move	$s3, $a0
	seq	$s1, $s2, $s3
	beqz	$s1, ite_false0
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid4
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 5
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid4:
	la	$s0, str_const1
	move	$a0, $s1
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s1)
	lw	$s1, 12 ($s0)
	jalr	$s1
	move	$s1, $a0
	b	ite_end0
ite_false0:
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid5
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 6
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid5:
	la	$s0, str_const2
	move	$a0, $s1
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s1)
	lw	$s1, 12 ($s0)
	jalr	$s1
	move	$s1, $a0
ite_end0:
	move	$s0, $s1
	move	$a0, $s0
	j	__Main.main_epilogue
__Main.main_epilogue:
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

# web count: 10
# VR0-[[0, 10)]-{0}-[3, 6, 9] --> $s0
# VR1-[[1, 5)]-{1}-[4] --> $s1
# VR2-[[2, 8)]-{2}-[7] --> $s2
# VR3-[[3, 6)]-{3}-[5] --> $s3
# VR3-[[5, 6)]-{5}-[] --> $s1
# VR3-[[6, 9)]-{6}-[8] --> $s1
# VR3-[[8, 9)]-{8}-[] --> $s2
# VR3-[[9, 11)]-{9}-[10] --> $s1
# VR4-[[4, 6)]-{4}-[5] --> $s4
# VR4-[[7, 9)]-{7}-[8] --> $s3
Complex.init:
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
	lw	$s1, 12 ($fp)
	lw	$s2, 8 ($fp)
	lw	$s3, 12 ($s0)
	move	$s4, $s1
	seq	$s1, $s3, $s4
	lw	$s1, 16 ($s0)
	move	$s3, $s2
	seq	$s2, $s1, $s3
	move	$s1, $s0
	move	$a0, $s1
	j	__Complex.init_epilogue
__Complex.init_epilogue:
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
	addi	$sp, $sp, 16
	jr	$ra

# web count: 44
# VR0-[[0, 5), [5, 7), [7, 12), [12, 13), [26, 28), [28, 33), [33, 47), [47, 52), [52, 60), [60, 65), [65, 66)]-{0}-[1, 33, 5, 65, 26, 12] --> $s0
# VR1-[[1, 4)]-{1}-[3] --> $s1
# VR1-[[3, 5)]-{3}-[4] --> $s2
# VR1-[[5, 7), [7, 12), [12, 22)]-{4}-[19, 21, 6] --> $s1
# VR1-[[24, 26), [90, 91), [91, 92)]-{13, 44}-[91] --> $s0
# VR1-[[26, 28), [28, 33), [33, 43)]-{14}-[42, 27, 40] --> $s1
# VR1-[[45, 47), [47, 52), [52, 56)]-{23}-[55, 53, 46] --> $s1
# VR1-[[58, 60), [60, 65), [65, 75)]-{29}-[59, 72, 74] --> $s1
# VR1-[[77, 79), [79, 84), [84, 88)]-{38}-[85, 87, 78] --> $s0
# VR2-[[2, 4)]-{2}-[3] --> $s3
# VR2-[[7, 9)]-{5}-[8] --> $s2
# VR2-[[9, 11)]-{6}-[10] --> $s2
# VR2-[[12, 18)]-{7}-[17] --> $s2
# VR2-[[18, 21)]-{10}-[20] --> $s0
# VR2-[[21, 23)]-{11}-[22] --> $s0
# VR2-[[22, 24)]-{12}-[23] --> $s1
# VR2-[[28, 30)]-{15}-[29] --> $s2
# VR2-[[30, 32)]-{16}-[31] --> $s2
# VR2-[[33, 39)]-{17}-[38] --> $s2
# VR2-[[39, 42)]-{20}-[41] --> $s2
# VR2-[[42, 44)]-{21}-[43] --> $s2
# VR2-[[43, 45)]-{22}-[44] --> $s1
# VR2-[[47, 49)]-{24}-[48] --> $s2
# VR2-[[49, 51)]-{25}-[50] --> $s2
# VR2-[[52, 55)]-{26}-[54] --> $s2
# VR2-[[55, 57)]-{27}-[56] --> $s2
# VR2-[[56, 58)]-{28}-[57] --> $s1
# VR2-[[60, 62)]-{30}-[61] --> $s2
# VR2-[[62, 64)]-{31}-[63] --> $s2
# VR2-[[65, 71)]-{32}-[70] --> $s2
# VR2-[[71, 74)]-{35}-[73] --> $s0
# VR2-[[74, 76)]-{36}-[75] --> $s0
# VR2-[[75, 77)]-{37}-[76] --> $s1
# VR2-[[79, 81)]-{39}-[80] --> $s1
# VR2-[[81, 83)]-{40}-[82] --> $s1
# VR2-[[84, 87)]-{41}-[86] --> $s1
# VR2-[[87, 89)]-{42}-[88] --> $s1
# VR2-[[88, 90)]-{43}-[89] --> $s0
# VR3-[[13, 15)]-{8}-[14] --> $s0
# VR3-[[16, 19)]-{9}-[17, 18] --> $s3
# VR3-[[34, 36)]-{18}-[35] --> $s3
# VR3-[[37, 40)]-{19}-[38, 39] --> $s3
# VR3-[[66, 68)]-{33}-[67] --> $s0
# VR3-[[69, 72)]-{34}-[70, 71] --> $s3
Complex.print:
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
	li	$s3, 0
	seq	$s2, $s1, $s3
	beqz	$s2, ite_false1
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid6
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 26
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid6:
	lw	$s2, 12 ($s0)
	la	$s0, Int_protObj
	move	$a0, $s0
	jal	Object.copy
	move	$s3, $a0
	sw	$s2, 12 ($s3)
	move	$s0, $s3
	move	$a0, $s1
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s1)
	lw	$s1, 16 ($s0)
	jalr	$s1
	move	$s0, $a0
	b	ite_end1
ite_false1:
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid7
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 27
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid7:
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
	bnez	$s1, dispatch_notvoid8
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 27
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid8:
	la	$s2, str_const3
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	bnez	$s1, dispatch_notvoid9
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 27
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid9:
	lw	$s2, 16 ($s0)
	la	$s0, Int_protObj
	move	$a0, $s0
	jal	Object.copy
	move	$s3, $a0
	sw	$s2, 12 ($s3)
	move	$s0, $s3
	move	$a0, $s1
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s1)
	lw	$s1, 16 ($s0)
	jalr	$s1
	move	$s0, $a0
	bnez	$s0, dispatch_notvoid10
	la	$s1, str_const0
	move	$a0, $s1
	li	$s1, 27
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid10:
	la	$s1, str_const4
	move	$a0, $s0
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s1, 8 ($s0)
	lw	$s0, 12 ($s1)
	jalr	$s0
	move	$s0, $a0
ite_end1:
	move	$a0, $s0
	j	__Complex.print_epilogue
__Complex.print_epilogue:
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

# web count: 10
# VR0-[[0, 10)]-{0}-[1, 2, 5, 6, 9] --> $s0
# VR1-[[1, 5)]-{1}-[4] --> $s1
# VR1-[[4, 5)]-{4}-[] --> $s2
# VR1-[[5, 9)]-{5}-[8] --> $s1
# VR1-[[8, 9)]-{8}-[] --> $s2
# VR1-[[9, 11)]-{9}-[10] --> $s1
# VR2-[[2, 4)]-{2}-[3] --> $s2
# VR2-[[3, 5)]-{3}-[4] --> $s3
# VR2-[[6, 8)]-{6}-[7] --> $s2
# VR2-[[7, 9)]-{7}-[8] --> $s3
Complex.reflect_0:
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
	lw	$s1, 12 ($s0)
	lw	$s2, 12 ($s0)
	li	$t0, 0
	sub	$s3, $t0, $s2
	seq	$s2, $s1, $s3
	lw	$s1, 16 ($s0)
	lw	$s2, 16 ($s0)
	li	$t0, 0
	sub	$s3, $t0, $s2
	seq	$s2, $s1, $s3
	move	$s1, $s0
	move	$a0, $s1
	j	__Complex.reflect_0_epilogue
__Complex.reflect_0_epilogue:
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

# web count: 6
# VR0-[[0, 6)]-{0}-[1, 2, 5] --> $s0
# VR1-[[1, 5)]-{1}-[4] --> $s1
# VR1-[[4, 5)]-{4}-[] --> $s2
# VR1-[[5, 7)]-{5}-[6] --> $s1
# VR2-[[2, 4)]-{2}-[3] --> $s2
# VR2-[[3, 5)]-{3}-[4] --> $s3
Complex.reflect_X:
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
	lw	$s2, 16 ($s0)
	li	$t0, 0
	sub	$s3, $t0, $s2
	seq	$s2, $s1, $s3
	move	$s1, $s0
	move	$a0, $s1
	j	__Complex.reflect_X_epilogue
__Complex.reflect_X_epilogue:
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

# web count: 6
# VR0-[[0, 6)]-{0}-[1, 2, 5] --> $s0
# VR1-[[1, 5)]-{1}-[4] --> $s1
# VR1-[[4, 5)]-{4}-[] --> $s2
# VR1-[[5, 7)]-{5}-[6] --> $s1
# VR2-[[2, 4)]-{2}-[3] --> $s2
# VR2-[[3, 5)]-{3}-[4] --> $s3
Complex.reflect_Y:
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
	lw	$s1, 12 ($s0)
	lw	$s2, 12 ($s0)
	li	$t0, 0
	sub	$s3, $t0, $s2
	seq	$s2, $s1, $s3
	move	$s1, $s0
	move	$a0, $s1
	j	__Complex.reflect_Y_epilogue
__Complex.reflect_Y_epilogue:
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

