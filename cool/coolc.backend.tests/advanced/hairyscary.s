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
	.ascii	"Main"
	.byte	0, 0, 0, 0
str_const14:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const3
	.ascii	"Bazz"
	.byte	0, 0, 0, 0
str_const13:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const3
	.ascii	"Razz"
	.byte	0, 0, 0, 0
str_const12:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const4
	.ascii	"Bar"
	.byte	0
str_const11:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const4
	.ascii	"Foo"
	.byte	0
str_const10:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const0
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
	.word	int_const4
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
	.word	7
	.word	String_dispatch
	.word	int_const6
	.ascii	"do nothing"
	.byte	0, 0
str_const0:
	.word	3
	.word	12
	.word	String_dispatch
	.word	int_const9
	.ascii	"_tests/advanced/hairyscary.cl"
	.byte	0, 0, 0
int_const9:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	29
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
	.word	3
int_const3:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	4
int_const2:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	0
int_const1:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	1
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
	.word	str_const6
	.word	str_const7
	.word	str_const8
	.word	str_const9
	.word	str_const10
	.word	str_const15
	.word	str_const14
	.word	str_const11
	.word	str_const13
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
	.word	Bazz_protObj
	.word	Bazz_init
	.word	Foo_protObj
	.word	Foo_init
	.word	Razz_protObj
	.word	Razz_init
	.word	Bar_protObj
	.word	Bar_init
Object_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
Int_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
Bool_dispatch:
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
	.word	Main.main
Bazz_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Bazz.doh
Foo_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Foo.doh
Razz_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Foo.doh
Bar_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Foo.doh
Object_protObj:
	.word	0
	.word	3
	.word	Object_dispatch
Int_protObj:
	.word	1
	.word	4
	.word	Int_dispatch
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
	.word	7
	.word	Main_dispatch
	.word	0
	.word	0
	.word	0
	.word	0
Bazz_protObj:
	.word	6
	.word	6
	.word	Bazz_dispatch
	.word	0
	.word	0
	.word	0
Foo_protObj:
	.word	7
	.word	8
	.word	Foo_dispatch
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
Razz_protObj:
	.word	8
	.word	10
	.word	Razz_dispatch
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
Bar_protObj:
	.word	9
	.word	12
	.word	Bar_dispatch
	.word	0
	.word	0
	.word	0
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
	lw	$s1, 8 ($fp)
	la	$s2, Int_protObj
	move	$a0, $s2
	jal	Object.copy
	move	$s2, $a0
	sw	$s1, 12 ($s2)
	move	$a0, $s0
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	_dispatch_abort
	j	__void_disp_handler_epilogue
__void_disp_handler_epilogue:
	## restoring registers
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

void_case_handler:
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
	lw	$s1, 8 ($fp)
	la	$s2, Int_protObj
	move	$a0, $s2
	jal	Object.copy
	move	$s2, $a0
	sw	$s1, 12 ($s2)
	move	$a0, $s0
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	_case_abort2
	j	__void_case_handler_epilogue
__void_case_handler_epilogue:
	## restoring registers
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
	la	$s1, Bazz_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	jal	Bazz_init
	sw	$s1, 12 ($s0)
	la	$s1, Foo_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	jal	Foo_init
	sw	$s1, 16 ($s0)
	la	$s1, Razz_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	jal	Razz_init
	sw	$s1, 20 ($s0)
	la	$s1, Bar_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	jal	Bar_init
	sw	$s1, 24 ($s0)
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

Bazz_init:
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
	jal	IO_init
	li	$s1, 1
	sw	$s1, 12 ($s0)
	move	$s1, $s0
	bnez	$s1, case0_notvoid
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 39
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_case_handler
case0_notvoid: 
	lw	$s2, 0 ($s1)
case0_tag9: 
	seq	$s3, $s2, 9
	beqz	$s3, case0_tag8
	move	$s2, $s1
	b	case0_end
case0_tag8: 
	slt	$s3, $s2, 8
	bnez	$s3, case0_tag7
	li	$t0, 9
	slt	$s3, $t0, $s2
	bnez	$s3, case0_tag7
	la	$s2, Bar_protObj
	move	$a0, $s2
	jal	Object.copy
	move	$s2, $a0
	jal	Bar_init
	b	case0_end
case0_tag7: 
	slt	$s3, $s2, 7
	bnez	$s3, case0_tag6
	li	$t0, 9
	slt	$s3, $t0, $s2
	bnez	$s3, case0_tag6
	la	$s2, Razz_protObj
	move	$a0, $s2
	jal	Object.copy
	move	$s2, $a0
	jal	Razz_init
	b	case0_end
case0_tag6: 
	slt	$s3, $s2, 6
	bnez	$s3, case0_error
	li	$t0, 9
	slt	$s3, $t0, $s2
	bnez	$s3, case0_error
	la	$s2, Foo_protObj
	move	$a0, $s2
	jal	Object.copy
	move	$s2, $a0
	jal	Foo_init
	b	case0_end
case0_error: 
	move	$a0, $s1
	jal	_case_abort
case0_end: 
	move	$s1, $s2
	sw	$s1, 16 ($s0)
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid0
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 46
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid0: 
	move	$a0, $s1
	lw	$s2, 8 ($s1)
	lw	$s2, 28 ($s2)
	jalr	$s2
	move	$s1, $a0
	la	$s2, Int_protObj
	move	$a0, $s2
	jal	Object.copy
	move	$s2, $a0
	sw	$s1, 12 ($s2)
	move	$s1, $s2
	sw	$s1, 20 ($s0)
	move	$a0, $s0
	j	__Bazz_init_epilogue
__Bazz_init_epilogue:
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

Foo_init:
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
	jal	Bazz_init
	move	$s1, $s0
	bnez	$s1, case1_notvoid
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 4
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_case_handler
case1_notvoid: 
	lw	$s2, 0 ($s1)
case1_tag9: 
	seq	$s3, $s2, 9
	beqz	$s3, case1_tag8
	move	$s2, $s1
	b	case1_end
case1_tag8: 
	slt	$s3, $s2, 8
	bnez	$s3, case1_tag7
	li	$t0, 9
	slt	$s3, $t0, $s2
	bnez	$s3, case1_tag7
	la	$s2, Bar_protObj
	move	$a0, $s2
	jal	Object.copy
	move	$s2, $a0
	jal	Bar_init
	b	case1_end
case1_tag7: 
	slt	$s3, $s2, 7
	bnez	$s3, case1_error
	li	$t0, 9
	slt	$s3, $t0, $s2
	bnez	$s3, case1_error
	la	$s2, Razz_protObj
	move	$a0, $s2
	jal	Object.copy
	move	$s2, $a0
	jal	Razz_init
	b	case1_end
case1_error: 
	move	$a0, $s1
	jal	_case_abort
case1_end: 
	move	$s1, $s2
	sw	$s1, 24 ($s0)
	lw	$s1, 24 ($s0)
	bnez	$s1, dispatch_notvoid1
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 10
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid1: 
	move	$a0, $s1
	lw	$s2, 8 ($s1)
	lw	$s2, 32 ($s2)
	jalr	$s2
	move	$s1, $a0
	lw	$s2, 16 ($s0)
	bnez	$s2, dispatch_notvoid2
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 10
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid2: 
	move	$a0, $s2
	lw	$s3, 8 ($s2)
	lw	$s3, 32 ($s3)
	jalr	$s3
	move	$s2, $a0
	add	$s1, $s1, $s2
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid3
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 10
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid3: 
	move	$a0, $s2
	lw	$s3, 8 ($s2)
	lw	$s3, 32 ($s3)
	jalr	$s3
	move	$s2, $a0
	add	$s1, $s1, $s2
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid4
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 10
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid4: 
	move	$a0, $s2
	lw	$s3, 8 ($s2)
	lw	$s3, 28 ($s3)
	jalr	$s3
	move	$s2, $a0
	add	$s1, $s1, $s2
	sw	$s1, 28 ($s0)
	move	$a0, $s0
	j	__Foo_init_epilogue
__Foo_init_epilogue:
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

Razz_init:
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
	jal	Foo_init
	move	$s1, $s0
	bnez	$s1, case2_notvoid
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 26
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_case_handler
case2_notvoid: 
	lw	$s2, 0 ($s1)
case2_tag9: 
	seq	$s3, $s2, 9
	beqz	$s3, case2_tag8
	move	$s2, $s1
	b	case2_end
case2_tag8: 
	slt	$s3, $s2, 8
	bnez	$s3, case2_error
	li	$t0, 9
	slt	$s3, $t0, $s2
	bnez	$s3, case2_error
	la	$s2, Bar_protObj
	move	$a0, $s2
	jal	Object.copy
	move	$s2, $a0
	jal	Bar_init
	b	case2_end
case2_error: 
	move	$a0, $s1
	jal	_case_abort
case2_end: 
	move	$s1, $s2
	sw	$s1, 32 ($s0)
	lw	$s1, 24 ($s0)
	bnez	$s1, dispatch_notvoid5
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 31
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid5: 
	move	$a0, $s1
	la	$s2, Bazz_dispatch
	lw	$s2, 32 ($s2)
	jalr	$s2
	move	$s1, $a0
	lw	$s2, 16 ($s0)
	bnez	$s2, dispatch_notvoid6
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 31
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid6: 
	move	$a0, $s2
	lw	$s3, 8 ($s2)
	lw	$s3, 32 ($s3)
	jalr	$s3
	move	$s2, $a0
	add	$s1, $s1, $s2
	lw	$s2, 32 ($s0)
	bnez	$s2, dispatch_notvoid7
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 31
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid7: 
	move	$a0, $s2
	lw	$s3, 8 ($s2)
	lw	$s3, 32 ($s3)
	jalr	$s3
	move	$s2, $a0
	add	$s1, $s1, $s2
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid8
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 31
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid8: 
	move	$a0, $s2
	lw	$s3, 8 ($s2)
	lw	$s3, 32 ($s3)
	jalr	$s3
	move	$s2, $a0
	add	$s1, $s1, $s2
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid9
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 31
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid9: 
	move	$a0, $s2
	lw	$s3, 8 ($s2)
	lw	$s3, 28 ($s3)
	jalr	$s3
	move	$s2, $a0
	add	$s1, $s1, $s2
	sw	$s1, 36 ($s0)
	move	$a0, $s0
	j	__Razz_init_epilogue
__Razz_init_epilogue:
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

Bar_init:
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
	jal	Razz_init
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid10
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 18
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid10: 
	move	$a0, $s1
	lw	$s2, 8 ($s1)
	lw	$s2, 32 ($s2)
	jalr	$s2
	move	$s1, $a0
	sw	$s1, 40 ($s0)
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid11
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 20
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid11: 
	move	$a0, $s1
	lw	$s2, 8 ($s1)
	lw	$s2, 28 ($s2)
	jalr	$s2
	move	$s1, $a0
	la	$s2, Int_protObj
	move	$a0, $s2
	jal	Object.copy
	move	$s2, $a0
	sw	$s1, 12 ($s2)
	move	$s1, $s2
	sw	$s1, 44 ($s0)
	move	$a0, $s0
	j	__Bar_init_epilogue
__Bar_init_epilogue:
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

Main.main:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	la	$s0, str_const1
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

Bazz.printh:
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
	bnez	$s1, dispatch_notvoid12
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 48
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid12: 
	lw	$s2, 12 ($s0)
	la	$s0, Int_protObj
	move	$a0, $s0
	jal	Object.copy
	move	$s0, $a0
	sw	$s2, 12 ($s0)
	move	$s2, $s0
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s2, 16 ($s2)
	jalr	$s2
	move	$s1, $a0
	li	$s1, 0
	move	$a0, $s1
	j	__Bazz.printh_epilogue
__Bazz.printh_epilogue:
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

Bazz.doh:
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
	li	$s3, 1
	add	$s2, $s2, $s3
	sw	$s2, 12 ($s0)
	move	$s2, $s1
	move	$s1, $s2
	move	$a0, $s1
	j	__Bazz.doh_epilogue
__Bazz.doh_epilogue:
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

Foo.doh:
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
	li	$s3, 2
	add	$s2, $s2, $s3
	sw	$s2, 12 ($s0)
	move	$s2, $s1
	move	$s1, $s2
	move	$a0, $s1
	j	__Foo.doh_epilogue
__Foo.doh_epilogue:
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

