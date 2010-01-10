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
	.word	int_const1
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
	.word	6
	.word	String_dispatch
	.word	int_const4
	.ascii	"Cons"
	.byte	0, 0, 0, 0
str_const12:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const4
	.ascii	"List"
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
	.word	int_const6
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
	.word	int_const3
	.ascii	"Int"
	.byte	0
str_const7:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const6
	.ascii	"Object"
	.byte	0, 0
str_const6:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0, 0
str_const5:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0, 0, 0
str_const4:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const8
	.ascii	"_no_class"
	.byte	0, 0, 0
str_const3:
	.word	3
	.word	8
	.word	String_dispatch
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0, 0, 0
str_const2:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const0
	.ascii	" "
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
	.word	10
	.word	String_dispatch
	.word	int_const10
	.ascii	"_tests/advanced/list.cl"
	.byte	0
int_const10:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	23
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
	.word	6
int_const5:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	5
int_const4:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	4
int_const3:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	3
int_const2:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	2
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
	.word	str_const7
	.word	str_const8
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
	.word	List_protObj
	.word	List_init
	.word	Cons_protObj
	.word	Cons_init
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
List_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	List.isNil
	.word	List.head
	.word	List.tail
	.word	List.cons
Cons_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	Cons.isNil
	.word	Cons.head
	.word	Cons.tail
	.word	List.cons
	.word	Cons.init
Main_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Main.print_list
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
	.word	int_const1
	.word	0
IO_protObj:
	.word	4
	.word	3
	.word	IO_dispatch
List_protObj:
	.word	5
	.word	3
	.word	List_dispatch
Cons_protObj:
	.word	6
	.word	5
	.word	Cons_dispatch
	.word	0
	.word	0
Main_protObj:
	.word	7
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

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
List_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	Object_init
	move	$a0, $s0
	j	__List_init_epilogue
__List_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 2
# VR0-[[0, 5)]-{0}-[3, 4] --> $s0
# VR1-[[2, 4)]-{1}-[3] --> $s1
Cons_init:
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
	jal	List_init
	li	$s1, 0
	sw	$s1, 12 ($s0)
	move	$a0, $s0
	j	__Cons_init_epilogue
__Cons_init_epilogue:
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

# web count: 2
# VR0-[[0, 1)]-{0}-[] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s0
List.isNil:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	li	$s0, 1
	move	$a0, $s0
	j	__List.isNil_epilogue
__List.isNil_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 8
# VR0-[[0, 2)]-{0}-[1] --> $s0
# VR1-[[1, 3), [3, 8), [8, 10)]-{1}-[2, 8, 9] --> $s1
# VR1-[[12, 13)]-{6}-[] --> $s0
# VR1-[[13, 15)]-{7}-[14] --> $s0
# VR2-[[3, 5)]-{2}-[4] --> $s0
# VR2-[[5, 7)]-{3}-[6] --> $s0
# VR2-[[9, 11)]-{4}-[10] --> $s0
# VR2-[[10, 12)]-{5}-[11] --> $s1
List.head:
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
	bnez	$s1, dispatch_notvoid0
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 35
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid0:
	move	$a0, $s1
	lw	$s0, 8 ($s1)
	lw	$s1, 0 ($s0)
	jalr	$s1
	move	$s0, $a0
	li	$s0, 0
	move	$a0, $s0
	j	__List.head_epilogue
__List.head_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s1, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 8
# VR0-[[0, 3), [3, 8), [8, 14)]-{0}-[1, 13] --> $s0
# VR1-[[1, 3), [3, 8), [8, 10)]-{1}-[2, 8, 9] --> $s1
# VR1-[[12, 13)]-{6}-[] --> $s1
# VR1-[[13, 15)]-{7}-[14] --> $s1
# VR2-[[3, 5)]-{2}-[4] --> $s2
# VR2-[[5, 7)]-{3}-[6] --> $s2
# VR2-[[9, 11)]-{4}-[10] --> $s2
# VR2-[[10, 12)]-{5}-[11] --> $s1
List.tail:
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
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid1
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 40
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid1:
	move	$a0, $s1
	lw	$s2, 8 ($s1)
	lw	$s1, 0 ($s2)
	jalr	$s1
	move	$s1, $a0
	move	$s1, $s0
	move	$a0, $s1
	j	__List.tail_epilogue
__List.tail_epilogue:
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

# web count: 11
# VR0-[[0, 8), [8, 13), [13, 15)]-{0}-[14] --> $s0
# VR1-[[1, 8), [8, 13), [13, 14)]-{1}-[13] --> $s1
# VR2-[[2, 4)]-{2}-[3] --> $s2
# VR2-[[5, 8), [8, 13), [13, 19)]-{3}-[18, 7, 15] --> $s2
# VR2-[[21, 23)]-{10}-[22] --> $s0
# VR3-[[8, 10)]-{4}-[9] --> $s3
# VR3-[[10, 12)]-{5}-[11] --> $s3
# VR3-[[13, 17)]-{6}-[16] --> $s3
# VR3-[[18, 20)]-{8}-[19] --> $s0
# VR3-[[19, 21)]-{9}-[20] --> $s1
# VR4-[[14, 18)]-{7}-[17] --> $s1
List.cons:
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
	lw	$s1, 8 ($fp)
	la	$s2, Cons_protObj
	move	$a0, $s2
	jal	Object.copy
	move	$s2, $a0
	jal	Cons_init
	bnez	$s2, dispatch_notvoid2
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 50
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid2:
	move	$s3, $s1
	move	$s1, $s0
	move	$a0, $s2
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s2)
	lw	$s1, 28 ($s0)
	jalr	$s1
	move	$s0, $a0
	move	$a0, $s0
	j	__List.cons_epilogue
__List.cons_epilogue:
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
	addi	$sp, $sp, 12
	jr	$ra

# web count: 2
# VR0-[[0, 1)]-{0}-[] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s0
Cons.isNil:
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
	j	__Cons.isNil_epilogue
__Cons.isNil_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 2
# VR0-[[0, 2)]-{0}-[1] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s1
Cons.head:
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
	lw	$s1, 12 ($s0)
	move	$a0, $s1
	j	__Cons.head_epilogue
__Cons.head_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s1, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 2
# VR0-[[0, 2)]-{0}-[1] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s1
Cons.tail:
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
	lw	$s1, 16 ($s0)
	move	$a0, $s1
	j	__Cons.tail_epilogue
__Cons.tail_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s1, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 6
# VR0-[[0, 8)]-{0}-[4, 6, 7] --> $s0
# VR1-[[1, 4)]-{1}-[3] --> $s1
# VR2-[[2, 6)]-{2}-[5] --> $s2
# VR3-[[3, 5)]-{3}-[4] --> $s3
# VR3-[[5, 7)]-{4}-[6] --> $s1
# VR3-[[7, 9)]-{5}-[8] --> $s1
Cons.init:
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
	lw	$s1, 12 ($fp)
	lw	$s2, 8 ($fp)
	move	$s3, $s1
	sw	$s3, 12 ($s0)
	move	$s1, $s2
	sw	$s1, 16 ($s0)
	move	$s1, $s0
	move	$a0, $s1
	j	__Cons.init_epilogue
__Cons.init_epilogue:
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
	addi	$sp, $sp, 16
	jr	$ra

# web count: 48
# VR0-[[0, 4), [4, 9), [9, 15), [15, 16), [30, 32), [32, 37), [37, 39), [39, 44), [44, 63), [63, 68), [68, 76)]-{0}-[61, 15, 30, 75] --> $s0
# VR1-[[1, 4), [4, 9), [9, 15), [30, 32), [32, 37), [37, 39), [39, 44), [44, 63), [63, 68), [68, 77), [77, 82), [82, 83)]-{1}-[2, 37, 82] --> $s1
# VR2-[[2, 4), [4, 9), [9, 11)]-{2}-[3, 9, 10] --> $s2
# VR2-[[13, 15)]-{7}-[14] --> $s2
# VR2-[[15, 17), [17, 22), [22, 26)]-{8}-[16, 23, 25] --> $s1
# VR2-[[28, 30), [99, 100), [100, 101)]-{14, 48}-[100] --> $s0
# VR2-[[30, 32), [32, 37), [37, 39), [39, 44), [44, 58)]-{15}-[55, 57, 31] --> $s2
# VR2-[[60, 61)]-{29}-[] --> $s2
# VR2-[[61, 63), [63, 68), [68, 72)]-{30}-[69, 71, 62] --> $s2
# VR2-[[74, 75)]-{36}-[] --> $s2
# VR2-[[75, 77), [77, 82), [82, 84), [84, 89), [89, 97)]-{37}-[96, 76, 94] --> $s2
# VR3-[[4, 6)]-{3}-[5] --> $s3
# VR3-[[6, 8)]-{4}-[7] --> $s3
# VR3-[[10, 12)]-{5}-[11] --> $s3
# VR3-[[11, 13)]-{6}-[12] --> $s2
# VR3-[[17, 19)]-{9}-[18] --> $s0
# VR3-[[19, 21)]-{10}-[20] --> $s0
# VR3-[[22, 25)]-{11}-[24] --> $s0
# VR3-[[25, 27)]-{12}-[26] --> $s0
# VR3-[[26, 28)]-{13}-[27] --> $s1
# VR3-[[32, 34)]-{16}-[33] --> $s3
# VR3-[[34, 36)]-{17}-[35] --> $s3
# VR3-[[37, 39), [39, 44), [44, 46)]-{18}-[38, 44, 45] --> $s3
# VR3-[[48, 54)]-{23}-[53] --> $s3
# VR3-[[54, 57)]-{26}-[56] --> $s3
# VR3-[[57, 59)]-{27}-[58] --> $s3
# VR3-[[58, 60)]-{28}-[59] --> $s2
# VR3-[[63, 65)]-{31}-[64] --> $s3
# VR3-[[65, 67)]-{32}-[66] --> $s3
# VR3-[[68, 71)]-{33}-[70] --> $s3
# VR3-[[71, 73)]-{34}-[72] --> $s3
# VR3-[[72, 74)]-{35}-[73] --> $s2
# VR3-[[77, 79)]-{38}-[78] --> $s0
# VR3-[[79, 81)]-{39}-[80] --> $s0
# VR3-[[82, 84), [84, 89), [89, 91)]-{40}-[83, 89, 90] --> $s0
# VR3-[[93, 96)]-{45}-[95] --> $s0
# VR3-[[96, 98)]-{46}-[97] --> $s0
# VR3-[[97, 99)]-{47}-[98] --> $s1
# VR4-[[39, 41)]-{19}-[40] --> $s4
# VR4-[[41, 43)]-{20}-[42] --> $s4
# VR4-[[45, 47)]-{21}-[46] --> $s4
# VR4-[[46, 48)]-{22}-[47] --> $s3
# VR4-[[49, 51)]-{24}-[50] --> $s4
# VR4-[[52, 55)]-{25}-[54, 53] --> $s4
# VR4-[[84, 86)]-{41}-[85] --> $s1
# VR4-[[86, 88)]-{42}-[87] --> $s1
# VR4-[[90, 92)]-{43}-[91] --> $s1
# VR4-[[91, 93)]-{44}-[92] --> $s0
Main.print_list:
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
	bnez	$s2, dispatch_notvoid3
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 108
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid3:
	move	$a0, $s2
	lw	$s3, 8 ($s2)
	lw	$s2, 12 ($s3)
	jalr	$s2
	move	$s2, $a0
	beqz	$s2, ite_false0
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid4
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 108
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
	move	$s0, $a0
	b	ite_end0
ite_false0:
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid5
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 110
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid5:
	move	$s3, $s1
	bnez	$s3, dispatch_notvoid6
	la	$s4, str_const0
	move	$a0, $s4
	li	$s4, 110
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid6:
	move	$a0, $s3
	lw	$s4, 8 ($s3)
	lw	$s3, 16 ($s4)
	jalr	$s3
	move	$s3, $a0
	la	$s4, Int_protObj
	move	$a0, $s4
	jal	Object.copy
	move	$s4, $a0
	sw	$s3, 12 ($s4)
	move	$s3, $s4
	move	$a0, $s2
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s3, 8 ($s2)
	lw	$s2, 16 ($s3)
	jalr	$s2
	move	$s2, $a0
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid7
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 111
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid7:
	la	$s3, str_const2
	move	$a0, $s2
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s3, 8 ($s2)
	lw	$s2, 12 ($s3)
	jalr	$s2
	move	$s2, $a0
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid8
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 112
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid8:
	move	$s0, $s1
	bnez	$s0, dispatch_notvoid9
	la	$s1, str_const0
	move	$a0, $s1
	li	$s1, 112
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid9:
	move	$a0, $s0
	lw	$s1, 8 ($s0)
	lw	$s0, 20 ($s1)
	jalr	$s0
	move	$s0, $a0
	move	$a0, $s2
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s2)
	lw	$s1, 28 ($s0)
	jalr	$s1
	move	$s0, $a0
ite_end0:
	move	$a0, $s0
	j	__Main.print_list_epilogue
__Main.print_list_epilogue:
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

# web count: 53
# VR0-[[0, 7), [7, 12), [12, 20), [20, 25), [25, 33), [33, 38), [38, 46), [46, 51), [51, 59), [59, 64), [64, 72), [72, 74), [74, 79), [79, 86), [86, 88), [88, 93), [93, 102), [102, 107), [107, 114)]-{0}-[100, 71, 86, 112, 93, 72] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s1
# VR1-[[4, 7), [7, 12), [12, 16)]-{2}-[6, 13, 15] --> $s1
# VR1-[[18, 20), [20, 25), [25, 29)]-{8}-[19, 26, 28] --> $s1
# VR1-[[31, 33), [33, 38), [38, 42)]-{14}-[32, 39, 41] --> $s1
# VR1-[[44, 46), [46, 51), [51, 55)]-{20}-[54, 52, 45] --> $s1
# VR1-[[57, 59), [59, 64), [64, 68)]-{26}-[65, 67, 58] --> $s1
# VR1-[[70, 72)]-{32}-[71] --> $s1
# VR1-[[72, 74), [74, 79), [79, 81)]-{33}-[80, 79, 73] --> $s1
# VR1-[[83, 85)]-{38}-[84] --> $s1
# VR1-[[84, 86), [114, 115)]-{39}-[85, 114] --> $s2
# VR1-[[86, 88), [88, 93), [93, 97)]-{40}-[87, 96, 94] --> $s1
# VR1-[[99, 100)]-{46}-[] --> $s1
# VR1-[[100, 102), [102, 107), [107, 109)]-{47}-[101, 108, 107] --> $s1
# VR1-[[111, 113)]-{52}-[112] --> $s1
# VR2-[[7, 9)]-{3}-[8] --> $s2
# VR2-[[9, 11)]-{4}-[10] --> $s2
# VR2-[[12, 15)]-{5}-[14] --> $s2
# VR2-[[15, 17)]-{6}-[16] --> $s2
# VR2-[[16, 18)]-{7}-[17] --> $s1
# VR2-[[20, 22)]-{9}-[21] --> $s2
# VR2-[[22, 24)]-{10}-[23] --> $s2
# VR2-[[25, 28)]-{11}-[27] --> $s2
# VR2-[[28, 30)]-{12}-[29] --> $s2
# VR2-[[29, 31)]-{13}-[30] --> $s1
# VR2-[[33, 35)]-{15}-[34] --> $s2
# VR2-[[35, 37)]-{16}-[36] --> $s2
# VR2-[[38, 41)]-{17}-[40] --> $s2
# VR2-[[41, 43)]-{18}-[42] --> $s2
# VR2-[[42, 44)]-{19}-[43] --> $s1
# VR2-[[46, 48)]-{21}-[47] --> $s2
# VR2-[[48, 50)]-{22}-[49] --> $s2
# VR2-[[51, 54)]-{23}-[53] --> $s2
# VR2-[[54, 56)]-{24}-[55] --> $s2
# VR2-[[55, 57)]-{25}-[56] --> $s1
# VR2-[[59, 61)]-{27}-[60] --> $s2
# VR2-[[61, 63)]-{28}-[62] --> $s2
# VR2-[[64, 67)]-{29}-[66] --> $s2
# VR2-[[67, 69)]-{30}-[68] --> $s2
# VR2-[[68, 70)]-{31}-[69] --> $s1
# VR2-[[74, 76)]-{34}-[75] --> $s2
# VR2-[[76, 78)]-{35}-[77] --> $s2
# VR2-[[80, 82)]-{36}-[81] --> $s2
# VR2-[[81, 83)]-{37}-[82] --> $s1
# VR2-[[88, 90)]-{41}-[89] --> $s2
# VR2-[[90, 92)]-{42}-[91] --> $s2
# VR2-[[93, 96)]-{43}-[95] --> $s2
# VR2-[[96, 98)]-{44}-[97] --> $s2
# VR2-[[97, 99)]-{45}-[98] --> $s1
# VR2-[[102, 104)]-{48}-[103] --> $s2
# VR2-[[104, 106)]-{49}-[105] --> $s2
# VR2-[[108, 110)]-{50}-[109] --> $s2
# VR2-[[109, 111)]-{51}-[110] --> $s1
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
	la	$s1, List_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	jal	List_init
	bnez	$s1, dispatch_notvoid10
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 128
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid10:
	li	$s2, 1
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 24 ($s2)
	jalr	$s1
	move	$s1, $a0
	bnez	$s1, dispatch_notvoid11
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 128
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid11:
	li	$s2, 2
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 24 ($s2)
	jalr	$s1
	move	$s1, $a0
	bnez	$s1, dispatch_notvoid12
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 128
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid12:
	li	$s2, 3
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 24 ($s2)
	jalr	$s1
	move	$s1, $a0
	bnez	$s1, dispatch_notvoid13
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 128
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid13:
	li	$s2, 4
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 24 ($s2)
	jalr	$s1
	move	$s1, $a0
	bnez	$s1, dispatch_notvoid14
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 128
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid14:
	li	$s2, 5
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 24 ($s2)
	jalr	$s1
	move	$s1, $a0
	sw	$s1, 12 ($s0)
loop_start0:
	lw	$s1, 12 ($s0)
	bnez	$s1, dispatch_notvoid15
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 129
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid15:
	move	$a0, $s1
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	li	$t0, 1
	sub	$s2, $t0, $s1
	beqz	$s2, loop_end0
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid16
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 131
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid16:
	lw	$s2, 12 ($s0)
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 28 ($s2)
	jalr	$s1
	move	$s1, $a0
	lw	$s1, 12 ($s0)
	bnez	$s1, dispatch_notvoid17
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 132
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid17:
	move	$a0, $s1
	lw	$s2, 8 ($s1)
	lw	$s1, 20 ($s2)
	jalr	$s1
	move	$s1, $a0
	sw	$s1, 12 ($s0)
	b	loop_start0
loop_end0:
	move	$a0, $s2
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

