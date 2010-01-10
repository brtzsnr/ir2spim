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
str_const12:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const6
	.byte	0, 0, 0, 0
str_const11:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const3
	.ascii	"Main"
	.byte	0, 0, 0, 0
str_const10:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const1
	.ascii	"IO"
	.byte	0, 0
str_const9:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const5
	.ascii	"String"
	.byte	0, 0
str_const8:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const3
	.ascii	"Bool"
	.byte	0, 0, 0, 0
str_const7:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const2
	.ascii	"Int"
	.byte	0
str_const6:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const5
	.ascii	"Object"
	.byte	0, 0
str_const5:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0, 0
str_const4:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0, 0, 0
str_const3:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const8
	.ascii	"_no_class"
	.byte	0, 0, 0
str_const2:
	.word	3
	.word	8
	.word	String_dispatch
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0, 0, 0
str_const1:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const0
	.ascii	"\n"
	.byte	0, 0, 0
str_const0:
	.word	3
	.word	13
	.word	String_dispatch
	.word	int_const10
	.ascii	"_tests/simple/init-order-self.cl"
	.byte	0, 0, 0, 0
int_const10:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	32
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
	.word	10
int_const6:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	0
int_const5:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	6
int_const4:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	5
int_const3:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	4
int_const2:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	3
int_const1:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	2
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
	.word	str_const6
	.word	str_const7
	.word	str_const8
	.word	str_const9
	.word	str_const10
	.word	str_const11
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
	.word	Main.recite
	.word	Main.main
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
	.word	int_const6
	.word	0
IO_protObj:
	.word	4
	.word	3
	.word	IO_dispatch
Main_protObj:
	.word	5
	.word	9
	.word	Main_dispatch
	.word	0
	.word	0
	.word	0
	.word	0
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

# web count: 43
# VR0-[[0, 4), [4, 9), [9, 19), [19, 24), [24, 34), [34, 39), [39, 49), [49, 54), [54, 64), [64, 69), [69, 79), [79, 84), [84, 93)]-{0}-[2, 32, 76, 77, 46, 47, 17, 16, 92, 62, 31, 61, 91] --> $s0
# VR1-[[2, 4), [4, 9), [9, 13)]-{1}-[3, 10, 12] --> $s1
# VR1-[[15, 17)]-{7}-[16] --> $s1
# VR1-[[17, 19), [19, 24), [24, 28)]-{8}-[18, 25, 27] --> $s1
# VR1-[[30, 32)]-{14}-[31] --> $s1
# VR1-[[32, 34), [34, 39), [39, 43)]-{15}-[33, 42, 40] --> $s1
# VR1-[[45, 47)]-{21}-[46] --> $s1
# VR1-[[47, 49), [49, 54), [54, 58)]-{22}-[48, 55, 57] --> $s1
# VR1-[[60, 62)]-{28}-[61] --> $s1
# VR1-[[62, 64), [64, 69), [69, 73)]-{29}-[70, 63, 72] --> $s1
# VR1-[[75, 77)]-{35}-[76] --> $s1
# VR1-[[77, 79), [79, 84), [84, 88)]-{36}-[85, 87, 78] --> $s1
# VR1-[[90, 92)]-{42}-[91] --> $s1
# VR2-[[4, 6)]-{2}-[5] --> $s2
# VR2-[[6, 8)]-{3}-[7] --> $s2
# VR2-[[9, 12)]-{4}-[11] --> $s2
# VR2-[[12, 14)]-{5}-[13] --> $s2
# VR2-[[13, 15)]-{6}-[14] --> $s1
# VR2-[[19, 21)]-{9}-[20] --> $s2
# VR2-[[21, 23)]-{10}-[22] --> $s2
# VR2-[[24, 27)]-{11}-[26] --> $s2
# VR2-[[27, 29)]-{12}-[28] --> $s2
# VR2-[[28, 30)]-{13}-[29] --> $s1
# VR2-[[34, 36)]-{16}-[35] --> $s2
# VR2-[[36, 38)]-{17}-[37] --> $s2
# VR2-[[39, 42)]-{18}-[41] --> $s2
# VR2-[[42, 44)]-{19}-[43] --> $s2
# VR2-[[43, 45)]-{20}-[44] --> $s1
# VR2-[[49, 51)]-{23}-[50] --> $s2
# VR2-[[51, 53)]-{24}-[52] --> $s2
# VR2-[[54, 57)]-{25}-[56] --> $s2
# VR2-[[57, 59)]-{26}-[58] --> $s2
# VR2-[[58, 60)]-{27}-[59] --> $s1
# VR2-[[64, 66)]-{30}-[65] --> $s2
# VR2-[[66, 68)]-{31}-[67] --> $s2
# VR2-[[69, 72)]-{32}-[71] --> $s2
# VR2-[[72, 74)]-{33}-[73] --> $s2
# VR2-[[73, 75)]-{34}-[74] --> $s1
# VR2-[[79, 81)]-{37}-[80] --> $s2
# VR2-[[81, 83)]-{38}-[82] --> $s2
# VR2-[[84, 87)]-{39}-[86] --> $s2
# VR2-[[87, 89)]-{40}-[88] --> $s2
# VR2-[[88, 90)]-{41}-[89] --> $s1
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
	sw	$s2, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	IO_init
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid0
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 13
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid0:
	li	$s2, 1
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 28 ($s2)
	jalr	$s1
	move	$s1, $a0
	sw	$s1, 12 ($s0)
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid1
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 14
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid1:
	li	$s2, 2
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 28 ($s2)
	jalr	$s1
	move	$s1, $a0
	sw	$s1, 16 ($s0)
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid2
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 15
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid2:
	li	$s2, 3
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 28 ($s2)
	jalr	$s1
	move	$s1, $a0
	sw	$s1, 20 ($s0)
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid3
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 16
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid3:
	li	$s2, 4
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 28 ($s2)
	jalr	$s1
	move	$s1, $a0
	sw	$s1, 24 ($s0)
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid4
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 17
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid4:
	li	$s2, 5
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 28 ($s2)
	jalr	$s1
	move	$s1, $a0
	sw	$s1, 28 ($s0)
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid5
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 18
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid5:
	li	$s2, 6
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 28 ($s2)
	jalr	$s1
	move	$s1, $a0
	sw	$s1, 32 ($s0)
	move	$a0, $s0
	j	__Main_init_epilogue
__Main_init_epilogue:
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

# web count: 20
# VR0-[[0, 4), [4, 9), [9, 24), [24, 29), [29, 37)]-{0}-[2, 36, 22] --> $s0
# VR1-[[1, 4), [4, 9), [9, 10)]-{1}-[9] --> $s1
# VR2-[[2, 4), [4, 9), [9, 19)]-{2}-[16, 3, 18] --> $s2
# VR2-[[21, 22)]-{11}-[] --> $s1
# VR2-[[22, 24), [24, 29), [29, 33)]-{12}-[32, 23, 30] --> $s1
# VR2-[[35, 36)]-{18}-[] --> $s1
# VR2-[[36, 38)]-{19}-[37] --> $s1
# VR3-[[4, 6)]-{3}-[5] --> $s3
# VR3-[[6, 8)]-{4}-[7] --> $s3
# VR3-[[9, 15)]-{5}-[14] --> $s3
# VR3-[[15, 18)]-{8}-[17] --> $s1
# VR3-[[18, 20)]-{9}-[19] --> $s1
# VR3-[[19, 21)]-{10}-[20] --> $s2
# VR3-[[24, 26)]-{13}-[25] --> $s2
# VR3-[[26, 28)]-{14}-[27] --> $s2
# VR3-[[29, 32)]-{15}-[31] --> $s2
# VR3-[[32, 34)]-{16}-[33] --> $s2
# VR3-[[33, 35)]-{17}-[34] --> $s1
# VR4-[[10, 12)]-{6}-[11] --> $s1
# VR4-[[13, 16)]-{7}-[14, 15] --> $s4
Main.recite:
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
	lw	$s1, 8 ($fp)
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid6
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 7
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid6:
	move	$s3, $s1
	la	$s1, Int_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s4, $a0
	sw	$s3, 12 ($s4)
	move	$s1, $s4
	move	$a0, $s2
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s1, 8 ($s2)
	lw	$s2, 16 ($s1)
	jalr	$s2
	move	$s1, $a0
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid7
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 8
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid7:
	la	$s2, str_const1
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	move	$s1, $s0
	move	$a0, $s1
	j	__Main.recite_epilogue
__Main.recite_epilogue:
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
	addi	$sp, $sp, 12
	jr	$ra

# web count: 2
# VR0-[[0, 2)]-{0}-[1] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s1
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
	move	$s0, $a0
	move	$s1, $s0
	move	$a0, $s1
	j	__Main.main_epilogue
__Main.main_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s1, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

