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
	.word	int_const0
	.byte	0, 0, 0, 0
str_const11:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const2
	.ascii	"Main"
	.byte	0, 0, 0, 0
str_const10:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const3
	.ascii	"IO"
	.byte	0, 0
str_const9:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const4
	.ascii	"String"
	.byte	0, 0
str_const8:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const2
	.ascii	"Bool"
	.byte	0, 0, 0, 0
str_const7:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const5
	.ascii	"Int"
	.byte	0
str_const6:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const4
	.ascii	"Object"
	.byte	0, 0
str_const5:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const6
	.ascii	"_prim_slot"
	.byte	0, 0
str_const4:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const7
	.ascii	"SELF_TYPE"
	.byte	0, 0, 0
str_const3:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const7
	.ascii	"_no_class"
	.byte	0, 0, 0
str_const2:
	.word	3
	.word	8
	.word	String_dispatch
	.word	int_const8
	.ascii	"<basic class>"
	.byte	0, 0, 0
str_const1:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const1
	.ascii	"\n"
	.byte	0, 0, 0
str_const0:
	.word	3
	.word	9
	.word	String_dispatch
	.word	int_const9
	.ascii	"_tests/new/fact.cl"
	.byte	0, 0
int_const9:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	18
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
	.word	3
int_const4:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	6
int_const3:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	2
int_const2:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	4
int_const1:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	1
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
	.word	Main.fact
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
	.word	4
	.word	Main_dispatch
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

# web count: 2
# VR0-[[0, 5)]-{0}-[3, 4] --> $s0
# VR1-[[2, 4)]-{1}-[3] --> $s1
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
	jal	IO_init
	li	$s1, 0
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

# web count: 16
# VR0-[[0, 6), [8, 10)]-{0}-[9] --> $s0
# VR1-[[1, 6), [8, 11), [11, 16), [16, 17)]-{1}-[16, 2, 8] --> $s1
# VR2-[[2, 5)]-{2}-[4] --> $s2
# VR2-[[4, 6)]-{4}-[5] --> $s3
# VR2-[[6, 8), [25, 26), [26, 27)]-{5, 16}-[26] --> $s0
# VR2-[[8, 11), [11, 16), [16, 26)]-{6}-[25] --> $s2
# VR3-[[3, 5)]-{3}-[4] --> $s4
# VR3-[[9, 11), [11, 16), [16, 22)]-{7}-[19, 21, 10] --> $s3
# VR3-[[24, 26)]-{15}-[25] --> $s1
# VR4-[[11, 13)]-{8}-[12] --> $s0
# VR4-[[13, 15)]-{9}-[14] --> $s0
# VR4-[[16, 19)]-{10}-[18] --> $s0
# VR4-[[18, 21)]-{12}-[20] --> $s1
# VR4-[[21, 23)]-{13}-[22] --> $s0
# VR4-[[22, 24)]-{14}-[23] --> $s1
# VR5-[[17, 19)]-{11}-[18] --> $s4
Main.fact:
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
	move	$s2, $s1
	li	$s4, 0
	seq	$s3, $s2, $s4
	beqz	$s3, ite_false0
	li	$s0, 1
	b	ite_end0
ite_false0:
	move	$s2, $s1
	move	$s3, $s0
	bnez	$s3, dispatch_notvoid0
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 7
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid0:
	move	$s0, $s1
	li	$s4, 1
	sub	$s1, $s0, $s4
	move	$a0, $s3
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s3)
	lw	$s1, 28 ($s0)
	jalr	$s1
	move	$s1, $a0
	mul	$s0, $s2, $s1
ite_end0:
	move	$a0, $s0
	j	__Main.fact_epilogue
__Main.fact_epilogue:
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

# web count: 24
# VR0-[[0, 7), [7, 12), [12, 13)]-{0}-[12] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s1
# VR1-[[4, 7), [7, 12), [12, 14), [14, 19), [19, 35)]-{2}-[34, 32, 6] --> $s1
# VR1-[[37, 39), [39, 44), [44, 48)]-{17}-[38, 47, 45] --> $s0
# VR1-[[50, 52)]-{23}-[51] --> $s0
# VR2-[[7, 9)]-{3}-[8] --> $s2
# VR2-[[9, 11)]-{4}-[10] --> $s2
# VR2-[[12, 14), [14, 19), [19, 23)]-{5}-[20, 22, 13] --> $s2
# VR2-[[25, 31)]-{11}-[30] --> $s0
# VR2-[[31, 34)]-{14}-[33] --> $s0
# VR2-[[34, 36)]-{15}-[35] --> $s0
# VR2-[[35, 37)]-{16}-[36] --> $s1
# VR2-[[39, 41)]-{18}-[40] --> $s1
# VR2-[[41, 43)]-{19}-[42] --> $s1
# VR2-[[44, 47)]-{20}-[46] --> $s1
# VR2-[[47, 49)]-{21}-[48] --> $s1
# VR2-[[48, 50)]-{22}-[49] --> $s0
# VR3-[[14, 16)]-{6}-[15] --> $s0
# VR3-[[16, 18)]-{7}-[17] --> $s0
# VR3-[[19, 22)]-{8}-[21] --> $s0
# VR3-[[22, 24)]-{9}-[23] --> $s0
# VR3-[[23, 25)]-{10}-[24] --> $s2
# VR3-[[26, 28)]-{12}-[27] --> $s2
# VR3-[[29, 32)]-{13}-[31, 30] --> $s2
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
	la	$s1, IO_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	jal	IO_init
	bnez	$s1, dispatch_notvoid1
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 12
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid1:
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid2
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 12
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid2:
	li	$s0, 4
	move	$a0, $s2
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s2)
	lw	$s2, 28 ($s0)
	jalr	$s2
	move	$s0, $a0
	la	$s2, Int_protObj
	move	$a0, $s2
	jal	Object.copy
	move	$s2, $a0
	sw	$s0, 12 ($s2)
	move	$s0, $s2
	move	$a0, $s1
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s1)
	lw	$s1, 16 ($s0)
	jalr	$s1
	move	$s0, $a0
	bnez	$s0, dispatch_notvoid3
	la	$s1, str_const0
	move	$a0, $s1
	li	$s1, 12
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid3:
	la	$s1, str_const1
	move	$a0, $s0
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s1, 8 ($s0)
	lw	$s0, 12 ($s1)
	jalr	$s0
	move	$s0, $a0
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

