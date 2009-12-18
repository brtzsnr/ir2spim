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
str_const19:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const4
	.ascii	"Main"
	.byte	0, 0, 0, 0
str_const18:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const0
	.ascii	"C"
	.byte	0, 0, 0
str_const17:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const0
	.ascii	"P"
	.byte	0, 0, 0
str_const16:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const5
	.ascii	"IO"
	.byte	0, 0
str_const15:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const6
	.ascii	"String"
	.byte	0, 0
str_const14:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const4
	.ascii	"Bool"
	.byte	0, 0, 0, 0
str_const13:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const7
	.ascii	"Int"
	.byte	0
str_const12:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const6
	.ascii	"Object"
	.byte	0, 0
str_const11:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const3
	.ascii	"_prim_slot"
	.byte	0, 0
str_const10:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0, 0, 0
str_const9:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const8
	.ascii	"_no_class"
	.byte	0, 0, 0
str_const8:
	.word	3
	.word	8
	.word	String_dispatch
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0, 0, 0
str_const7:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const10
	.ascii	"FALSE"
	.byte	0, 0, 0
str_const6:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const4
	.ascii	"TRUE"
	.byte	0, 0, 0, 0
str_const5:
	.word	3
	.word	8
	.word	String_dispatch
	.word	int_const11
	.ascii	"C.method2()\n"
	.byte	0, 0, 0, 0
str_const4:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const6
	.ascii	"false\n"
	.byte	0, 0
str_const3:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const10
	.ascii	"true\n"
	.byte	0, 0, 0
str_const2:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const0
	.ascii	"\n"
	.byte	0, 0, 0
str_const1:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const1
	.byte	0, 0, 0, 0
str_const0:
	.word	3
	.word	11
	.word	String_dispatch
	.word	int_const12
	.ascii	"tests/simple/ok/dispatch.cl"
	.byte	0
int_const12:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	27
int_const11:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	12
int_const10:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	5
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
	.word	3
int_const6:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	6
int_const5:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	2
int_const4:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	4
int_const3:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	10
int_const2:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	20
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
	.word	str_const12
	.word	str_const13
	.word	str_const14
	.word	str_const15
	.word	str_const16
	.word	str_const17
	.word	str_const19
	.word	str_const18
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
	.word	P_protObj
	.word	P_init
	.word	Main_protObj
	.word	Main_init
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
P_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	P.method1
Main_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	Main.main
C_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	P.method1
	.word	C.method2
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
P_protObj:
	.word	5
	.word	4
	.word	P_dispatch
	.word	0
Main_protObj:
	.word	6
	.word	4
	.word	Main_dispatch
	.word	0
C_protObj:
	.word	7
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
P_init:
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
	sw	$s1, 12 ($s0)
	move	$a0, $s0
	j	__P_init_epilogue
__P_init_epilogue:
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
	la	$s1, C_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	jal	C_init
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
	jal	P_init
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s2 VR3:$s3 VR4:$s4 VR5:$s5 VR6:$s6 VR7:$s1 
# To spill: 
P.method1:
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
	sw	$s6, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	lw	$s1, 16 ($fp)
	lw	$s2, 12 ($fp)
	lw	$s3, 8 ($fp)
	li	$s4, 0
	lw	$s5, 12 ($s0)
	bnez	$s5, dispatch_notvoid0
	la	$s6, str_const0
	move	$a0, $s6
	li	$s6, 10
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid0:
	la	$s6, str_const1
	move	$a0, $s5
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s6, 8 ($s5)
	lw	$s6, 12 ($s6)
	jalr	$s6
	move	$s5, $a0
	lw	$s5, 12 ($s0)
	bnez	$s5, dispatch_notvoid1
	la	$s6, str_const0
	move	$a0, $s6
	li	$s6, 11
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid1:
	move	$s6, $s1
	la	$s1, Int_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	sw	$s6, 12 ($s1)
	move	$s6, $s1
	move	$a0, $s5
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s6, 8 ($s5)
	lw	$s6, 16 ($s6)
	jalr	$s6
	move	$s5, $a0
	lw	$s5, 12 ($s0)
	bnez	$s5, dispatch_notvoid2
	la	$s6, str_const0
	move	$a0, $s6
	li	$s6, 12
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid2:
	la	$s6, str_const2
	move	$a0, $s5
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s6, 8 ($s5)
	lw	$s6, 12 ($s6)
	jalr	$s6
	move	$s5, $a0
	move	$s5, $s2
	beqz	$s5, ite_false0
	lw	$s5, 12 ($s0)
	bnez	$s5, dispatch_notvoid3
	la	$s6, str_const0
	move	$a0, $s6
	li	$s6, 16
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid3:
	la	$s6, str_const3
	move	$a0, $s5
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s6, 8 ($s5)
	lw	$s6, 12 ($s6)
	jalr	$s6
	move	$s5, $a0
	li	$s5, 1
	b	ite_end0
ite_false0:
	lw	$s5, 12 ($s0)
	bnez	$s5, dispatch_notvoid4
	la	$s6, str_const0
	move	$a0, $s6
	li	$s6, 17
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid4:
	la	$s6, str_const4
	move	$a0, $s5
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s6, 8 ($s5)
	lw	$s6, 12 ($s6)
	jalr	$s6
	move	$s5, $a0
	li	$s5, 0
ite_end0:
	move	$s4, $s5
	lw	$s5, 12 ($s0)
	bnez	$s5, dispatch_notvoid5
	la	$s6, str_const0
	move	$a0, $s6
	li	$s6, 20
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid5:
	move	$s6, $s4
	la	$s1, Int_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	sw	$s6, 12 ($s1)
	move	$s6, $s1
	move	$a0, $s5
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s6, 8 ($s5)
	lw	$s6, 16 ($s6)
	jalr	$s6
	move	$s5, $a0
	lw	$s5, 12 ($s0)
	bnez	$s5, dispatch_notvoid6
	la	$s6, str_const0
	move	$a0, $s6
	li	$s6, 21
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid6:
	la	$s6, str_const2
	move	$a0, $s5
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s6, 8 ($s5)
	lw	$s6, 12 ($s6)
	jalr	$s6
	move	$s5, $a0
	lw	$s5, 12 ($s0)
	bnez	$s5, dispatch_notvoid7
	la	$s6, str_const0
	move	$a0, $s6
	li	$s6, 22
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid7:
	move	$s6, $s3
	move	$a0, $s5
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s6, 8 ($s5)
	lw	$s6, 12 ($s6)
	jalr	$s6
	move	$s5, $a0
	lw	$s5, 12 ($s0)
	bnez	$s5, dispatch_notvoid8
	la	$s6, str_const0
	move	$a0, $s6
	li	$s6, 23
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid8:
	la	$s6, str_const2
	move	$a0, $s5
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s6, 8 ($s5)
	lw	$s6, 12 ($s6)
	jalr	$s6
	move	$s5, $a0
	move	$s4, $s5
	li	$s4, 20
	move	$a0, $s4
	j	__P.method1_epilogue
__P.method1_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s6, 0 ($sp)
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
	addi	$sp, $sp, 20
	jr	$ra

# Mapping: VR0:$s0 VR1:$s1 VR2:$s2 VR3:$s3 VR4:$s4 
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
	sw	$s4, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	lw	$s1, 12 ($s0)
	bnez	$s1, dispatch_notvoid9
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 42
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid9:
	li	$s2, 10
	li	$s3, 1
	la	$s4, str_const6
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s2, 12 ($s2)
	jalr	$s2
	move	$s1, $a0
	lw	$s1, 12 ($s0)
	bnez	$s1, dispatch_notvoid10
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 43
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid10:
	li	$s2, 20
	li	$s3, 0
	la	$s4, str_const7
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s2, 12 ($s2)
	jalr	$s2
	move	$s1, $a0
	move	$a0, $s1
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

# Mapping: VR0:$s0 VR1:$s0 
# To spill: 
C.method2:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	la	$s0, str_const5
	move	$a0, $s0
	j	__C.method2_epilogue
__C.method2_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

