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
str_const14:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const4
	.byte	0, 0, 0, 0
str_const13:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const0
	.ascii	"Main"
	.byte	0, 0, 0, 0
str_const12:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const5
	.ascii	"Bob"
	.byte	0
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
	.word	int_const6
	.ascii	"String"
	.byte	0, 0
str_const9:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const0
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
	.word	int_const6
	.ascii	"Object"
	.byte	0, 0
str_const6:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0, 0
str_const5:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0, 0, 0
str_const4:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const8
	.ascii	"_no_class"
	.byte	0, 0, 0
str_const3:
	.word	3
	.word	8
	.word	String_dispatch
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0, 0, 0
str_const2:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const10
	.ascii	"\n"
	.byte	0, 0, 0
str_const1:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const0
	.ascii	"z = "
	.byte	0, 0, 0, 0
str_const0:
	.word	3
	.word	11
	.word	String_dispatch
	.word	int_const11
	.ascii	"_tests/simple/scoping.cl"
	.byte	0, 0, 0, 0
int_const11:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	24
int_const10:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	1
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
	.word	10
int_const6:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	6
int_const5:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	3
int_const4:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	0
int_const3:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	2
int_const2:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	5
int_const1:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	23
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
	.word	str_const7
	.word	str_const8
	.word	str_const9
	.word	str_const10
	.word	str_const11
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
	.word	Bob_protObj
	.word	Bob_init
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
Bob_dispatch:
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
	.word	Main.jack
	.word	Main.print_z
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
	.word	int_const4
	.word	0
IO_protObj:
	.word	4
	.word	3
	.word	IO_dispatch
Bob_protObj:
	.word	5
	.word	5
	.word	Bob_dispatch
	.word	0
	.word	0
Main_protObj:
	.word	6
	.word	6
	.word	Main_dispatch
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

# web count: 3
# VR0-[[0, 7)]-{0}-[3, 5, 6] --> $s0
# VR1-[[2, 4)]-{1}-[3] --> $s1
# VR1-[[4, 6)]-{2}-[5] --> $s1
Bob_init:
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
	jal	IO_init
	li	$s1, 0
	sw	$s1, 12 ($s0)
	li	$s1, 4
	sw	$s1, 16 ($s0)
	move	$a0, $s0
	j	__Bob_init_epilogue
__Bob_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s1, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 2
# VR0-[[0, 5)]-{0}-[3, 4] --> $s0
# VR1-[[2, 4)]-{1}-[3] --> $s1
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
	jal	Bob_init
	li	$s1, 23
	sw	$s1, 20 ($s0)
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

# web count: 22
# VR0-[[0, 8), [8, 13), [13, 27)]-{0}-[4, 21, 6, 24, 26] --> $s0
# VR1-[[1, 2)]-{1}-[] --> $s1
# VR2-[[2, 8), [8, 13), [13, 26)]-{2}-[3, 25] --> $s1
# VR3-[[3, 6)]-{3}-[5] --> $s2
# VR3-[[5, 8), [8, 13), [13, 14)]-{5}-[13] --> $s3
# VR3-[[20, 21)]-{13}-[] --> $s2
# VR3-[[21, 24)]-{14}-[23] --> $s2
# VR3-[[23, 25)]-{16}-[24] --> $s3
# VR3-[[25, 28)]-{17}-[27] --> $s2
# VR3-[[27, 29)]-{19}-[28] --> $s0
# VR3-[[29, 31)]-{21}-[30] --> $s0
# VR4-[[4, 6)]-{4}-[5] --> $s4
# VR4-[[6, 8), [8, 13), [13, 17)]-{6}-[16, 7, 14] --> $s2
# VR4-[[19, 21)]-{12}-[20] --> $s3
# VR4-[[22, 24)]-{15}-[23] --> $s4
# VR4-[[26, 28)]-{18}-[27] --> $s1
# VR4-[[28, 30)]-{20}-[29] --> $s1
# VR5-[[8, 10)]-{7}-[9] --> $s4
# VR5-[[10, 12)]-{8}-[11] --> $s4
# VR5-[[13, 16)]-{9}-[15] --> $s4
# VR5-[[16, 18)]-{10}-[17] --> $s3
# VR5-[[17, 19)]-{11}-[18] --> $s2
Main.jack:
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
	lw	$s1, 12 ($fp)
	lw	$s1, 8 ($fp)
	move	$s2, $s1
	lw	$s4, 16 ($s0)
	add	$s3, $s2, $s4
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid0
	la	$s4, str_const0
	move	$a0, $s4
	li	$s4, 10
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid0:
	move	$s4, $s3
	move	$a0, $s2
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s3, 8 ($s2)
	lw	$s2, 32 ($s3)
	jalr	$s2
	move	$s3, $a0
	move	$s2, $s3
	lw	$s2, 16 ($s0)
	li	$s4, 4
	add	$s3, $s2, $s4
	sw	$s3, 16 ($s0)
	move	$s2, $s1
	lw	$s1, 16 ($s0)
	add	$s0, $s2, $s1
	move	$s1, $s0
	move	$s0, $s1
	move	$a0, $s0
	j	__Main.jack_epilogue
__Main.jack_epilogue:
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
	addi	$sp, $sp, 16
	jr	$ra

# web count: 26
# VR0-[[0, 4), [4, 9), [9, 18), [18, 23), [23, 37)]-{0}-[16, 2, 36] --> $s0
# VR1-[[1, 4), [4, 9), [9, 18), [18, 23), [23, 24)]-{1}-[23] --> $s1
# VR2-[[2, 4), [4, 9), [9, 13)]-{2}-[3, 10, 12] --> $s2
# VR2-[[15, 16)]-{8}-[] --> $s2
# VR2-[[16, 18), [18, 23), [23, 33)]-{9}-[17, 32, 30] --> $s2
# VR2-[[35, 36)]-{18}-[] --> $s1
# VR2-[[36, 38), [38, 43), [43, 47)]-{19}-[37, 46, 44] --> $s1
# VR2-[[49, 51)]-{25}-[50] --> $s0
# VR3-[[4, 6)]-{3}-[5] --> $s3
# VR3-[[6, 8)]-{4}-[7] --> $s3
# VR3-[[9, 12)]-{5}-[11] --> $s3
# VR3-[[12, 14)]-{6}-[13] --> $s3
# VR3-[[13, 15)]-{7}-[14] --> $s2
# VR3-[[18, 20)]-{10}-[19] --> $s3
# VR3-[[20, 22)]-{11}-[21] --> $s3
# VR3-[[23, 29)]-{12}-[28] --> $s3
# VR3-[[29, 32)]-{15}-[31] --> $s1
# VR3-[[32, 34)]-{16}-[33] --> $s1
# VR3-[[33, 35)]-{17}-[34] --> $s2
# VR3-[[38, 40)]-{20}-[39] --> $s0
# VR3-[[40, 42)]-{21}-[41] --> $s0
# VR3-[[43, 46)]-{22}-[45] --> $s0
# VR3-[[46, 48)]-{23}-[47] --> $s0
# VR3-[[47, 49)]-{24}-[48] --> $s1
# VR4-[[24, 26)]-{13}-[25] --> $s1
# VR4-[[27, 30)]-{14}-[29, 28] --> $s4
Main.print_z:
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
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid1
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 16
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid1:
	la	$s3, str_const1
	move	$a0, $s2
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s3, 8 ($s2)
	lw	$s2, 12 ($s3)
	jalr	$s2
	move	$s2, $a0
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid2
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 17
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid2:
	move	$s3, $s1
	la	$s1, Int_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s4, $a0
	sw	$s3, 12 ($s4)
	move	$s1, $s4
	move	$a0, $s2
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s1, 8 ($s2)
	lw	$s2, 16 ($s1)
	jalr	$s2
	move	$s1, $a0
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid3
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 18
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid3:
	la	$s0, str_const2
	move	$a0, $s1
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s1)
	lw	$s1, 12 ($s0)
	jalr	$s1
	move	$s0, $a0
	move	$a0, $s0
	j	__Main.print_z_epilogue
__Main.print_z_epilogue:
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

# web count: 26
# VR0-[[0, 3), [3, 8), [8, 17), [17, 22), [22, 34)]-{0}-[1, 33, 23, 8, 15] --> $s0
# VR1-[[1, 3), [3, 8), [8, 12)]-{1}-[2, 9, 11] --> $s1
# VR1-[[14, 15)]-{7}-[] --> $s1
# VR1-[[15, 17), [17, 22), [22, 30)]-{8}-[16, 26, 29] --> $s1
# VR1-[[32, 35), [35, 40), [40, 41)]-{17}-[40] --> $s1
# VR1-[[47, 49)]-{25}-[48] --> $s0
# VR2-[[3, 5)]-{2}-[4] --> $s2
# VR2-[[5, 7)]-{3}-[6] --> $s2
# VR2-[[8, 11)]-{4}-[10] --> $s2
# VR2-[[11, 13)]-{5}-[12] --> $s2
# VR2-[[12, 14)]-{6}-[13] --> $s1
# VR2-[[17, 19)]-{9}-[18] --> $s2
# VR2-[[19, 21)]-{10}-[20] --> $s2
# VR2-[[22, 28)]-{11}-[27] --> $s2
# VR2-[[29, 31)]-{15}-[30] --> $s2
# VR2-[[30, 32)]-{16}-[31] --> $s1
# VR2-[[33, 35), [35, 40), [40, 44)]-{18}-[34, 43, 41] --> $s2
# VR2-[[46, 48)]-{24}-[47] --> $s1
# VR3-[[23, 26)]-{12}-[25] --> $s3
# VR3-[[25, 29)]-{14}-[28] --> $s4
# VR3-[[35, 37)]-{19}-[36] --> $s0
# VR3-[[37, 39)]-{20}-[38] --> $s0
# VR3-[[40, 43)]-{21}-[42] --> $s0
# VR3-[[43, 45)]-{22}-[44] --> $s0
# VR3-[[44, 46)]-{23}-[45] --> $s1
# VR4-[[24, 26)]-{13}-[25] --> $s5
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
	bnez	$s1, dispatch_notvoid4
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 22
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid4:
	lw	$s2, 20 ($s0)
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 32 ($s2)
	jalr	$s1
	move	$s1, $a0
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid5
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 23
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid5:
	li	$s2, 5
	lw	$s3, 20 ($s0)
	li	$s5, 2
	add	$s4, $s3, $s5
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 28 ($s2)
	jalr	$s1
	move	$s1, $a0
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid6
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 24
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid6:
	move	$s0, $s1
	move	$a0, $s2
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s2)
	lw	$s1, 32 ($s0)
	jalr	$s1
	move	$s1, $a0
	move	$s0, $s1
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

