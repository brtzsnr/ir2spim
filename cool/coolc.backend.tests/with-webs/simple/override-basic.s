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
	.word	int_const0
	.byte	0, 0, 0, 0
str_const14:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const1
	.ascii	"Main"
	.byte	0, 0, 0, 0
str_const13:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const2
	.ascii	"Derived"
	.byte	0
str_const12:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const1
	.ascii	"Base"
	.byte	0, 0, 0, 0
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
	.word	int_const4
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
	.word	int_const5
	.ascii	"Int"
	.byte	0
str_const7:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const4
	.ascii	"Object"
	.byte	0, 0
str_const6:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const6
	.ascii	"_prim_slot"
	.byte	0, 0
str_const5:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const7
	.ascii	"SELF_TYPE"
	.byte	0, 0, 0
str_const4:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const7
	.ascii	"_no_class"
	.byte	0, 0, 0
str_const3:
	.word	3
	.word	8
	.word	String_dispatch
	.word	int_const8
	.ascii	"<basic class>"
	.byte	0, 0, 0
str_const2:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const9
	.ascii	"derived "
	.byte	0, 0, 0, 0
str_const1:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const10
	.ascii	"\n"
	.byte	0, 0, 0
str_const0:
	.word	3
	.word	12
	.word	String_dispatch
	.word	int_const11
	.ascii	"_tests/simple/override-basic.cl"
	.byte	0
int_const11:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	31
int_const10:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	1
int_const9:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	8
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
	.word	3
int_const4:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	6
int_const3:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	2
int_const2:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	7
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
	.word	str_const14
	.word	str_const12
	.word	str_const13
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
	.word	Base_protObj
	.word	Base_init
	.word	Derived_protObj
	.word	Derived_init
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
Base_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Base.identify
Derived_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	Derived.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Base.identify
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
Base_protObj:
	.word	6
	.word	3
	.word	Base_dispatch
Derived_protObj:
	.word	7
	.word	3
	.word	Derived_dispatch
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
Base_init:
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
	j	__Base_init_epilogue
__Base_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
Derived_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	Base_init
	move	$a0, $s0
	j	__Derived_init_epilogue
__Derived_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 34
# VR0-[[0, 1)]-{0}-[] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s0
# VR1-[[4, 7)]-{2}-[6] --> $s0
# VR1-[[18, 19)]-{9}-[] --> $s0
# VR1-[[19, 21)]-{10}-[20] --> $s0
# VR1-[[22, 25)]-{11}-[24] --> $s0
# VR1-[[36, 37)]-{18}-[] --> $s0
# VR1-[[37, 39)]-{19}-[38] --> $s0
# VR1-[[40, 44), [44, 49), [49, 55)]-{20}-[54, 42] --> $s0
# VR1-[[66, 68)]-{33}-[67] --> $s0
# VR2-[[6, 8), [8, 13), [13, 14)]-{3}-[7, 13] --> $s1
# VR2-[[17, 19)]-{8}-[18] --> $s1
# VR2-[[24, 26), [26, 31), [31, 32)]-{12}-[25, 31] --> $s1
# VR2-[[35, 37)]-{17}-[36] --> $s1
# VR2-[[42, 44), [44, 49), [49, 50)]-{21}-[49, 43] --> $s1
# VR2-[[53, 54)]-{26}-[] --> $s1
# VR2-[[54, 56), [56, 61), [61, 62)]-{27}-[55, 61] --> $s1
# VR2-[[65, 67)]-{32}-[66] --> $s1
# VR3-[[8, 10)]-{4}-[9] --> $s0
# VR3-[[10, 12)]-{5}-[11] --> $s0
# VR3-[[14, 16)]-{6}-[15] --> $s0
# VR3-[[15, 17)]-{7}-[16] --> $s1
# VR3-[[26, 28)]-{13}-[27] --> $s0
# VR3-[[28, 30)]-{14}-[29] --> $s0
# VR3-[[32, 34)]-{15}-[33] --> $s0
# VR3-[[33, 35)]-{16}-[34] --> $s1
# VR3-[[44, 46)]-{22}-[45] --> $s2
# VR3-[[46, 48)]-{23}-[47] --> $s2
# VR3-[[50, 52)]-{24}-[51] --> $s1
# VR3-[[51, 53)]-{25}-[52] --> $s2
# VR3-[[56, 58)]-{28}-[57] --> $s0
# VR3-[[58, 60)]-{29}-[59] --> $s0
# VR3-[[62, 64)]-{30}-[63] --> $s0
# VR3-[[63, 65)]-{31}-[64] --> $s1
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
	la	$s0, Base_protObj
	move	$a0, $s0
	jal	Object.copy
	move	$s0, $a0
	jal	Base_init
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid0
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 30
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid0:
	move	$a0, $s1
	la	$s0, Base_dispatch
	lw	$s1, 28 ($s0)
	jalr	$s1
	move	$s1, $a0
	move	$s0, $s1
	la	$s0, Derived_protObj
	move	$a0, $s0
	jal	Object.copy
	move	$s0, $a0
	jal	Derived_init
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid1
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 33
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid1:
	move	$a0, $s1
	la	$s0, Base_dispatch
	lw	$s1, 28 ($s0)
	jalr	$s1
	move	$s1, $a0
	move	$s0, $s1
	la	$s0, Derived_protObj
	move	$a0, $s0
	jal	Object.copy
	move	$s0, $a0
	jal	Derived_init
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid2
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 37
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid2:
	move	$a0, $s1
	la	$s1, Base_dispatch
	lw	$s2, 28 ($s1)
	jalr	$s2
	move	$s1, $a0
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid3
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 38
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid3:
	move	$a0, $s1
	la	$s0, Derived_dispatch
	lw	$s1, 28 ($s0)
	jalr	$s1
	move	$s1, $a0
	move	$s0, $s1
	move	$a0, $s0
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

# web count: 20
# VR0-[[0, 3), [3, 8), [8, 10), [10, 15), [15, 27)]-{0}-[1, 8, 26] --> $s0
# VR1-[[1, 3), [3, 8), [8, 10), [10, 15), [15, 23)]-{1}-[2, 20, 22] --> $s1
# VR1-[[25, 26)]-{12}-[] --> $s1
# VR1-[[26, 28), [28, 33), [33, 35)]-{13}-[34, 27] --> $s1
# VR1-[[39, 41)]-{19}-[40] --> $s0
# VR2-[[3, 5)]-{2}-[4] --> $s2
# VR2-[[5, 7)]-{3}-[6] --> $s2
# VR2-[[8, 10), [10, 15), [15, 17)]-{4}-[16, 9, 15] --> $s2
# VR2-[[19, 22)]-{9}-[21] --> $s2
# VR2-[[22, 24)]-{10}-[23] --> $s2
# VR2-[[23, 25)]-{11}-[24] --> $s1
# VR2-[[28, 30)]-{14}-[29] --> $s0
# VR2-[[30, 32)]-{15}-[31] --> $s0
# VR2-[[33, 36)]-{16}-[35] --> $s0
# VR2-[[36, 38)]-{17}-[37] --> $s0
# VR2-[[37, 39)]-{18}-[38] --> $s1
# VR3-[[10, 12)]-{5}-[11] --> $s3
# VR3-[[12, 14)]-{6}-[13] --> $s3
# VR3-[[16, 18)]-{7}-[17] --> $s3
# VR3-[[17, 19)]-{8}-[18] --> $s2
Base.identify:
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
	li	$s2, 5
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid4:
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid5
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 5
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid5:
	move	$a0, $s2
	lw	$s3, 8 ($s2)
	lw	$s2, 8 ($s3)
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
	bnez	$s1, dispatch_notvoid6
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 6
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid6:
	la	$s0, str_const1
	move	$a0, $s1
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	la	$s0, Base_dispatch
	lw	$s1, 12 ($s0)
	jalr	$s1
	move	$s0, $a0
	move	$a0, $s0
	j	__Base.identify_epilogue
__Base.identify_epilogue:
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

# web count: 23
# VR0-[[0, 4), [4, 9), [9, 18), [18, 23), [23, 31)]-{0}-[16, 2, 30] --> $s0
# VR1-[[1, 4), [4, 9), [9, 18), [18, 23), [23, 24)]-{1}-[23] --> $s1
# VR2-[[2, 4), [4, 9), [9, 11)]-{2}-[3, 10] --> $s2
# VR2-[[15, 16)]-{8}-[] --> $s2
# VR2-[[16, 18), [18, 23), [23, 25)]-{9}-[17, 24] --> $s2
# VR2-[[29, 30)]-{15}-[] --> $s1
# VR2-[[30, 32), [32, 37), [37, 39)]-{16}-[38, 31] --> $s1
# VR2-[[43, 45)]-{22}-[44] --> $s0
# VR3-[[4, 6)]-{3}-[5] --> $s3
# VR3-[[6, 8)]-{4}-[7] --> $s3
# VR3-[[9, 12)]-{5}-[11] --> $s3
# VR3-[[12, 14)]-{6}-[13] --> $s2
# VR3-[[13, 15)]-{7}-[14] --> $s3
# VR3-[[18, 20)]-{10}-[19] --> $s3
# VR3-[[20, 22)]-{11}-[21] --> $s3
# VR3-[[23, 26)]-{12}-[25] --> $s3
# VR3-[[26, 28)]-{13}-[27] --> $s1
# VR3-[[27, 29)]-{14}-[28] --> $s2
# VR3-[[32, 34)]-{17}-[33] --> $s0
# VR3-[[34, 36)]-{18}-[35] --> $s0
# VR3-[[37, 40)]-{19}-[39] --> $s0
# VR3-[[40, 42)]-{20}-[41] --> $s0
# VR3-[[41, 43)]-{21}-[42] --> $s1
Derived.out_string:
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
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid7
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 16
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid7:
	la	$s3, str_const2
	move	$a0, $s2
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	la	$s2, Base_dispatch
	lw	$s3, 12 ($s2)
	jalr	$s3
	move	$s2, $a0
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid8
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 17
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid8:
	move	$s3, $s1
	move	$a0, $s2
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	la	$s1, Base_dispatch
	lw	$s2, 12 ($s1)
	jalr	$s2
	move	$s1, $a0
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid9
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 18
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid9:
	la	$s0, str_const1
	move	$a0, $s1
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	la	$s0, Base_dispatch
	lw	$s1, 12 ($s0)
	jalr	$s1
	move	$s0, $a0
	move	$a0, $s0
	j	__Derived.out_string_epilogue
__Derived.out_string_epilogue:
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

