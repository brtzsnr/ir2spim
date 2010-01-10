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
str_const12:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const3
	.byte	0, 0, 0, 0
str_const11:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const0
	.ascii	"Main"
	.byte	0, 0, 0, 0
str_const10:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const4
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
	.word	int_const0
	.ascii	"Bool"
	.byte	0, 0, 0, 0
str_const7:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const2
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
	.word	5
	.word	String_dispatch
	.word	int_const1
	.ascii	"\n"
	.byte	0, 0, 0
str_const0:
	.word	3
	.word	10
	.word	String_dispatch
	.word	int_const9
	.ascii	"_tests/advanced/cool.cl"
	.byte	0
int_const9:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	23
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
	.word	2
int_const3:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	0
int_const2:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	3
int_const1:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	1
int_const0:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	4
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
	.word	str_const11
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
	.word	int_const3
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

# web count: 62
# VR0-[[0, 3), [3, 8), [8, 14), [14, 19), [19, 25), [25, 30), [30, 58), [58, 63), [63, 65), [65, 67), [67, 68), [68, 75), [75, 80), [80, 86), [86, 91), [91, 119)]-{0}-[1, 118, 63] --> $s0
# VR1-[[1, 3), [3, 8), [8, 14), [14, 19), [19, 25), [25, 30), [30, 54)]-{1}-[51, 2, 53] --> $s1
# VR1-[[56, 58), [58, 63), [63, 65), [65, 67), [67, 68), [68, 75), [75, 80), [80, 86), [86, 91), [91, 115)]-{26}-[114, 112, 57] --> $s1
# VR1-[[117, 118)]-{55}-[] --> $s1
# VR1-[[118, 120), [120, 125), [125, 129)]-{56}-[119, 126, 128] --> $s1
# VR1-[[131, 133)]-{62}-[132] --> $s0
# VR2-[[3, 5)]-{2}-[4] --> $s2
# VR2-[[5, 7)]-{3}-[6] --> $s2
# VR2-[[8, 10)]-{4}-[9] --> $s2
# VR2-[[11, 14), [14, 19), [19, 21)]-{5}-[19, 20, 13] --> $s2
# VR2-[[23, 25), [25, 30), [30, 48)]-{10}-[24, 47, 44] --> $s2
# VR2-[[50, 53)]-{23}-[52] --> $s2
# VR2-[[53, 55)]-{24}-[54] --> $s2
# VR2-[[54, 56)]-{25}-[55] --> $s1
# VR2-[[58, 60)]-{27}-[59] --> $s2
# VR2-[[60, 62)]-{28}-[61] --> $s2
# VR2-[[63, 65)]-{29}-[64] --> $s2
# VR2-[[65, 67), [67, 68), [68, 73)]-{30, 31}-[72] --> $s2
# VR2-[[73, 75), [75, 80), [80, 82)]-{34}-[81, 80, 74] --> $s2
# VR2-[[84, 86), [86, 91), [91, 109)]-{39}-[85, 108, 105] --> $s2
# VR2-[[111, 114)]-{52}-[113] --> $s2
# VR2-[[114, 116)]-{53}-[115] --> $s2
# VR2-[[115, 117)]-{54}-[116] --> $s1
# VR2-[[120, 122)]-{57}-[121] --> $s0
# VR2-[[122, 124)]-{58}-[123] --> $s0
# VR2-[[125, 128)]-{59}-[127] --> $s0
# VR2-[[128, 130)]-{60}-[129] --> $s0
# VR2-[[129, 131)]-{61}-[130] --> $s1
# VR3-[[14, 16)]-{6}-[15] --> $s3
# VR3-[[16, 18)]-{7}-[17] --> $s3
# VR3-[[20, 22)]-{8}-[21] --> $s3
# VR3-[[21, 23)]-{9}-[22] --> $s2
# VR3-[[25, 27)]-{11}-[26] --> $s3
# VR3-[[27, 29)]-{12}-[28] --> $s3
# VR3-[[30, 36)]-{13}-[35] --> $s3
# VR3-[[36, 46)]-{16}-[45] --> $s3
# VR3-[[47, 49)]-{21}-[48] --> $s3
# VR3-[[48, 50)]-{22}-[49] --> $s2
# VR3-[[68, 70)]-{32}-[69] --> $s3
# VR3-[[71, 74)]-{33}-[72, 73] --> $s3
# VR3-[[75, 77)]-{35}-[76] --> $s3
# VR3-[[77, 79)]-{36}-[78] --> $s3
# VR3-[[81, 83)]-{37}-[82] --> $s3
# VR3-[[82, 84)]-{38}-[83] --> $s2
# VR3-[[86, 88)]-{40}-[87] --> $s3
# VR3-[[88, 90)]-{41}-[89] --> $s3
# VR3-[[91, 97)]-{42}-[96] --> $s3
# VR3-[[97, 107)]-{45}-[106] --> $s3
# VR3-[[108, 110)]-{50}-[109] --> $s3
# VR3-[[109, 111)]-{51}-[110] --> $s2
# VR4-[[31, 33)]-{14}-[32] --> $s4
# VR4-[[34, 37)]-{15}-[35, 36] --> $s4
# VR4-[[37, 43)]-{17}-[42] --> $s4
# VR4-[[43, 47)]-{20}-[46] --> $s4
# VR4-[[92, 94)]-{43}-[93] --> $s4
# VR4-[[95, 98)]-{44}-[96, 97] --> $s4
# VR4-[[98, 104)]-{46}-[103] --> $s4
# VR4-[[104, 108)]-{49}-[107] --> $s4
# VR5-[[38, 40)]-{18}-[39] --> $s5
# VR5-[[41, 44)]-{19}-[42, 43] --> $s5
# VR5-[[99, 101)]-{47}-[100] --> $s5
# VR5-[[102, 105)]-{48}-[103, 104] --> $s5
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
	move	$s0, $a0
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid0
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 4
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid0:
	la	$s2, Object_protObj
	move	$a0, $s2
	jal	Object.copy
	move	$s2, $a0
	jal	Object_init
	bnez	$s2, dispatch_notvoid1
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 4
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid1:
	move	$a0, $s2
	lw	$s3, 8 ($s2)
	lw	$s2, 8 ($s3)
	jalr	$s2
	move	$s2, $a0
	bnez	$s2, dispatch_notvoid2
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 4
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid2:
	li	$s3, 4
	la	$s4, Int_protObj
	move	$a0, $s4
	jal	Object.copy
	move	$s4, $a0
	sw	$s3, 12 ($s4)
	move	$s3, $s4
	li	$s4, 1
	la	$s5, Int_protObj
	move	$a0, $s5
	jal	Object.copy
	move	$s5, $a0
	sw	$s4, 12 ($s5)
	move	$s4, $s5
	move	$a0, $s2
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s3, 8 ($s2)
	lw	$s2, 20 ($s3)
	jalr	$s2
	move	$s2, $a0
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	bnez	$s1, dispatch_notvoid3
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 4
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid3:
	move	$s2, $s0
	beqz	$s2, isvoid_true0
	la	$s2, bool_const0
	b	isvoid_end0
isvoid_true0:
	la	$s2, bool_const1
isvoid_end0:
	la	$s3, Bool_protObj
	move	$a0, $s3
	jal	Object.copy
	move	$s3, $a0
	sw	$s2, 12 ($s3)
	move	$s2, $s3
	bnez	$s2, dispatch_notvoid4
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 5
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid4:
	move	$a0, $s2
	lw	$s3, 8 ($s2)
	lw	$s2, 8 ($s3)
	jalr	$s2
	move	$s2, $a0
	bnez	$s2, dispatch_notvoid5
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 5
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid5:
	li	$s3, 1
	la	$s4, Int_protObj
	move	$a0, $s4
	jal	Object.copy
	move	$s4, $a0
	sw	$s3, 12 ($s4)
	move	$s3, $s4
	li	$s4, 3
	la	$s5, Int_protObj
	move	$a0, $s5
	jal	Object.copy
	move	$s5, $a0
	sw	$s4, 12 ($s5)
	move	$s4, $s5
	move	$a0, $s2
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s3, 8 ($s2)
	lw	$s2, 20 ($s3)
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
	lw	$s0, 8 ($s1)
	lw	$s1, 12 ($s0)
	jalr	$s1
	move	$s0, $a0
	move	$a0, $s0
	j	__Main.main_epilogue
__Main.main_epilogue:
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

