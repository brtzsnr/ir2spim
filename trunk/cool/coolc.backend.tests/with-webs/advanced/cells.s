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
	.ascii	"_tests/advanced/cells.cl"
	.byte	0, 0, 0, 0
int_const12:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	24
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

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
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

# web count: 36
# VR0-[[0, 7), [7, 12), [12, 22), [22, 27), [27, 33), [33, 37), [37, 39), [39, 44), [44, 51), [51, 56), [56, 66), [66, 68)]-{0}-[19, 49, 20, 37, 67] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s1
# VR1-[[4, 7), [7, 12), [12, 16)]-{2}-[6, 13, 15] --> $s1
# VR1-[[18, 20)]-{8}-[19] --> $s1
# VR1-[[20, 22), [22, 27), [27, 29)]-{9}-[21, 27, 28] --> $s1
# VR1-[[31, 32)]-{14}-[] --> $s1
# VR1-[[32, 33), [33, 37), [37, 39), [39, 44), [44, 51), [51, 56), [56, 62), [64, 66)]-{15, 34}-[34, 61] --> $s1
# VR1-[[66, 67)]-{35}-[] --> $s1
# VR1-[[67, 69)]-{36}-[68] --> $s1
# VR2-[[7, 9)]-{3}-[8] --> $s2
# VR2-[[9, 11)]-{4}-[10] --> $s2
# VR2-[[12, 15)]-{5}-[14] --> $s2
# VR2-[[15, 17)]-{6}-[16] --> $s2
# VR2-[[16, 18)]-{7}-[17] --> $s1
# VR2-[[22, 24)]-{10}-[23] --> $s2
# VR2-[[24, 26)]-{11}-[25] --> $s2
# VR2-[[28, 30)]-{12}-[29] --> $s2
# VR2-[[29, 31)]-{13}-[30] --> $s1
# VR2-[[33, 36)]-{16}-[35] --> $s2
# VR2-[[35, 37), [66, 67)]-{18}-[36, 66] --> $s3
# VR2-[[37, 39), [39, 44), [44, 46)]-{19}-[38, 44, 45] --> $s2
# VR2-[[48, 49)]-{24}-[] --> $s2
# VR2-[[49, 51), [51, 56), [56, 58)]-{25}-[50, 57, 56] --> $s2
# VR2-[[60, 61)]-{30}-[] --> $s2
# VR2-[[61, 64)]-{31}-[63] --> $s2
# VR2-[[63, 65)]-{33}-[64] --> $s3
# VR3-[[34, 36)]-{17}-[35] --> $s4
# VR3-[[39, 41)]-{20}-[40] --> $s3
# VR3-[[41, 43)]-{21}-[42] --> $s3
# VR3-[[45, 47)]-{22}-[46] --> $s3
# VR3-[[46, 48)]-{23}-[47] --> $s2
# VR3-[[51, 53)]-{26}-[52] --> $s3
# VR3-[[53, 55)]-{27}-[54] --> $s3
# VR3-[[57, 59)]-{28}-[58] --> $s3
# VR3-[[58, 60)]-{29}-[59] --> $s2
# VR3-[[62, 64)]-{32}-[63] --> $s1
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
	lw	$s1, 28 ($s2)
	jalr	$s1
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
	lw	$s1, 32 ($s2)
	jalr	$s1
	move	$s1, $a0
	li	$s1, 20
loop_start0:
	li	$s2, 0
	move	$s4, $s1
	slt	$s3, $s2, $s4
	beqz	$s3, loop_end0
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
	lw	$s2, 56 ($s3)
	jalr	$s2
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
	lw	$s2, 32 ($s3)
	jalr	$s2
	move	$s2, $a0
	move	$s2, $s1
	li	$s1, 1
	sub	$s3, $s2, $s1
	move	$s1, $s3
	b	loop_start0
loop_end0:
	move	$s1, $s3
	move	$s1, $s0
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

# web count: 4
# VR0-[[0, 5)]-{0}-[3, 4] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s1
# VR2-[[2, 4)]-{2}-[3] --> $s2
# VR2-[[4, 6)]-{3}-[5] --> $s1
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
	move	$s1, $s0
	move	$a0, $s1
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

# web count: 15
# VR0-[[0, 3), [3, 8), [8, 10), [10, 15), [15, 29)]-{0}-[1, 8, 28] --> $s0
# VR1-[[1, 3), [3, 8), [8, 10), [10, 15), [15, 25)]-{1}-[2, 22, 24] --> $s1
# VR1-[[27, 28)]-{13}-[] --> $s1
# VR1-[[28, 30)]-{14}-[29] --> $s1
# VR2-[[3, 5)]-{2}-[4] --> $s2
# VR2-[[5, 7)]-{3}-[6] --> $s2
# VR2-[[8, 10), [10, 15), [15, 19)]-{4}-[16, 18, 9] --> $s2
# VR2-[[21, 24)]-{10}-[23] --> $s2
# VR2-[[24, 26)]-{11}-[25] --> $s2
# VR2-[[25, 27)]-{12}-[26] --> $s1
# VR3-[[10, 12)]-{5}-[11] --> $s3
# VR3-[[12, 14)]-{6}-[13] --> $s3
# VR3-[[15, 18)]-{7}-[17] --> $s3
# VR3-[[18, 20)]-{8}-[19] --> $s3
# VR3-[[19, 21)]-{9}-[20] --> $s2
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
	lw	$s2, 12 ($s3)
	jalr	$s2
	move	$s2, $a0
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
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

# web count: 9
# VR0-[[0, 2)]-{0}-[1] --> $s0
# VR1-[[1, 3), [3, 8), [8, 10)]-{1}-[2, 8, 9] --> $s1
# VR1-[[12, 14)]-{6}-[13] --> $s0
# VR1-[[14, 16)]-{8}-[15] --> $s0
# VR2-[[3, 5)]-{2}-[4] --> $s0
# VR2-[[5, 7)]-{3}-[6] --> $s0
# VR2-[[9, 11)]-{4}-[10] --> $s0
# VR2-[[10, 12)]-{5}-[11] --> $s1
# VR2-[[13, 15)]-{7}-[14] --> $s1
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
	lw	$s1, 16 ($s0)
	jalr	$s1
	move	$s0, $a0
	lw	$s1, 12 ($s0)
	move	$s0, $s1
	move	$a0, $s0
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

# web count: 16
# VR0-[[0, 3)]-{0}-[2] --> $s0
# VR1-[[1, 4), [4, 9), [9, 10)]-{1}-[9] --> $s1
# VR2-[[2, 4), [4, 9), [9, 27)]-{2}-[3, 23, 26] --> $s2
# VR2-[[29, 31)]-{15}-[30] --> $s0
# VR3-[[4, 6)]-{3}-[5] --> $s0
# VR3-[[6, 8)]-{4}-[7] --> $s0
# VR3-[[9, 15)]-{5}-[14] --> $s0
# VR3-[[15, 25)]-{8}-[24] --> $s0
# VR3-[[26, 28)]-{13}-[27] --> $s0
# VR3-[[27, 29)]-{14}-[28] --> $s1
# VR4-[[10, 12)]-{6}-[11] --> $s1
# VR4-[[13, 16)]-{7}-[14, 15] --> $s1
# VR4-[[16, 22)]-{9}-[21] --> $s1
# VR4-[[22, 26)]-{12}-[25] --> $s1
# VR5-[[17, 19)]-{10}-[18] --> $s3
# VR5-[[20, 23)]-{11}-[21, 22] --> $s3
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
	lw	$s1, 20 ($s0)
	jalr	$s1
	move	$s0, $a0
	move	$a0, $s0
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

# web count: 27
# VR0-[[0, 6), [6, 8), [8, 13), [13, 14), [34, 35)]-{0}-[34, 6, 13] --> $s0
# VR1-[[1, 6), [34, 36), [36, 41), [41, 42)]-{1}-[2, 41] --> $s1
# VR2-[[2, 5)]-{2}-[4] --> $s2
# VR2-[[4, 6)]-{4}-[5] --> $s3
# VR2-[[6, 8), [8, 13), [13, 15), [15, 20), [20, 30)]-{5}-[7, 27, 29] --> $s1
# VR2-[[32, 34), [49, 50), [50, 51)]-{18, 27}-[50] --> $s0
# VR2-[[34, 36), [36, 41), [41, 47)]-{19}-[35, 46, 44] --> $s2
# VR3-[[3, 5)]-{3}-[4] --> $s4
# VR3-[[8, 10)]-{6}-[9] --> $s2
# VR3-[[10, 12)]-{7}-[11] --> $s2
# VR3-[[13, 15), [15, 20), [20, 22)]-{8}-[21, 20, 14] --> $s2
# VR3-[[24, 27)]-{13}-[26] --> $s0
# VR3-[[26, 29)]-{15}-[28] --> $s2
# VR3-[[29, 31)]-{16}-[30] --> $s0
# VR3-[[30, 32)]-{17}-[31] --> $s1
# VR3-[[36, 38)]-{20}-[37] --> $s0
# VR3-[[38, 40)]-{21}-[39] --> $s0
# VR3-[[41, 44)]-{22}-[43] --> $s0
# VR3-[[43, 46)]-{24}-[45] --> $s1
# VR3-[[46, 48)]-{25}-[47] --> $s0
# VR3-[[47, 49)]-{26}-[48] --> $s1
# VR4-[[15, 17)]-{9}-[16] --> $s0
# VR4-[[17, 19)]-{10}-[18] --> $s0
# VR4-[[21, 23)]-{11}-[22] --> $s0
# VR4-[[22, 24)]-{12}-[23] --> $s2
# VR4-[[25, 27)]-{14}-[26] --> $s3
# VR4-[[42, 44)]-{23}-[43] --> $s3
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
	sw	$s4, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	lw	$s1, 8 ($fp)
	move	$s2, $s1
	li	$s4, 0
	seq	$s3, $s2, $s4
	beqz	$s3, ite_false0
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid8
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 32
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid8:
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid9
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 32
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid9:
	move	$a0, $s2
	lw	$s0, 8 ($s2)
	lw	$s2, 36 ($s0)
	jalr	$s2
	move	$s0, $a0
	li	$s3, 1
	sub	$s2, $s0, $s3
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s1)
	lw	$s1, 40 ($s0)
	jalr	$s1
	move	$s0, $a0
	b	ite_end0
ite_false0:
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid10
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 34
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid10:
	move	$s0, $s1
	li	$s3, 1
	sub	$s1, $s0, $s3
	move	$a0, $s2
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s2)
	lw	$s1, 40 ($s0)
	jalr	$s1
	move	$s0, $a0
ite_end0:
	move	$a0, $s0
	j	__CellularAutomaton.cell_left_neighbor_epilogue
__CellularAutomaton.cell_left_neighbor_epilogue:
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

# web count: 27
# VR0-[[0, 5), [5, 10), [10, 19), [19, 20), [34, 35)]-{0}-[34, 19, 3] --> $s0
# VR1-[[1, 5), [5, 10), [10, 19), [34, 36), [36, 41), [41, 42)]-{1}-[2, 41] --> $s1
# VR2-[[2, 5), [5, 10), [10, 18)]-{2}-[17] --> $s2
# VR2-[[17, 19)]-{11}-[18] --> $s3
# VR2-[[19, 21), [21, 26), [26, 30)]-{12}-[20, 27, 29] --> $s1
# VR2-[[32, 34), [49, 50), [50, 51)]-{18, 27}-[50] --> $s0
# VR2-[[34, 36), [36, 41), [41, 47)]-{19}-[35, 46, 44] --> $s2
# VR3-[[3, 5), [5, 10), [10, 12)]-{3}-[4, 10, 11] --> $s3
# VR3-[[14, 17)]-{8}-[16] --> $s3
# VR3-[[16, 18)]-{10}-[17] --> $s4
# VR3-[[21, 23)]-{13}-[22] --> $s0
# VR3-[[23, 25)]-{14}-[24] --> $s0
# VR3-[[26, 29)]-{15}-[28] --> $s0
# VR3-[[29, 31)]-{16}-[30] --> $s0
# VR3-[[30, 32)]-{17}-[31] --> $s1
# VR3-[[36, 38)]-{20}-[37] --> $s0
# VR3-[[38, 40)]-{21}-[39] --> $s0
# VR3-[[41, 44)]-{22}-[43] --> $s0
# VR3-[[43, 46)]-{24}-[45] --> $s1
# VR3-[[46, 48)]-{25}-[47] --> $s0
# VR3-[[47, 49)]-{26}-[48] --> $s1
# VR4-[[5, 7)]-{4}-[6] --> $s4
# VR4-[[7, 9)]-{5}-[8] --> $s4
# VR4-[[11, 13)]-{6}-[12] --> $s4
# VR4-[[12, 14)]-{7}-[13] --> $s3
# VR4-[[15, 17)]-{9}-[16] --> $s5
# VR4-[[42, 44)]-{23}-[43] --> $s3
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
	sw	$s5, 0 ($sp)
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
	lw	$s3, 36 ($s4)
	jalr	$s3
	move	$s3, $a0
	li	$s5, 1
	sub	$s4, $s3, $s5
	seq	$s3, $s2, $s4
	beqz	$s3, ite_false1
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid12
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 40
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid12:
	li	$s0, 0
	move	$a0, $s1
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s1)
	lw	$s1, 40 ($s0)
	jalr	$s1
	move	$s0, $a0
	b	ite_end1
ite_false1:
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid13
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 42
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid13:
	move	$s0, $s1
	li	$s3, 1
	add	$s1, $s0, $s3
	move	$a0, $s2
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s2)
	lw	$s1, 40 ($s0)
	jalr	$s1
	move	$s0, $a0
ite_end1:
	move	$a0, $s0
	j	__CellularAutomaton.cell_right_neighbor_epilogue
__CellularAutomaton.cell_right_neighbor_epilogue:
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

# web count: 43
# VR0-[[0, 4), [4, 9), [9, 26), [26, 28), [28, 29), [29, 31), [31, 36), [36, 53), [53, 55), [55, 56), [56, 58)]-{0}-[2, 57, 29] --> $s0
# VR1-[[1, 4), [4, 9), [9, 26), [26, 28), [28, 29), [29, 31), [31, 36), [36, 53), [53, 55), [55, 56), [56, 59), [59, 64), [64, 65)]-{1}-[64, 36, 9] --> $s1
# VR2-[[24, 26)]-{12}-[25] --> $s2
# VR2-[[26, 28), [28, 29), [29, 31), [31, 36), [36, 53), [53, 55), [55, 56), [56, 57)]-{13, 14}-[56] --> $s2
# VR2-[[56, 57), [56, 59), [59, 64), [64, 81), [81, 83), [83, 84), [84, 85)]-{28}-[84] --> $s3
# VR2-[[84, 85), [84, 87)]-{42}-[86] --> $s0
# VR2-[[86, 88)]-{44}-[87] --> $s1
# VR2-[[88, 90), [90, 91), [91, 92)]-{45, 46}-[91] --> $s0
# VR3-[[2, 4), [4, 9), [9, 13)]-{2}-[3, 10, 12] --> $s2
# VR3-[[15, 22)]-{8}-[21] --> $s2
# VR3-[[51, 53)]-{25}-[52] --> $s3
# VR3-[[53, 55), [55, 56), [56, 57)]-{26, 27}-[56] --> $s4
# VR3-[[79, 81)]-{39}-[80] --> $s0
# VR3-[[81, 83), [83, 84), [84, 85)]-{40, 41}-[84] --> $s1
# VR3-[[85, 87)]-{43}-[86] --> $s2
# VR4-[[4, 6)]-{3}-[5] --> $s3
# VR4-[[6, 8)]-{4}-[7] --> $s3
# VR4-[[9, 12)]-{5}-[11] --> $s3
# VR4-[[12, 14)]-{6}-[13] --> $s3
# VR4-[[13, 15)]-{7}-[14] --> $s2
# VR4-[[16, 23)]-{9}-[22] --> $s3
# VR4-[[29, 31), [31, 36), [36, 40)]-{15}-[39, 37, 30] --> $s3
# VR4-[[42, 49)]-{21}-[48] --> $s3
# VR4-[[57, 59), [59, 64), [64, 68)]-{29}-[65, 67, 58] --> $s2
# VR4-[[70, 77)]-{35}-[76] --> $s0
# VR5-[[17, 19)]-{10}-[18] --> $s4
# VR5-[[19, 21)]-{11}-[20] --> $s4
# VR5-[[31, 33)]-{16}-[32] --> $s4
# VR5-[[33, 35)]-{17}-[34] --> $s4
# VR5-[[36, 39)]-{18}-[38] --> $s4
# VR5-[[39, 41)]-{19}-[40] --> $s4
# VR5-[[40, 42)]-{20}-[41] --> $s3
# VR5-[[43, 50)]-{22}-[49] --> $s4
# VR5-[[59, 61)]-{30}-[60] --> $s0
# VR5-[[61, 63)]-{31}-[62] --> $s0
# VR5-[[64, 67)]-{32}-[66] --> $s0
# VR5-[[67, 69)]-{33}-[68] --> $s0
# VR5-[[68, 70)]-{34}-[69] --> $s1
# VR5-[[71, 78)]-{36}-[77] --> $s1
# VR6-[[44, 46)]-{23}-[45] --> $s5
# VR6-[[46, 48)]-{24}-[47] --> $s5
# VR6-[[72, 74)]-{37}-[73] --> $s2
# VR6-[[74, 76)]-{38}-[75] --> $s2
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
	lw	$s2, 40 ($s3)
	jalr	$s2
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
	move	$s2, $a0
	beqz	$s2, ite_false2
	li	$s2, 1
	b	ite_end2
ite_false2:
	li	$s2, 0
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
	lw	$s3, 44 ($s4)
	jalr	$s3
	move	$s3, $a0
	la	$s4, str_const2
	li	$s5, 1
	move	$a0, $s5
	li	$s5, 0
	sw	$s5, 0 ($sp)
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
	move	$s3, $a0
	beqz	$s3, ite_false3
	li	$s4, 1
	b	ite_end3
ite_false3:
	li	$s4, 0
ite_end3:
	add	$s3, $s2, $s4
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid16
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 51
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid16:
	move	$s0, $s1
	move	$a0, $s2
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s2)
	lw	$s1, 48 ($s0)
	jalr	$s1
	move	$s0, $a0
	la	$s1, str_const2
	li	$s2, 1
	move	$a0, $s2
	li	$s2, 0
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$t2, 4 ($sp)
	addi	$sp, $sp, 4
	lw	$t1, 4 ($sp)
	addi	$sp, $sp, 4
	lw	$a1, 4 ($sp)
	addi	$sp, $sp, 4
	jal	equality_test
	move	$s0, $a0
	beqz	$s0, ite_false4
	li	$s1, 1
	b	ite_end4
ite_false4:
	li	$s1, 0
ite_end4:
	add	$s0, $s3, $s1
	li	$s2, 1
	seq	$s1, $s0, $s2
	beqz	$s1, ite_false5
	la	$s0, str_const2
	b	ite_end5
ite_false5:
	la	$s0, str_const3
ite_end5:
	move	$a0, $s0
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

# web count: 34
# VR0-[[0, 4), [4, 9), [9, 19), [19, 23), [23, 25), [25, 30), [30, 32), [32, 37), [37, 56), [56, 59)]-{0}-[2, 58, 57, 30] --> $s0
# VR1-[[1, 4), [4, 9), [9, 19), [19, 23), [23, 25), [25, 30), [30, 32), [32, 37), [37, 52), [54, 56)]-{1, 30}-[51, 19, 37] --> $s1
# VR1-[[61, 63)]-{35}-[62] --> $s0
# VR2-[[2, 4), [4, 9), [9, 11)]-{2}-[3, 9, 10] --> $s2
# VR2-[[13, 19), [19, 23), [23, 25), [25, 30), [30, 32), [32, 37), [37, 56)]-{7}-[20] --> $s2
# VR2-[[60, 62)]-{34}-[61] --> $s1
# VR3-[[4, 6)]-{3}-[5] --> $s3
# VR3-[[6, 8)]-{4}-[7] --> $s3
# VR3-[[10, 12)]-{5}-[11] --> $s3
# VR3-[[11, 13)]-{6}-[12] --> $s2
# VR3-[[14, 16)]-{8}-[15] --> $s3
# VR3-[[17, 19), [19, 23), [23, 24), [50, 56), [56, 57)]-{9, 26}-[23, 56] --> $s3
# VR3-[[59, 61)]-{33}-[60] --> $s0
# VR4-[[19, 22)]-{10}-[21] --> $s4
# VR4-[[21, 23)]-{12}-[22] --> $s5
# VR4-[[23, 25), [25, 30), [30, 32), [32, 37), [37, 47)]-{13}-[24, 46, 44] --> $s4
# VR4-[[49, 51)]-{25}-[50] --> $s4
# VR4-[[51, 54)]-{27}-[53] --> $s4
# VR4-[[53, 55)]-{29}-[54] --> $s5
# VR4-[[56, 58)]-{31}-[57] --> $s1
# VR4-[[58, 60)]-{32}-[59] --> $s1
# VR5-[[20, 22)]-{11}-[21] --> $s6
# VR5-[[25, 27)]-{14}-[26] --> $s3
# VR5-[[27, 29)]-{15}-[28] --> $s3
# VR5-[[30, 32), [32, 37), [37, 41)]-{16}-[38, 40, 31] --> $s3
# VR5-[[43, 46)]-{22}-[45] --> $s3
# VR5-[[46, 48)]-{23}-[47] --> $s3
# VR5-[[47, 49)]-{24}-[48] --> $s4
# VR5-[[52, 54)]-{28}-[53] --> $s1
# VR6-[[32, 34)]-{17}-[33] --> $s5
# VR6-[[34, 36)]-{18}-[35] --> $s5
# VR6-[[37, 40)]-{19}-[39] --> $s5
# VR6-[[40, 42)]-{20}-[41] --> $s5
# VR6-[[41, 43)]-{21}-[42] --> $s3
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
	sw	$s6, 0 ($sp)
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
	lw	$s2, 36 ($s3)
	jalr	$s2
	move	$s2, $a0
	la	$s3, String_protObj
	move	$a0, $s3
	jal	Object.copy
	move	$s3, $a0
	jal	String_init
loop_start1:
	move	$s4, $s1
	move	$s6, $s2
	slt	$s5, $s4, $s6
	beqz	$s5, loop_end1
	move	$s4, $s3
	bnez	$s4, dispatch_notvoid18
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 67
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid18:
	move	$s3, $s0
	bnez	$s3, dispatch_notvoid19
	la	$s5, str_const0
	move	$a0, $s5
	li	$s5, 67
	sw	$s5, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid19:
	move	$s5, $s1
	move	$a0, $s3
	sw	$s5, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s5, 8 ($s3)
	lw	$s3, 52 ($s5)
	jalr	$s3
	move	$s3, $a0
	move	$a0, $s4
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s3, 8 ($s4)
	lw	$s4, 12 ($s3)
	jalr	$s4
	move	$s4, $a0
	move	$s3, $s4
	move	$s4, $s1
	li	$s1, 1
	add	$s5, $s4, $s1
	move	$s1, $s5
	b	loop_start1
loop_end1:
	move	$s1, $s3
	sw	$s1, 12 ($s0)
	move	$s1, $s0
	move	$s0, $s1
	move	$s1, $s0
	move	$s0, $s1
	move	$a0, $s0
	j	__CellularAutomaton.evolve_epilogue
__CellularAutomaton.evolve_epilogue:
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
	addi	$sp, $sp, 8
	jr	$ra

