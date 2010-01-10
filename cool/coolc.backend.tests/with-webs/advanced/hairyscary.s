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

# web count: 9
# VR0-[[0, 27)]-{0}-[19, 7, 25, 26, 13] --> $s0
# VR1-[[2, 4)]-{1}-[3] --> $s1
# VR1-[[5, 8)]-{2}-[7] --> $s1
# VR1-[[8, 10)]-{3}-[9] --> $s1
# VR1-[[11, 14)]-{4}-[13] --> $s1
# VR1-[[14, 16)]-{5}-[15] --> $s1
# VR1-[[17, 20)]-{6}-[19] --> $s1
# VR1-[[20, 22)]-{7}-[21] --> $s1
# VR1-[[23, 26)]-{8}-[25] --> $s1
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

# web count: 26
# VR0-[[0, 6), [6, 11), [11, 14), [14, 16), [16, 18), [18, 20), [20, 26), [26, 28), [28, 30), [30, 36), [36, 38), [38, 40), [40, 46), [46, 48), [48, 52), [52, 57), [57, 70)]-{0}-[68, 50, 69, 49, 3, 4] --> $s0
# VR1-[[2, 4)]-{1}-[3] --> $s1
# VR1-[[4, 6), [6, 11), [11, 14), [14, 15), [16, 18), [18, 20), [26, 28), [28, 30), [36, 38), [38, 40), [46, 47)]-{2}-[5, 11, 46, 14] --> $s1
# VR1-[[48, 50)]-{20}-[49] --> $s1
# VR1-[[50, 52), [52, 57), [57, 59)]-{21}-[51, 58, 57] --> $s1
# VR1-[[61, 67)]-{26}-[66] --> $s1
# VR1-[[67, 69)]-{29}-[68] --> $s1
# VR2-[[6, 8)]-{3}-[7] --> $s2
# VR2-[[8, 10)]-{4}-[9] --> $s2
# VR2-[[11, 14), [14, 16), [16, 18), [18, 20), [23, 26), [26, 28), [28, 30), [33, 36), [36, 38), [38, 40), [43, 46), [46, 48), [48, 49)]-{5, 7, 11, 15, 19}-[16, 18, 48, 38, 36, 26, 12, 28] --> $s2
# VR2-[[20, 22)]-{10}-[21] --> $s1
# VR2-[[30, 32)]-{14}-[31] --> $s1
# VR2-[[40, 42)]-{18}-[41] --> $s1
# VR2-[[52, 54)]-{22}-[53] --> $s2
# VR2-[[54, 56)]-{23}-[55] --> $s2
# VR2-[[58, 60)]-{24}-[59] --> $s2
# VR2-[[59, 61)]-{25}-[60] --> $s1
# VR2-[[62, 64)]-{27}-[63] --> $s2
# VR2-[[65, 68)]-{28}-[66, 67] --> $s2
# VR3-[[12, 14)]-{6}-[13] --> $s3
# VR3-[[16, 18)]-{8}-[17] --> $s3
# VR3-[[18, 20)]-{9}-[19] --> $s3
# VR3-[[26, 28)]-{12}-[27] --> $s3
# VR3-[[28, 30)]-{13}-[29] --> $s3
# VR3-[[36, 38)]-{16}-[37] --> $s3
# VR3-[[38, 40)]-{17}-[39] --> $s3
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
	la	$s1, Bar_protObj
	move	$a0, $s1
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
	la	$s1, Razz_protObj
	move	$a0, $s1
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
	la	$s1, Foo_protObj
	move	$a0, $s1
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
	lw	$s1, 28 ($s2)
	jalr	$s1
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

# web count: 40
# VR0-[[0, 4), [4, 9), [9, 12), [12, 14), [14, 16), [16, 18), [18, 24), [24, 26), [26, 28), [28, 34), [34, 36), [36, 40), [40, 45), [45, 52), [52, 57), [57, 65), [65, 70), [70, 78), [78, 83), [83, 91)]-{0}-[50, 2, 38, 37, 76, 63, 89, 90] --> $s0
# VR1-[[2, 4), [4, 9), [9, 12), [12, 13), [14, 16), [16, 18), [24, 26), [26, 28), [34, 35)]-{1}-[34, 3, 9, 12] --> $s1
# VR1-[[36, 38)]-{15}-[37] --> $s1
# VR1-[[38, 40), [40, 45), [45, 47)]-{16}-[39, 46, 45] --> $s1
# VR1-[[49, 52), [52, 57), [57, 63)]-{21}-[62] --> $s1
# VR1-[[62, 65), [65, 70), [70, 76)]-{28}-[75] --> $s2
# VR1-[[75, 78), [78, 83), [83, 89)]-{35}-[88] --> $s1
# VR1-[[88, 90)]-{42}-[89] --> $s2
# VR2-[[4, 6)]-{2}-[5] --> $s2
# VR2-[[6, 8)]-{3}-[7] --> $s2
# VR2-[[9, 12), [12, 14), [14, 16), [16, 18), [21, 24), [24, 26), [26, 28), [31, 34), [34, 36), [36, 37)]-{4, 6, 10, 14}-[16, 36, 24, 10, 26, 14] --> $s2
# VR2-[[18, 20)]-{9}-[19] --> $s1
# VR2-[[28, 30)]-{13}-[29] --> $s1
# VR2-[[40, 42)]-{17}-[41] --> $s2
# VR2-[[42, 44)]-{18}-[43] --> $s2
# VR2-[[46, 48)]-{19}-[47] --> $s2
# VR2-[[47, 49)]-{20}-[48] --> $s1
# VR2-[[50, 52), [52, 57), [57, 59)]-{22}-[51, 58, 57] --> $s2
# VR2-[[61, 63)]-{27}-[62] --> $s3
# VR2-[[63, 65), [65, 70), [70, 72)]-{29}-[70, 71, 64] --> $s1
# VR2-[[74, 76)]-{34}-[75] --> $s3
# VR2-[[76, 78), [78, 83), [83, 85)]-{36}-[84, 83, 77] --> $s2
# VR2-[[87, 89)]-{41}-[88] --> $s3
# VR3-[[10, 12)]-{5}-[11] --> $s3
# VR3-[[14, 16)]-{7}-[15] --> $s3
# VR3-[[16, 18)]-{8}-[17] --> $s3
# VR3-[[24, 26)]-{11}-[25] --> $s3
# VR3-[[26, 28)]-{12}-[27] --> $s3
# VR3-[[52, 54)]-{23}-[53] --> $s3
# VR3-[[54, 56)]-{24}-[55] --> $s3
# VR3-[[58, 60)]-{25}-[59] --> $s3
# VR3-[[59, 61)]-{26}-[60] --> $s2
# VR3-[[65, 67)]-{30}-[66] --> $s3
# VR3-[[67, 69)]-{31}-[68] --> $s3
# VR3-[[71, 73)]-{32}-[72] --> $s3
# VR3-[[72, 74)]-{33}-[73] --> $s1
# VR3-[[78, 80)]-{37}-[79] --> $s3
# VR3-[[80, 82)]-{38}-[81] --> $s3
# VR3-[[84, 86)]-{39}-[85] --> $s3
# VR3-[[85, 87)]-{40}-[86] --> $s2
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
	la	$s1, Bar_protObj
	move	$a0, $s1
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
	la	$s1, Razz_protObj
	move	$a0, $s1
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
	lw	$s1, 32 ($s2)
	jalr	$s1
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
	lw	$s2, 32 ($s3)
	jalr	$s2
	move	$s3, $a0
	add	$s2, $s1, $s3
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid3
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 10
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid3:
	move	$a0, $s1
	lw	$s3, 8 ($s1)
	lw	$s1, 32 ($s3)
	jalr	$s1
	move	$s3, $a0
	add	$s1, $s2, $s3
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
	lw	$s2, 28 ($s3)
	jalr	$s2
	move	$s3, $a0
	add	$s2, $s1, $s3
	sw	$s2, 28 ($s0)
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

# web count: 44
# VR0-[[0, 4), [4, 9), [9, 12), [12, 14), [14, 16), [16, 18), [18, 24), [24, 26), [26, 30), [30, 35), [35, 42), [42, 47), [47, 55), [55, 60), [60, 68), [68, 73), [73, 81), [81, 86), [86, 94)]-{0}-[2, 53, 66, 93, 92, 27, 40, 79, 28] --> $s0
# VR1-[[2, 4), [4, 9), [9, 12), [12, 13), [14, 16), [16, 18), [24, 25)]-{1}-[3, 9, 24, 12] --> $s1
# VR1-[[26, 28)]-{11}-[27] --> $s1
# VR1-[[28, 30), [30, 35), [35, 36)]-{12}-[35, 29] --> $s1
# VR1-[[39, 42), [42, 47), [47, 53)]-{17}-[52] --> $s1
# VR1-[[52, 55), [55, 60), [60, 66)]-{24}-[65] --> $s2
# VR1-[[65, 68), [68, 73), [73, 79)]-{31}-[78] --> $s1
# VR1-[[78, 81), [81, 86), [86, 92)]-{38}-[91] --> $s2
# VR1-[[91, 93)]-{45}-[92] --> $s1
# VR2-[[4, 6)]-{2}-[5] --> $s2
# VR2-[[6, 8)]-{3}-[7] --> $s2
# VR2-[[9, 12), [12, 14), [14, 16), [16, 18), [21, 24), [24, 26), [26, 27)]-{4, 6, 10}-[16, 10, 26, 14] --> $s2
# VR2-[[18, 20)]-{9}-[19] --> $s1
# VR2-[[30, 32)]-{13}-[31] --> $s2
# VR2-[[32, 34)]-{14}-[33] --> $s2
# VR2-[[36, 38)]-{15}-[37] --> $s1
# VR2-[[37, 39)]-{16}-[38] --> $s2
# VR2-[[40, 42), [42, 47), [47, 49)]-{18}-[48, 41, 47] --> $s2
# VR2-[[51, 53)]-{23}-[52] --> $s3
# VR2-[[53, 55), [55, 60), [60, 62)]-{25}-[54, 61, 60] --> $s1
# VR2-[[64, 66)]-{30}-[65] --> $s3
# VR2-[[66, 68), [68, 73), [73, 75)]-{32}-[67, 73, 74] --> $s2
# VR2-[[77, 79)]-{37}-[78] --> $s3
# VR2-[[79, 81), [81, 86), [86, 88)]-{39}-[87, 86, 80] --> $s1
# VR2-[[90, 92)]-{44}-[91] --> $s3
# VR3-[[10, 12)]-{5}-[11] --> $s3
# VR3-[[14, 16)]-{7}-[15] --> $s3
# VR3-[[16, 18)]-{8}-[17] --> $s3
# VR3-[[42, 44)]-{19}-[43] --> $s3
# VR3-[[44, 46)]-{20}-[45] --> $s3
# VR3-[[48, 50)]-{21}-[49] --> $s3
# VR3-[[49, 51)]-{22}-[50] --> $s2
# VR3-[[55, 57)]-{26}-[56] --> $s3
# VR3-[[57, 59)]-{27}-[58] --> $s3
# VR3-[[61, 63)]-{28}-[62] --> $s3
# VR3-[[62, 64)]-{29}-[63] --> $s1
# VR3-[[68, 70)]-{33}-[69] --> $s3
# VR3-[[70, 72)]-{34}-[71] --> $s3
# VR3-[[74, 76)]-{35}-[75] --> $s3
# VR3-[[75, 77)]-{36}-[76] --> $s2
# VR3-[[81, 83)]-{40}-[82] --> $s3
# VR3-[[83, 85)]-{41}-[84] --> $s3
# VR3-[[87, 89)]-{42}-[88] --> $s3
# VR3-[[88, 90)]-{43}-[89] --> $s1
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
	la	$s1, Bar_protObj
	move	$a0, $s1
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
	la	$s1, Bazz_dispatch
	lw	$s2, 32 ($s1)
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
	lw	$s2, 32 ($s3)
	jalr	$s2
	move	$s3, $a0
	add	$s2, $s1, $s3
	lw	$s1, 32 ($s0)
	bnez	$s1, dispatch_notvoid7
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 31
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid7:
	move	$a0, $s1
	lw	$s3, 8 ($s1)
	lw	$s1, 32 ($s3)
	jalr	$s1
	move	$s3, $a0
	add	$s1, $s2, $s3
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
	lw	$s2, 32 ($s3)
	jalr	$s2
	move	$s3, $a0
	add	$s2, $s1, $s3
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid9
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 31
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid9:
	move	$a0, $s1
	lw	$s3, 8 ($s1)
	lw	$s1, 28 ($s3)
	jalr	$s1
	move	$s3, $a0
	add	$s1, $s2, $s3
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

# web count: 16
# VR0-[[0, 4), [4, 9), [9, 17), [17, 22), [22, 35)]-{0}-[34, 2, 33, 14, 15] --> $s0
# VR1-[[2, 4), [4, 9), [9, 11)]-{1}-[3, 9, 10] --> $s1
# VR1-[[13, 15)]-{6}-[14] --> $s1
# VR1-[[15, 17), [17, 22), [22, 24)]-{7}-[16, 23, 22] --> $s1
# VR1-[[26, 32)]-{12}-[31] --> $s1
# VR1-[[32, 34)]-{15}-[33] --> $s1
# VR2-[[4, 6)]-{2}-[5] --> $s2
# VR2-[[6, 8)]-{3}-[7] --> $s2
# VR2-[[10, 12)]-{4}-[11] --> $s2
# VR2-[[11, 13)]-{5}-[12] --> $s1
# VR2-[[17, 19)]-{8}-[18] --> $s2
# VR2-[[19, 21)]-{9}-[20] --> $s2
# VR2-[[23, 25)]-{10}-[24] --> $s2
# VR2-[[24, 26)]-{11}-[25] --> $s1
# VR2-[[27, 29)]-{13}-[28] --> $s2
# VR2-[[30, 33)]-{14}-[32, 31] --> $s2
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
	lw	$s1, 32 ($s2)
	jalr	$s1
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
	lw	$s1, 28 ($s2)
	jalr	$s1
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

# web count: 2
# VR0-[[0, 1)]-{0}-[] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s0
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

# web count: 12
# VR0-[[0, 3), [3, 8), [8, 9)]-{0}-[1, 8] --> $s0
# VR1-[[1, 3), [3, 8), [8, 18)]-{1}-[17, 2, 15] --> $s1
# VR1-[[20, 21)]-{10}-[] --> $s0
# VR1-[[21, 23)]-{11}-[22] --> $s0
# VR2-[[3, 5)]-{2}-[4] --> $s2
# VR2-[[5, 7)]-{3}-[6] --> $s2
# VR2-[[8, 14)]-{4}-[13] --> $s2
# VR2-[[14, 17)]-{7}-[16] --> $s0
# VR2-[[17, 19)]-{8}-[18] --> $s0
# VR2-[[18, 20)]-{9}-[19] --> $s1
# VR3-[[9, 11)]-{5}-[10] --> $s0
# VR3-[[12, 15)]-{6}-[13, 14] --> $s3
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
	sw	$s3, 0 ($sp)
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
	move	$s3, $a0
	sw	$s2, 12 ($s3)
	move	$s0, $s3
	move	$a0, $s1
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s1)
	lw	$s1, 16 ($s0)
	jalr	$s1
	move	$s0, $a0
	li	$s0, 0
	move	$a0, $s0
	j	__Bazz.printh_epilogue
__Bazz.printh_epilogue:
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

# web count: 7
# VR0-[[0, 6)]-{0}-[1, 2, 5] --> $s0
# VR1-[[1, 7)]-{1}-[6] --> $s1
# VR1-[[7, 9)]-{6}-[8] --> $s0
# VR2-[[2, 5)]-{2}-[4] --> $s2
# VR2-[[4, 6)]-{4}-[5] --> $s3
# VR2-[[6, 8)]-{5}-[7] --> $s2
# VR3-[[3, 5)]-{3}-[4] --> $s4
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
	sw	$s4, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	lw	$s1, 12 ($s0)
	lw	$s2, 12 ($s0)
	li	$s4, 1
	add	$s3, $s2, $s4
	sw	$s3, 12 ($s0)
	move	$s2, $s1
	move	$s0, $s2
	move	$a0, $s0
	j	__Bazz.doh_epilogue
__Bazz.doh_epilogue:
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

# web count: 7
# VR0-[[0, 6)]-{0}-[1, 2, 5] --> $s0
# VR1-[[1, 7)]-{1}-[6] --> $s1
# VR1-[[7, 9)]-{6}-[8] --> $s0
# VR2-[[2, 5)]-{2}-[4] --> $s2
# VR2-[[4, 6)]-{4}-[5] --> $s3
# VR2-[[6, 8)]-{5}-[7] --> $s2
# VR3-[[3, 5)]-{3}-[4] --> $s4
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
	sw	$s4, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	lw	$s1, 12 ($s0)
	lw	$s2, 12 ($s0)
	li	$s4, 2
	add	$s3, $s2, $s4
	sw	$s3, 12 ($s0)
	move	$s2, $s1
	move	$s0, $s2
	move	$a0, $s0
	j	__Foo.doh_epilogue
__Foo.doh_epilogue:
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

