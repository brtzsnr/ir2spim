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
	.word	int_const3
	.byte	0, 0, 0, 0
str_const11:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const4
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
	.word	int_const4
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
	.word	int_const0
	.ascii	"\n"
	.byte	0, 0, 0
str_const0:
	.word	3
	.word	13
	.word	String_dispatch
	.word	int_const9
	.ascii	"_tests/simple/eval-order-args.cl"
	.byte	0, 0, 0, 0
int_const9:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	32
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
	.word	0
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
	.word	Main.disregard
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
	.word	int_const3
	.word	0
IO_protObj:
	.word	4
	.word	3
	.word	IO_dispatch
Main_protObj:
	.word	5
	.word	3
	.word	Main_dispatch
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

# web count: 19
# VR0-[[0, 4), [4, 9), [9, 23)]-{0}-[2, 22] --> $s0
# VR1-[[1, 4), [4, 9), [9, 10)]-{1}-[9] --> $s1
# VR2-[[2, 4), [4, 9), [9, 19)]-{2}-[16, 3, 18] --> $s2
# VR2-[[21, 22)]-{11}-[] --> $s1
# VR2-[[22, 24), [24, 29), [29, 33)]-{12}-[32, 23, 30] --> $s1
# VR2-[[35, 37)]-{18}-[36] --> $s0
# VR3-[[4, 6)]-{3}-[5] --> $s3
# VR3-[[6, 8)]-{4}-[7] --> $s3
# VR3-[[9, 15)]-{5}-[14] --> $s3
# VR3-[[15, 18)]-{8}-[17] --> $s1
# VR3-[[18, 20)]-{9}-[19] --> $s1
# VR3-[[19, 21)]-{10}-[20] --> $s2
# VR3-[[24, 26)]-{13}-[25] --> $s0
# VR3-[[26, 28)]-{14}-[27] --> $s0
# VR3-[[29, 32)]-{15}-[31] --> $s0
# VR3-[[32, 34)]-{16}-[33] --> $s0
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
	bnez	$s2, dispatch_notvoid0
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 7
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid0:
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
	bnez	$s1, dispatch_notvoid1
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 8
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid1:
	la	$s0, str_const1
	move	$a0, $s1
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s1)
	lw	$s1, 12 ($s0)
	jalr	$s1
	move	$s0, $a0
	move	$a0, $s0
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

# web count: 5
# VR0-[[0, 5)]-{0}-[4] --> $s0
# VR1-[[1, 2)]-{1}-[] --> $s1
# VR2-[[2, 3)]-{2}-[] --> $s1
# VR3-[[3, 4)]-{3}-[] --> $s1
# VR4-[[4, 6)]-{4}-[5] --> $s1
Main.disregard:
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
	lw	$s1, 16 ($fp)
	lw	$s1, 12 ($fp)
	lw	$s1, 8 ($fp)
	move	$s1, $s0
	move	$a0, $s1
	j	__Main.disregard_epilogue
__Main.disregard_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s1, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 20
	jr	$ra

# web count: 28
# VR0-[[0, 3), [3, 8), [8, 10), [10, 15), [15, 24), [24, 29), [29, 37)]-{0}-[1, 36, 22, 8] --> $s0
# VR1-[[1, 3), [3, 8), [8, 10), [10, 15), [15, 24), [24, 29), [29, 38), [38, 43), [43, 55)]-{1}-[50, 2, 54] --> $s1
# VR1-[[57, 59)]-{27}-[58] --> $s0
# VR2-[[3, 5)]-{2}-[4] --> $s2
# VR2-[[5, 7)]-{3}-[6] --> $s2
# VR2-[[8, 10), [10, 15), [15, 19)]-{4}-[16, 18, 9] --> $s2
# VR2-[[21, 24), [24, 29), [29, 38), [38, 43), [43, 52)]-{10}-[51] --> $s2
# VR2-[[54, 56)]-{25}-[55] --> $s0
# VR2-[[55, 57)]-{26}-[56] --> $s1
# VR3-[[10, 12)]-{5}-[11] --> $s3
# VR3-[[12, 14)]-{6}-[13] --> $s3
# VR3-[[15, 18)]-{7}-[17] --> $s3
# VR3-[[18, 20)]-{8}-[19] --> $s3
# VR3-[[19, 21)]-{9}-[20] --> $s2
# VR3-[[22, 24), [24, 29), [29, 33)]-{11}-[32, 23, 30] --> $s3
# VR3-[[35, 38), [38, 43), [43, 53)]-{17}-[52] --> $s3
# VR4-[[24, 26)]-{12}-[25] --> $s4
# VR4-[[26, 28)]-{13}-[27] --> $s4
# VR4-[[29, 32)]-{14}-[31] --> $s4
# VR4-[[32, 34)]-{15}-[33] --> $s4
# VR4-[[33, 35)]-{16}-[34] --> $s3
# VR4-[[36, 38), [38, 43), [43, 47)]-{18}-[37, 46, 44] --> $s4
# VR4-[[49, 54)]-{24}-[53] --> $s0
# VR5-[[38, 40)]-{19}-[39] --> $s0
# VR5-[[40, 42)]-{20}-[41] --> $s0
# VR5-[[43, 46)]-{21}-[45] --> $s0
# VR5-[[46, 48)]-{22}-[47] --> $s0
# VR5-[[47, 49)]-{23}-[48] --> $s4
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
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid2
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 19
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid2:
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid3
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 19
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid3:
	li	$s3, 1
	move	$a0, $s2
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s3, 8 ($s2)
	lw	$s2, 28 ($s3)
	jalr	$s2
	move	$s2, $a0
	move	$s3, $s0
	bnez	$s3, dispatch_notvoid4
	la	$s4, str_const0
	move	$a0, $s4
	li	$s4, 19
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid4:
	li	$s4, 2
	move	$a0, $s3
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s4, 8 ($s3)
	lw	$s3, 28 ($s4)
	jalr	$s3
	move	$s3, $a0
	move	$s4, $s0
	bnez	$s4, dispatch_notvoid5
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 19
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid5:
	li	$s0, 3
	move	$a0, $s4
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s4)
	lw	$s4, 28 ($s0)
	jalr	$s4
	move	$s0, $a0
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s1)
	lw	$s1, 32 ($s0)
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

