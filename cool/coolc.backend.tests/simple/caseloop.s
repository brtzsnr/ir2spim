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
	.ascii	"tests/simple/ok/caseloop.cl"
	.byte	0
int_const19:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	27
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

# Mapping: VR0:$s0 
# To spill: 
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

# Mapping: VR0:$s0 
# To spill: 
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

# Mapping: VR0:$s0 
# To spill: 
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

# Mapping: VR0:$s0 
# To spill: 
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

# Mapping: VR0:$s0 
# To spill: 
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

# Mapping: VR0:$s0 
# To spill: 
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

# Mapping: VR0:$s0 
# To spill: 
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

# Mapping: VR0:$s0 
# To spill: 
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

# Mapping: VR0:$s0 
# To spill: 
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

# Mapping: VR0:$s0 
# To spill: 
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

# Mapping: VR0:$s0 
# To spill: 
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

# Mapping: VR0:$s0 
# To spill: 
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

# Mapping: VR0:$s0 
# To spill: 
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

# Mapping: VR0:$s0 
# To spill: 
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s2 VR3:$s3 VR4:$s4 VR5:$s5 VR6:$s6 VR7:$s4 
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
	sw	$s5, 0 ($sp)
	addi $sp, $sp, -4
	sw	$s6, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	li	$s1, 0
	la	$s2, A_protObj
	move	$a0, $s2
	jal	Object.copy
	move	$s2, $a0
	jal	A_init
	la	$s3, Q_protObj
	move	$a0, $s3
	jal	Object.copy
	move	$s3, $a0
	jal	Q_init
	li	$s4, 0
loop_start0:
	move	$s5, $s1
	li	$s6, 1000
	slt	$s5, $s5, $s6
	beqz	$s5, loop_end0
	move	$s5, $s3
	bnez	$s5, case0_notvoid
	la	$s6, str_const0
	move	$a0, $s6
	li	$s6, 31
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_case_handler
case0_notvoid:
	lw	$s6, 0 ($s5)
case0_tag22:
	seq	$s4, $s6, 22
	beqz	$s4, case0_tag21
	li	$s6, 17
	b	case0_end
case0_tag21:
	slt	$s4, $s6, 21
	bnez	$s4, case0_tag20
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case0_tag20
	li	$s6, 16
	b	case0_end
case0_tag20:
	slt	$s4, $s6, 20
	bnez	$s4, case0_tag19
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case0_tag19
	li	$s6, 15
	b	case0_end
case0_tag19:
	slt	$s4, $s6, 19
	bnez	$s4, case0_tag18
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case0_tag18
	li	$s6, 14
	b	case0_end
case0_tag18:
	slt	$s4, $s6, 18
	bnez	$s4, case0_tag17
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case0_tag17
	li	$s6, 13
	b	case0_end
case0_tag17:
	slt	$s4, $s6, 17
	bnez	$s4, case0_tag16
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case0_tag16
	li	$s6, 12
	b	case0_end
case0_tag16:
	slt	$s4, $s6, 16
	bnez	$s4, case0_tag15
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case0_tag15
	li	$s6, 11
	b	case0_end
case0_tag15:
	slt	$s4, $s6, 15
	bnez	$s4, case0_tag14
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case0_tag14
	li	$s6, 10
	b	case0_end
case0_tag14:
	slt	$s4, $s6, 14
	bnez	$s4, case0_tag13
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case0_tag13
	li	$s6, 9
	b	case0_end
case0_tag13:
	slt	$s4, $s6, 13
	bnez	$s4, case0_tag12
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case0_tag12
	li	$s6, 8
	b	case0_end
case0_tag12:
	slt	$s4, $s6, 12
	bnez	$s4, case0_tag11
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case0_tag11
	li	$s6, 7
	b	case0_end
case0_tag11:
	slt	$s4, $s6, 11
	bnez	$s4, case0_tag10
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case0_tag10
	li	$s6, 6
	b	case0_end
case0_tag10:
	slt	$s4, $s6, 10
	bnez	$s4, case0_tag9
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case0_tag9
	li	$s6, 5
	b	case0_end
case0_tag9:
	slt	$s4, $s6, 9
	bnez	$s4, case0_tag8
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case0_tag8
	li	$s6, 4
	b	case0_end
case0_tag8:
	slt	$s4, $s6, 8
	bnez	$s4, case0_tag7
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case0_tag7
	li	$s6, 3
	b	case0_end
case0_tag7:
	slt	$s4, $s6, 7
	bnez	$s4, case0_tag5
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case0_tag5
	li	$s6, 2
	b	case0_end
case0_tag5:
	slt	$s4, $s6, 5
	bnez	$s4, case0_error
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case0_error
	li	$s6, 1
	b	case0_end
case0_error:
	move	$a0, $s5
	jal	_case_abort
case0_end:
	move	$s5, $s6
	move	$s4, $s5
	move	$s5, $s1
	li	$s6, 1
	add	$s5, $s5, $s6
	move	$s1, $s5
	b	loop_start0
loop_end0:
	move	$s5, $s4
	li	$s6, 17
	seq	$s5, $s5, $s6
	li	$t0, 1
	sub	$s5, $t0, $s5
	beqz	$s5, ite_false0
	move	$s5, $s0
	bnez	$s5, dispatch_notvoid0
	la	$s6, str_const0
	move	$a0, $s6
	li	$s6, 52
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid0:
	move	$a0, $s5
	lw	$s6, 8 ($s5)
	lw	$s6, 0 ($s6)
	jalr	$s6
	move	$s5, $a0
	b	ite_end0
ite_false0:
	li	$s5, 0
ite_end0:
	lw	$s5, 12 ($s0)
	bnez	$s5, dispatch_notvoid1
	la	$s6, str_const0
	move	$a0, $s6
	li	$s6, 54
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid1:
	la	$s6, str_const1
	move	$a0, $s5
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s6, 8 ($s5)
	lw	$s6, 12 ($s6)
	jalr	$s6
	move	$s5, $a0
	li	$s5, 0
	move	$s1, $s5
loop_start1:
	move	$s5, $s1
	li	$s6, 1000
	slt	$s5, $s5, $s6
	beqz	$s5, loop_end1
	move	$s5, $s2
	bnez	$s5, case1_notvoid
	la	$s6, str_const0
	move	$a0, $s6
	li	$s6, 59
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_case_handler
case1_notvoid:
	lw	$s6, 0 ($s5)
case1_tag22:
	seq	$s4, $s6, 22
	beqz	$s4, case1_tag21
	li	$s6, 17
	b	case1_end
case1_tag21:
	slt	$s4, $s6, 21
	bnez	$s4, case1_tag20
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case1_tag20
	li	$s6, 16
	b	case1_end
case1_tag20:
	slt	$s4, $s6, 20
	bnez	$s4, case1_tag19
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case1_tag19
	li	$s6, 15
	b	case1_end
case1_tag19:
	slt	$s4, $s6, 19
	bnez	$s4, case1_tag18
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case1_tag18
	li	$s6, 14
	b	case1_end
case1_tag18:
	slt	$s4, $s6, 18
	bnez	$s4, case1_tag17
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case1_tag17
	li	$s6, 13
	b	case1_end
case1_tag17:
	slt	$s4, $s6, 17
	bnez	$s4, case1_tag16
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case1_tag16
	li	$s6, 12
	b	case1_end
case1_tag16:
	slt	$s4, $s6, 16
	bnez	$s4, case1_tag15
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case1_tag15
	li	$s6, 11
	b	case1_end
case1_tag15:
	slt	$s4, $s6, 15
	bnez	$s4, case1_tag14
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case1_tag14
	li	$s6, 10
	b	case1_end
case1_tag14:
	slt	$s4, $s6, 14
	bnez	$s4, case1_tag13
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case1_tag13
	li	$s6, 9
	b	case1_end
case1_tag13:
	slt	$s4, $s6, 13
	bnez	$s4, case1_tag12
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case1_tag12
	li	$s6, 8
	b	case1_end
case1_tag12:
	slt	$s4, $s6, 12
	bnez	$s4, case1_tag11
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case1_tag11
	li	$s6, 7
	b	case1_end
case1_tag11:
	slt	$s4, $s6, 11
	bnez	$s4, case1_tag10
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case1_tag10
	li	$s6, 6
	b	case1_end
case1_tag10:
	slt	$s4, $s6, 10
	bnez	$s4, case1_tag9
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case1_tag9
	li	$s6, 5
	b	case1_end
case1_tag9:
	slt	$s4, $s6, 9
	bnez	$s4, case1_tag8
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case1_tag8
	li	$s6, 4
	b	case1_end
case1_tag8:
	slt	$s4, $s6, 8
	bnez	$s4, case1_tag7
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case1_tag7
	li	$s6, 3
	b	case1_end
case1_tag7:
	slt	$s4, $s6, 7
	bnez	$s4, case1_tag5
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case1_tag5
	li	$s6, 2
	b	case1_end
case1_tag5:
	slt	$s4, $s6, 5
	bnez	$s4, case1_error
	li	$t0, 22
	slt	$s4, $t0, $s6
	bnez	$s4, case1_error
	li	$s6, 1
	b	case1_end
case1_error:
	move	$a0, $s5
	jal	_case_abort
case1_end:
	move	$s5, $s6
	move	$s4, $s5
	move	$s5, $s1
	li	$s6, 1
	add	$s5, $s5, $s6
	move	$s1, $s5
	b	loop_start1
loop_end1:
	move	$s5, $s4
	li	$s6, 1
	seq	$s5, $s5, $s6
	li	$t0, 1
	sub	$s5, $t0, $s5
	beqz	$s5, ite_false1
	move	$s5, $s0
	bnez	$s5, dispatch_notvoid2
	la	$s6, str_const0
	move	$a0, $s6
	li	$s6, 80
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid2:
	move	$a0, $s5
	lw	$s6, 8 ($s5)
	lw	$s6, 0 ($s6)
	jalr	$s6
	move	$s5, $a0
	b	ite_end1
ite_false1:
	li	$s5, 0
ite_end1:
	lw	$s5, 12 ($s0)
	bnez	$s5, dispatch_notvoid3
	la	$s6, str_const0
	move	$a0, $s6
	li	$s6, 82
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid3:
	la	$s6, str_const2
	move	$a0, $s5
	sw	$s6, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s6, 8 ($s5)
	lw	$s6, 12 ($s6)
	jalr	$s6
	move	$s5, $a0
	move	$s4, $s5
	move	$s3, $s4
	move	$s2, $s3
	move	$s1, $s2
	move	$a0, $s1
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
	addi	$sp, $sp, 8
	jr	$ra

