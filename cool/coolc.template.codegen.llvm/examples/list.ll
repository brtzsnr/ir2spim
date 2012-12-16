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
  call void @Object_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @List__isNil(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.List_protObj_t*
;- bool_const -
;; -> bool_const: linia 29
  %VR1 = add i32 1, 0
;; <- bool_const: linia 29
  ret i32 %VR1
;#######################################; <- entry


}
define i32 @List__head(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.List_protObj_t*
;- block -
;; -> block: linia 35
;- block -- dispatch -
;; -> dispatch: linia 35
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 35
;; <- object: linia 35
  %VR1 = icmp eq %struct.List_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch0, label %dispatch_not_void_List_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
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
;; <- dispatch: linia 35
;- block -- int_const -
;; -> int_const: linia 35
  %VR11 = add i32 0, 0
;; <- int_const: linia 35
;; <- block: linia 35
  ret i32 %VR11
;#######################################; <- dispatch_not_void_List_0


}
define i32 @List__tail(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.List_protObj_t*
;- block -
;; -> block: linia 40
;- block -- dispatch -
;; -> dispatch: linia 40
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 40
;; <- object: linia 40
  %VR1 = icmp eq %struct.List_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch1, label %dispatch_not_void_List_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__7 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_List_1
dispatch_not_void_List_1:
  %VR2 = ptrtoint %struct.List_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 0
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 40
;- block -- object -
;; -> object: linia 40
;; <- object: linia 40
;; <- block: linia 40
  ret i32 %ARG
;#######################################; <- dispatch_not_void_List_1


}
define i32 @List__cons(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.List_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- dispatch -
;; -> dispatch: linia 50
;;generez codul pentru apelul metodei init
;- dispatch -- object -
;; -> object: linia 50
;; <- object: linia 50
;- dispatch -- object -
;; -> object: linia 50
;; <- object: linia 50
;- dispatch -- new -
;; -> new: linia 50
  %VR2 = call i32  @Object__copy(i32 ptrtoint (%struct.Cons_protObj_t* @Cons_protObj to i32))
  call void @Cons_init(i32 %VR2)
;; <- new: linia 50
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = icmp eq i32* %VR3,  null
  br i1 %VR4, label %false_dispatch2, label %dispatch_not_void_List_2
;#######################################; <- entry


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__8 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_List_2
dispatch_not_void_List_2:
  %VR5 = ptrtoint i32* %VR3 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 28
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32, i32, i32)*
  %VR13 = call i32 (i32, i32, i32)* %VR12(i32 %VR2, i32 %VR1, i32 %ARG)
;; <- dispatch: linia 50
  ret i32 %VR13
;#######################################; <- dispatch_not_void_List_2


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
;; -> bool_const: linia 76
  %VR1 = add i32 0, 0
;; <- bool_const: linia 76
  ret i32 %VR1
;#######################################; <- entry


}
define i32 @Cons__head(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Cons_protObj_t*
;- object -
;; -> object: linia 78
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 78
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @Cons__tail(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Cons_protObj_t*
;- object -
;; -> object: linia 80
  %VR1 = add i32 %ARG, 16
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 80
  ret i32 %VR3
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
;; -> block: linia 83
;- block -- assign -
;; -> assign: linia 84
;- block -- assign -- object -
;; -> object: linia 84
;; <- object: linia 84
  %VR3 = add i32 %ARG, 12
  %VR4 = inttoptr i32 %VR3 to i32*
  store i32 %VR1, i32* %VR4
;; <- assign: linia 84
;- block -- assign -
;; -> assign: linia 85
;- block -- assign -- object -
;; -> object: linia 85
;; <- object: linia 85
  %VR5 = add i32 %ARG, 16
  %VR6 = inttoptr i32 %VR5 to i32*
  store i32 %VR2, i32* %VR6
;; <- assign: linia 85
;- block -- object -
;; -> object: linia 86
;; <- object: linia 86
;; <- block: linia 83
  ret i32 %ARG
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
define i32 @Main__print_list(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 108
;;if: linia 108 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- dispatch -
;; -> dispatch: linia 108
;;generez codul pentru apelul metodei isNil
;- cond -- dispatch -- object -
;; -> object: linia 108
;; <- object: linia 108
  %VR3 = inttoptr i32 %VR1 to i32*
  %VR4 = icmp eq i32* %VR3,  null
  br i1 %VR4, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__9 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR5 = ptrtoint i32* %VR3 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 12
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32)*
  %VR13 = call i32 (i32)* %VR12(i32 %VR1)
;; <- dispatch: linia 108
  %VR14 = icmp eq i32 %VR13,  0
  br i1 %VR14, label %false_Main_0, label %false_false_Main_0
;#######################################; <- dispatch_not_void_Main_0


;#######################################; -> false_false_Main_0
false_false_Main_0:
;;if: linia 108 (expresia pentru then)
;- cond -- dispatch -
;; -> dispatch: linia 108
;;generez codul pentru apelul metodei out_string
;- cond -- dispatch -- string_const -
;; -> string_const: linia 108
  %VR15 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 108
;- cond -- dispatch -- object -
;; -> object: linia 108
;; <- object: linia 108
  %VR16 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR16, label %false_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- false_false_Main_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__9 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Main_1
dispatch_not_void_Main_1:
  %VR17 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR18 = add i32 %VR17, 8
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
  %VR21 = add i32 %VR20, 16
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = load i32* %VR22
  %VR24 = inttoptr i32 %VR23 to i32 (i32, i32)*
  %VR25 = call i32 (i32, i32)* %VR24(i32 %ARG, i32 %VR15)
;; <- dispatch: linia 108
  br label %join_if_Main_0_true
;#######################################; <- dispatch_not_void_Main_1


;#######################################; -> join_if_Main_0_true
join_if_Main_0_true:
  %VR2.0 = add i32 %VR25, 0
  br label %join_if_Main_0
;#######################################; <- join_if_Main_0_true


;#######################################; -> false_Main_0
false_Main_0:
;;if: linia 108 (expresia pentru else)
;- cond -- block -
;; -> block: linia 109
;- cond -- block -- dispatch -
;; -> dispatch: linia 110
;;generez codul pentru apelul metodei out_int
;- cond -- block -- dispatch -- dispatch -
;; -> dispatch: linia 110
;;generez codul pentru apelul metodei head
;- cond -- block -- dispatch -- dispatch -- object -
;; -> object: linia 110
;; <- object: linia 110
  %VR26 = inttoptr i32 %VR1 to i32*
  %VR27 = icmp eq i32* %VR26,  null
  br i1 %VR27, label %false_dispatch2, label %dispatch_not_void_Main_2
;#######################################; <- false_Main_0


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__10 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Main_2
dispatch_not_void_Main_2:
  %VR28 = ptrtoint i32* %VR26 to i32 
  %VR29 = add i32 %VR28, 8
  %VR30 = inttoptr i32 %VR29 to i32*
  %VR31 = load i32* %VR30
  %VR32 = add i32 %VR31, 16
  %VR33 = inttoptr i32 %VR32 to i32*
  %VR34 = load i32* %VR33
  %VR35 = inttoptr i32 %VR34 to i32 (i32)*
  %VR36 = call i32 (i32)* %VR35(i32 %VR1)
;; <- dispatch: linia 110
;- cond -- block -- dispatch -- object -
;; -> object: linia 110
;; <- object: linia 110
  %VR37 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR37, label %false_dispatch3, label %dispatch_not_void_Main_3
;#######################################; <- dispatch_not_void_Main_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__10 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Main_3
dispatch_not_void_Main_3:
  %VR38 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR39 = add i32 %VR38, 8
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = load i32* %VR40
  %VR42 = add i32 %VR41, 12
  %VR43 = inttoptr i32 %VR42 to i32*
  %VR44 = load i32* %VR43
;boxing to int
  %VR45 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR46 = add i32 %VR45, 12
  %VR47 = inttoptr i32 %VR46 to i32*
  store i32 %VR36, i32* %VR47
  %VR48 = inttoptr i32 %VR44 to i32 (i32, i32)*
  %VR49 = call i32 (i32, i32)* %VR48(i32 %ARG, i32 %VR45)
;; <- dispatch: linia 110
;- cond -- block -- dispatch -
;; -> dispatch: linia 111
;;generez codul pentru apelul metodei out_string
;- cond -- block -- dispatch -- string_const -
;; -> string_const: linia 111
  %VR50 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 111
;- cond -- block -- dispatch -- object -
;; -> object: linia 111
;; <- object: linia 111
  %VR51 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR51, label %false_dispatch4, label %dispatch_not_void_Main_4
;#######################################; <- dispatch_not_void_Main_3


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__11 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Main_4
dispatch_not_void_Main_4:
  %VR52 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR53 = add i32 %VR52, 8
  %VR54 = inttoptr i32 %VR53 to i32*
  %VR55 = load i32* %VR54
  %VR56 = add i32 %VR55, 16
  %VR57 = inttoptr i32 %VR56 to i32*
  %VR58 = load i32* %VR57
  %VR59 = inttoptr i32 %VR58 to i32 (i32, i32)*
  %VR60 = call i32 (i32, i32)* %VR59(i32 %ARG, i32 %VR50)
;; <- dispatch: linia 111
;- cond -- block -- dispatch -
;; -> dispatch: linia 112
;;generez codul pentru apelul metodei print_list
;- cond -- block -- dispatch -- dispatch -
;; -> dispatch: linia 112
;;generez codul pentru apelul metodei tail
;- cond -- block -- dispatch -- dispatch -- object -
;; -> object: linia 112
;; <- object: linia 112
  %VR61 = inttoptr i32 %VR1 to i32*
  %VR62 = icmp eq i32* %VR61,  null
  br i1 %VR62, label %false_dispatch5, label %dispatch_not_void_Main_5
;#######################################; <- dispatch_not_void_Main_4


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__12 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_Main_5
dispatch_not_void_Main_5:
  %VR63 = ptrtoint i32* %VR61 to i32 
  %VR64 = add i32 %VR63, 8
  %VR65 = inttoptr i32 %VR64 to i32*
  %VR66 = load i32* %VR65
  %VR67 = add i32 %VR66, 20
  %VR68 = inttoptr i32 %VR67 to i32*
  %VR69 = load i32* %VR68
  %VR70 = inttoptr i32 %VR69 to i32 (i32)*
  %VR71 = call i32 (i32)* %VR70(i32 %VR1)
;; <- dispatch: linia 112
;- cond -- block -- dispatch -- object -
;; -> object: linia 112
;; <- object: linia 112
  %VR72 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR72, label %false_dispatch6, label %dispatch_not_void_Main_6
;#######################################; <- dispatch_not_void_Main_5


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__12 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_Main_6
dispatch_not_void_Main_6:
  %VR73 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR74 = add i32 %VR73, 8
  %VR75 = inttoptr i32 %VR74 to i32*
  %VR76 = load i32* %VR75
  %VR77 = add i32 %VR76, 28
  %VR78 = inttoptr i32 %VR77 to i32*
  %VR79 = load i32* %VR78
  %VR80 = inttoptr i32 %VR79 to i32 (i32, i32)*
  %VR81 = call i32 (i32, i32)* %VR80(i32 %ARG, i32 %VR71)
;; <- dispatch: linia 112
;; <- block: linia 109
  br label %join_if_Main_0_false
;#######################################; <- dispatch_not_void_Main_6


;#######################################; -> join_if_Main_0_false
join_if_Main_0_false:
  %VR2.1 = add i32 %VR81, 0
  br label %join_if_Main_0
;#######################################; <- join_if_Main_0_false


;#######################################; -> join_if_Main_0
join_if_Main_0:
  %VR2 = phi i32 [ %VR2.0, %join_if_Main_0_true ], [ %VR2.1, %join_if_Main_0_false ]
;; <- cond: linia 108
  ret i32 %VR2
;#######################################; <- join_if_Main_0


}
define i32 @Main__main(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- block -
;; -> block: linia 127
;- block -- assign -
;; -> assign: linia 128
;- block -- assign -- dispatch -
;; -> dispatch: linia 128
;;generez codul pentru apelul metodei cons
;- block -- assign -- dispatch -- int_const -
;; -> int_const: linia 128
  %VR1 = add i32 5, 0
;; <- int_const: linia 128
;- block -- assign -- dispatch -- dispatch -
;; -> dispatch: linia 128
;;generez codul pentru apelul metodei cons
;- block -- assign -- dispatch -- dispatch -- int_const -
;; -> int_const: linia 128
  %VR2 = add i32 4, 0
;; <- int_const: linia 128
;- block -- assign -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 128
;;generez codul pentru apelul metodei cons
;- block -- assign -- dispatch -- dispatch -- dispatch -- int_const -
;; -> int_const: linia 128
  %VR3 = add i32 3, 0
;; <- int_const: linia 128
;- block -- assign -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 128
;;generez codul pentru apelul metodei cons
;- block -- assign -- dispatch -- dispatch -- dispatch -- dispatch -- int_const -
;; -> int_const: linia 128
  %VR4 = add i32 2, 0
;; <- int_const: linia 128
;- block -- assign -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 128
;;generez codul pentru apelul metodei cons
;- block -- assign -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- int_const -
;; -> int_const: linia 128
  %VR5 = add i32 1, 0
;; <- int_const: linia 128
;- block -- assign -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- new -
;; -> new: linia 128
  %VR6 = call i32  @Object__copy(i32 ptrtoint (%struct.List_protObj_t* @List_protObj to i32))
  call void @List_init(i32 %VR6)
;; <- new: linia 128
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = icmp eq i32* %VR7,  null
  br i1 %VR8, label %false_dispatch7, label %dispatch_not_void_Main_7
;#######################################; <- entry


;#######################################; -> false_dispatch7
false_dispatch7:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__13 to i32))
  ret i32 0
;#######################################; <- false_dispatch7


;#######################################; -> dispatch_not_void_Main_7
dispatch_not_void_Main_7:
  %VR9 = ptrtoint i32* %VR7 to i32 
  %VR10 = add i32 %VR9, 8
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = add i32 %VR12, 24
  %VR14 = inttoptr i32 %VR13 to i32*
  %VR15 = load i32* %VR14
  %VR16 = inttoptr i32 %VR15 to i32 (i32, i32)*
  %VR17 = call i32 (i32, i32)* %VR16(i32 %VR6, i32 %VR5)
;; <- dispatch: linia 128
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = icmp eq i32* %VR18,  null
  br i1 %VR19, label %false_dispatch8, label %dispatch_not_void_Main_8
;#######################################; <- dispatch_not_void_Main_7


;#######################################; -> false_dispatch8
false_dispatch8:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__13 to i32))
  ret i32 0
;#######################################; <- false_dispatch8


;#######################################; -> dispatch_not_void_Main_8
dispatch_not_void_Main_8:
  %VR20 = ptrtoint i32* %VR18 to i32 
  %VR21 = add i32 %VR20, 8
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = load i32* %VR22
  %VR24 = add i32 %VR23, 24
  %VR25 = inttoptr i32 %VR24 to i32*
  %VR26 = load i32* %VR25
  %VR27 = inttoptr i32 %VR26 to i32 (i32, i32)*
  %VR28 = call i32 (i32, i32)* %VR27(i32 %VR17, i32 %VR4)
;; <- dispatch: linia 128
  %VR29 = inttoptr i32 %VR28 to i32*
  %VR30 = icmp eq i32* %VR29,  null
  br i1 %VR30, label %false_dispatch9, label %dispatch_not_void_Main_9
;#######################################; <- dispatch_not_void_Main_8


;#######################################; -> false_dispatch9
false_dispatch9:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__13 to i32))
  ret i32 0
;#######################################; <- false_dispatch9


;#######################################; -> dispatch_not_void_Main_9
dispatch_not_void_Main_9:
  %VR31 = ptrtoint i32* %VR29 to i32 
  %VR32 = add i32 %VR31, 8
  %VR33 = inttoptr i32 %VR32 to i32*
  %VR34 = load i32* %VR33
  %VR35 = add i32 %VR34, 24
  %VR36 = inttoptr i32 %VR35 to i32*
  %VR37 = load i32* %VR36
  %VR38 = inttoptr i32 %VR37 to i32 (i32, i32)*
  %VR39 = call i32 (i32, i32)* %VR38(i32 %VR28, i32 %VR3)
;; <- dispatch: linia 128
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = icmp eq i32* %VR40,  null
  br i1 %VR41, label %false_dispatch10, label %dispatch_not_void_Main_10
;#######################################; <- dispatch_not_void_Main_9


;#######################################; -> false_dispatch10
false_dispatch10:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__13 to i32))
  ret i32 0
;#######################################; <- false_dispatch10


;#######################################; -> dispatch_not_void_Main_10
dispatch_not_void_Main_10:
  %VR42 = ptrtoint i32* %VR40 to i32 
  %VR43 = add i32 %VR42, 8
  %VR44 = inttoptr i32 %VR43 to i32*
  %VR45 = load i32* %VR44
  %VR46 = add i32 %VR45, 24
  %VR47 = inttoptr i32 %VR46 to i32*
  %VR48 = load i32* %VR47
  %VR49 = inttoptr i32 %VR48 to i32 (i32, i32)*
  %VR50 = call i32 (i32, i32)* %VR49(i32 %VR39, i32 %VR2)
;; <- dispatch: linia 128
  %VR51 = inttoptr i32 %VR50 to i32*
  %VR52 = icmp eq i32* %VR51,  null
  br i1 %VR52, label %false_dispatch11, label %dispatch_not_void_Main_11
;#######################################; <- dispatch_not_void_Main_10


;#######################################; -> false_dispatch11
false_dispatch11:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__13 to i32))
  ret i32 0
;#######################################; <- false_dispatch11


;#######################################; -> dispatch_not_void_Main_11
dispatch_not_void_Main_11:
  %VR53 = ptrtoint i32* %VR51 to i32 
  %VR54 = add i32 %VR53, 8
  %VR55 = inttoptr i32 %VR54 to i32*
  %VR56 = load i32* %VR55
  %VR57 = add i32 %VR56, 24
  %VR58 = inttoptr i32 %VR57 to i32*
  %VR59 = load i32* %VR58
  %VR60 = inttoptr i32 %VR59 to i32 (i32, i32)*
  %VR61 = call i32 (i32, i32)* %VR60(i32 %VR50, i32 %VR1)
;; <- dispatch: linia 128
  %VR62 = add i32 %ARG, 12
  %VR63 = inttoptr i32 %VR62 to i32*
  store i32 %VR61, i32* %VR63
;; <- assign: linia 128
;- block -- loop -
;; -> loop: linia 129
;; conditie
  br label %start_loop_Main_0
;#######################################; <- dispatch_not_void_Main_11


;#######################################; -> start_loop_Main_0
start_loop_Main_0:
;- block -- loop -- comp -
;; -> comp: linia 129
;- block -- loop -- comp -- dispatch -
;; -> dispatch: linia 129
;;generez codul pentru apelul metodei isNil
;- block -- loop -- comp -- dispatch -- object -
;; -> object: linia 129
  %VR64 = add i32 %ARG, 12
  %VR65 = inttoptr i32 %VR64 to i32*
  %VR66 = load i32* %VR65
;; <- object: linia 129
  %VR67 = inttoptr i32 %VR66 to i32*
  %VR68 = icmp eq i32* %VR67,  null
  br i1 %VR68, label %false_dispatch12, label %dispatch_not_void_Main_12
;#######################################; <- start_loop_Main_0


;#######################################; -> false_dispatch12
false_dispatch12:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__14 to i32))
  ret i32 0
;#######################################; <- false_dispatch12


;#######################################; -> dispatch_not_void_Main_12
dispatch_not_void_Main_12:
  %VR69 = ptrtoint i32* %VR67 to i32 
  %VR70 = add i32 %VR69, 8
  %VR71 = inttoptr i32 %VR70 to i32*
  %VR72 = load i32* %VR71
  %VR73 = add i32 %VR72, 12
  %VR74 = inttoptr i32 %VR73 to i32*
  %VR75 = load i32* %VR74
  %VR76 = inttoptr i32 %VR75 to i32 (i32)*
  %VR77 = call i32 (i32)* %VR76(i32 %VR66)
;; <- dispatch: linia 129
  %VR78 = sub i32 1, %VR77
;; <- comp: linia 129
  %VR79 = icmp eq i32 %VR78,  0
  br i1 %VR79, label %sfarsit_loop_Main_0, label %label_next_loop_Main_0
;#######################################; <- dispatch_not_void_Main_12


;#######################################; -> label_next_loop_Main_0
label_next_loop_Main_0:
;; corp loop
;- block -- loop -- block -
;; -> block: linia 130
;- block -- loop -- block -- dispatch -
;; -> dispatch: linia 131
;;generez codul pentru apelul metodei print_list
;- block -- loop -- block -- dispatch -- object -
;; -> object: linia 131
  %VR80 = add i32 %ARG, 12
  %VR81 = inttoptr i32 %VR80 to i32*
  %VR82 = load i32* %VR81
;; <- object: linia 131
;- block -- loop -- block -- dispatch -- object -
;; -> object: linia 131
;; <- object: linia 131
  %VR83 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR83, label %false_dispatch13, label %dispatch_not_void_Main_13
;#######################################; <- label_next_loop_Main_0


;#######################################; -> false_dispatch13
false_dispatch13:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__15 to i32))
  ret i32 0
;#######################################; <- false_dispatch13


;#######################################; -> dispatch_not_void_Main_13
dispatch_not_void_Main_13:
  %VR84 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR85 = add i32 %VR84, 8
  %VR86 = inttoptr i32 %VR85 to i32*
  %VR87 = load i32* %VR86
  %VR88 = add i32 %VR87, 28
  %VR89 = inttoptr i32 %VR88 to i32*
  %VR90 = load i32* %VR89
  %VR91 = inttoptr i32 %VR90 to i32 (i32, i32)*
  %VR92 = call i32 (i32, i32)* %VR91(i32 %ARG, i32 %VR82)
;; <- dispatch: linia 131
;- block -- loop -- block -- assign -
;; -> assign: linia 132
;- block -- loop -- block -- assign -- dispatch -
;; -> dispatch: linia 132
;;generez codul pentru apelul metodei tail
;- block -- loop -- block -- assign -- dispatch -- object -
;; -> object: linia 132
  %VR93 = add i32 %ARG, 12
  %VR94 = inttoptr i32 %VR93 to i32*
  %VR95 = load i32* %VR94
;; <- object: linia 132
  %VR96 = inttoptr i32 %VR95 to i32*
  %VR97 = icmp eq i32* %VR96,  null
  br i1 %VR97, label %false_dispatch14, label %dispatch_not_void_Main_14
;#######################################; <- dispatch_not_void_Main_13


;#######################################; -> false_dispatch14
false_dispatch14:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__16 to i32))
  ret i32 0
;#######################################; <- false_dispatch14


;#######################################; -> dispatch_not_void_Main_14
dispatch_not_void_Main_14:
  %VR98 = ptrtoint i32* %VR96 to i32 
  %VR99 = add i32 %VR98, 8
  %VR100 = inttoptr i32 %VR99 to i32*
  %VR101 = load i32* %VR100
  %VR102 = add i32 %VR101, 20
  %VR103 = inttoptr i32 %VR102 to i32*
  %VR104 = load i32* %VR103
  %VR105 = inttoptr i32 %VR104 to i32 (i32)*
  %VR106 = call i32 (i32)* %VR105(i32 %VR95)
;; <- dispatch: linia 132
  %VR107 = add i32 %ARG, 12
  %VR108 = inttoptr i32 %VR107 to i32*
  store i32 %VR106, i32* %VR108
;; <- assign: linia 132
;; <- block: linia 130
  br label %start_loop_Main_0
;#######################################; <- dispatch_not_void_Main_14


;#######################################; -> sfarsit_loop_Main_0
sfarsit_loop_Main_0:
;; <- loop: linia 129
;; <- block: linia 127
  ret i32 %ARG
;#######################################; <- sfarsit_loop_Main_0


}
@s15 = internal constant [1 x i8] c"\00"
@str_const__15 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([1 x i8]* @s15, i32 0, i32 0)}
@s14 = internal constant [5 x i8] c"Main\00"
@str_const__14 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([5 x i8]* @s14, i32 0, i32 0)}
@s13 = internal constant [5 x i8] c"Cons\00"
@str_const__13 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([5 x i8]* @s13, i32 0, i32 0)}
@s12 = internal constant [5 x i8] c"List\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([5 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [3 x i8] c"IO\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([3 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [7 x i8] c"String\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__17, i8* getelementptr ([7 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [5 x i8] c"Bool\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([5 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [4 x i8] c"Int\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([4 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [7 x i8] c"Object\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__17, i8* getelementptr ([7 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__18, i8* getelementptr ([11 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__19, i8* getelementptr ([10 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [10 x i8] c"_no_class\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__19, i8* getelementptr ([10 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [14 x i8] c"<basic class>\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__20, i8* getelementptr ([14 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [2 x i8] c" \00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [2 x i8] c"\0A\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [24 x i8] c"_tests/advanced/list.cl\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__21, i8* getelementptr ([24 x i8]* @s0, i32 0, i32 0)}
@int_const__21 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 23}
@int_const__20 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__19 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__18 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__17 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__16 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 132}
@int_const__15 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 131}
@int_const__14 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 129}
@int_const__13 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 128}
@int_const__12 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 112}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 111}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 110}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 108}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 50}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 40}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 35}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 5}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
%struct.List_protObj_t = type { i32, i32, %struct.List_dispTab_t* }
@List_protObj = global %struct.List_protObj_t {i32 5, i32 3, %struct.List_dispTab_t* @List_dispTab}
%struct.Cons_protObj_t = type { i32, i32, %struct.Cons_dispTab_t*, i32, i32 }
@Cons_protObj = global %struct.Cons_protObj_t {i32 6, i32 5, %struct.Cons_dispTab_t* @Cons_dispTab, i32 0, i32 0}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t*, i32 }
@Main_protObj = global %struct.Main_protObj_t {i32 7, i32 4, %struct.Main_dispTab_t* @Main_dispTab, i32 0}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__7, %struct.String_protObj_t* @str_const__8, %struct.String_protObj_t* @str_const__9, %struct.String_protObj_t* @str_const__10, %struct.String_protObj_t* @str_const__11, %struct.String_protObj_t* @str_const__12, %struct.String_protObj_t* @str_const__13, %struct.String_protObj_t* @str_const__14 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @List_init to i8*), i8* bitcast (void (i32)* @Cons_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.List_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@List_dispTab = global %struct.List_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @List__isNil to i8*), i8* bitcast (i32 (i32)* @List__head to i8*), i8* bitcast (i32 (i32)* @List__tail to i8*), i8* bitcast (i32 (i32,i32)* @List__cons to i8*)}

%struct.Cons_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Cons_dispTab = global %struct.Cons_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @Cons__isNil to i8*), i8* bitcast (i32 (i32)* @Cons__head to i8*), i8* bitcast (i32 (i32)* @Cons__tail to i8*), i8* bitcast (i32 (i32,i32)* @List__cons to i8*), i8* bitcast (i32 (i32,i32,i32)* @Cons__init to i8*)}

%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32,i32)* @Main__print_list to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}

