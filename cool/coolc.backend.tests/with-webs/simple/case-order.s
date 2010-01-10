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
str_const13:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const0
	.byte	0, 0, 0, 0
str_const12:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const1
	.ascii	"Main"
	.byte	0, 0, 0, 0
str_const11:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const2
	.ascii	"IO"
	.byte	0, 0
str_const10:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const3
	.ascii	"String"
	.byte	0, 0
str_const9:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const1
	.ascii	"Bool"
	.byte	0, 0, 0, 0
str_const8:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const4
	.ascii	"Int"
	.byte	0
str_const7:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const3
	.ascii	"Object"
	.byte	0, 0
str_const6:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const5
	.ascii	"_prim_slot"
	.byte	0, 0
str_const5:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const6
	.ascii	"SELF_TYPE"
	.byte	0, 0, 0
str_const4:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const6
	.ascii	"_no_class"
	.byte	0, 0, 0
str_const3:
	.word	3
	.word	8
	.word	String_dispatch
	.word	int_const7
	.ascii	"<basic class>"
	.byte	0, 0, 0
str_const2:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const8
	.ascii	"main\n"
	.byte	0, 0, 0
str_const1:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const9
	.ascii	"object\n"
	.byte	0
str_const0:
	.word	3
	.word	11
	.word	String_dispatch
	.word	int_const10
	.ascii	"_tests/simple/case-order.cl"
	.byte	0
int_const10:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	27
int_const9:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	7
int_const8:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	5
int_const7:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	13
int_const6:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	9
int_const5:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	10
int_const4:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	3
int_const3:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	6
int_const2:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	2
int_const1:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	4
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
	.word	str_const7
	.word	str_const8
	.word	str_const9
	.word	str_const10
	.word	str_const11
	.word	str_const12
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

# web count: 23
# VR0-[[0, 4), [4, 9), [9, 12), [12, 13), [27, 29), [29, 31), [31, 32)]-{0}-[1, 12, 31] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s1
# VR1-[[49, 51)]-{24}-[50] --> $s0
# VR2-[[2, 4), [4, 9), [9, 12), [27, 29), [29, 31), [46, 47)]-{2}-[3, 9, 46] --> $s2
# VR2-[[48, 50)]-{23}-[49] --> $s1
# VR3-[[4, 6)]-{3}-[5] --> $s1
# VR3-[[6, 8)]-{4}-[7] --> $s1
# VR3-[[9, 12), [25, 27), [27, 29), [29, 31), [44, 46), [46, 48), [48, 49)]-{5, 13, 22}-[48, 10, 27, 29] --> $s3
# VR3-[[12, 14), [14, 19), [19, 23)]-{7}-[20, 22, 13] --> $s1
# VR3-[[31, 33), [33, 38), [38, 42)]-{16}-[32, 39, 41] --> $s1
# VR4-[[10, 12)]-{6}-[11] --> $s1
# VR4-[[14, 16)]-{8}-[15] --> $s0
# VR4-[[16, 18)]-{9}-[17] --> $s0
# VR4-[[19, 22)]-{10}-[21] --> $s0
# VR4-[[22, 24)]-{11}-[23] --> $s0
# VR4-[[23, 25)]-{12}-[24] --> $s1
# VR4-[[27, 29)]-{14}-[28] --> $s1
# VR4-[[29, 31)]-{15}-[30] --> $s1
# VR4-[[33, 35)]-{17}-[34] --> $s0
# VR4-[[35, 37)]-{18}-[36] --> $s0
# VR4-[[38, 41)]-{19}-[40] --> $s0
# VR4-[[41, 43)]-{20}-[42] --> $s0
# VR4-[[42, 44)]-{21}-[43] --> $s1
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
	move	$s1, $s0
	move	$s2, $s1
	bnez	$s2, case0_notvoid
	la	$s1, str_const0
	move	$a0, $s1
	li	$s1, 9
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_case_handler
case0_notvoid:
	lw	$s3, 0 ($s2)
case0_tag5:
	seq	$s1, $s3, 5
	beqz	$s1, case0_tag0
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid0
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 11
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid0:
	la	$s0, str_const2
	move	$a0, $s1
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s1)
	lw	$s1, 12 ($s0)
	jalr	$s1
	move	$s3, $a0
	b	case0_end
case0_tag0:
	slt	$s1, $s3, 0
	bnez	$s1, case0_error
	li	$t0, 5
	slt	$s1, $t0, $s3
	bnez	$s1, case0_error
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid1
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 10
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
	move	$s3, $a0
	b	case0_end
case0_error:
	move	$a0, $s2
	jal	_case_abort
case0_end:
	move	$s1, $s3
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

