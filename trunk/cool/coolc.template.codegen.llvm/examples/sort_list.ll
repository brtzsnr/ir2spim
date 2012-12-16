; *************************************************************************
; *************************************************************************
; *************************************************************************
; *************************************************************************
; header
; *************************************************************************

%struct.Object_protObj_t = type { i32, i32, %struct.Object_dispTab_t* }
%struct.String_protObj_t = type { i32, i32, %struct.String_dispTab_t*, %struct.Int_protObj_t*, i8* }
%struct.Int_protObj_t = type { i32, i32, %struct.Object_dispTab_t*, i32 }
%struct.Object_dispTab_t = type { i8*, i8*, i8* }
%struct.String_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.IO_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.IO_protObj_t = type { i32, i32, %struct.IO_dispTab_t* }
%struct.Bool_dispTab_t = type { i8*, i8*, i8* }
%struct.Bool_protObj_t = type { i32, i32, %struct.Bool_dispTab_t*, i32 }


@IO_dispTab = external global %struct.IO_dispTab_t
@Object_dispTab = external global %struct.Object_dispTab_t
@String_dispTab = external global %struct.String_dispTab_t
@Int_protObj = external global %struct.Int_protObj_t
@IO_protObj = external global %struct.IO_protObj_t
@Object_protObj = external global %struct.Object_protObj_t
@Bool_protObj = external global %struct.Bool_protObj_t
@String_protObj = external global %struct.String_protObj_t


declare i32 @putchar(i32)
declare i32 @IO__out_int(i32, i32)
declare i32 @IO__out_string(i32, i32)
declare i32 @IO__in_int(i32)
declare i32 @IO__in_string(i32)
declare i32 @Object__copy(i32)
declare i32 @Object__abort(i32)
declare i32 @Object__type_name(i32)
declare void @__outString__(i32, i32)
declare void @_dispatch_abort(i32, i32)
declare void @llvm.memcpy.i32(i8*, i8*, i32, i32)
declare void @printmemorie()
declare void @IO_init(i32)
declare void @Object_init(i32)
declare void @__outInt__(i32)
declare void @_case_abort2(i32, i32)
declare void @_case_abort(i32)
declare i32 @equality_test(i32, i32, i32, i32)
declare void @Bool_init(i32)
declare void @Int_init(i32)
declare void @String_init(i32)
; *************************************************************************
; *************************************************************************
; *************************************************************************
; *************************************************************************
; start of generated code
; *************************************************************************
define void @List_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @List__isNil(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.List_protObj_t*
;- block -
;; -> block: linia 28
;- block -- dispatch -
;; -> dispatch: linia 28
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 28
;; <- object: linia 28
  %VR1 = icmp eq %struct.List_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch0, label %dispatch_not_void_List_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__2 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_List_0
dispatch_not_void_List_0:
  %VR2 = ptrtoint %struct.List_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 0
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 28
;- block -- bool_const -
;; -> bool_const: linia 28
  %VR11 = add i32 1, 0
;; <- bool_const: linia 28
;; <- block: linia 28
  ret i32 %VR11
;#######################################; <- dispatch_not_void_List_0


}
define i32 @List__cons(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.List_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- let -
;; -> let: linia 31
;- let -- new -
;; -> new: linia 31
  %VR2 = call i32  @Object__copy(i32 ptrtoint (%struct.Cons_protObj_t* @Cons_protObj to i32))
  call void @Cons_init(i32 %VR2)
;; <- new: linia 31
;- let -- dispatch -
;; -> dispatch: linia 32
;;generez codul pentru apelul metodei init
;- let -- dispatch -- object -
;; -> object: linia 32
;; <- object: linia 32
;- let -- dispatch -- object -
;; -> object: linia 32
;; <- object: linia 32
;- let -- dispatch -- object -
;; -> object: linia 32
;; <- object: linia 32
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = icmp eq i32* %VR3,  null
  br i1 %VR4, label %false_dispatch1, label %dispatch_not_void_List_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__3 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_List_1
dispatch_not_void_List_1:
  %VR5 = ptrtoint i32* %VR3 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 64
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32, i32, i32)*
  %VR13 = call i32 (i32, i32, i32)* %VR12(i32 %VR2, i32 %VR1, i32 %ARG)
;; <- dispatch: linia 32
;; <- let: linia 31
  ret i32 %VR13
;#######################################; <- dispatch_not_void_List_1


}
define i32 @List__car(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.List_protObj_t*
;- block -
;; -> block: linia 41
;- block -- dispatch -
;; -> dispatch: linia 41
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 41
;; <- object: linia 41
  %VR1 = icmp eq %struct.List_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch2, label %dispatch_not_void_List_2
;#######################################; <- entry


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_List_2
dispatch_not_void_List_2:
  %VR2 = ptrtoint %struct.List_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 0
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 41
;- block -- new -
;; -> new: linia 41
  %VR11 = add i32 0, 0
;; <- new: linia 41
;; <- block: linia 41
  ret i32 %VR11
;#######################################; <- dispatch_not_void_List_2


}
define i32 @List__cdr(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.List_protObj_t*
;- block -
;; -> block: linia 43
;- block -- dispatch -
;; -> dispatch: linia 43
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 43
;; <- object: linia 43
  %VR1 = icmp eq %struct.List_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch3, label %dispatch_not_void_List_3
;#######################################; <- entry


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__5 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_List_3
dispatch_not_void_List_3:
  %VR2 = ptrtoint %struct.List_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 0
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 43
;- block -- new -
;; -> new: linia 43
  %VR11 = call i32  @Object__copy(i32 ptrtoint (%struct.List_protObj_t* @List_protObj to i32))
  call void @List_init(i32 %VR11)
;; <- new: linia 43
;; <- block: linia 43
  ret i32 %VR11
;#######################################; <- dispatch_not_void_List_3


}
define i32 @List__rev(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.List_protObj_t*
;- dispatch -
;; -> dispatch: linia 45
;;generez codul pentru apelul metodei cdr
;- dispatch -- object -
;; -> object: linia 45
;; <- object: linia 45
  %VR1 = icmp eq %struct.List_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch4, label %dispatch_not_void_List_4
;#######################################; <- entry


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_List_4
dispatch_not_void_List_4:
  %VR2 = ptrtoint %struct.List_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 40
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 45
  ret i32 %VR10
;#######################################; <- dispatch_not_void_List_4


}
define i32 @List__sort(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.List_protObj_t*
;- dispatch -
;; -> dispatch: linia 47
;;generez codul pentru apelul metodei cdr
;- dispatch -- object -
;; -> object: linia 47
;; <- object: linia 47
  %VR1 = icmp eq %struct.List_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch5, label %dispatch_not_void_List_5
;#######################################; <- entry


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__7 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_List_5
dispatch_not_void_List_5:
  %VR2 = ptrtoint %struct.List_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 40
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 47
  ret i32 %VR10
;#######################################; <- dispatch_not_void_List_5


}
define i32 @List__insert(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.List_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- dispatch -
;; -> dispatch: linia 49
;;generez codul pentru apelul metodei cdr
;- dispatch -- object -
;; -> object: linia 49
;; <- object: linia 49
  %VR2 = icmp eq %struct.List_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch6, label %dispatch_not_void_List_6
;#######################################; <- entry


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__8 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_List_6
dispatch_not_void_List_6:
  %VR3 = ptrtoint %struct.List_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 40
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32)*
  %VR11 = call i32 (i32)* %VR10(i32 %ARG)
;; <- dispatch: linia 49
  ret i32 %VR11
;#######################################; <- dispatch_not_void_List_6


}
define i32 @List__rcons(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.List_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- dispatch -
;; -> dispatch: linia 51
;;generez codul pentru apelul metodei cdr
;- dispatch -- object -
;; -> object: linia 51
;; <- object: linia 51
  %VR2 = icmp eq %struct.List_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch7, label %dispatch_not_void_List_7
;#######################################; <- entry


;#######################################; -> false_dispatch7
false_dispatch7:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__9 to i32))
  ret i32 0
;#######################################; <- false_dispatch7


;#######################################; -> dispatch_not_void_List_7
dispatch_not_void_List_7:
  %VR3 = ptrtoint %struct.List_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 40
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32)*
  %VR11 = call i32 (i32)* %VR10(i32 %ARG)
;; <- dispatch: linia 51
  ret i32 %VR11
;#######################################; <- dispatch_not_void_List_7


}
define i32 @List__print_list(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.List_protObj_t*
;- dispatch -
;; -> dispatch: linia 53
;;generez codul pentru apelul metodei abort
;- dispatch -- object -
;; -> object: linia 53
;; <- object: linia 53
  %VR1 = icmp eq %struct.List_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch8, label %dispatch_not_void_List_8
;#######################################; <- entry


;#######################################; -> false_dispatch8
false_dispatch8:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__10 to i32))
  ret i32 0
;#######################################; <- false_dispatch8


;#######################################; -> dispatch_not_void_List_8
dispatch_not_void_List_8:
  %VR2 = ptrtoint %struct.List_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 0
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 53
  ret i32 %VR10
;#######################################; <- dispatch_not_void_List_8


}
define void @Cons_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @List_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @Cons__isNil(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Cons_protObj_t*
;- bool_const -
;; -> bool_const: linia 62
  %VR1 = add i32 0, 0
;; <- bool_const: linia 62
  ret i32 %VR1
;#######################################; <- entry


}
define i32 @Cons__init(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Cons_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- block -
;; -> block: linia 65
;- block -- assign -
;; -> assign: linia 66
;- block -- assign -- object -
;; -> object: linia 66
;; <- object: linia 66
  %VR3 = add i32 %ARG, 12
  %VR4 = inttoptr i32 %VR3 to i32*
  store i32 %VR1, i32* %VR4
;; <- assign: linia 66
;- block -- assign -
;; -> assign: linia 67
;- block -- assign -- object -
;; -> object: linia 67
;; <- object: linia 67
  %VR5 = add i32 %ARG, 16
  %VR6 = inttoptr i32 %VR5 to i32*
  store i32 %VR2, i32* %VR6
;; <- assign: linia 67
;- block -- object -
;; -> object: linia 68
;; <- object: linia 68
;; <- block: linia 65
  ret i32 %ARG
;#######################################; <- entry


}
define i32 @Cons__car(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Cons_protObj_t*
;- object -
;; -> object: linia 72
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 72
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @Cons__cdr(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Cons_protObj_t*
;- object -
;; -> object: linia 74
  %VR1 = add i32 %ARG, 16
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 74
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @Cons__rev(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Cons_protObj_t*
;- dispatch -
;; -> dispatch: linia 76
;;generez codul pentru apelul metodei rcons
;- dispatch -- object -
;; -> object: linia 76
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 76
;- dispatch -- dispatch -
;; -> dispatch: linia 76
;;generez codul pentru apelul metodei rev
;- dispatch -- dispatch -- object -
;; -> object: linia 76
  %VR4 = add i32 %ARG, 16
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
;; <- object: linia 76
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = icmp eq i32* %VR7,  null
  br i1 %VR8, label %false_dispatch0, label %dispatch_not_void_Cons_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__11 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Cons_0
dispatch_not_void_Cons_0:
  %VR9 = ptrtoint i32* %VR7 to i32 
  %VR10 = add i32 %VR9, 8
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = add i32 %VR12, 44
  %VR14 = inttoptr i32 %VR13 to i32*
  %VR15 = load i32* %VR14
  %VR16 = inttoptr i32 %VR15 to i32 (i32)*
  %VR17 = call i32 (i32)* %VR16(i32 %VR6)
;; <- dispatch: linia 76
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = icmp eq i32* %VR18,  null
  br i1 %VR19, label %false_dispatch1, label %dispatch_not_void_Cons_1
;#######################################; <- dispatch_not_void_Cons_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__11 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Cons_1
dispatch_not_void_Cons_1:
  %VR20 = ptrtoint i32* %VR18 to i32 
  %VR21 = add i32 %VR20, 8
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = load i32* %VR22
  %VR24 = add i32 %VR23, 56
  %VR25 = inttoptr i32 %VR24 to i32*
  %VR26 = load i32* %VR25
  %VR27 = inttoptr i32 %VR26 to i32 (i32, i32)*
  %VR28 = call i32 (i32, i32)* %VR27(i32 %VR17, i32 %VR3)
;; <- dispatch: linia 76
  ret i32 %VR28
;#######################################; <- dispatch_not_void_Cons_1


}
define i32 @Cons__sort(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Cons_protObj_t*
;- dispatch -
;; -> dispatch: linia 78
;;generez codul pentru apelul metodei insert
;- dispatch -- object -
;; -> object: linia 78
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 78
;- dispatch -- dispatch -
;; -> dispatch: linia 78
;;generez codul pentru apelul metodei sort
;- dispatch -- dispatch -- object -
;; -> object: linia 78
  %VR4 = add i32 %ARG, 16
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
;; <- object: linia 78
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = icmp eq i32* %VR7,  null
  br i1 %VR8, label %false_dispatch2, label %dispatch_not_void_Cons_2
;#######################################; <- entry


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__12 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Cons_2
dispatch_not_void_Cons_2:
  %VR9 = ptrtoint i32* %VR7 to i32 
  %VR10 = add i32 %VR9, 8
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = add i32 %VR12, 48
  %VR14 = inttoptr i32 %VR13 to i32*
  %VR15 = load i32* %VR14
  %VR16 = inttoptr i32 %VR15 to i32 (i32)*
  %VR17 = call i32 (i32)* %VR16(i32 %VR6)
;; <- dispatch: linia 78
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = icmp eq i32* %VR18,  null
  br i1 %VR19, label %false_dispatch3, label %dispatch_not_void_Cons_3
;#######################################; <- dispatch_not_void_Cons_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__12 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Cons_3
dispatch_not_void_Cons_3:
  %VR20 = ptrtoint i32* %VR18 to i32 
  %VR21 = add i32 %VR20, 8
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = load i32* %VR22
  %VR24 = add i32 %VR23, 52
  %VR25 = inttoptr i32 %VR24 to i32*
  %VR26 = load i32* %VR25
  %VR27 = inttoptr i32 %VR26 to i32 (i32, i32)*
  %VR28 = call i32 (i32, i32)* %VR27(i32 %VR17, i32 %VR3)
;; <- dispatch: linia 78
  ret i32 %VR28
;#######################################; <- dispatch_not_void_Cons_3


}
define i32 @Cons__insert(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Cons_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 81
;;if: linia 81 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- lt -
;; -> lt: linia 81
;- cond -- lt -- object -
;; -> object: linia 81
;; <- object: linia 81
;- cond -- lt -- object -
;; -> object: linia 81
  %VR3 = add i32 %ARG, 12
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
;; <- object: linia 81
  %VR6 = icmp slt i32 %VR1,  %VR5
;; <- lt: linia 81
  %VR7 = icmp eq i1 %VR6,  false
  br i1 %VR7, label %false_Cons_0, label %false_false_Cons_0
;#######################################; <- entry


;#######################################; -> false_false_Cons_0
false_false_Cons_0:
;;if: linia 81 (expresia pentru then)
;- cond -- dispatch -
;; -> dispatch: linia 82
;;generez codul pentru apelul metodei init
;- cond -- dispatch -- object -
;; -> object: linia 82
;; <- object: linia 82
;- cond -- dispatch -- object -
;; -> object: linia 82
;; <- object: linia 82
;- cond -- dispatch -- new -
;; -> new: linia 82
  %VR8 = call i32  @Object__copy(i32 ptrtoint (%struct.Cons_protObj_t* @Cons_protObj to i32))
  call void @Cons_init(i32 %VR8)
;; <- new: linia 82
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = icmp eq i32* %VR9,  null
  br i1 %VR10, label %false_dispatch4, label %dispatch_not_void_Cons_4
;#######################################; <- false_false_Cons_0


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__13 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Cons_4
dispatch_not_void_Cons_4:
  %VR11 = ptrtoint i32* %VR9 to i32 
  %VR12 = add i32 %VR11, 8
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
  %VR15 = add i32 %VR14, 64
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
  %VR18 = inttoptr i32 %VR17 to i32 (i32, i32, i32)*
  %VR19 = call i32 (i32, i32, i32)* %VR18(i32 %VR8, i32 %VR1, i32 %ARG)
;; <- dispatch: linia 82
  br label %join_if_Cons_0_true
;#######################################; <- dispatch_not_void_Cons_4


;#######################################; -> join_if_Cons_0_true
join_if_Cons_0_true:
  %VR2.0 = add i32 %VR19, 0
  br label %join_if_Cons_0
;#######################################; <- join_if_Cons_0_true


;#######################################; -> false_Cons_0
false_Cons_0:
;;if: linia 81 (expresia pentru else)
;- cond -- dispatch -
;; -> dispatch: linia 84
;;generez codul pentru apelul metodei init
;- cond -- dispatch -- object -
;; -> object: linia 84
  %VR20 = add i32 %ARG, 12
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
;; <- object: linia 84
;- cond -- dispatch -- dispatch -
;; -> dispatch: linia 84
;;generez codul pentru apelul metodei insert
;- cond -- dispatch -- dispatch -- object -
;; -> object: linia 84
;; <- object: linia 84
;- cond -- dispatch -- dispatch -- object -
;; -> object: linia 84
  %VR23 = add i32 %ARG, 16
  %VR24 = inttoptr i32 %VR23 to i32*
  %VR25 = load i32* %VR24
;; <- object: linia 84
  %VR26 = inttoptr i32 %VR25 to i32*
  %VR27 = icmp eq i32* %VR26,  null
  br i1 %VR27, label %false_dispatch5, label %dispatch_not_void_Cons_5
;#######################################; <- false_Cons_0


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__14 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_Cons_5
dispatch_not_void_Cons_5:
  %VR28 = ptrtoint i32* %VR26 to i32 
  %VR29 = add i32 %VR28, 8
  %VR30 = inttoptr i32 %VR29 to i32*
  %VR31 = load i32* %VR30
  %VR32 = add i32 %VR31, 52
  %VR33 = inttoptr i32 %VR32 to i32*
  %VR34 = load i32* %VR33
  %VR35 = inttoptr i32 %VR34 to i32 (i32, i32)*
  %VR36 = call i32 (i32, i32)* %VR35(i32 %VR25, i32 %VR1)
;; <- dispatch: linia 84
;- cond -- dispatch -- new -
;; -> new: linia 84
  %VR37 = call i32  @Object__copy(i32 ptrtoint (%struct.Cons_protObj_t* @Cons_protObj to i32))
  call void @Cons_init(i32 %VR37)
;; <- new: linia 84
  %VR38 = inttoptr i32 %VR37 to i32*
  %VR39 = icmp eq i32* %VR38,  null
  br i1 %VR39, label %false_dispatch6, label %dispatch_not_void_Cons_6
;#######################################; <- dispatch_not_void_Cons_5


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__14 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_Cons_6
dispatch_not_void_Cons_6:
  %VR40 = ptrtoint i32* %VR38 to i32 
  %VR41 = add i32 %VR40, 8
  %VR42 = inttoptr i32 %VR41 to i32*
  %VR43 = load i32* %VR42
  %VR44 = add i32 %VR43, 64
  %VR45 = inttoptr i32 %VR44 to i32*
  %VR46 = load i32* %VR45
  %VR47 = inttoptr i32 %VR46 to i32 (i32, i32, i32)*
  %VR48 = call i32 (i32, i32, i32)* %VR47(i32 %VR37, i32 %VR22, i32 %VR36)
;; <- dispatch: linia 84
  br label %join_if_Cons_0_false
;#######################################; <- dispatch_not_void_Cons_6


;#######################################; -> join_if_Cons_0_false
join_if_Cons_0_false:
  %VR2.1 = add i32 %VR48, 0
  br label %join_if_Cons_0
;#######################################; <- join_if_Cons_0_false


;#######################################; -> join_if_Cons_0
join_if_Cons_0:
  %VR2 = phi i32 [ %VR2.0, %join_if_Cons_0_true ], [ %VR2.1, %join_if_Cons_0_false ]
;; <- cond: linia 81
  ret i32 %VR2
;#######################################; <- join_if_Cons_0


}
define i32 @Cons__rcons(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Cons_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- dispatch -
;; -> dispatch: linia 89
;;generez codul pentru apelul metodei init
;- dispatch -- object -
;; -> object: linia 89
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = load i32* %VR3
;; <- object: linia 89
;- dispatch -- dispatch -
;; -> dispatch: linia 89
;;generez codul pentru apelul metodei rcons
;- dispatch -- dispatch -- object -
;; -> object: linia 89
;; <- object: linia 89
;- dispatch -- dispatch -- object -
;; -> object: linia 89
  %VR5 = add i32 %ARG, 16
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = load i32* %VR6
;; <- object: linia 89
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = icmp eq i32* %VR8,  null
  br i1 %VR9, label %false_dispatch7, label %dispatch_not_void_Cons_7
;#######################################; <- entry


;#######################################; -> false_dispatch7
false_dispatch7:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__15 to i32))
  ret i32 0
;#######################################; <- false_dispatch7


;#######################################; -> dispatch_not_void_Cons_7
dispatch_not_void_Cons_7:
  %VR10 = ptrtoint i32* %VR8 to i32 
  %VR11 = add i32 %VR10, 8
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
  %VR14 = add i32 %VR13, 56
  %VR15 = inttoptr i32 %VR14 to i32*
  %VR16 = load i32* %VR15
  %VR17 = inttoptr i32 %VR16 to i32 (i32, i32)*
  %VR18 = call i32 (i32, i32)* %VR17(i32 %VR7, i32 %VR1)
;; <- dispatch: linia 89
;- dispatch -- new -
;; -> new: linia 89
  %VR19 = call i32  @Object__copy(i32 ptrtoint (%struct.Cons_protObj_t* @Cons_protObj to i32))
  call void @Cons_init(i32 %VR19)
;; <- new: linia 89
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = icmp eq i32* %VR20,  null
  br i1 %VR21, label %false_dispatch8, label %dispatch_not_void_Cons_8
;#######################################; <- dispatch_not_void_Cons_7


;#######################################; -> false_dispatch8
false_dispatch8:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__15 to i32))
  ret i32 0
;#######################################; <- false_dispatch8


;#######################################; -> dispatch_not_void_Cons_8
dispatch_not_void_Cons_8:
  %VR22 = ptrtoint i32* %VR20 to i32 
  %VR23 = add i32 %VR22, 8
  %VR24 = inttoptr i32 %VR23 to i32*
  %VR25 = load i32* %VR24
  %VR26 = add i32 %VR25, 64
  %VR27 = inttoptr i32 %VR26 to i32*
  %VR28 = load i32* %VR27
  %VR29 = inttoptr i32 %VR28 to i32 (i32, i32, i32)*
  %VR30 = call i32 (i32, i32, i32)* %VR29(i32 %VR19, i32 %VR4, i32 %VR18)
;; <- dispatch: linia 89
  ret i32 %VR30
;#######################################; <- dispatch_not_void_Cons_8


}
define i32 @Cons__print_list(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Cons_protObj_t*
;- block -
;; -> block: linia 92
;- block -- dispatch -
;; -> dispatch: linia 93
;;generez codul pentru apelul metodei out_int
;- block -- dispatch -- object -
;; -> object: linia 93
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 93
;- block -- dispatch -- object -
;; -> object: linia 93
;; <- object: linia 93
  %VR4 = icmp eq %struct.Cons_protObj_t* %VR0,  null
  br i1 %VR4, label %false_dispatch9, label %dispatch_not_void_Cons_9
;#######################################; <- entry


;#######################################; -> false_dispatch9
false_dispatch9:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__16 to i32))
  ret i32 0
;#######################################; <- false_dispatch9


;#######################################; -> dispatch_not_void_Cons_9
dispatch_not_void_Cons_9:
  %VR5 = ptrtoint %struct.Cons_protObj_t* %VR0 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 12
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
;boxing to int
  %VR12 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR13 = add i32 %VR12, 12
  %VR14 = inttoptr i32 %VR13 to i32*
  store i32 %VR3, i32* %VR14
  %VR15 = inttoptr i32 %VR11 to i32 (i32, i32)*
  %VR16 = call i32 (i32, i32)* %VR15(i32 %ARG, i32 %VR12)
;; <- dispatch: linia 93
;- block -- dispatch -
;; -> dispatch: linia 94
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 94
  %VR17 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 94
;- block -- dispatch -- object -
;; -> object: linia 94
;; <- object: linia 94
  %VR18 = icmp eq %struct.Cons_protObj_t* %VR0,  null
  br i1 %VR18, label %false_dispatch10, label %dispatch_not_void_Cons_10
;#######################################; <- dispatch_not_void_Cons_9


;#######################################; -> false_dispatch10
false_dispatch10:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__17 to i32))
  ret i32 0
;#######################################; <- false_dispatch10


;#######################################; -> dispatch_not_void_Cons_10
dispatch_not_void_Cons_10:
  %VR19 = ptrtoint %struct.Cons_protObj_t* %VR0 to i32 
  %VR20 = add i32 %VR19, 8
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
  %VR23 = add i32 %VR22, 16
  %VR24 = inttoptr i32 %VR23 to i32*
  %VR25 = load i32* %VR24
  %VR26 = inttoptr i32 %VR25 to i32 (i32, i32)*
  %VR27 = call i32 (i32, i32)* %VR26(i32 %ARG, i32 %VR17)
;; <- dispatch: linia 94
;- block -- dispatch -
;; -> dispatch: linia 95
;;generez codul pentru apelul metodei print_list
;- block -- dispatch -- object -
;; -> object: linia 95
  %VR28 = add i32 %ARG, 16
  %VR29 = inttoptr i32 %VR28 to i32*
  %VR30 = load i32* %VR29
;; <- object: linia 95
  %VR31 = inttoptr i32 %VR30 to i32*
  %VR32 = icmp eq i32* %VR31,  null
  br i1 %VR32, label %false_dispatch11, label %dispatch_not_void_Cons_11
;#######################################; <- dispatch_not_void_Cons_10


;#######################################; -> false_dispatch11
false_dispatch11:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__18 to i32))
  ret i32 0
;#######################################; <- false_dispatch11


;#######################################; -> dispatch_not_void_Cons_11
dispatch_not_void_Cons_11:
  %VR33 = ptrtoint i32* %VR31 to i32 
  %VR34 = add i32 %VR33, 8
  %VR35 = inttoptr i32 %VR34 to i32*
  %VR36 = load i32* %VR35
  %VR37 = add i32 %VR36, 60
  %VR38 = inttoptr i32 %VR37 to i32*
  %VR39 = load i32* %VR38
  %VR40 = inttoptr i32 %VR39 to i32 (i32)*
  %VR41 = call i32 (i32)* %VR40(i32 %VR30)
;; <- dispatch: linia 95
;; <- block: linia 92
  ret i32 %VR41
;#######################################; <- dispatch_not_void_Cons_11


}
define void @Nil_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @List_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @Nil__isNil(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Nil_protObj_t*
;- bool_const -
;; -> bool_const: linia 101
  %VR1 = add i32 1, 0
;; <- bool_const: linia 101
  ret i32 %VR1
;#######################################; <- entry


}
define i32 @Nil__rev(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Nil_protObj_t*
;- object -
;; -> object: linia 103
;; <- object: linia 103
  ret i32 %ARG
;#######################################; <- entry


}
define i32 @Nil__sort(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Nil_protObj_t*
;- object -
;; -> object: linia 105
;; <- object: linia 105
  ret i32 %ARG
;#######################################; <- entry


}
define i32 @Nil__insert(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Nil_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- dispatch -
;; -> dispatch: linia 107
;;generez codul pentru apelul metodei rcons
;- dispatch -- object -
;; -> object: linia 107
;; <- object: linia 107
;- dispatch -- object -
;; -> object: linia 107
;; <- object: linia 107
  %VR2 = icmp eq %struct.Nil_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch0, label %dispatch_not_void_Nil_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__19 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Nil_0
dispatch_not_void_Nil_0:
  %VR3 = ptrtoint %struct.Nil_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 56
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 107
  ret i32 %VR11
;#######################################; <- dispatch_not_void_Nil_0


}
define i32 @Nil__rcons(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Nil_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- dispatch -
;; -> dispatch: linia 109
;;generez codul pentru apelul metodei init
;- dispatch -- object -
;; -> object: linia 109
;; <- object: linia 109
;- dispatch -- object -
;; -> object: linia 109
;; <- object: linia 109
;- dispatch -- new -
;; -> new: linia 109
  %VR2 = call i32  @Object__copy(i32 ptrtoint (%struct.Cons_protObj_t* @Cons_protObj to i32))
  call void @Cons_init(i32 %VR2)
;; <- new: linia 109
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = icmp eq i32* %VR3,  null
  br i1 %VR4, label %false_dispatch1, label %dispatch_not_void_Nil_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__20 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Nil_1
dispatch_not_void_Nil_1:
  %VR5 = ptrtoint i32* %VR3 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 64
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32, i32, i32)*
  %VR13 = call i32 (i32, i32, i32)* %VR12(i32 %VR2, i32 %VR1, i32 %ARG)
;; <- dispatch: linia 109
  ret i32 %VR13
;#######################################; <- dispatch_not_void_Nil_1


}
define i32 @Nil__print_list(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Nil_protObj_t*
;- bool_const -
;; -> bool_const: linia 111
  %VR1 = add i32 1, 0
;; <- bool_const: linia 111
;boxing to bool
  %VR2 = call i32  @Object__copy(i32 ptrtoint (%struct.Bool_protObj_t* @Bool_protObj to i32))
  %VR3 = add i32 %VR2, 12
  %VR4 = inttoptr i32 %VR3 to i32*
  store i32 %VR1, i32* %VR4
  ret i32 %VR2
;#######################################; <- entry


}
define void @Main_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @Main__iota(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR5a = alloca i32 
  store i32 0, i32* %VR5a
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- block -
;; -> block: linia 122
;- block -- assign -
;; -> assign: linia 123
;- block -- assign -- new -
;; -> new: linia 123
  %VR2 = call i32  @Object__copy(i32 ptrtoint (%struct.Nil_protObj_t* @Nil_protObj to i32))
  call void @Nil_init(i32 %VR2)
;; <- new: linia 123
  %VR3 = add i32 %ARG, 12
  %VR4 = inttoptr i32 %VR3 to i32*
  store i32 %VR2, i32* %VR4
;; <- assign: linia 123
;- block -- let -
;; -> let: linia 124
;- block -- let -- int_const -
;; -> int_const: linia 124
  %VR5.a = add i32 0, 0
  store i32 %VR5.a, i32* %VR5a
;; <- int_const: linia 124
;- block -- let -- loop -
;; -> loop: linia 125
;; conditie
  br label %start_loop_Main_0
;#######################################; <- entry


;#######################################; -> start_loop_Main_0
start_loop_Main_0:
  %VR5_tmp0 = load i32* %VR5a
;- block -- let -- loop -- lt -
;; -> lt: linia 125
;- block -- let -- loop -- lt -- object -
;; -> object: linia 125
;; <- object: linia 125
;- block -- let -- loop -- lt -- object -
;; -> object: linia 125
;; <- object: linia 125
  %VR6 = icmp slt i32 %VR5_tmp0,  %VR1
;; <- lt: linia 125
  %VR7 = icmp eq i1 %VR6,  false
  br i1 %VR7, label %sfarsit_loop_Main_0, label %label_next_loop_Main_0
;#######################################; <- start_loop_Main_0


;#######################################; -> label_next_loop_Main_0
label_next_loop_Main_0:
;; corp loop
;- block -- let -- loop -- block -
;; -> block: linia 127
;- block -- let -- loop -- block -- assign -
;; -> assign: linia 128
;- block -- let -- loop -- block -- assign -- dispatch -
;; -> dispatch: linia 128
;;generez codul pentru apelul metodei init
;- block -- let -- loop -- block -- assign -- dispatch -- object -
;; -> object: linia 128
;; <- object: linia 128
;- block -- let -- loop -- block -- assign -- dispatch -- object -
;; -> object: linia 128
  %VR8 = add i32 %ARG, 12
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
;; <- object: linia 128
;- block -- let -- loop -- block -- assign -- dispatch -- new -
;; -> new: linia 128
  %VR11 = call i32  @Object__copy(i32 ptrtoint (%struct.Cons_protObj_t* @Cons_protObj to i32))
  call void @Cons_init(i32 %VR11)
;; <- new: linia 128
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = icmp eq i32* %VR12,  null
  br i1 %VR13, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- label_next_loop_Main_0


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__21 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR5_tmp1 = load i32* %VR5a
  %VR14 = ptrtoint i32* %VR12 to i32 
  %VR15 = add i32 %VR14, 8
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
  %VR18 = add i32 %VR17, 64
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
  %VR21 = inttoptr i32 %VR20 to i32 (i32, i32, i32)*
  %VR22 = call i32 (i32, i32, i32)* %VR21(i32 %VR11, i32 %VR5_tmp1, i32 %VR10)
;; <- dispatch: linia 128
  %VR23 = add i32 %ARG, 12
  %VR24 = inttoptr i32 %VR23 to i32*
  store i32 %VR22, i32* %VR24
;; <- assign: linia 128
;- block -- let -- loop -- block -- assign -
;; -> assign: linia 129
;- block -- let -- loop -- block -- assign -- plus -
;; -> plus: linia 129
;- block -- let -- loop -- block -- assign -- plus -- object -
;; -> object: linia 129
;; <- object: linia 129
;- block -- let -- loop -- block -- assign -- plus -- int_const -
;; -> int_const: linia 129
  %VR25 = add i32 1, 0
;; <- int_const: linia 129
  %VR26 = add i32 %VR5_tmp1, %VR25
;; <- plus: linia 129
  store i32 %VR26, i32* %VR5a
;; <- assign: linia 129
;; <- block: linia 127
  br label %start_loop_Main_0
;#######################################; <- dispatch_not_void_Main_0


;#######################################; -> sfarsit_loop_Main_0
sfarsit_loop_Main_0:
;; <- loop: linia 125
;; <- let: linia 124
;- block -- object -
;; -> object: linia 133
  %VR27 = add i32 %ARG, 12
  %VR28 = inttoptr i32 %VR27 to i32*
  %VR29 = load i32* %VR28
;; <- object: linia 133
;; <- block: linia 122
  ret i32 %VR29
;#######################################; <- sfarsit_loop_Main_0


}
define i32 @Main__main(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- block -
;; -> block: linia 138
;- block -- dispatch -
;; -> dispatch: linia 139
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 139
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 139
;- block -- dispatch -- object -
;; -> object: linia 139
;; <- object: linia 139
  %VR2 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__22 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Main_1
dispatch_not_void_Main_1:
  %VR3 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 16
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 139
;- block -- dispatch -
;; -> dispatch: linia 140
;;generez codul pentru apelul metodei print_list
;- block -- dispatch -- dispatch -
;; -> dispatch: linia 140
;;generez codul pentru apelul metodei sort
;- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 140
;;generez codul pentru apelul metodei rev
;- block -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 140
;;generez codul pentru apelul metodei iota
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 140
;;generez codul pentru apelul metodei in_int
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 140
;; <- object: linia 140
  %VR12 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR12, label %false_dispatch2, label %dispatch_not_void_Main_2
;#######################################; <- dispatch_not_void_Main_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__23 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Main_2
dispatch_not_void_Main_2:
  %VR13 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR14 = add i32 %VR13, 8
  %VR15 = inttoptr i32 %VR14 to i32*
  %VR16 = load i32* %VR15
  %VR17 = add i32 %VR16, 20
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
  %VR20 = inttoptr i32 %VR19 to i32 (i32)*
  %VR21 = call i32 (i32)* %VR20(i32 %ARG)
  %VR22 = add i32 %VR21, 12
  %VR23 = inttoptr i32 %VR22 to i32*
  %VR24 = load i32* %VR23
;; <- dispatch: linia 140
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 140
;; <- object: linia 140
  %VR25 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR25, label %false_dispatch3, label %dispatch_not_void_Main_3
;#######################################; <- dispatch_not_void_Main_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__23 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Main_3
dispatch_not_void_Main_3:
  %VR26 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR27 = add i32 %VR26, 8
  %VR28 = inttoptr i32 %VR27 to i32*
  %VR29 = load i32* %VR28
  %VR30 = add i32 %VR29, 28
  %VR31 = inttoptr i32 %VR30 to i32*
  %VR32 = load i32* %VR31
  %VR33 = inttoptr i32 %VR32 to i32 (i32, i32)*
  %VR34 = call i32 (i32, i32)* %VR33(i32 %ARG, i32 %VR24)
;; <- dispatch: linia 140
  %VR35 = inttoptr i32 %VR34 to i32*
  %VR36 = icmp eq i32* %VR35,  null
  br i1 %VR36, label %false_dispatch4, label %dispatch_not_void_Main_4
;#######################################; <- dispatch_not_void_Main_3


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__23 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Main_4
dispatch_not_void_Main_4:
  %VR37 = ptrtoint i32* %VR35 to i32 
  %VR38 = add i32 %VR37, 8
  %VR39 = inttoptr i32 %VR38 to i32*
  %VR40 = load i32* %VR39
  %VR41 = add i32 %VR40, 44
  %VR42 = inttoptr i32 %VR41 to i32*
  %VR43 = load i32* %VR42
  %VR44 = inttoptr i32 %VR43 to i32 (i32)*
  %VR45 = call i32 (i32)* %VR44(i32 %VR34)
;; <- dispatch: linia 140
  %VR46 = inttoptr i32 %VR45 to i32*
  %VR47 = icmp eq i32* %VR46,  null
  br i1 %VR47, label %false_dispatch5, label %dispatch_not_void_Main_5
;#######################################; <- dispatch_not_void_Main_4


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__23 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_Main_5
dispatch_not_void_Main_5:
  %VR48 = ptrtoint i32* %VR46 to i32 
  %VR49 = add i32 %VR48, 8
  %VR50 = inttoptr i32 %VR49 to i32*
  %VR51 = load i32* %VR50
  %VR52 = add i32 %VR51, 48
  %VR53 = inttoptr i32 %VR52 to i32*
  %VR54 = load i32* %VR53
  %VR55 = inttoptr i32 %VR54 to i32 (i32)*
  %VR56 = call i32 (i32)* %VR55(i32 %VR45)
;; <- dispatch: linia 140
  %VR57 = inttoptr i32 %VR56 to i32*
  %VR58 = icmp eq i32* %VR57,  null
  br i1 %VR58, label %false_dispatch6, label %dispatch_not_void_Main_6
;#######################################; <- dispatch_not_void_Main_5


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__23 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_Main_6
dispatch_not_void_Main_6:
  %VR59 = ptrtoint i32* %VR57 to i32 
  %VR60 = add i32 %VR59, 8
  %VR61 = inttoptr i32 %VR60 to i32*
  %VR62 = load i32* %VR61
  %VR63 = add i32 %VR62, 60
  %VR64 = inttoptr i32 %VR63 to i32*
  %VR65 = load i32* %VR64
  %VR66 = inttoptr i32 %VR65 to i32 (i32)*
  %VR67 = call i32 (i32)* %VR66(i32 %VR56)
;; <- dispatch: linia 140
;; <- block: linia 138
  ret i32 %VR67
;#######################################; <- dispatch_not_void_Main_6


}
@s16 = internal constant [1 x i8] c"\00"
@str_const__16 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([1 x i8]* @s16, i32 0, i32 0)}
@s15 = internal constant [5 x i8] c"Main\00"
@str_const__15 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__24, i8* getelementptr ([5 x i8]* @s15, i32 0, i32 0)}
@s14 = internal constant [4 x i8] c"Nil\00"
@str_const__14 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__25, i8* getelementptr ([4 x i8]* @s14, i32 0, i32 0)}
@s13 = internal constant [5 x i8] c"Cons\00"
@str_const__13 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__24, i8* getelementptr ([5 x i8]* @s13, i32 0, i32 0)}
@s12 = internal constant [5 x i8] c"List\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__24, i8* getelementptr ([5 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [3 x i8] c"IO\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__26, i8* getelementptr ([3 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [7 x i8] c"String\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__27, i8* getelementptr ([7 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [5 x i8] c"Bool\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__24, i8* getelementptr ([5 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [4 x i8] c"Int\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__25, i8* getelementptr ([4 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [7 x i8] c"Object\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__27, i8* getelementptr ([7 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__28, i8* getelementptr ([11 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__29, i8* getelementptr ([10 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [10 x i8] c"_no_class\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__29, i8* getelementptr ([10 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [14 x i8] c"<basic class>\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__30, i8* getelementptr ([14 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [26 x i8] c"How many numbers to sort?\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__31, i8* getelementptr ([26 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [2 x i8] c"\0A\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [15 x i8] c"/tmp/cplITMchx\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__32, i8* getelementptr ([15 x i8]* @s0, i32 0, i32 0)}
@int_const__32 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 14}
@int_const__31 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 25}
@int_const__30 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__29 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__28 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__27 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__26 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__25 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__24 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__23 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 140}
@int_const__22 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 139}
@int_const__21 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 128}
@int_const__20 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 109}
@int_const__19 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 107}
@int_const__18 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 95}
@int_const__17 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 94}
@int_const__16 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 93}
@int_const__15 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 89}
@int_const__14 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 84}
@int_const__13 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 82}
@int_const__12 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 78}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 76}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 53}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 51}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 49}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 47}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 45}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 43}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 41}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 32}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 28}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
%struct.List_protObj_t = type { i32, i32, %struct.List_dispTab_t* }
@List_protObj = global %struct.List_protObj_t {i32 5, i32 3, %struct.List_dispTab_t* @List_dispTab}
%struct.Cons_protObj_t = type { i32, i32, %struct.Cons_dispTab_t*, i32, i32 }
@Cons_protObj = global %struct.Cons_protObj_t {i32 6, i32 5, %struct.Cons_dispTab_t* @Cons_dispTab, i32 0, i32 0}
%struct.Nil_protObj_t = type { i32, i32, %struct.Nil_dispTab_t* }
@Nil_protObj = global %struct.Nil_protObj_t {i32 7, i32 3, %struct.Nil_dispTab_t* @Nil_dispTab}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t*, i32 }
@Main_protObj = global %struct.Main_protObj_t {i32 8, i32 4, %struct.Main_dispTab_t* @Main_dispTab, i32 0}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__7, %struct.String_protObj_t* @str_const__8, %struct.String_protObj_t* @str_const__9, %struct.String_protObj_t* @str_const__10, %struct.String_protObj_t* @str_const__11, %struct.String_protObj_t* @str_const__12, %struct.String_protObj_t* @str_const__13, %struct.String_protObj_t* @str_const__14, %struct.String_protObj_t* @str_const__15 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @List_init to i8*), i8* bitcast (void (i32)* @Cons_init to i8*), i8* bitcast (void (i32)* @Nil_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.List_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@List_dispTab = global %struct.List_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @List__isNil to i8*), i8* bitcast (i32 (i32,i32)* @List__cons to i8*), i8* bitcast (i32 (i32)* @List__car to i8*), i8* bitcast (i32 (i32)* @List__cdr to i8*), i8* bitcast (i32 (i32)* @List__rev to i8*), i8* bitcast (i32 (i32)* @List__sort to i8*), i8* bitcast (i32 (i32,i32)* @List__insert to i8*), i8* bitcast (i32 (i32,i32)* @List__rcons to i8*), i8* bitcast (i32 (i32)* @List__print_list to i8*)}

%struct.Cons_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Cons_dispTab = global %struct.Cons_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Cons__isNil to i8*), i8* bitcast (i32 (i32,i32)* @List__cons to i8*), i8* bitcast (i32 (i32)* @Cons__car to i8*), i8* bitcast (i32 (i32)* @Cons__cdr to i8*), i8* bitcast (i32 (i32)* @Cons__rev to i8*), i8* bitcast (i32 (i32)* @Cons__sort to i8*), i8* bitcast (i32 (i32,i32)* @Cons__insert to i8*), i8* bitcast (i32 (i32,i32)* @Cons__rcons to i8*), i8* bitcast (i32 (i32)* @Cons__print_list to i8*), i8* bitcast (i32 (i32,i32,i32)* @Cons__init to i8*)}

%struct.Nil_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Nil_dispTab = global %struct.Nil_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Nil__isNil to i8*), i8* bitcast (i32 (i32,i32)* @List__cons to i8*), i8* bitcast (i32 (i32)* @List__car to i8*), i8* bitcast (i32 (i32)* @List__cdr to i8*), i8* bitcast (i32 (i32)* @Nil__rev to i8*), i8* bitcast (i32 (i32)* @Nil__sort to i8*), i8* bitcast (i32 (i32,i32)* @Nil__insert to i8*), i8* bitcast (i32 (i32,i32)* @Nil__rcons to i8*), i8* bitcast (i32 (i32)* @Nil__print_list to i8*)}

%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32,i32)* @Main__iota to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}

