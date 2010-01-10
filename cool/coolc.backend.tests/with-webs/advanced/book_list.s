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
str_const27:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const1
	.byte	0, 0, 0, 0
str_const26:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const2
	.ascii	"Main"
	.byte	0, 0, 0, 0
str_const25:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const3
	.ascii	"Nil"
	.byte	0
str_const24:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const2
	.ascii	"Cons"
	.byte	0, 0, 0, 0
str_const23:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const4
	.ascii	"BookList"
	.byte	0, 0, 0, 0
str_const22:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const5
	.ascii	"Article"
	.byte	0
str_const21:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const2
	.ascii	"Book"
	.byte	0, 0, 0, 0
str_const20:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const6
	.ascii	"IO"
	.byte	0, 0
str_const19:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const7
	.ascii	"String"
	.byte	0, 0
str_const18:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const2
	.ascii	"Bool"
	.byte	0, 0, 0, 0
str_const17:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const3
	.ascii	"Int"
	.byte	0
str_const16:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const7
	.ascii	"Object"
	.byte	0, 0
str_const15:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const8
	.ascii	"_prim_slot"
	.byte	0, 0
str_const14:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const9
	.ascii	"SELF_TYPE"
	.byte	0, 0, 0
str_const13:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const9
	.ascii	"_no_class"
	.byte	0, 0, 0
str_const12:
	.word	3
	.word	8
	.word	String_dispatch
	.word	int_const10
	.ascii	"<basic class>"
	.byte	0, 0, 0
str_const11:
	.word	3
	.word	7
	.word	String_dispatch
	.word	int_const11
	.ascii	"PC Magazine"
	.byte	0
str_const10:
	.word	3
	.word	6
	.word	String_dispatch
	.word	int_const5
	.ascii	"Ulanoff"
	.byte	0
str_const9:
	.word	3
	.word	9
	.word	String_dispatch
	.word	int_const12
	.ascii	"The Top 100 CD_ROMs"
	.byte	0
str_const8:
	.word	3
	.word	10
	.word	String_dispatch
	.word	int_const13
	.ascii	"Aho, Sethi, and Ullman"
	.byte	0, 0
str_const7:
	.word	3
	.word	16
	.word	String_dispatch
	.word	int_const14
	.ascii	"Compilers, Principles, Techniques, and Tools"
	.byte	0, 0, 0, 0
str_const6:
	.word	3
	.word	12
	.word	String_dispatch
	.word	int_const15
	.ascii	"- dynamic type was Article -\n"
	.byte	0, 0, 0
str_const5:
	.word	3
	.word	11
	.word	String_dispatch
	.word	int_const16
	.ascii	"- dynamic type was Book -\n"
	.byte	0, 0
str_const4:
	.word	3
	.word	8
	.word	String_dispatch
	.word	int_const10
	.ascii	"periodical:  "
	.byte	0, 0, 0
str_const3:
	.word	3
	.word	8
	.word	String_dispatch
	.word	int_const17
	.ascii	"author:     "
	.byte	0, 0, 0, 0
str_const2:
	.word	3
	.word	5
	.word	String_dispatch
	.word	int_const0
	.ascii	"\n"
	.byte	0, 0, 0
str_const1:
	.word	3
	.word	8
	.word	String_dispatch
	.word	int_const17
	.ascii	"title:      "
	.byte	0, 0, 0, 0
str_const0:
	.word	3
	.word	12
	.word	String_dispatch
	.word	int_const18
	.ascii	"_tests/advanced/book_list.cl"
	.byte	0, 0, 0, 0
int_const18:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	28
int_const17:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	12
int_const16:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	26
int_const15:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	29
int_const14:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	44
int_const13:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	22
int_const12:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	19
int_const11:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	11
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
	.word	7
int_const4:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	8
int_const3:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	3
int_const2:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	4
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
	.word	str_const16
	.word	str_const17
	.word	str_const18
	.word	str_const19
	.word	str_const20
	.word	str_const26
	.word	str_const21
	.word	str_const23
	.word	str_const24
	.word	str_const25
	.word	str_const22
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
	.word	Book_protObj
	.word	Book_init
	.word	BookList_protObj
	.word	BookList_init
	.word	Cons_protObj
	.word	Cons_init
	.word	Nil_protObj
	.word	Nil_init
	.word	Article_protObj
	.word	Article_init
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
Book_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Book.initBook
	.word	Book.print
BookList_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	BookList.isNil
	.word	BookList.cons
	.word	BookList.car
	.word	BookList.cdr
	.word	BookList.print_list
Cons_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Cons.isNil
	.word	BookList.cons
	.word	Cons.car
	.word	Cons.cdr
	.word	Cons.print_list
	.word	Cons.init
Nil_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Nil.isNil
	.word	BookList.cons
	.word	BookList.car
	.word	BookList.cdr
	.word	Nil.print_list
Article_dispatch:
	.word	Object.abort
	.word	Object.copy
	.word	Object.type_name
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Book.initBook
	.word	Article.print
	.word	Article.initArticle
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
Book_protObj:
	.word	6
	.word	5
	.word	Book_dispatch
	.word	str_const27
	.word	str_const27
BookList_protObj:
	.word	7
	.word	3
	.word	BookList_dispatch
Cons_protObj:
	.word	8
	.word	5
	.word	Cons_dispatch
	.word	0
	.word	0
Nil_protObj:
	.word	9
	.word	3
	.word	Nil_dispatch
Article_protObj:
	.word	10
	.word	6
	.word	Article_dispatch
	.word	str_const27
	.word	str_const27
	.word	str_const27
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
Book_init:
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
	j	__Book_init_epilogue
__Book_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
BookList_init:
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
	j	__BookList_init_epilogue
__BookList_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
Cons_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	BookList_init
	move	$a0, $s0
	j	__Cons_init_epilogue
__Cons_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
Nil_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	BookList_init
	move	$a0, $s0
	j	__Nil_init_epilogue
__Nil_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 1
# VR0-[[0, 3)]-{0}-[2] --> $s0
Article_init:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	jal	Book_init
	move	$a0, $s0
	j	__Article_init_epilogue
__Article_init_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 42
# VR0-[[0, 7), [7, 12), [12, 27), [27, 32), [32, 49), [49, 54), [54, 62), [62, 67), [67, 76)]-{0}-[74, 75] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s1
# VR1-[[4, 7), [7, 12), [12, 18)]-{2}-[17, 6, 14] --> $s1
# VR1-[[20, 27), [27, 32), [32, 49), [49, 54), [54, 55)]-{9}-[54] --> $s1
# VR1-[[88, 90)]-{41}-[89] --> $s0
# VR2-[[7, 9)]-{3}-[8] --> $s2
# VR2-[[9, 11)]-{4}-[10] --> $s2
# VR2-[[12, 16)]-{5}-[15] --> $s2
# VR2-[[17, 19)]-{7}-[18] --> $s2
# VR2-[[18, 20)]-{8}-[19] --> $s1
# VR2-[[21, 23)]-{10}-[22] --> $s2
# VR2-[[24, 27), [27, 32), [32, 40)]-{11}-[35, 39, 26] --> $s2
# VR2-[[42, 49), [49, 54), [54, 62), [62, 67), [67, 68)]-{19}-[67] --> $s2
# VR2-[[87, 89)]-{40}-[88] --> $s1
# VR3-[[13, 17)]-{6}-[16] --> $s3
# VR3-[[27, 29)]-{12}-[28] --> $s3
# VR3-[[29, 31)]-{13}-[30] --> $s3
# VR3-[[32, 37)]-{14}-[36] --> $s3
# VR3-[[39, 41)]-{17}-[40] --> $s3
# VR3-[[40, 42)]-{18}-[41] --> $s2
# VR3-[[43, 45)]-{20}-[44] --> $s3
# VR3-[[46, 49), [49, 54), [54, 58)]-{21}-[48, 55, 57] --> $s3
# VR3-[[60, 62), [62, 67), [67, 71)]-{27}-[68, 70, 61] --> $s1
# VR3-[[73, 75)]-{33}-[74] --> $s1
# VR3-[[75, 77), [77, 82), [82, 84)]-{34}-[83, 82, 76] --> $s1
# VR3-[[86, 88)]-{39}-[87] --> $s0
# VR4-[[33, 38)]-{15}-[37] --> $s4
# VR4-[[49, 51)]-{22}-[50] --> $s4
# VR4-[[51, 53)]-{23}-[52] --> $s4
# VR4-[[54, 57)]-{24}-[56] --> $s4
# VR4-[[57, 59)]-{25}-[58] --> $s1
# VR4-[[58, 60)]-{26}-[59] --> $s3
# VR4-[[62, 64)]-{28}-[63] --> $s3
# VR4-[[64, 66)]-{29}-[65] --> $s3
# VR4-[[67, 70)]-{30}-[69] --> $s3
# VR4-[[70, 72)]-{31}-[71] --> $s2
# VR4-[[71, 73)]-{32}-[72] --> $s1
# VR4-[[77, 79)]-{35}-[78] --> $s0
# VR4-[[79, 81)]-{36}-[80] --> $s0
# VR4-[[83, 85)]-{37}-[84] --> $s0
# VR4-[[84, 86)]-{38}-[85] --> $s1
# VR5-[[34, 39)]-{16}-[38] --> $s5
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
	la	$s1, Book_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	jal	Book_init
	bnez	$s1, dispatch_notvoid0
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 116
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid0:
	la	$s2, str_const7
	la	$s3, str_const8
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 28 ($s2)
	jalr	$s1
	move	$s1, $a0
	la	$s2, Article_protObj
	move	$a0, $s2
	jal	Object.copy
	move	$s2, $a0
	jal	Article_init
	bnez	$s2, dispatch_notvoid1
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 120
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid1:
	la	$s3, str_const9
	la	$s4, str_const10
	la	$s5, str_const11
	move	$a0, $s2
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s5, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s3, 8 ($s2)
	lw	$s2, 36 ($s3)
	jalr	$s2
	move	$s2, $a0
	la	$s3, Nil_protObj
	move	$a0, $s3
	jal	Object.copy
	move	$s3, $a0
	jal	Nil_init
	bnez	$s3, dispatch_notvoid2
	la	$s4, str_const0
	move	$a0, $s4
	li	$s4, 125
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid2:
	move	$s4, $s1
	move	$a0, $s3
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s1, 8 ($s3)
	lw	$s3, 32 ($s1)
	jalr	$s3
	move	$s1, $a0
	bnez	$s1, dispatch_notvoid3
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 125
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid3:
	move	$s3, $s2
	move	$a0, $s1
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 32 ($s2)
	jalr	$s1
	move	$s1, $a0
	sw	$s1, 12 ($s0)
	lw	$s1, 12 ($s0)
	bnez	$s1, dispatch_notvoid4
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 126
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid4:
	move	$a0, $s1
	lw	$s0, 8 ($s1)
	lw	$s1, 44 ($s0)
	jalr	$s1
	move	$s0, $a0
	move	$s1, $s0
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

# web count: 6
# VR0-[[0, 8)]-{0}-[4, 6, 7] --> $s0
# VR1-[[1, 4)]-{1}-[3] --> $s1
# VR2-[[2, 6)]-{2}-[5] --> $s2
# VR3-[[3, 5)]-{3}-[4] --> $s3
# VR3-[[5, 7)]-{4}-[6] --> $s1
# VR3-[[7, 9)]-{5}-[8] --> $s1
Book.initBook:
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
	lw	$s1, 12 ($fp)
	lw	$s2, 8 ($fp)
	move	$s3, $s1
	sw	$s3, 12 ($s0)
	move	$s1, $s2
	sw	$s1, 16 ($s0)
	move	$s1, $s0
	move	$a0, $s1
	j	__Book.initBook_epilogue
__Book.initBook_epilogue:
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
	addi	$sp, $sp, 16
	jr	$ra

# web count: 40
# VR0-[[0, 3), [3, 8), [8, 16), [16, 21), [21, 29), [29, 34), [34, 43), [43, 48), [48, 56), [56, 61), [61, 69), [69, 74), [74, 82)]-{0}-[1, 21, 81, 41, 61] --> $s0
# VR1-[[1, 3), [3, 8), [8, 12)]-{1}-[2, 9, 11] --> $s1
# VR1-[[14, 16), [16, 21), [21, 25)]-{7}-[22, 24, 15] --> $s1
# VR1-[[27, 29), [29, 34), [34, 38)]-{13}-[35, 37, 28] --> $s1
# VR1-[[40, 41)]-{19}-[] --> $s1
# VR1-[[41, 43), [43, 48), [48, 52)]-{20}-[51, 49, 42] --> $s1
# VR1-[[54, 56), [56, 61), [61, 65)]-{26}-[55, 64, 62] --> $s1
# VR1-[[67, 69), [69, 74), [74, 78)]-{32}-[68, 77, 75] --> $s1
# VR1-[[80, 81)]-{38}-[] --> $s1
# VR1-[[81, 83)]-{39}-[82] --> $s1
# VR2-[[3, 5)]-{2}-[4] --> $s2
# VR2-[[5, 7)]-{3}-[6] --> $s2
# VR2-[[8, 11)]-{4}-[10] --> $s2
# VR2-[[11, 13)]-{5}-[12] --> $s2
# VR2-[[12, 14)]-{6}-[13] --> $s1
# VR2-[[16, 18)]-{8}-[17] --> $s2
# VR2-[[18, 20)]-{9}-[19] --> $s2
# VR2-[[21, 24)]-{10}-[23] --> $s2
# VR2-[[24, 26)]-{11}-[25] --> $s2
# VR2-[[25, 27)]-{12}-[26] --> $s1
# VR2-[[29, 31)]-{14}-[30] --> $s2
# VR2-[[31, 33)]-{15}-[32] --> $s2
# VR2-[[34, 37)]-{16}-[36] --> $s2
# VR2-[[37, 39)]-{17}-[38] --> $s2
# VR2-[[38, 40)]-{18}-[39] --> $s1
# VR2-[[43, 45)]-{21}-[44] --> $s2
# VR2-[[45, 47)]-{22}-[46] --> $s2
# VR2-[[48, 51)]-{23}-[50] --> $s2
# VR2-[[51, 53)]-{24}-[52] --> $s2
# VR2-[[52, 54)]-{25}-[53] --> $s1
# VR2-[[56, 58)]-{27}-[57] --> $s2
# VR2-[[58, 60)]-{28}-[59] --> $s2
# VR2-[[61, 64)]-{29}-[63] --> $s2
# VR2-[[64, 66)]-{30}-[65] --> $s2
# VR2-[[65, 67)]-{31}-[66] --> $s1
# VR2-[[69, 71)]-{33}-[70] --> $s2
# VR2-[[71, 73)]-{34}-[72] --> $s2
# VR2-[[74, 77)]-{35}-[76] --> $s2
# VR2-[[77, 79)]-{36}-[78] --> $s2
# VR2-[[78, 80)]-{37}-[79] --> $s1
Book.print:
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
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid5
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 16
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid5:
	la	$s2, str_const1
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	bnez	$s1, dispatch_notvoid6
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 16
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid6:
	lw	$s2, 12 ($s0)
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	bnez	$s1, dispatch_notvoid7
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 16
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid7:
	la	$s2, str_const2
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid8
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 17
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid8:
	la	$s2, str_const3
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	bnez	$s1, dispatch_notvoid9
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 17
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid9:
	lw	$s2, 16 ($s0)
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	bnez	$s1, dispatch_notvoid10
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 17
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid10:
	la	$s2, str_const2
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	move	$s1, $s0
	move	$a0, $s1
	j	__Book.print_epilogue
__Book.print_epilogue:
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

# web count: 8
# VR0-[[0, 2)]-{0}-[1] --> $s0
# VR1-[[1, 3), [3, 8), [8, 10)]-{1}-[2, 8, 9] --> $s1
# VR1-[[12, 13)]-{6}-[] --> $s0
# VR1-[[13, 15)]-{7}-[14] --> $s0
# VR2-[[3, 5)]-{2}-[4] --> $s0
# VR2-[[5, 7)]-{3}-[6] --> $s0
# VR2-[[9, 11)]-{4}-[10] --> $s0
# VR2-[[10, 12)]-{5}-[11] --> $s1
BookList.isNil:
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
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid11
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 49
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid11:
	move	$a0, $s1
	lw	$s0, 8 ($s1)
	lw	$s1, 0 ($s0)
	jalr	$s1
	move	$s0, $a0
	li	$s0, 1
	move	$a0, $s0
	j	__BookList.isNil_epilogue
__BookList.isNil_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s1, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 13
# VR0-[[0, 9), [9, 14), [14, 16)]-{0}-[15] --> $s0
# VR1-[[1, 9), [9, 14), [14, 15)]-{1}-[14] --> $s1
# VR2-[[2, 4)]-{2}-[3] --> $s2
# VR2-[[5, 8)]-{3}-[7] --> $s2
# VR2-[[23, 25)]-{12}-[24] --> $s0
# VR3-[[7, 9), [9, 14), [14, 20)]-{4}-[16, 19, 8] --> $s3
# VR3-[[22, 24)]-{11}-[23] --> $s1
# VR4-[[9, 11)]-{5}-[10] --> $s2
# VR4-[[11, 13)]-{6}-[12] --> $s2
# VR4-[[14, 18)]-{7}-[17] --> $s2
# VR4-[[19, 21)]-{9}-[20] --> $s0
# VR4-[[20, 22)]-{10}-[21] --> $s1
# VR5-[[15, 19)]-{8}-[18] --> $s1
BookList.cons:
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
	la	$s2, Cons_protObj
	move	$a0, $s2
	jal	Object.copy
	move	$s2, $a0
	jal	Cons_init
	move	$s3, $s2
	bnez	$s3, dispatch_notvoid12
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 53
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid12:
	move	$s2, $s1
	move	$s1, $s0
	move	$a0, $s3
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s0, 8 ($s3)
	lw	$s1, 48 ($s0)
	jalr	$s1
	move	$s1, $a0
	move	$s0, $s1
	move	$a0, $s0
	j	__BookList.cons_epilogue
__BookList.cons_epilogue:
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

# web count: 9
# VR0-[[0, 2)]-{0}-[1] --> $s0
# VR1-[[1, 3), [3, 8), [8, 10)]-{1}-[2, 8, 9] --> $s1
# VR1-[[12, 13)]-{6}-[] --> $s0
# VR1-[[13, 15)]-{7}-[14] --> $s0
# VR1-[[16, 19)]-{8}-[18] --> $s0
# VR2-[[3, 5)]-{2}-[4] --> $s0
# VR2-[[5, 7)]-{3}-[6] --> $s0
# VR2-[[9, 11)]-{4}-[10] --> $s0
# VR2-[[10, 12)]-{5}-[11] --> $s1
BookList.car:
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
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid13
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 61
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid13:
	move	$a0, $s1
	lw	$s0, 8 ($s1)
	lw	$s1, 0 ($s0)
	jalr	$s1
	move	$s0, $a0
	la	$s0, Book_protObj
	move	$a0, $s0
	jal	Object.copy
	move	$s0, $a0
	jal	Book_init
	move	$a0, $s0
	j	__BookList.car_epilogue
__BookList.car_epilogue:
	## restoring registers
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
# VR1-[[12, 13)]-{6}-[] --> $s0
# VR1-[[13, 15)]-{7}-[14] --> $s0
# VR1-[[16, 19)]-{8}-[18] --> $s0
# VR2-[[3, 5)]-{2}-[4] --> $s0
# VR2-[[5, 7)]-{3}-[6] --> $s0
# VR2-[[9, 11)]-{4}-[10] --> $s0
# VR2-[[10, 12)]-{5}-[11] --> $s1
BookList.cdr:
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
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid14
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 67
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid14:
	move	$a0, $s1
	lw	$s0, 8 ($s1)
	lw	$s1, 0 ($s0)
	jalr	$s1
	move	$s0, $a0
	la	$s0, BookList_protObj
	move	$a0, $s0
	jal	Object.copy
	move	$s0, $a0
	jal	BookList_init
	move	$a0, $s0
	j	__BookList.cdr_epilogue
__BookList.cdr_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s1, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 7
# VR0-[[0, 2)]-{0}-[1] --> $s0
# VR1-[[1, 3), [3, 8), [8, 10)]-{1}-[2, 8, 9] --> $s1
# VR1-[[12, 14)]-{6}-[13] --> $s0
# VR2-[[3, 5)]-{2}-[4] --> $s0
# VR2-[[5, 7)]-{3}-[6] --> $s0
# VR2-[[9, 11)]-{4}-[10] --> $s0
# VR2-[[10, 12)]-{5}-[11] --> $s1
BookList.print_list:
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
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid15
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 69
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid15:
	move	$a0, $s1
	lw	$s0, 8 ($s1)
	lw	$s1, 0 ($s0)
	jalr	$s1
	move	$s0, $a0
	move	$a0, $s0
	j	__BookList.print_list_epilogue
__BookList.print_list_epilogue:
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
# VR0-[[0, 1)]-{0}-[] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s0
Cons.isNil:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	li	$s0, 0
	move	$a0, $s0
	j	__Cons.isNil_epilogue
__Cons.isNil_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 2
# VR0-[[0, 2)]-{0}-[1] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s1
Cons.car:
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
	move	$a0, $s1
	j	__Cons.car_epilogue
__Cons.car_epilogue:
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
# VR0-[[0, 2)]-{0}-[1] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s1
Cons.cdr:
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
	lw	$s1, 16 ($s0)
	move	$a0, $s1
	j	__Cons.cdr_epilogue
__Cons.cdr_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s1, 0 ($sp)
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 32
# VR0-[[0, 3), [3, 8), [8, 14), [14, 19), [19, 22), [22, 24), [24, 29), [29, 37), [37, 39), [39, 41), [41, 43), [43, 48), [48, 56), [56, 58), [58, 60)]-{0}-[1, 22, 59, 41] --> $s0
# VR1-[[1, 3), [3, 8), [8, 10)]-{1}-[2, 8, 9] --> $s1
# VR1-[[12, 14), [14, 19), [19, 22), [37, 39), [39, 41), [56, 57)]-{6}-[19, 56, 13] --> $s1
# VR1-[[58, 59)]-{27}-[] --> $s1
# VR1-[[59, 61), [61, 66), [66, 68)]-{28}-[66, 67, 60] --> $s1
# VR1-[[70, 72)]-{33}-[71] --> $s0
# VR2-[[3, 5)]-{2}-[4] --> $s2
# VR2-[[5, 7)]-{3}-[6] --> $s2
# VR2-[[9, 11)]-{4}-[10] --> $s2
# VR2-[[10, 12)]-{5}-[11] --> $s1
# VR2-[[14, 16)]-{7}-[15] --> $s2
# VR2-[[16, 18)]-{8}-[17] --> $s2
# VR2-[[19, 22), [35, 37), [37, 39), [39, 41), [54, 56), [56, 58), [58, 59)]-{9, 17, 26}-[20, 39, 37, 58] --> $s2
# VR2-[[22, 24), [24, 29), [29, 33)]-{11}-[32, 23, 30] --> $s1
# VR2-[[41, 43), [43, 48), [48, 52)]-{20}-[51, 49, 42] --> $s1
# VR2-[[61, 63)]-{29}-[62] --> $s0
# VR2-[[63, 65)]-{30}-[64] --> $s0
# VR2-[[67, 69)]-{31}-[68] --> $s0
# VR2-[[68, 70)]-{32}-[69] --> $s1
# VR3-[[20, 22)]-{10}-[21] --> $s3
# VR3-[[24, 26)]-{12}-[25] --> $s2
# VR3-[[26, 28)]-{13}-[27] --> $s2
# VR3-[[29, 32)]-{14}-[31] --> $s2
# VR3-[[32, 34)]-{15}-[33] --> $s2
# VR3-[[33, 35)]-{16}-[34] --> $s1
# VR3-[[37, 39)]-{18}-[38] --> $s3
# VR3-[[39, 41)]-{19}-[40] --> $s3
# VR3-[[43, 45)]-{21}-[44] --> $s2
# VR3-[[45, 47)]-{22}-[46] --> $s2
# VR3-[[48, 51)]-{23}-[50] --> $s2
# VR3-[[51, 53)]-{24}-[52] --> $s2
# VR3-[[52, 54)]-{25}-[53] --> $s1
Cons.print_list:
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
	bnez	$s1, dispatch_notvoid16
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 94
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid16:
	move	$a0, $s1
	lw	$s2, 8 ($s1)
	lw	$s1, 32 ($s2)
	jalr	$s1
	move	$s1, $a0
	bnez	$s1, case0_notvoid
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 94
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_case_handler
case0_notvoid:
	lw	$s2, 0 ($s1)
case0_tag10:
	seq	$s3, $s2, 10
	beqz	$s3, case0_tag6
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid17
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 96
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid17:
	la	$s2, str_const6
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s2, $a0
	b	case0_end
case0_tag6:
	slt	$s3, $s2, 6
	bnez	$s3, case0_error
	li	$t0, 10
	slt	$s3, $t0, $s2
	bnez	$s3, case0_error
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid18
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 95
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid18:
	la	$s2, str_const5
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s2, $a0
	b	case0_end
case0_error:
	move	$a0, $s1
	jal	_case_abort
case0_end:
	move	$s1, $s2
	lw	$s1, 16 ($s0)
	bnez	$s1, dispatch_notvoid19
	la	$s0, str_const0
	move	$a0, $s0
	li	$s0, 98
	sw	$s0, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid19:
	move	$a0, $s1
	lw	$s0, 8 ($s1)
	lw	$s1, 44 ($s0)
	jalr	$s1
	move	$s0, $a0
	move	$a0, $s0
	j	__Cons.print_list_epilogue
__Cons.print_list_epilogue:
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

# web count: 6
# VR0-[[0, 8)]-{0}-[4, 6, 7] --> $s0
# VR1-[[1, 4)]-{1}-[3] --> $s1
# VR2-[[2, 6)]-{2}-[5] --> $s2
# VR3-[[3, 5)]-{3}-[4] --> $s3
# VR3-[[5, 7)]-{4}-[6] --> $s1
# VR3-[[7, 9)]-{5}-[8] --> $s1
Cons.init:
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
	lw	$s1, 12 ($fp)
	lw	$s2, 8 ($fp)
	move	$s3, $s1
	sw	$s3, 12 ($s0)
	move	$s1, $s2
	sw	$s1, 16 ($s0)
	move	$s1, $s0
	move	$a0, $s1
	j	__Cons.init_epilogue
__Cons.init_epilogue:
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
	addi	$sp, $sp, 16
	jr	$ra

# web count: 2
# VR0-[[0, 1)]-{0}-[] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s0
Nil.isNil:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	li	$s0, 1
	move	$a0, $s0
	j	__Nil.isNil_epilogue
__Nil.isNil_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 2
# VR0-[[0, 1)]-{0}-[] --> $s0
# VR1-[[1, 3)]-{1}-[2] --> $s0
Nil.print_list:
	addi	$sp, $sp, -8
	sw	$fp, 8 ($sp)
	sw	$ra, 4 ($sp)
	addi	$fp, $sp, 4
	## saving registers
	sw	$s0, 0 ($sp)
	addi $sp, $sp, -4
	move	$s0, $a0
	li	$s0, 1
	move	$a0, $s0
	j	__Nil.print_list_epilogue
__Nil.print_list_epilogue:
	## restoring registers
	addi $sp, $sp, 4
	lw	$s0, 0 ($sp)
	lw	$ra, 0 ($fp)
	lw	$fp, 4 ($fp)
	addi	$sp, $sp, 8
	jr	$ra

# web count: 27
# VR0-[[0, 3), [3, 8), [8, 15), [15, 20), [20, 28), [28, 33), [33, 41), [41, 46), [46, 54)]-{0}-[1, 33, 53, 13] --> $s0
# VR1-[[1, 3), [3, 8), [8, 9)]-{1}-[2, 8] --> $s1
# VR1-[[12, 13)]-{6}-[] --> $s1
# VR1-[[13, 15), [15, 20), [20, 24)]-{7}-[21, 23, 14] --> $s1
# VR1-[[26, 28), [28, 33), [33, 37)]-{13}-[34, 36, 27] --> $s1
# VR1-[[39, 41), [41, 46), [46, 50)]-{19}-[49, 40, 47] --> $s1
# VR1-[[52, 53)]-{25}-[] --> $s1
# VR1-[[53, 55)]-{26}-[54] --> $s1
# VR2-[[3, 5)]-{2}-[4] --> $s2
# VR2-[[5, 7)]-{3}-[6] --> $s2
# VR2-[[9, 11)]-{4}-[10] --> $s1
# VR2-[[10, 12)]-{5}-[11] --> $s2
# VR2-[[15, 17)]-{8}-[16] --> $s2
# VR2-[[17, 19)]-{9}-[18] --> $s2
# VR2-[[20, 23)]-{10}-[22] --> $s2
# VR2-[[23, 25)]-{11}-[24] --> $s2
# VR2-[[24, 26)]-{12}-[25] --> $s1
# VR2-[[28, 30)]-{14}-[29] --> $s2
# VR2-[[30, 32)]-{15}-[31] --> $s2
# VR2-[[33, 36)]-{16}-[35] --> $s2
# VR2-[[36, 38)]-{17}-[37] --> $s2
# VR2-[[37, 39)]-{18}-[38] --> $s1
# VR2-[[41, 43)]-{20}-[42] --> $s2
# VR2-[[43, 45)]-{21}-[44] --> $s2
# VR2-[[46, 49)]-{22}-[48] --> $s2
# VR2-[[49, 51)]-{23}-[50] --> $s2
# VR2-[[50, 52)]-{24}-[51] --> $s1
Article.print:
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
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid20
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 37
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid20:
	move	$a0, $s1
	la	$s1, Book_dispatch
	lw	$s2, 32 ($s1)
	jalr	$s2
	move	$s1, $a0
	move	$s1, $s0
	bnez	$s1, dispatch_notvoid21
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 38
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid21:
	la	$s2, str_const4
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	bnez	$s1, dispatch_notvoid22
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 38
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid22:
	lw	$s2, 20 ($s0)
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	bnez	$s1, dispatch_notvoid23
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 38
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid23:
	la	$s2, str_const2
	move	$a0, $s1
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s2, 8 ($s1)
	lw	$s1, 12 ($s2)
	jalr	$s1
	move	$s1, $a0
	move	$s1, $s0
	move	$a0, $s1
	j	__Article.print_epilogue
__Article.print_epilogue:
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

# web count: 14
# VR0-[[0, 6), [6, 11), [11, 23)]-{0}-[4, 21, 22] --> $s0
# VR1-[[1, 6), [6, 11), [11, 12)]-{1}-[11] --> $s1
# VR2-[[2, 6), [6, 11), [11, 13)]-{2}-[12] --> $s2
# VR3-[[3, 6), [6, 11), [11, 21)]-{3}-[20] --> $s3
# VR4-[[4, 6), [6, 11), [11, 17)]-{4}-[16, 5, 13] --> $s4
# VR4-[[19, 20)]-{11}-[] --> $s1
# VR4-[[20, 22)]-{12}-[21] --> $s1
# VR4-[[22, 24)]-{13}-[23] --> $s1
# VR5-[[6, 8)]-{5}-[7] --> $s5
# VR5-[[8, 10)]-{6}-[9] --> $s5
# VR5-[[11, 15)]-{7}-[14] --> $s5
# VR5-[[16, 18)]-{9}-[17] --> $s1
# VR5-[[17, 19)]-{10}-[18] --> $s2
# VR6-[[12, 16)]-{8}-[15] --> $s1
Article.initArticle:
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
	lw	$s1, 16 ($fp)
	lw	$s2, 12 ($fp)
	lw	$s3, 8 ($fp)
	move	$s4, $s0
	bnez	$s4, dispatch_notvoid24
	la	$s5, str_const0
	move	$a0, $s5
	li	$s5, 29
	sw	$s5, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid24:
	move	$s5, $s1
	move	$s1, $s2
	move	$a0, $s4
	sw	$s5, 0 ($sp)
	addi	$sp, $sp, -4
	sw	$s1, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s1, 8 ($s4)
	lw	$s2, 28 ($s1)
	jalr	$s2
	move	$s1, $a0
	move	$s1, $s3
	sw	$s1, 20 ($s0)
	move	$s1, $s0
	move	$a0, $s1
	j	__Article.initArticle_epilogue
__Article.initArticle_epilogue:
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
	addi	$sp, $sp, 20
	jr	$ra

