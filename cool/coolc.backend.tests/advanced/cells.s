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
	.word	int_const1
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
	.word	9
	.word	String_dispatch
	.word	int_const4
	.ascii	"CellularAutomaton"
	.byte	0, 0, 0
str_const13:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const5
	.ascii	"IO"
	.byte	0, 0
str_const12:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const6
	.ascii	"String"
	.byte	0, 0
str_const11:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const3
	.ascii	"Bool"
	.byte	0, 0, 0, 0
str_const10:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const7
	.ascii	"Int"
	.byte	0
str_const9:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const6
	.ascii	"Object"
	.byte	0, 0
str_const8:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const8
	.ascii	"_prim_slot"
	.byte	0, 0
str_const7:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const9
	.ascii	"SELF_TYPE"
	.byte	0, 0, 0
str_const6:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const9
	.ascii	"_no_class"
	.byte	0, 0, 0
str_const5:
	.word	3
	.word	8
	.word	String_dispatch
	.word	int_const10
	.ascii	"<basic class>"
	.byte	0, 0, 0
str_const4:
	.word	3
	.word	9
	.word	String_dispatch
	.word	int_const11
	.ascii	"         X         "
	.byte	0
str_const3:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const0
	.ascii	"."
	.byte	0, 0, 0
str_const2:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const0
	.ascii	"X"
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
	.word	11
	.word	String_dispatch
	.word	int_const12
	.ascii	"tests/advanced/ok/cells.cl"
	.byte	0, 0
int_const12:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	26
int_const11:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	19
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
	.word	10
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
	.word	17
int_const3:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	4
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
	.word	str_const9
	.word	str_const10
	.word	str_const11
	.word	str_const12
	.word	str_const13
	.word	str_const15
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
	.word	CellularAutomaton_protObj
	.word	CellularAutomaton_init
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
	.word	Main.main
CellularAutomaton_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	CellularAutomaton.init
	.word	CellularAutomaton.print
	.word	CellularAutomaton.num_cells
	.word	CellularAutomaton.cell
	.word	CellularAutomaton.cell_left_neighbor
	.word	CellularAutomaton.cell_right_neighbor
	.word	CellularAutomaton.cell_at_next_evolution
	.word	CellularAutomaton.evolve
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
Main_protObj:
	.word	5
	.word	4
	.word	Main_dispatch
	.word	0
CellularAutomaton_protObj:
	.word	6
	.word	4
	.word	CellularAutomaton_dispatch
	.word	str_const16
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

# Mapping: VR0:$s0 
# To spill: 
Main_init:
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
	j	__Main_init_epilogue
__Main_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# Mapping: VR0:$s0 
# To spill: 
CellularAutomaton_init:
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
	j	__CellularAutomaton_init_epilogue
__CellularAutomaton_init_epilogue:
	## restoring registers
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
	la	$s1, CellularAutomaton_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	jal	CellularAutomaton_init
	bnez	$s1, dispatch_notvoid0
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 83
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid0:
	la	$s2, str_const4
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s2, 28 ($s2)
	jalr	$s2
	move	$s1, $a0
	sw	$s1, 12 ($s0)
	lw	$s1, 12 ($s0)
	bnez	$s1, dispatch_notvoid1
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 84
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid1:
	move	$a0, $s1
	lw	$s2, 8 ($s1)
	lw	$s2, 32 ($s2)
	jalr	$s2
	move	$s1, $a0
	li	$s1, 20
loop_start0:
	li	$s2, 0
	move	$s3, $s1
	slt	$s2, $s2, $s3
	beqz	$s2, loop_end0
	lw	$s2, 12 ($s0)
	bnez	$s2, dispatch_notvoid2
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 88
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid2:
	move	$a0, $s2
	lw	$s3, 8 ($s2)
	lw	$s3, 56 ($s3)
	jalr	$s3
	move	$s2, $a0
	lw	$s2, 12 ($s0)
	bnez	$s2, dispatch_notvoid3
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 89
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid3:
	move	$a0, $s2
	lw	$s3, 8 ($s2)
	lw	$s3, 32 ($s3)
	jalr	$s3
	move	$s2, $a0
	move	$s2, $s1
	li	$s3, 1
	sub	$s2, $s2, $s3
	move	$s1, $s2
	b	loop_start0
loop_end0:
	move	$s1, $s2
	move	$s1, $s0
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s2 
# To spill: 
CellularAutomaton.init:
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
	move	$s2, $s1
	sw	$s2, 12 ($s0)
	move	$s2, $s0
	move	$a0, $s2
	j	__CellularAutomaton.init_epilogue
__CellularAutomaton.init_epilogue:
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s2 VR3:$s3 
# To spill: 
CellularAutomaton.print:
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
	bnez	$s1, dispatch_notvoid4
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 17
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid4:
	lw	$s2, 12 ($s0)
	bnez	$s2, dispatch_notvoid5
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 17
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid5:
	la	$s3, str_const1
	move	$a0, $s2
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s3, 8 ($s2)
	lw	$s3, 12 ($s3)
	jalr	$s3
	move	$s2, $a0
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s2, 12 ($s2)
	jalr	$s2
	move	$s1, $a0
	move	$s1, $s0
	move	$a0, $s1
	j	__CellularAutomaton.print_epilogue
__CellularAutomaton.print_epilogue:
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s0 
# To spill: 
CellularAutomaton.num_cells:
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
	bnez	$s1, dispatch_notvoid6
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 23
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid6:
	move	$a0, $s1
	lw	$s0, 8 ($s1)
	lw	$s0, 16 ($s0)
	jalr	$s0
	move	$s1, $a0
	lw	$s0, 12 ($s1)
	move	$s1, $s0
	move	$a0, $s1
	j	__CellularAutomaton.num_cells_epilogue
__CellularAutomaton.num_cells_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s1, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# Mapping: VR0:$s0 VR1:$s1 VR2:$s2 VR3:$s0 VR4:$s1 VR5:$s3 
# To spill: 
CellularAutomaton.cell:
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
	lw	$s2, 12 ($s0)
	bnez	$s2, dispatch_notvoid7
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 27
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid7:
	move	$s0, $s1
	la	$s1, Int_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	sw	$s0, 12 ($s1)
	move	$s0, $s1
	li	$s1, 1
	la	$s3, Int_protObj
	move	$a0, $s3
	jal	Object.copy
	move	$s3, $a0
	sw	$s1, 12 ($s3)
	move	$s1, $s3
	move	$a0, $s2
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s2)
	lw	$s0, 20 ($s0)
	jalr	$s0
	move	$s2, $a0
	move	$a0, $s2
	j	__CellularAutomaton.cell_epilogue
__CellularAutomaton.cell_epilogue:
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s2 VR3:$s3 VR4:$s0 
# To spill: 
CellularAutomaton.cell_left_neighbor:
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
	move	$s2, $s1
	li	$s3, 0
	seq	$s2, $s2, $s3
	beqz	$s2, ite_false0
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid8
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 32
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid8:
	move	$s3, $s0
	bnez	$s3, dispatch_notvoid9
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 32
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid9:
	move	$a0, $s3
	lw	$s0, 8 ($s3)
	lw	$s0, 36 ($s0)
	jalr	$s0
	move	$s3, $a0
	li	$s0, 1
	sub	$s3, $s3, $s0
	move	$a0, $s2
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s3, 8 ($s2)
	lw	$s3, 40 ($s3)
	jalr	$s3
	move	$s2, $a0
	b	ite_end0
ite_false0:
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid10
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 34
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid10:
	move	$s3, $s1
	li	$s0, 1
	sub	$s3, $s3, $s0
	move	$a0, $s2
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s3, 8 ($s2)
	lw	$s3, 40 ($s3)
	jalr	$s3
	move	$s2, $a0
ite_end0:
	move	$a0, $s2
	j	__CellularAutomaton.cell_left_neighbor_epilogue
__CellularAutomaton.cell_left_neighbor_epilogue:
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s2 VR3:$s3 VR4:$s4 
# To spill: 
CellularAutomaton.cell_right_neighbor:
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
	move	$s3, $s0
	bnez	$s3, dispatch_notvoid11
	la	$s4, str_const0
	move	$a0, $s4
	li	$s4, 39
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid11:
	move	$a0, $s3
	lw	$s4, 8 ($s3)
	lw	$s4, 36 ($s4)
	jalr	$s4
	move	$s3, $a0
	li	$s4, 1
	sub	$s3, $s3, $s4
	seq	$s2, $s2, $s3
	beqz	$s2, ite_false1
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid12
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 40
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid12:
	li	$s3, 0
	move	$a0, $s2
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s3, 8 ($s2)
	lw	$s3, 40 ($s3)
	jalr	$s3
	move	$s2, $a0
	b	ite_end1
ite_false1:
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid13
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 42
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid13:
	move	$s3, $s1
	li	$s4, 1
	add	$s3, $s3, $s4
	move	$a0, $s2
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s3, 8 ($s2)
	lw	$s3, 40 ($s3)
	jalr	$s3
	move	$s2, $a0
ite_end1:
	move	$a0, $s2
	j	__CellularAutomaton.cell_right_neighbor_epilogue
__CellularAutomaton.cell_right_neighbor_epilogue:
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s5 VR3:$s2 VR4:$s3 VR5:$s4 VR6:$s2 
# To spill: 
CellularAutomaton.cell_at_next_evolution:
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
	lw	$s1, 8 ($fp)
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid14
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 49
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid14:
	move	$s3, $s1
	move	$a0, $s2
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s3, 8 ($s2)
	lw	$s3, 40 ($s3)
	jalr	$s3
	move	$s2, $a0
	la	$s3, str_const2
	li	$s4, 1
	move	$a0, $s4
	li	$s4, 0
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$t2, 4 ($sp)
	addi	$sp, $sp, 4
	lw	$t1, 4 ($sp)
	addi	$sp, $sp, 4
	lw	$a1, 4 ($sp)
	addi	$sp, $sp, 4
	jal	equality_test
	move	$s5, $a0
	beqz	$s5, ite_false2
	li	$s5, 1
	b	ite_end2
ite_false2:
	li	$s5, 0
ite_end2:
	move	$s3, $s0
	bnez	$s3, dispatch_notvoid15
	la	$s4, str_const0
	move	$a0, $s4
	li	$s4, 50
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid15:
	move	$s4, $s1
	move	$a0, $s3
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s4, 8 ($s3)
	lw	$s4, 44 ($s4)
	jalr	$s4
	move	$s3, $a0
	la	$s4, str_const2
	li	$s2, 1
	move	$a0, $s2
	li	$s2, 0
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$t2, 4 ($sp)
	addi	$sp, $sp, 4
	lw	$t1, 4 ($sp)
	addi	$sp, $sp, 4
	lw	$a1, 4 ($sp)
	addi	$sp, $sp, 4
	jal	equality_test
	move	$s2, $a0
	beqz	$s2, ite_false3
	li	$s2, 1
	b	ite_end3
ite_false3:
	li	$s2, 0
ite_end3:
	add	$s5, $s5, $s2
	move	$s3, $s0
	bnez	$s3, dispatch_notvoid16
	la	$s4, str_const0
	move	$a0, $s4
	li	$s4, 51
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid16:
	move	$s4, $s1
	move	$a0, $s3
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s4, 8 ($s3)
	lw	$s4, 48 ($s4)
	jalr	$s4
	move	$s3, $a0
	la	$s4, str_const2
	li	$s2, 1
	move	$a0, $s2
	li	$s2, 0
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$t2, 4 ($sp)
	addi	$sp, $sp, 4
	lw	$t1, 4 ($sp)
	addi	$sp, $sp, 4
	lw	$a1, 4 ($sp)
	addi	$sp, $sp, 4
	jal	equality_test
	move	$s2, $a0
	beqz	$s2, ite_false4
	li	$s2, 1
	b	ite_end4
ite_false4:
	li	$s2, 0
ite_end4:
	add	$s5, $s5, $s2
	li	$s2, 1
	seq	$s5, $s5, $s2
	beqz	$s5, ite_false5
	la	$s5, str_const2
	b	ite_end5
ite_false5:
	la	$s5, str_const3
ite_end5:
	move	$a0, $s5
	j	__CellularAutomaton.cell_at_next_evolution_epilogue
__CellularAutomaton.cell_at_next_evolution_epilogue:
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
	addi	$sp, $sp, 12
	jr	$ra

# Mapping: VR0:$s0 VR1:$s1 VR2:$s2 VR3:$s3 VR4:$s4 VR5:$s5 VR6:$s3 
# To spill: 
CellularAutomaton.evolve:
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
	li	$s1, 0
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid17
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 62
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid17:
	move	$a0, $s2
	lw	$s3, 8 ($s2)
	lw	$s3, 36 ($s3)
	jalr	$s3
	move	$s2, $a0
	la	$s3, String_protObj
	move	$a0, $s3
	jal	Object.copy
	move	$s3, $a0
	jal	String_init
loop_start1:
	move	$s4, $s1
	move	$s5, $s2
	slt	$s4, $s4, $s5
	beqz	$s4, loop_end1
	move	$s4, $s3
	bnez	$s4, dispatch_notvoid18
	la	$s5, str_const0
	move	$a0, $s5
	li	$s5, 67
	sw	$s5, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid18:
	move	$s5, $s0
	bnez	$s5, dispatch_notvoid19
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 67
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid19:
	move	$s3, $s1
	move	$a0, $s5
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s3, 8 ($s5)
	lw	$s3, 52 ($s3)
	jalr	$s3
	move	$s5, $a0
	move	$a0, $s4
	sw	$s5, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s5, 8 ($s4)
	lw	$s5, 12 ($s5)
	jalr	$s5
	move	$s4, $a0
	move	$s3, $s4
	move	$s4, $s1
	li	$s5, 1
	add	$s4, $s4, $s5
	move	$s1, $s4
	b	loop_start1
loop_end1:
	move	$s4, $s3
	sw	$s4, 12 ($s0)
	move	$s4, $s0
	move	$s3, $s4
	move	$s2, $s3
	move	$s1, $s2
	move	$a0, $s1
	j	__CellularAutomaton.evolve_epilogue
__CellularAutomaton.evolve_epilogue:
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

