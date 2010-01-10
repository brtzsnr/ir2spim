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
	.word	int_const3
	.byte	0, 0, 0, 0
str_const15:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const4
	.ascii	"Main"
	.byte	0, 0, 0, 0
str_const14:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const5
	.ascii	"C"
	.byte	0, 0, 0
str_const13:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const5
	.ascii	"B"
	.byte	0, 0, 0
str_const12:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const5
	.ascii	"A"
	.byte	0, 0, 0
str_const11:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const6
	.ascii	"IO"
	.byte	0, 0
str_const10:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const7
	.ascii	"String"
	.byte	0, 0
str_const9:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const4
	.ascii	"Bool"
	.byte	0, 0, 0, 0
str_const8:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const8
	.ascii	"Int"
	.byte	0
str_const7:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const7
	.ascii	"Object"
	.byte	0, 0
str_const6:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const0
	.ascii	"_prim_slot"
	.byte	0, 0
str_const5:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const9
	.ascii	"SELF_TYPE"
	.byte	0, 0, 0
str_const4:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const9
	.ascii	"_no_class"
	.byte	0, 0, 0
str_const3:
	.word	3
	.word	8
	.word	String_dispatch
	.word	int_const10
	.ascii	"<basic class>"
	.byte	0, 0, 0
str_const2:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const6
	.ascii	"C\n"
	.byte	0, 0
str_const1:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const6
	.ascii	"B\n"
	.byte	0, 0
str_const0:
	.word	3
	.word	12
	.word	String_dispatch
	.word	int_const2
	.ascii	"_tests/error/case_no_branch.cl"
	.byte	0, 0
int_const10:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	13
int_const9:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	9
int_const8:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	3
int_const7:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	6
int_const6:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	2
int_const5:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	1
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
	.word	30
int_const1:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	20
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
	.word	str_const7
	.word	str_const8
	.word	str_const9
	.word	str_const10
	.word	str_const11
	.word	str_const12
	.word	str_const15
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
	.word	A_protObj
	.word	A_init
	.word	Main_protObj
	.word	Main_init
	.word	B_protObj
	.word	B_init
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
A_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	A.init
Main_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	Main.main
B_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	B.init
C_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	C.init
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
A_protObj:
	.word	5
	.word	4
	.word	A_dispatch
	.word	0
Main_protObj:
	.word	6
	.word	5
	.word	Main_dispatch
	.word	0
	.word	0
B_protObj:
	.word	7
	.word	4
	.word	B_dispatch
	.word	0
C_protObj:
	.word	8
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

# web count: 2
# VR0-[[0, 5)]-{0}-[3, 4] --> $s0
# VR1-[[2, 4)]-{1}-[3] --> $s1
A_init:
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
	li	$s1, 0
	sw	$s1, 12 ($s0)
	move	$a0, $s0
	j	__A_init_epilogue
__A_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s1, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 10
# VR0-[[0, 8), [8, 13), [13, 26)]-{0}-[18, 25, 24] --> $s0
# VR1-[[2, 4)]-{1}-[3] --> $s1
# VR1-[[5, 8), [8, 13), [13, 15)]-{2}-[7, 13, 14] --> $s1
# VR1-[[17, 19)]-{7}-[18] --> $s1
# VR1-[[19, 21)]-{8}-[20] --> $s1
# VR1-[[22, 25)]-{9}-[24] --> $s1
# VR2-[[8, 10)]-{3}-[9] --> $s2
# VR2-[[10, 12)]-{4}-[11] --> $s2
# VR2-[[14, 16)]-{5}-[15] --> $s2
# VR2-[[15, 17)]-{6}-[16] --> $s1
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
	jal	Object_init
	la	$s1, A_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	jal	A_init
	bnez	$s1, dispatch_notvoid0
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 36
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid0:
	move	$a0, $s1
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	sw	$s1, 12 ($s0)
	la	$s1, IO_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	jal	IO_init
	sw	$s1, 16 ($s0)
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

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
B_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	A_init
	move	$a0, $s0
	j	__B_init_epilogue
__B_init_epilogue:
	## restoring registers
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
	jal	A_init
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

# web count: 3
# VR0-[[0, 4)]-{0}-[2, 3] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s1
# VR1-[[3, 5)]-{2}-[4] --> $s1
A.init:
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
	li	$s1, 10
	sw	$s1, 12 ($s0)
	move	$s1, $s0
	move	$a0, $s1
	j	__A.init_epilogue
__A.init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s1, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 21
# VR0-[[0, 3), [3, 8), [8, 11), [11, 12), [26, 28), [28, 29)]-{0}-[1, 11, 28] --> $s0
# VR1-[[1, 3), [3, 8), [8, 11), [26, 28), [43, 44)]-{1}-[2, 8, 43] --> $s1
# VR1-[[45, 46)]-{21}-[] --> $s0
# VR1-[[46, 48)]-{22}-[47] --> $s0
# VR2-[[3, 5)]-{2}-[4] --> $s2
# VR2-[[5, 7)]-{3}-[6] --> $s2
# VR2-[[8, 11), [24, 26), [26, 28), [41, 43), [43, 45), [45, 46)]-{4, 12, 20}-[9, 26, 45] --> $s2
# VR2-[[11, 13), [13, 18), [18, 22)]-{6}-[19, 21, 12] --> $s1
# VR2-[[28, 30), [30, 35), [35, 39)]-{14}-[38, 36, 29] --> $s1
# VR3-[[9, 11)]-{5}-[10] --> $s3
# VR3-[[13, 15)]-{7}-[14] --> $s0
# VR3-[[15, 17)]-{8}-[16] --> $s0
# VR3-[[18, 21)]-{9}-[20] --> $s0
# VR3-[[21, 23)]-{10}-[22] --> $s0
# VR3-[[22, 24)]-{11}-[23] --> $s1
# VR3-[[26, 28)]-{13}-[27] --> $s3
# VR3-[[30, 32)]-{15}-[31] --> $s0
# VR3-[[32, 34)]-{16}-[33] --> $s0
# VR3-[[35, 38)]-{17}-[37] --> $s0
# VR3-[[38, 40)]-{18}-[39] --> $s0
# VR3-[[39, 41)]-{19}-[40] --> $s1
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
	lw	$s1, 12 ($s0)
	bnez	$s1, case0_notvoid
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 41
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_case_handler
case0_notvoid:
	lw	$s2, 0 ($s1)
case0_tag8:
	seq	$s3, $s2, 8
	beqz	$s3, case0_tag7
	lw	$s1, 16 ($s0)
	bnez	$s1, dispatch_notvoid1
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 43
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid1:
	la	$s0, str_const2
	move	$a0, $s1
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s1)
	lw	$s1, 12 ($s0)
	jalr	$s1
	move	$s2, $a0
	b	case0_end
case0_tag7:
	seq	$s3, $s2, 7
	beqz	$s3, case0_error
	lw	$s1, 16 ($s0)
	bnez	$s1, dispatch_notvoid2
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 42
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid2:
	la	$s0, str_const1
	move	$a0, $s1
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s1)
	lw	$s1, 12 ($s0)
	jalr	$s1
	move	$s2, $a0
	b	case0_end
case0_error:
	move	$a0, $s1
	jal	_case_abort
case0_end:
	move	$s0, $s2
	li	$s0, 0
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

# web count: 3
# VR0-[[0, 4)]-{0}-[2, 3] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s1
# VR1-[[3, 5)]-{2}-[4] --> $s1
B.init:
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
	li	$s1, 20
	sw	$s1, 12 ($s0)
	move	$s1, $s0
	move	$a0, $s1
	j	__B.init_epilogue
__B.init_epilogue:
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
# VR0-[[0, 4)]-{0}-[2, 3] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s1
# VR1-[[3, 5)]-{2}-[4] --> $s1
C.init:
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
	li	$s1, 30
	sw	$s1, 12 ($s0)
	move	$s1, $s0
	move	$a0, $s1
	j	__C.init_epilogue
__C.init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s1, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

