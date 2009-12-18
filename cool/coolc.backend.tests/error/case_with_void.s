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
	.word	13
	.word	String_dispatch
	.word	int_const11
	.ascii	"tests/error/ok/case_with_void.cl"
	.byte	0, 0, 0, 0
int_const11:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	32
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
# Mapping: 
# To spill: 
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

# Mapping: 
# To spill: 
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

# Mapping: 
# To spill: 
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

# Mapping: 
# To spill: 
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

# Mapping: 
# To spill: 
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

# Mapping: VR0:$s0 VR1:$s1 
# To spill: 
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

# Mapping: VR0:$s0 VR1:$s1 
# To spill: 
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
	lw	$s1, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# Mapping: VR0:$s0 
# To spill: 
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

# Mapping: VR0:$s0 
# To spill: 
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

# Mapping: VR0:$s0 VR1:$s1 
# To spill: 
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s2 VR3:$s3 
# To spill: 
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
	lw	$s2, 16 ($s0)
	bnez	$s2, dispatch_notvoid0
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 43
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid0:
	la	$s3, str_const2
	move	$a0, $s2
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s3, 8 ($s2)
	lw	$s3, 12 ($s3)
	jalr	$s3
	move	$s2, $a0
	b	case0_end
case0_tag7:
	seq	$s3, $s2, 7
	beqz	$s3, case0_error
	lw	$s2, 16 ($s0)
	bnez	$s2, dispatch_notvoid1
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 42
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid1:
	la	$s3, str_const1
	move	$a0, $s2
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s3, 8 ($s2)
	lw	$s3, 12 ($s3)
	jalr	$s3
	move	$s2, $a0
	b	case0_end
case0_error:
	move	$a0, $s1
	jal	_case_abort
case0_end:
	move	$s1, $s2
	li	$s1, 0
	move	$a0, $s1
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

# Mapping: VR0:$s0 VR1:$s1 
# To spill: 
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

# Mapping: VR0:$s0 VR1:$s1 
# To spill: 
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

