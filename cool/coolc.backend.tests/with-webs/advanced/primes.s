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
str_const15:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const0
	.byte	0, 0, 0, 0
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
	.word	int_const1
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
	.word	int_const6
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
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0, 0
str_const7:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0, 0, 0
str_const6:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const8
	.ascii	"_no_class"
	.byte	0, 0, 0
str_const5:
	.word	3
	.word	8
	.word	String_dispatch
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0, 0, 0
str_const4:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const10
	.ascii	"continue"
	.byte	0, 0, 0, 0
str_const3:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const4
	.ascii	"halt"
	.byte	0, 0, 0, 0
str_const2:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const11
	.ascii	" is prime.\n"
	.byte	0
str_const1:
	.word	3
	.word	10
	.word	String_dispatch
	.word	int_const12
	.ascii	"2 is trivially prime.\n"
	.byte	0, 0
str_const0:
	.word	3
	.word	11
	.word	String_dispatch
	.word	int_const13
	.ascii	"_tests/advanced/primes.cl"
	.byte	0, 0, 0
int_const13:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	25
int_const12:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	22
int_const11:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	11
int_const10:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	8
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
	.word	4
int_const3:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	1
int_const2:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	500
int_const1:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	2
int_const0:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	0
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
	.word	int_const0
	.word	0
IO_protObj:
	.word	4
	.word	3
	.word	IO_dispatch
Main_protObj:
	.word	5
	.word	8
	.word	Main_dispatch
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

# web count: 69
# VR0-[[0, 4), [4, 9), [9, 24), [24, 26), [26, 32), [32, 38), [38, 40), [40, 50), [50, 52), [52, 53), [53, 54), [54, 59), [59, 65), [65, 69), [69, 74), [74, 89), [89, 94), [94, 102), [102, 103), [103, 107), [107, 109), [109, 114), [114, 120), [120, 121), [121, 122), [122, 124)]-{0}-[2, 65, 66, 67, 74, 17, 19, 87, 18, 21, 23, 26, 29, 31, 34, 103, 32, 33, 42, 43, 40, 41, 104, 54, 59, 57, 123, 122, 61, 60] --> $s0
# VR1-[[2, 4), [4, 9), [9, 13)]-{1}-[3, 10, 12] --> $s1
# VR1-[[15, 16)]-{7}-[] --> $s1
# VR1-[[16, 18)]-{8}-[17] --> $s1
# VR1-[[18, 20)]-{9}-[19] --> $s1
# VR1-[[20, 22)]-{10}-[21] --> $s1
# VR1-[[22, 24)]-{11}-[23] --> $s1
# VR1-[[24, 26), [122, 123)]-{12}-[25, 122] --> $s1
# VR1-[[26, 29)]-{13}-[28] --> $s1
# VR1-[[28, 30)]-{15}-[29] --> $s2
# VR1-[[30, 32)]-{16}-[31] --> $s1
# VR1-[[32, 37)]-{17}-[36] --> $s1
# VR1-[[36, 38)]-{21}-[37] --> $s2
# VR1-[[38, 40), [50, 52), [52, 53), [53, 54)]-{22, 32, 33}-[53] --> $s1
# VR1-[[40, 47)]-{23}-[46] --> $s1
# VR1-[[46, 49)]-{29}-[48] --> $s2
# VR1-[[48, 50)]-{31}-[49] --> $s1
# VR1-[[54, 57)]-{34}-[56] --> $s1
# VR1-[[56, 58)]-{36}-[57] --> $s2
# VR1-[[59, 64)]-{37}-[63] --> $s1
# VR1-[[63, 65)]-{41}-[64] --> $s2
# VR1-[[65, 67)]-{42}-[66] --> $s1
# VR1-[[67, 69), [69, 74), [74, 84)]-{43}-[68, 81, 83] --> $s1
# VR1-[[86, 87)]-{52}-[] --> $s1
# VR1-[[87, 89), [89, 94), [94, 98)]-{53}-[97, 95, 88] --> $s1
# VR1-[[100, 101)]-{59}-[] --> $s1
# VR1-[[102, 103)]-{60}-[] --> $s1
# VR1-[[103, 106)]-{61}-[105] --> $s1
# VR1-[[105, 107)]-{63}-[106] --> $s2
# VR1-[[107, 109), [109, 114), [114, 116)]-{64}-[115, 114, 108] --> $s1
# VR1-[[118, 119)]-{69}-[] --> $s1
# VR1-[[120, 121)]-{70}-[] --> $s1
# VR2-[[4, 6)]-{2}-[5] --> $s2
# VR2-[[6, 8)]-{3}-[7] --> $s2
# VR2-[[9, 12)]-{4}-[11] --> $s2
# VR2-[[12, 14)]-{5}-[13] --> $s2
# VR2-[[13, 15)]-{6}-[14] --> $s1
# VR2-[[27, 29)]-{14}-[28] --> $s3
# VR2-[[33, 36)]-{18}-[35] --> $s2
# VR2-[[35, 37)]-{20}-[36] --> $s3
# VR2-[[41, 46)]-{24}-[45] --> $s2
# VR2-[[45, 47)]-{28}-[46] --> $s3
# VR2-[[47, 49)]-{30}-[48] --> $s3
# VR2-[[55, 57)]-{35}-[56] --> $s3
# VR2-[[60, 63)]-{38}-[62] --> $s2
# VR2-[[62, 64)]-{40}-[63] --> $s3
# VR2-[[69, 71)]-{44}-[70] --> $s2
# VR2-[[71, 73)]-{45}-[72] --> $s2
# VR2-[[74, 80)]-{46}-[79] --> $s2
# VR2-[[80, 83)]-{49}-[82] --> $s2
# VR2-[[83, 85)]-{50}-[84] --> $s2
# VR2-[[84, 86)]-{51}-[85] --> $s1
# VR2-[[89, 91)]-{54}-[90] --> $s2
# VR2-[[91, 93)]-{55}-[92] --> $s2
# VR2-[[94, 97)]-{56}-[96] --> $s2
# VR2-[[97, 99)]-{57}-[98] --> $s2
# VR2-[[98, 100)]-{58}-[99] --> $s1
# VR2-[[104, 106)]-{62}-[105] --> $s3
# VR2-[[109, 111)]-{65}-[110] --> $s2
# VR2-[[111, 113)]-{66}-[112] --> $s2
# VR2-[[115, 117)]-{67}-[116] --> $s2
# VR2-[[116, 118)]-{68}-[117] --> $s1
# VR3-[[34, 36)]-{19}-[35] --> $s4
# VR3-[[42, 45)]-{25}-[44] --> $s3
# VR3-[[44, 46)]-{27}-[45] --> $s4
# VR3-[[61, 63)]-{39}-[62] --> $s4
# VR3-[[75, 77)]-{47}-[76] --> $s3
# VR3-[[78, 81)]-{48}-[80, 79] --> $s3
# VR4-[[43, 45)]-{26}-[44] --> $s5
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
	sw	$s3, 0 ($sp)
	addi $sp, $sp, -4
	sw	$s4, 0 ($sp)
	addi $sp, $sp, -4
	sw	$s5, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	IO_init
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid0
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 35
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
	li	$s1, 2
	sw	$s1, 12 ($s0)
	lw	$s1, 12 ($s0)
	sw	$s1, 16 ($s0)
	li	$s1, 0
	sw	$s1, 20 ($s0)
	li	$s1, 500
	sw	$s1, 24 ($s0)
loop_start0:
	li	$s1, 1
	beqz	$s1, loop_end0
	lw	$s1, 16 ($s0)
	li	$s3, 1
	add	$s2, $s1, $s3
	sw	$s2, 16 ($s0)
	li	$s1, 2
	sw	$s1, 20 ($s0)
loop_start1:
	lw	$s1, 16 ($s0)
	lw	$s2, 20 ($s0)
	lw	$s4, 20 ($s0)
	mul	$s3, $s2, $s4
	slt	$s2, $s1, $s3
	beqz	$s2, ite_false0
	li	$s1, 0
	b	ite_end0
ite_false0:
	lw	$s1, 16 ($s0)
	lw	$s2, 20 ($s0)
	lw	$s3, 16 ($s0)
	lw	$s5, 20 ($s0)
	div	$s4, $s3, $s5
	mul	$s3, $s2, $s4
	sub	$s2, $s1, $s3
	li	$s3, 0
	seq	$s1, $s2, $s3
	beqz	$s1, ite_false1
	li	$s1, 0
	b	ite_end1
ite_false1:
	li	$s1, 1
ite_end1:
ite_end0:
	beqz	$s1, loop_end1
	lw	$s1, 20 ($s0)
	li	$s3, 1
	add	$s2, $s1, $s3
	sw	$s2, 20 ($s0)
	b	loop_start1
loop_end1:
	lw	$s1, 16 ($s0)
	lw	$s2, 20 ($s0)
	lw	$s4, 20 ($s0)
	mul	$s3, $s2, $s4
	slt	$s2, $s1, $s3
	beqz	$s2, ite_false2
	lw	$s1, 16 ($s0)
	sw	$s1, 12 ($s0)
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid1
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 67
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
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid2
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 68
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
	b	ite_end2
ite_false2:
	li	$s1, 0
ite_end2:
	lw	$s1, 24 ($s0)
	lw	$s3, 16 ($s0)
	sle	$s2, $s1, $s3
	beqz	$s2, ite_false3
	la	$s1, str_const3
	bnez	$s1, dispatch_notvoid3
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 75
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid3:
	move	$a0, $s1
	lw	$s2, 8 ($s1)
	lw	$s1, 0 ($s2)
	jalr	$s1
	move	$s1, $a0
	b	ite_end3
ite_false3:
	la	$s1, str_const4
ite_end3:
	b	loop_start0
loop_end0:
	sw	$s1, 28 ($s0)
	move	$a0, $s0
	j	__Main_init_epilogue
__Main_init_epilogue:
	## restoring registers
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
	addi	$sp, $sp, 8
	jr	$ra

# web count: 2
# VR0-[[0, 1)]-{0}-[] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s0
Main.main:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	li	$s0, 0
	move	$a0, $s0
	j	__Main.main_epilogue
__Main.main_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

