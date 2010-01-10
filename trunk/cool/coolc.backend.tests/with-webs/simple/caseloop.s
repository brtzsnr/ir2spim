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
str_const30:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const0
	.byte	0, 0, 0, 0
str_const29:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const5
	.ascii	"Main"
	.byte	0, 0, 0, 0
str_const28:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const2
	.ascii	"Q"
	.byte	0, 0, 0
str_const27:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const2
	.ascii	"P"
	.byte	0, 0, 0
str_const26:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const2
	.ascii	"O"
	.byte	0, 0, 0
str_const25:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const2
	.ascii	"N"
	.byte	0, 0, 0
str_const24:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const2
	.ascii	"M"
	.byte	0, 0, 0
str_const23:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const2
	.ascii	"L"
	.byte	0, 0, 0
str_const22:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const2
	.ascii	"K"
	.byte	0, 0, 0
str_const21:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const2
	.ascii	"J"
	.byte	0, 0, 0
str_const20:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const2
	.ascii	"I"
	.byte	0, 0, 0
str_const19:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const2
	.ascii	"H"
	.byte	0, 0, 0
str_const18:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const2
	.ascii	"G"
	.byte	0, 0, 0
str_const17:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const2
	.ascii	"F"
	.byte	0, 0, 0
str_const16:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const2
	.ascii	"E"
	.byte	0, 0, 0
str_const15:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const2
	.ascii	"D"
	.byte	0, 0, 0
str_const14:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const2
	.ascii	"C"
	.byte	0, 0, 0
str_const13:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const2
	.ascii	"B"
	.byte	0, 0, 0
str_const12:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const2
	.ascii	"A"
	.byte	0, 0, 0
str_const11:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const3
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
	.word	int_const5
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
	.word	int_const7
	.ascii	"Object"
	.byte	0, 0
str_const6:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const11
	.ascii	"_prim_slot"
	.byte	0, 0
str_const5:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const10
	.ascii	"SELF_TYPE"
	.byte	0, 0, 0
str_const4:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const10
	.ascii	"_no_class"
	.byte	0, 0, 0
str_const3:
	.word	3
	.word	8
	.word	String_dispatch
	.word	int_const14
	.ascii	"<basic class>"
	.byte	0, 0, 0
str_const2:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const10
	.ascii	"A passed\n"
	.byte	0, 0, 0
str_const1:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const10
	.ascii	"Q passed\n"
	.byte	0, 0, 0
str_const0:
	.word	3
	.word	11
	.word	String_dispatch
	.word	int_const19
	.ascii	"_tests/simple/caseloop.cl"
	.byte	0, 0, 0
int_const19:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	25
int_const18:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	17
int_const17:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	16
int_const16:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	15
int_const15:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	14
int_const14:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	13
int_const13:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	12
int_const12:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	11
int_const11:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	10
int_const10:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	9
int_const9:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	8
int_const8:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	7
int_const7:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	6
int_const6:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	5
int_const5:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	4
int_const4:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	3
int_const3:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	2
int_const2:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	1
int_const1:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	1000
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
	.word	str_const29
	.word	str_const13
	.word	str_const14
	.word	str_const15
	.word	str_const16
	.word	str_const17
	.word	str_const18
	.word	str_const19
	.word	str_const20
	.word	str_const21
	.word	str_const22
	.word	str_const23
	.word	str_const24
	.word	str_const25
	.word	str_const26
	.word	str_const27
	.word	str_const28
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
	.word	D_protObj
	.word	D_init
	.word	E_protObj
	.word	E_init
	.word	F_protObj
	.word	F_init
	.word	G_protObj
	.word	G_init
	.word	H_protObj
	.word	H_init
	.word	I_protObj
	.word	I_init
	.word	J_protObj
	.word	J_init
	.word	K_protObj
	.word	K_init
	.word	L_protObj
	.word	L_init
	.word	M_protObj
	.word	M_init
	.word	N_protObj
	.word	N_init
	.word	O_protObj
	.word	O_init
	.word	P_protObj
	.word	P_init
	.word	Q_protObj
	.word	Q_init
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
Main_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	Main.main
B_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
C_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
D_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
E_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
F_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
G_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
H_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
I_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
J_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
K_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
L_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
M_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
N_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
O_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
P_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
Q_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
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
A_protObj:
	.word	5
	.word	3
	.word	A_dispatch
Main_protObj:
	.word	6
	.word	4
	.word	Main_dispatch
	.word	0
B_protObj:
	.word	7
	.word	3
	.word	B_dispatch
C_protObj:
	.word	8
	.word	3
	.word	C_dispatch
D_protObj:
	.word	9
	.word	3
	.word	D_dispatch
E_protObj:
	.word	10
	.word	3
	.word	E_dispatch
F_protObj:
	.word	11
	.word	3
	.word	F_dispatch
G_protObj:
	.word	12
	.word	3
	.word	G_dispatch
H_protObj:
	.word	13
	.word	3
	.word	H_dispatch
I_protObj:
	.word	14
	.word	3
	.word	I_dispatch
J_protObj:
	.word	15
	.word	3
	.word	J_dispatch
K_protObj:
	.word	16
	.word	3
	.word	K_dispatch
L_protObj:
	.word	17
	.word	3
	.word	L_dispatch
M_protObj:
	.word	18
	.word	3
	.word	M_dispatch
N_protObj:
	.word	19
	.word	3
	.word	N_dispatch
O_protObj:
	.word	20
	.word	3
	.word	O_dispatch
P_protObj:
	.word	21
	.word	3
	.word	P_dispatch
Q_protObj:
	.word	22
	.word	3
	.word	Q_dispatch
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
A_init:
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
	j	__A_init_epilogue
__A_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 3
# VR0-[[0, 9)]-{0}-[7, 8] --> $s0
# VR1-[[2, 4)]-{1}-[3] --> $s1
# VR1-[[5, 8)]-{2}-[7] --> $s1
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
	jal	B_init
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

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
D_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	C_init
	move	$a0, $s0
	j	__D_init_epilogue
__D_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
E_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	D_init
	move	$a0, $s0
	j	__E_init_epilogue
__E_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
F_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	E_init
	move	$a0, $s0
	j	__F_init_epilogue
__F_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
G_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	F_init
	move	$a0, $s0
	j	__G_init_epilogue
__G_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
H_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	G_init
	move	$a0, $s0
	j	__H_init_epilogue
__H_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
I_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	H_init
	move	$a0, $s0
	j	__I_init_epilogue
__I_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
J_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	I_init
	move	$a0, $s0
	j	__J_init_epilogue
__J_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
K_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	J_init
	move	$a0, $s0
	j	__K_init_epilogue
__K_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
L_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	K_init
	move	$a0, $s0
	j	__L_init_epilogue
__L_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
M_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	L_init
	move	$a0, $s0
	j	__M_init_epilogue
__M_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
N_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	M_init
	move	$a0, $s0
	j	__N_init_epilogue
__N_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
O_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	N_init
	move	$a0, $s0
	j	__O_init_epilogue
__O_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
P_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	O_init
	move	$a0, $s0
	j	__P_init_epilogue
__P_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
Q_init:
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
	j	__Q_init_epilogue
__Q_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 137
# VR0-[[0, 13), [13, 17), [17, 19), [19, 24), [24, 27), [27, 29), [29, 31), [31, 33), [33, 35), [35, 37), [37, 39), [39, 41), [41, 43), [43, 45), [45, 47), [47, 49), [49, 51), [51, 53), [53, 55), [55, 57), [57, 59), [59, 61), [61, 63), [63, 65), [65, 67), [67, 69), [69, 71), [71, 73), [73, 75), [75, 77), [77, 79), [79, 81), [81, 83), [83, 85), [85, 87), [87, 89), [89, 91), [91, 93), [93, 95), [95, 97), [97, 99), [99, 101), [101, 103), [103, 105), [105, 107), [107, 109), [109, 111), [111, 113), [113, 115), [115, 117), [117, 119), [119, 121), [121, 123), [123, 125), [125, 127), [127, 134), [134, 139), [139, 141), [141, 146), [146, 152), [152, 153), [153, 155), [155, 160), [160, 169), [169, 173), [173, 175), [175, 180), [180, 183), [183, 185), [185, 187), [187, 189), [189, 191), [191, 193), [193, 195), [195, 197), [197, 199), [199, 201), [201, 203), [203, 205), [205, 207), [207, 209), [209, 211), [211, 213), [213, 215), [215, 217), [217, 219), [219, 221), [221, 223), [223, 225), [225, 227), [227, 229), [229, 231), [231, 233), [233, 235), [235, 237), [237, 239), [239, 241), [241, 243), [243, 245), [245, 247), [247, 249), [249, 251), [251, 253), [253, 255), [255, 257), [257, 259), [259, 261), [261, 263), [263, 265), [265, 267), [267, 269), [269, 271), [271, 273), [273, 275), [275, 277), [277, 279), [279, 281), [281, 283), [283, 290), [290, 295), [295, 297), [297, 302), [302, 308), [308, 309), [309, 310)]-{0}-[153, 139, 309, 295] spilled
# VR1-[[1, 13), [13, 17), [17, 19), [19, 24), [24, 27), [27, 29), [29, 31), [31, 33), [33, 35), [35, 37), [37, 39), [39, 41), [41, 43), [43, 45), [45, 47), [47, 49), [49, 51), [51, 53), [53, 55), [55, 57), [57, 59), [59, 61), [61, 63), [63, 65), [65, 67), [67, 69), [69, 71), [71, 73), [73, 75), [75, 77), [77, 79), [79, 81), [81, 83), [83, 85), [85, 87), [87, 89), [89, 91), [91, 93), [93, 95), [95, 97), [97, 99), [99, 101), [101, 103), [103, 105), [105, 107), [107, 109), [109, 111), [111, 113), [113, 115), [115, 117), [117, 119), [119, 121), [121, 123), [123, 125), [125, 127), [127, 130), [132, 134)]-{1, 69}-[129, 13] --> $s0
# VR1-[[168, 169), [169, 173), [173, 175), [175, 180), [180, 183), [183, 185), [185, 187), [187, 189), [189, 191), [191, 193), [193, 195), [195, 197), [197, 199), [199, 201), [201, 203), [203, 205), [205, 207), [207, 209), [209, 211), [211, 213), [213, 215), [215, 217), [217, 219), [219, 221), [221, 223), [223, 225), [225, 227), [227, 229), [229, 231), [231, 233), [233, 235), [235, 237), [237, 239), [239, 241), [241, 243), [243, 245), [245, 247), [247, 249), [249, 251), [251, 253), [253, 255), [255, 257), [257, 259), [259, 261), [261, 263), [263, 265), [265, 267), [267, 269), [269, 271), [271, 273), [273, 275), [275, 277), [277, 279), [279, 281), [281, 283), [283, 286), [288, 290)]-{89, 152}-[169, 285] --> $s0
# VR1-[[326, 328)]-{174}-[327] --> $s0
# VR2-[[2, 4)]-{2}-[3] --> $s1
# VR2-[[5, 13), [13, 17), [17, 19), [19, 24), [24, 27), [27, 29), [29, 31), [31, 33), [33, 35), [35, 37), [37, 39), [39, 41), [41, 43), [43, 45), [45, 47), [47, 49), [49, 51), [51, 53), [53, 55), [55, 57), [57, 59), [59, 61), [61, 63), [63, 65), [65, 67), [67, 69), [69, 71), [71, 73), [73, 75), [75, 77), [77, 79), [79, 81), [81, 83), [83, 85), [85, 87), [87, 89), [89, 91), [91, 93), [93, 95), [95, 97), [97, 99), [99, 101), [101, 103), [103, 105), [105, 107), [107, 109), [109, 111), [111, 113), [113, 115), [115, 117), [117, 119), [119, 121), [121, 123), [123, 125), [125, 127), [127, 134), [134, 139), [139, 141), [141, 146), [146, 152), [152, 153), [153, 155), [155, 160), [160, 169), [169, 173), [173, 175), [175, 180), [180, 183), [183, 185), [185, 187), [187, 189), [189, 191), [191, 193), [193, 195), [195, 197), [197, 199), [199, 201), [201, 203), [203, 205), [205, 207), [207, 209), [209, 211), [211, 213), [213, 215), [215, 217), [217, 219), [219, 221), [221, 223), [223, 225), [225, 227), [227, 229), [229, 231), [231, 233), [233, 235), [235, 237), [237, 239), [239, 241), [241, 243), [243, 245), [245, 247), [247, 249), [249, 251), [251, 253), [253, 255), [255, 257), [257, 259), [259, 261), [261, 263), [263, 265), [265, 267), [267, 269), [269, 271), [271, 273), [273, 275), [275, 277), [277, 279), [279, 281), [281, 283), [283, 290)]-{3}-[173] --> $s1
# VR2-[[325, 327)]-{173}-[326] --> $s1
# VR3-[[7, 9)]-{4}-[8] --> $s2
# VR3-[[10, 13), [13, 17), [17, 19), [19, 24), [24, 27), [27, 29), [29, 31), [31, 33), [33, 35), [35, 37), [37, 39), [39, 41), [41, 43), [43, 45), [45, 47), [47, 49), [49, 51), [51, 53), [53, 55), [55, 57), [57, 59), [59, 61), [61, 63), [63, 65), [65, 67), [67, 69), [69, 71), [71, 73), [73, 75), [75, 77), [77, 79), [79, 81), [81, 83), [83, 85), [85, 87), [87, 89), [89, 91), [91, 93), [93, 95), [95, 97), [97, 99), [99, 101), [101, 103), [103, 105), [105, 107), [107, 109), [109, 111), [111, 113), [113, 115), [115, 117), [117, 119), [119, 121), [121, 123), [123, 125), [125, 127), [127, 134)]-{5}-[17] --> $s2
# VR3-[[324, 326)]-{172}-[325] --> $s0
# VR4-[[12, 13), [13, 17), [128, 134), [134, 139), [139, 141), [141, 146), [146, 152), [152, 153), [153, 155), [155, 160), [160, 169), [169, 173), [284, 290), [290, 291)]-{6, 65, 148}-[290, 134] --> $s3
# VR4-[[323, 325)]-{171}-[324] --> $s1
# VR5-[[13, 16)]-{7}-[15] --> $s4
# VR5-[[15, 17)]-{9}-[16] --> $s5
# VR5-[[17, 19), [19, 24), [24, 27), [29, 31), [31, 33), [35, 37), [37, 39), [41, 43), [43, 45), [47, 49), [49, 51), [53, 55), [55, 57), [59, 61), [61, 63), [65, 67), [67, 69), [71, 73), [73, 75), [77, 79), [79, 81), [83, 85), [85, 87), [89, 91), [91, 93), [95, 97), [97, 99), [101, 103), [103, 105), [107, 109), [109, 111), [113, 115), [115, 117), [119, 121), [121, 123), [125, 126)]-{10}-[18, 24, 125] --> $s3
# VR5-[[127, 129)]-{64}-[128] --> $s4
# VR5-[[129, 132)]-{66}-[131] --> $s4
# VR5-[[131, 133)]-{68}-[132] --> $s5
# VR5-[[134, 137)]-{70}-[136] --> $s0
# VR5-[[136, 138)]-{72}-[137] --> $s2
# VR5-[[137, 139)]-{73}-[138] --> $s0
# VR5-[[139, 141), [141, 146), [146, 148)]-{74}-[140, 146, 147] --> $s0
# VR5-[[150, 151)]-{79}-[] --> $s0
# VR5-[[152, 153)]-{80}-[] --> $s0
# VR5-[[153, 155), [155, 160), [160, 164)]-{81}-[154, 163, 161] --> $s0
# VR5-[[166, 167)]-{87}-[] --> $s0
# VR5-[[167, 169)]-{88}-[168] --> $s2
# VR5-[[169, 172)]-{90}-[171] --> $s2
# VR5-[[171, 173)]-{92}-[172] --> $s4
# VR5-[[173, 175), [175, 180), [180, 183), [185, 187), [187, 189), [191, 193), [193, 195), [197, 199), [199, 201), [203, 205), [205, 207), [209, 211), [211, 213), [215, 217), [217, 219), [221, 223), [223, 225), [227, 229), [229, 231), [233, 235), [235, 237), [239, 241), [241, 243), [245, 247), [247, 249), [251, 253), [253, 255), [257, 259), [259, 261), [263, 265), [265, 267), [269, 271), [271, 273), [275, 277), [277, 279), [281, 282)]-{93}-[174, 281, 180] --> $s2
# VR5-[[283, 285)]-{147}-[284] --> $s2
# VR5-[[285, 288)]-{149}-[287] --> $s2
# VR5-[[287, 289)]-{151}-[288] --> $s4
# VR5-[[290, 293)]-{153}-[292] --> $s0
# VR5-[[292, 294)]-{155}-[293] --> $s1
# VR5-[[293, 295)]-{156}-[294] --> $s0
# VR5-[[295, 297), [297, 302), [302, 304)]-{157}-[296, 302, 303] --> $s0
# VR5-[[306, 307)]-{162}-[] --> $s0
# VR5-[[308, 309)]-{163}-[] --> $s0
# VR5-[[309, 311), [311, 316), [316, 320)]-{164}-[310, 317, 319] --> $s0
# VR5-[[322, 324)]-{170}-[323] --> $s0
# VR6-[[14, 16)]-{8}-[15] --> $s6
# VR6-[[19, 21)]-{11}-[20] --> $s4
# VR6-[[21, 23)]-{12}-[22] --> $s4
# VR6-[[24, 27), [27, 29), [29, 31), [31, 33), [33, 35), [35, 37), [37, 39), [39, 41), [41, 43), [43, 45), [45, 47), [47, 49), [49, 51), [51, 53), [53, 55), [55, 57), [57, 59), [59, 61), [61, 63), [63, 65), [65, 67), [67, 69), [69, 71), [71, 73), [73, 75), [75, 77), [77, 79), [79, 81), [81, 83), [83, 85), [85, 87), [87, 89), [89, 91), [91, 93), [93, 95), [95, 97), [97, 99), [99, 101), [101, 103), [103, 105), [105, 107), [107, 109), [109, 111), [111, 113), [113, 115), [115, 117), [117, 119), [119, 121), [121, 123), [123, 125), [125, 127), [127, 128)]-{13, 15, 18, 21, 24, 27, 30, 33, 36, 39, 42, 45, 48, 51, 54, 57, 60, 63}-[71, 65, 67, 77, 79, 73, 85, 83, 25, 95, 89, 29, 31, 91, 103, 35, 101, 37, 97, 43, 109, 41, 107, 47, 119, 49, 55, 115, 53, 113, 59, 127, 61, 121] --> $s5
# VR6-[[130, 132)]-{67}-[131] --> $s0
# VR6-[[135, 137)]-{71}-[136] --> $s4
# VR6-[[141, 143)]-{75}-[142] --> $s2
# VR6-[[143, 145)]-{76}-[144] --> $s2
# VR6-[[147, 149)]-{77}-[148] --> $s2
# VR6-[[148, 150)]-{78}-[149] --> $s0
# VR6-[[155, 157)]-{82}-[156] --> $s2
# VR6-[[157, 159)]-{83}-[158] --> $s2
# VR6-[[160, 163)]-{84}-[162] --> $s2
# VR6-[[163, 165)]-{85}-[164] --> $s2
# VR6-[[164, 166)]-{86}-[165] --> $s0
# VR6-[[170, 172)]-{91}-[171] --> $s5
# VR6-[[175, 177)]-{94}-[176] --> $s3
# VR6-[[177, 179)]-{95}-[178] --> $s3
# VR6-[[180, 183), [183, 185), [185, 187), [187, 189), [189, 191), [191, 193), [193, 195), [195, 197), [197, 199), [199, 201), [201, 203), [203, 205), [205, 207), [207, 209), [209, 211), [211, 213), [213, 215), [215, 217), [217, 219), [219, 221), [221, 223), [223, 225), [225, 227), [227, 229), [229, 231), [231, 233), [233, 235), [235, 237), [237, 239), [239, 241), [241, 243), [243, 245), [245, 247), [247, 249), [249, 251), [251, 253), [253, 255), [255, 257), [257, 259), [259, 261), [261, 263), [263, 265), [265, 267), [267, 269), [269, 271), [271, 273), [273, 275), [275, 277), [277, 279), [279, 281), [281, 283), [283, 284)]-{96, 98, 101, 104, 107, 110, 113, 116, 119, 122, 125, 128, 131, 134, 137, 140, 143, 146}-[205, 275, 203, 277, 197, 283, 199, 193, 221, 259, 223, 257, 263, 217, 265, 215, 271, 209, 269, 211, 239, 235, 233, 229, 227, 187, 253, 185, 251, 191, 247, 245, 241, 181] --> $s3
# VR6-[[286, 288)]-{150}-[287] --> $s0
# VR6-[[291, 293)]-{154}-[292] --> $s2
# VR6-[[297, 299)]-{158}-[298] --> $s1
# VR6-[[299, 301)]-{159}-[300] --> $s1
# VR6-[[303, 305)]-{160}-[304] --> $s1
# VR6-[[304, 306)]-{161}-[305] --> $s0
# VR6-[[311, 313)]-{165}-[312] --> $s1
# VR6-[[313, 315)]-{166}-[314] --> $s1
# VR6-[[316, 319)]-{167}-[318] --> $s1
# VR6-[[319, 321)]-{168}-[320] --> $s1
# VR6-[[320, 322)]-{169}-[321] --> $s0
# VR7-[[25, 27)]-{14}-[26] --> $s4
# VR7-[[29, 31)]-{16}-[30] --> $s4
# VR7-[[31, 33)]-{17}-[32] --> $s4
# VR7-[[35, 37)]-{19}-[36] --> $s4
# VR7-[[37, 39)]-{20}-[38] --> $s4
# VR7-[[41, 43)]-{22}-[42] --> $s4
# VR7-[[43, 45)]-{23}-[44] --> $s4
# VR7-[[47, 49)]-{25}-[48] --> $s4
# VR7-[[49, 51)]-{26}-[50] --> $s4
# VR7-[[53, 55)]-{28}-[54] --> $s4
# VR7-[[55, 57)]-{29}-[56] --> $s4
# VR7-[[59, 61)]-{31}-[60] --> $s4
# VR7-[[61, 63)]-{32}-[62] --> $s4
# VR7-[[65, 67)]-{34}-[66] --> $s4
# VR7-[[67, 69)]-{35}-[68] --> $s4
# VR7-[[71, 73)]-{37}-[72] --> $s4
# VR7-[[73, 75)]-{38}-[74] --> $s4
# VR7-[[77, 79)]-{40}-[78] --> $s4
# VR7-[[79, 81)]-{41}-[80] --> $s4
# VR7-[[83, 85)]-{43}-[84] --> $s4
# VR7-[[85, 87)]-{44}-[86] --> $s4
# VR7-[[89, 91)]-{46}-[90] --> $s4
# VR7-[[91, 93)]-{47}-[92] --> $s4
# VR7-[[95, 97)]-{49}-[96] --> $s4
# VR7-[[97, 99)]-{50}-[98] --> $s4
# VR7-[[101, 103)]-{52}-[102] --> $s4
# VR7-[[103, 105)]-{53}-[104] --> $s4
# VR7-[[107, 109)]-{55}-[108] --> $s4
# VR7-[[109, 111)]-{56}-[110] --> $s4
# VR7-[[113, 115)]-{58}-[114] --> $s4
# VR7-[[115, 117)]-{59}-[116] --> $s4
# VR7-[[119, 121)]-{61}-[120] --> $s4
# VR7-[[121, 123)]-{62}-[122] --> $s4
# VR7-[[181, 183)]-{97}-[182] --> $s4
# VR7-[[185, 187)]-{99}-[186] --> $s4
# VR7-[[187, 189)]-{100}-[188] --> $s4
# VR7-[[191, 193)]-{102}-[192] --> $s4
# VR7-[[193, 195)]-{103}-[194] --> $s4
# VR7-[[197, 199)]-{105}-[198] --> $s4
# VR7-[[199, 201)]-{106}-[200] --> $s4
# VR7-[[203, 205)]-{108}-[204] --> $s4
# VR7-[[205, 207)]-{109}-[206] --> $s4
# VR7-[[209, 211)]-{111}-[210] --> $s4
# VR7-[[211, 213)]-{112}-[212] --> $s4
# VR7-[[215, 217)]-{114}-[216] --> $s4
# VR7-[[217, 219)]-{115}-[218] --> $s4
# VR7-[[221, 223)]-{117}-[222] --> $s4
# VR7-[[223, 225)]-{118}-[224] --> $s4
# VR7-[[227, 229)]-{120}-[228] --> $s4
# VR7-[[229, 231)]-{121}-[230] --> $s4
# VR7-[[233, 235)]-{123}-[234] --> $s4
# VR7-[[235, 237)]-{124}-[236] --> $s4
# VR7-[[239, 241)]-{126}-[240] --> $s4
# VR7-[[241, 243)]-{127}-[242] --> $s4
# VR7-[[245, 247)]-{129}-[246] --> $s4
# VR7-[[247, 249)]-{130}-[248] --> $s4
# VR7-[[251, 253)]-{132}-[252] --> $s4
# VR7-[[253, 255)]-{133}-[254] --> $s4
# VR7-[[257, 259)]-{135}-[258] --> $s4
# VR7-[[259, 261)]-{136}-[260] --> $s4
# VR7-[[263, 265)]-{138}-[264] --> $s4
# VR7-[[265, 267)]-{139}-[266] --> $s4
# VR7-[[269, 271)]-{141}-[270] --> $s4
# VR7-[[271, 273)]-{142}-[272] --> $s4
# VR7-[[275, 277)]-{144}-[276] --> $s4
# VR7-[[277, 279)]-{145}-[278] --> $s4
Main.main:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	addi	 $sp, $sp, -4
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
	move	$t0, $a0
	sw	$t0, -4 ($fp)
	li	$s0, 0
	la	$s1, A_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	jal	A_init
	la	$s2, Q_protObj
	move	$a0, $s2
	jal	Object.copy
	move	$s2, $a0
	jal	Q_init
	li	$s3, 0
loop_start0:
	move	$s4, $s0
	li	$s6, 1000
	slt	$s5, $s4, $s6
	beqz	$s5, loop_end0
	move	$s3, $s2
	bnez	$s3, case0_notvoid
	la	$s4, str_const0
	move	$a0, $s4
	li	$s4, 31
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_case_handler
case0_notvoid:
	lw	$s5, 0 ($s3)
case0_tag22:
	seq	$s4, $s5, 22
	beqz	$s4, case0_tag21
	li	$s5, 17
	b	case0_end
case0_tag21:
	slt	$s4, $s5, 21
	bnez	$s4, case0_tag20
	li	$t0, 22
	slt	$s4, $t0, $s5
	bnez	$s4, case0_tag20
	li	$s5, 16
	b	case0_end
case0_tag20:
	slt	$s4, $s5, 20
	bnez	$s4, case0_tag19
	li	$t0, 22
	slt	$s4, $t0, $s5
	bnez	$s4, case0_tag19
	li	$s5, 15
	b	case0_end
case0_tag19:
	slt	$s4, $s5, 19
	bnez	$s4, case0_tag18
	li	$t0, 22
	slt	$s4, $t0, $s5
	bnez	$s4, case0_tag18
	li	$s5, 14
	b	case0_end
case0_tag18:
	slt	$s4, $s5, 18
	bnez	$s4, case0_tag17
	li	$t0, 22
	slt	$s4, $t0, $s5
	bnez	$s4, case0_tag17
	li	$s5, 13
	b	case0_end
case0_tag17:
	slt	$s4, $s5, 17
	bnez	$s4, case0_tag16
	li	$t0, 22
	slt	$s4, $t0, $s5
	bnez	$s4, case0_tag16
	li	$s5, 12
	b	case0_end
case0_tag16:
	slt	$s4, $s5, 16
	bnez	$s4, case0_tag15
	li	$t0, 22
	slt	$s4, $t0, $s5
	bnez	$s4, case0_tag15
	li	$s5, 11
	b	case0_end
case0_tag15:
	slt	$s4, $s5, 15
	bnez	$s4, case0_tag14
	li	$t0, 22
	slt	$s4, $t0, $s5
	bnez	$s4, case0_tag14
	li	$s5, 10
	b	case0_end
case0_tag14:
	slt	$s4, $s5, 14
	bnez	$s4, case0_tag13
	li	$t0, 22
	slt	$s4, $t0, $s5
	bnez	$s4, case0_tag13
	li	$s5, 9
	b	case0_end
case0_tag13:
	slt	$s4, $s5, 13
	bnez	$s4, case0_tag12
	li	$t0, 22
	slt	$s4, $t0, $s5
	bnez	$s4, case0_tag12
	li	$s5, 8
	b	case0_end
case0_tag12:
	slt	$s4, $s5, 12
	bnez	$s4, case0_tag11
	li	$t0, 22
	slt	$s4, $t0, $s5
	bnez	$s4, case0_tag11
	li	$s5, 7
	b	case0_end
case0_tag11:
	slt	$s4, $s5, 11
	bnez	$s4, case0_tag10
	li	$t0, 22
	slt	$s4, $t0, $s5
	bnez	$s4, case0_tag10
	li	$s5, 6
	b	case0_end
case0_tag10:
	slt	$s4, $s5, 10
	bnez	$s4, case0_tag9
	li	$t0, 22
	slt	$s4, $t0, $s5
	bnez	$s4, case0_tag9
	li	$s5, 5
	b	case0_end
case0_tag9:
	slt	$s4, $s5, 9
	bnez	$s4, case0_tag8
	li	$t0, 22
	slt	$s4, $t0, $s5
	bnez	$s4, case0_tag8
	li	$s5, 4
	b	case0_end
case0_tag8:
	slt	$s4, $s5, 8
	bnez	$s4, case0_tag7
	li	$t0, 22
	slt	$s4, $t0, $s5
	bnez	$s4, case0_tag7
	li	$s5, 3
	b	case0_end
case0_tag7:
	slt	$s4, $s5, 7
	bnez	$s4, case0_tag5
	li	$t0, 22
	slt	$s4, $t0, $s5
	bnez	$s4, case0_tag5
	li	$s5, 2
	b	case0_end
case0_tag5:
	slt	$s4, $s5, 5
	bnez	$s4, case0_error
	li	$t0, 22
	slt	$s4, $t0, $s5
	bnez	$s4, case0_error
	li	$s5, 1
	b	case0_end
case0_error:
	move	$a0, $s3
	jal	_case_abort
case0_end:
	move	$s4, $s5
	move	$s3, $s4
	move	$s4, $s0
	li	$s0, 1
	add	$s5, $s4, $s0
	move	$s0, $s5
	b	loop_start0
loop_end0:
	move	$s0, $s3
	li	$s4, 17
	seq	$s2, $s0, $s4
	li	$t0, 1
	sub	$s0, $t0, $s2
	beqz	$s0, ite_false0
	lw	$t1, -4 ($fp)
	move	$s0, $t1
	bnez	$s0, dispatch_notvoid0
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 52
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid0:
	move	$a0, $s0
	lw	$s2, 8 ($s0)
	lw	$s0, 0 ($s2)
	jalr	$s0
	move	$s0, $a0
	b	ite_end0
ite_false0:
	li	$s0, 0
ite_end0:
	lw	$t0, -4 ($fp)
	lw	$s0, 12 ($t0)
	bnez	$s0, dispatch_notvoid1
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 54
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid1:
	la	$s2, str_const1
	move	$a0, $s0
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s0)
	lw	$s0, 12 ($s2)
	jalr	$s0
	move	$s0, $a0
	li	$s2, 0
	move	$s0, $s2
loop_start1:
	move	$s2, $s0
	li	$s5, 1000
	slt	$s4, $s2, $s5
	beqz	$s4, loop_end1
	move	$s2, $s1
	bnez	$s2, case1_notvoid
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 59
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_case_handler
case1_notvoid:
	lw	$s3, 0 ($s2)
case1_tag22:
	seq	$s4, $s3, 22
	beqz	$s4, case1_tag21
	li	$s3, 17
	b	case1_end
case1_tag21:
	slt	$s4, $s3, 21
	bnez	$s4, case1_tag20
	li	$t0, 22
	slt	$s4, $t0, $s3
	bnez	$s4, case1_tag20
	li	$s3, 16
	b	case1_end
case1_tag20:
	slt	$s4, $s3, 20
	bnez	$s4, case1_tag19
	li	$t0, 22
	slt	$s4, $t0, $s3
	bnez	$s4, case1_tag19
	li	$s3, 15
	b	case1_end
case1_tag19:
	slt	$s4, $s3, 19
	bnez	$s4, case1_tag18
	li	$t0, 22
	slt	$s4, $t0, $s3
	bnez	$s4, case1_tag18
	li	$s3, 14
	b	case1_end
case1_tag18:
	slt	$s4, $s3, 18
	bnez	$s4, case1_tag17
	li	$t0, 22
	slt	$s4, $t0, $s3
	bnez	$s4, case1_tag17
	li	$s3, 13
	b	case1_end
case1_tag17:
	slt	$s4, $s3, 17
	bnez	$s4, case1_tag16
	li	$t0, 22
	slt	$s4, $t0, $s3
	bnez	$s4, case1_tag16
	li	$s3, 12
	b	case1_end
case1_tag16:
	slt	$s4, $s3, 16
	bnez	$s4, case1_tag15
	li	$t0, 22
	slt	$s4, $t0, $s3
	bnez	$s4, case1_tag15
	li	$s3, 11
	b	case1_end
case1_tag15:
	slt	$s4, $s3, 15
	bnez	$s4, case1_tag14
	li	$t0, 22
	slt	$s4, $t0, $s3
	bnez	$s4, case1_tag14
	li	$s3, 10
	b	case1_end
case1_tag14:
	slt	$s4, $s3, 14
	bnez	$s4, case1_tag13
	li	$t0, 22
	slt	$s4, $t0, $s3
	bnez	$s4, case1_tag13
	li	$s3, 9
	b	case1_end
case1_tag13:
	slt	$s4, $s3, 13
	bnez	$s4, case1_tag12
	li	$t0, 22
	slt	$s4, $t0, $s3
	bnez	$s4, case1_tag12
	li	$s3, 8
	b	case1_end
case1_tag12:
	slt	$s4, $s3, 12
	bnez	$s4, case1_tag11
	li	$t0, 22
	slt	$s4, $t0, $s3
	bnez	$s4, case1_tag11
	li	$s3, 7
	b	case1_end
case1_tag11:
	slt	$s4, $s3, 11
	bnez	$s4, case1_tag10
	li	$t0, 22
	slt	$s4, $t0, $s3
	bnez	$s4, case1_tag10
	li	$s3, 6
	b	case1_end
case1_tag10:
	slt	$s4, $s3, 10
	bnez	$s4, case1_tag9
	li	$t0, 22
	slt	$s4, $t0, $s3
	bnez	$s4, case1_tag9
	li	$s3, 5
	b	case1_end
case1_tag9:
	slt	$s4, $s3, 9
	bnez	$s4, case1_tag8
	li	$t0, 22
	slt	$s4, $t0, $s3
	bnez	$s4, case1_tag8
	li	$s3, 4
	b	case1_end
case1_tag8:
	slt	$s4, $s3, 8
	bnez	$s4, case1_tag7
	li	$t0, 22
	slt	$s4, $t0, $s3
	bnez	$s4, case1_tag7
	li	$s3, 3
	b	case1_end
case1_tag7:
	slt	$s4, $s3, 7
	bnez	$s4, case1_tag5
	li	$t0, 22
	slt	$s4, $t0, $s3
	bnez	$s4, case1_tag5
	li	$s3, 2
	b	case1_end
case1_tag5:
	slt	$s4, $s3, 5
	bnez	$s4, case1_error
	li	$t0, 22
	slt	$s4, $t0, $s3
	bnez	$s4, case1_error
	li	$s3, 1
	b	case1_end
case1_error:
	move	$a0, $s2
	jal	_case_abort
case1_end:
	move	$s2, $s3
	move	$s3, $s2
	move	$s2, $s0
	li	$s0, 1
	add	$s4, $s2, $s0
	move	$s0, $s4
	b	loop_start1
loop_end1:
	move	$s0, $s3
	li	$s2, 1
	seq	$s1, $s0, $s2
	li	$t0, 1
	sub	$s0, $t0, $s1
	beqz	$s0, ite_false1
	lw	$t1, -4 ($fp)
	move	$s0, $t1
	bnez	$s0, dispatch_notvoid2
	la	$s1, str_const0
	move	$a0, $s1
	li	$s1, 80
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid2:
	move	$a0, $s0
	lw	$s1, 8 ($s0)
	lw	$s0, 0 ($s1)
	jalr	$s0
	move	$s0, $a0
	b	ite_end1
ite_false1:
	li	$s0, 0
ite_end1:
	lw	$t0, -4 ($fp)
	lw	$s0, 12 ($t0)
	bnez	$s0, dispatch_notvoid3
	la	$s1, str_const0
	move	$a0, $s1
	li	$s1, 82
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid3:
	la	$s1, str_const2
	move	$a0, $s0
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s1, 8 ($s0)
	lw	$s0, 12 ($s1)
	jalr	$s0
	move	$s0, $a0
	move	$s1, $s0
	move	$s0, $s1
	move	$s1, $s0
	move	$s0, $s1
	move	$a0, $s0
	j	__Main.main_epilogue
__Main.main_epilogue:
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
	addi	$sp, $sp, 12
	jr	$ra

