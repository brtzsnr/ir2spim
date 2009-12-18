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
	.ascii	"tests/advanced/ok/book_list.cl"
	.byte	0, 0
int_const18:
	.word	1
	.word	4
	.word	Object_dispatch
	.word	30
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

# Mapping: VR0:$s0 
# To spill: 
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

# Mapping: VR0:$s0 
# To spill: 
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

# Mapping: VR0:$s0 
# To spill: 
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

# Mapping: VR0:$s0 
# To spill: 
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s2 VR3:$s3 VR4:$s4 VR5:$s5 
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
	lw	$s2, 28 ($s2)
	jalr	$s2
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
	lw	$s3, 36 ($s3)
	jalr	$s3
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
	lw	$s4, 8 ($s3)
	lw	$s4, 32 ($s4)
	jalr	$s4
	move	$s3, $a0
	bnez	$s3, dispatch_notvoid3
	la	$s4, str_const0
	move	$a0, $s4
	li	$s4, 125
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid3:
	move	$s4, $s2
	move	$a0, $s3
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s4, 8 ($s3)
	lw	$s4, 32 ($s4)
	jalr	$s4
	move	$s3, $a0
	sw	$s3, 12 ($s0)
	lw	$s3, 12 ($s0)
	bnez	$s3, dispatch_notvoid4
	la	$s4, str_const0
	move	$a0, $s4
	li	$s4, 126
	sw	$s4, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid4:
	move	$a0, $s3
	lw	$s4, 8 ($s3)
	lw	$s4, 44 ($s4)
	jalr	$s4
	move	$s3, $a0
	move	$s2, $s3
	move	$s1, $s2
	move	$a0, $s1
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s2 VR3:$s3 
# To spill: 
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
	move	$s3, $s2
	sw	$s3, 16 ($s0)
	move	$s3, $s0
	move	$a0, $s3
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s2 
# To spill: 
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
	lw	$s2, 12 ($s2)
	jalr	$s2
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
	lw	$s2, 12 ($s2)
	jalr	$s2
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
	lw	$s2, 12 ($s2)
	jalr	$s2
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
	lw	$s2, 12 ($s2)
	jalr	$s2
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
	lw	$s2, 12 ($s2)
	jalr	$s2
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
	lw	$s2, 12 ($s2)
	jalr	$s2
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s0 
# To spill: 
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
	lw	$s0, 0 ($s0)
	jalr	$s0
	move	$s1, $a0
	li	$s1, 1
	move	$a0, $s1
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s2 VR3:$s3 VR4:$s2 VR5:$s1 
# To spill: 
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
	lw	$s2, 8 ($s3)
	lw	$s2, 48 ($s2)
	jalr	$s2
	move	$s3, $a0
	move	$s2, $s3
	move	$a0, $s2
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s0 
# To spill: 
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
	lw	$s0, 0 ($s0)
	jalr	$s0
	move	$s1, $a0
	la	$s1, Book_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	jal	Book_init
	move	$a0, $s1
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s0 
# To spill: 
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
	lw	$s0, 0 ($s0)
	jalr	$s0
	move	$s1, $a0
	la	$s1, BookList_protObj
	move	$a0, $s1
	jal	Object.copy
	move	$s1, $a0
	jal	BookList_init
	move	$a0, $s1
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s0 
# To spill: 
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
	lw	$s0, 0 ($s0)
	jalr	$s0
	move	$s1, $a0
	move	$a0, $s1
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

# Mapping: VR0:$s0 VR1:$s0 
# To spill: 
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

# Mapping: VR0:$s0 VR1:$s1 
# To spill: 
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

# Mapping: VR0:$s0 VR1:$s1 
# To spill: 
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s2 VR3:$s3 
# To spill: 
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
	lw	$s2, 32 ($s2)
	jalr	$s2
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
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid17
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 96
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid17:
	la	$s3, str_const6
	move	$a0, $s2
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s3, 8 ($s2)
	lw	$s3, 12 ($s3)
	jalr	$s3
	move	$s2, $a0
	b	case0_end
case0_tag6:
	slt	$s3, $s2, 6
	bnez	$s3, case0_error
	li	$t0, 10
	slt	$s3, $t0, $s2
	bnez	$s3, case0_error
	move	$s2, $s0
	bnez	$s2, dispatch_notvoid18
	la	$s3, str_const0
	move	$a0, $s3
	li	$s3, 95
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid18:
	la	$s3, str_const5
	move	$a0, $s2
	sw	$s3, 0 ($sp)
	addi	$sp, $sp, -4
	lw	$s3, 8 ($s2)
	lw	$s3, 12 ($s3)
	jalr	$s3
	move	$s2, $a0
	b	case0_end
case0_error:
	move	$a0, $s1
	jal	_case_abort
case0_end:
	move	$s1, $s2
	lw	$s1, 16 ($s0)
	bnez	$s1, dispatch_notvoid19
	la	$s2, str_const0
	move	$a0, $s2
	li	$s2, 98
	sw	$s2, 0 ($sp)
	addi	$sp, $sp, -4
	jal	void_disp_handler
dispatch_notvoid19:
	move	$a0, $s1
	lw	$s2, 8 ($s1)
	lw	$s2, 44 ($s2)
	jalr	$s2
	move	$s1, $a0
	move	$a0, $s1
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s2 VR3:$s3 
# To spill: 
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
	move	$s3, $s2
	sw	$s3, 16 ($s0)
	move	$s3, $s0
	move	$a0, $s3
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

# Mapping: VR0:$s0 VR1:$s0 
# To spill: 
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

# Mapping: VR0:$s0 VR1:$s0 
# To spill: 
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s2 
# To spill: 
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
	la	$s2, Book_dispatch
	lw	$s2, 32 ($s2)
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
	lw	$s2, 12 ($s2)
	jalr	$s2
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
	lw	$s2, 12 ($s2)
	jalr	$s2
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
	lw	$s2, 12 ($s2)
	jalr	$s2
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

# Mapping: VR0:$s0 VR1:$s1 VR2:$s2 VR3:$s3 VR4:$s4 VR5:$s5 VR6:$s1 
# To spill: 
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
	lw	$s5, 8 ($s4)
	lw	$s5, 28 ($s5)
	jalr	$s5
	move	$s4, $a0
	move	$s4, $s3
	sw	$s4, 20 ($s0)
	move	$s4, $s0
	move	$a0, $s4
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

