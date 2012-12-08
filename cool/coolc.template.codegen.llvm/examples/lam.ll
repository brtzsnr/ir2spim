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
declare i32 @IO__in_string(i32)
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
define void @VarList_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @VarList__isNil(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.VarList_protObj_t*
;- bool_const -
;; -> bool_const: linia 22
  %VR1 = add i32 1, 0
;; <- bool_const: linia 22
  ret i32 %VR1
;#######################################; <- entry


}
define i32 @VarList__head(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.VarList_protObj_t*
;- block -
;; -> block: linia 23
;- block -- dispatch -
;; -> dispatch: linia 23
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 23
;; <- object: linia 23
  %VR1 = icmp eq %struct.VarList_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch0, label %dispatch_not_void_VarList_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__2 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_VarList_0
dispatch_not_void_VarList_0:
  %VR2 = ptrtoint %struct.VarList_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 0
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 23
;- block -- new -
;; -> new: linia 23
  %VR11 = call i32  @Object__copy(i32 ptrtoint (%struct.Variable_protObj_t* @Variable_protObj to i32))
  call void @Variable_init(i32 %VR11)
;; <- new: linia 23
;; <- block: linia 23
  ret i32 %VR11
;#######################################; <- dispatch_not_void_VarList_0


}
define i32 @VarList__tail(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.VarList_protObj_t*
;- block -
;; -> block: linia 24
;- block -- dispatch -
;; -> dispatch: linia 24
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 24
;; <- object: linia 24
  %VR1 = icmp eq %struct.VarList_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch1, label %dispatch_not_void_VarList_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__3 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_VarList_1
dispatch_not_void_VarList_1:
  %VR2 = ptrtoint %struct.VarList_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 0
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 24
;- block -- new -
;; -> new: linia 24
  %VR11 = call i32  @Object__copy(i32 ptrtoint (%struct.VarList_protObj_t* @VarList_protObj to i32))
  call void @VarList_init(i32 %VR11)
;; <- new: linia 24
;; <- block: linia 24
  ret i32 %VR11
;#######################################; <- dispatch_not_void_VarList_1


}
define i32 @VarList__add(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.VarList_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- dispatch -
;; -> dispatch: linia 25
;;generez codul pentru apelul metodei init
;- dispatch -- object -
;; -> object: linia 25
;; <- object: linia 25
;- dispatch -- object -
;; -> object: linia 25
;; <- object: linia 25
;- dispatch -- new -
;; -> new: linia 25
  %VR2 = call i32  @Object__copy(i32 ptrtoint (%struct.VarListNE_protObj_t* @VarListNE_protObj to i32))
  call void @VarListNE_init(i32 %VR2)
;; <- new: linia 25
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = icmp eq i32* %VR3,  null
  br i1 %VR4, label %false_dispatch2, label %dispatch_not_void_VarList_2
;#######################################; <- entry


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_VarList_2
dispatch_not_void_VarList_2:
  %VR5 = ptrtoint i32* %VR3 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 48
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32, i32, i32)*
  %VR13 = call i32 (i32, i32, i32)* %VR12(i32 %VR2, i32 %VR1, i32 %ARG)
;; <- dispatch: linia 25
  ret i32 %VR13
;#######################################; <- dispatch_not_void_VarList_2


}
define i32 @VarList__print(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.VarList_protObj_t*
;- dispatch -
;; -> dispatch: linia 26
;;generez codul pentru apelul metodei out_string
;- dispatch -- string_const -
;; -> string_const: linia 26
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 26
;- dispatch -- object -
;; -> object: linia 26
;; <- object: linia 26
  %VR2 = icmp eq %struct.VarList_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch3, label %dispatch_not_void_VarList_3
;#######################################; <- entry


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__5 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_VarList_3
dispatch_not_void_VarList_3:
  %VR3 = ptrtoint %struct.VarList_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 16
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 26
  ret i32 %VR11
;#######################################; <- dispatch_not_void_VarList_3


}
define void @VarListNE_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @VarList_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @VarListNE__isNil(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.VarListNE_protObj_t*
;- bool_const -
;; -> bool_const: linia 32
  %VR1 = add i32 0, 0
;; <- bool_const: linia 32
  ret i32 %VR1
;#######################################; <- entry


}
define i32 @VarListNE__head(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.VarListNE_protObj_t*
;- object -
;; -> object: linia 33
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 33
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @VarListNE__tail(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.VarListNE_protObj_t*
;- object -
;; -> object: linia 34
  %VR1 = add i32 %ARG, 16
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 34
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @VarListNE__init(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.VarListNE_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- block -
;; -> block: linia 35
;- block -- assign -
;; -> assign: linia 35
;- block -- assign -- object -
;; -> object: linia 35
;; <- object: linia 35
  %VR3 = add i32 %ARG, 12
  %VR4 = inttoptr i32 %VR3 to i32*
  store i32 %VR1, i32* %VR4
;; <- assign: linia 35
;- block -- assign -
;; -> assign: linia 35
;- block -- assign -- object -
;; -> object: linia 35
;; <- object: linia 35
  %VR5 = add i32 %ARG, 16
  %VR6 = inttoptr i32 %VR5 to i32*
  store i32 %VR2, i32* %VR6
;; <- assign: linia 35
;- block -- object -
;; -> object: linia 35
;; <- object: linia 35
;; <- block: linia 35
  ret i32 %ARG
;#######################################; <- entry


}
define i32 @VarListNE__print(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.VarListNE_protObj_t*
;- block -
;; -> block: linia 36
;- block -- dispatch -
;; -> dispatch: linia 36
;;generez codul pentru apelul metodei print_self
;- block -- dispatch -- object -
;; -> object: linia 36
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 36
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_dispatch0, label %dispatch_not_void_VarListNE_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_VarListNE_0
dispatch_not_void_VarListNE_0:
  %VR6 = ptrtoint i32* %VR4 to i32 
  %VR7 = add i32 %VR6, 8
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = add i32 %VR9, 28
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = inttoptr i32 %VR12 to i32 (i32)*
  %VR14 = call i32 (i32)* %VR13(i32 %VR3)
;; <- dispatch: linia 36
;- block -- dispatch -
;; -> dispatch: linia 36
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 36
  %VR15 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 36
;- block -- dispatch -- object -
;; -> object: linia 36
;; <- object: linia 36
  %VR16 = icmp eq %struct.VarListNE_protObj_t* %VR0,  null
  br i1 %VR16, label %false_dispatch1, label %dispatch_not_void_VarListNE_1
;#######################################; <- dispatch_not_void_VarListNE_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_VarListNE_1
dispatch_not_void_VarListNE_1:
  %VR17 = ptrtoint %struct.VarListNE_protObj_t* %VR0 to i32 
  %VR18 = add i32 %VR17, 8
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
  %VR21 = add i32 %VR20, 16
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = load i32* %VR22
  %VR24 = inttoptr i32 %VR23 to i32 (i32, i32)*
  %VR25 = call i32 (i32, i32)* %VR24(i32 %ARG, i32 %VR15)
;; <- dispatch: linia 36
;- block -- dispatch -
;; -> dispatch: linia 37
;;generez codul pentru apelul metodei print
;- block -- dispatch -- object -
;; -> object: linia 37
  %VR26 = add i32 %ARG, 16
  %VR27 = inttoptr i32 %VR26 to i32*
  %VR28 = load i32* %VR27
;; <- object: linia 37
  %VR29 = inttoptr i32 %VR28 to i32*
  %VR30 = icmp eq i32* %VR29,  null
  br i1 %VR30, label %false_dispatch2, label %dispatch_not_void_VarListNE_2
;#######################################; <- dispatch_not_void_VarListNE_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__7 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_VarListNE_2
dispatch_not_void_VarListNE_2:
  %VR31 = ptrtoint i32* %VR29 to i32 
  %VR32 = add i32 %VR31, 8
  %VR33 = inttoptr i32 %VR32 to i32*
  %VR34 = load i32* %VR33
  %VR35 = add i32 %VR34, 44
  %VR36 = inttoptr i32 %VR35 to i32*
  %VR37 = load i32* %VR36
  %VR38 = inttoptr i32 %VR37 to i32 (i32)*
  %VR39 = call i32 (i32)* %VR38(i32 %VR28)
;; <- dispatch: linia 37
;- block -- object -
;; -> object: linia 37
;; <- object: linia 37
;; <- block: linia 36
  ret i32 %ARG
;#######################################; <- dispatch_not_void_VarListNE_2


}
define void @LambdaList_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Object_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @LambdaList__isNil(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.LambdaList_protObj_t*
;- bool_const -
;; -> bool_const: linia 45
  %VR1 = add i32 1, 0
;; <- bool_const: linia 45
  ret i32 %VR1
;#######################################; <- entry


}
define i32 @LambdaList__headE(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.LambdaList_protObj_t*
;- block -
;; -> block: linia 46
;- block -- dispatch -
;; -> dispatch: linia 46
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 46
;; <- object: linia 46
  %VR1 = icmp eq %struct.LambdaList_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch0, label %dispatch_not_void_LambdaList_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__8 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_LambdaList_0
dispatch_not_void_LambdaList_0:
  %VR2 = ptrtoint %struct.LambdaList_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 0
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 46
;- block -- new -
;; -> new: linia 46
  %VR11 = call i32  @Object__copy(i32 ptrtoint (%struct.VarList_protObj_t* @VarList_protObj to i32))
  call void @VarList_init(i32 %VR11)
;; <- new: linia 46
;; <- block: linia 46
  ret i32 %VR11
;#######################################; <- dispatch_not_void_LambdaList_0


}
define i32 @LambdaList__headC(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.LambdaList_protObj_t*
;- block -
;; -> block: linia 47
;- block -- dispatch -
;; -> dispatch: linia 47
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 47
;; <- object: linia 47
  %VR1 = icmp eq %struct.LambdaList_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch1, label %dispatch_not_void_LambdaList_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__9 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_LambdaList_1
dispatch_not_void_LambdaList_1:
  %VR2 = ptrtoint %struct.LambdaList_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 0
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 47
;- block -- new -
;; -> new: linia 47
  %VR11 = call i32  @Object__copy(i32 ptrtoint (%struct.Lambda_protObj_t* @Lambda_protObj to i32))
  call void @Lambda_init(i32 %VR11)
;; <- new: linia 47
;; <- block: linia 47
  ret i32 %VR11
;#######################################; <- dispatch_not_void_LambdaList_1


}
define i32 @LambdaList__headN(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.LambdaList_protObj_t*
;- block -
;; -> block: linia 48
;- block -- dispatch -
;; -> dispatch: linia 48
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 48
;; <- object: linia 48
  %VR1 = icmp eq %struct.LambdaList_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch2, label %dispatch_not_void_LambdaList_2
;#######################################; <- entry


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__10 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_LambdaList_2
dispatch_not_void_LambdaList_2:
  %VR2 = ptrtoint %struct.LambdaList_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 0
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 48
;- block -- int_const -
;; -> int_const: linia 48
  %VR11 = add i32 0, 0
;; <- int_const: linia 48
;; <- block: linia 48
  ret i32 %VR11
;#######################################; <- dispatch_not_void_LambdaList_2


}
define i32 @LambdaList__tail(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.LambdaList_protObj_t*
;- block -
;; -> block: linia 49
;- block -- dispatch -
;; -> dispatch: linia 49
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 49
;; <- object: linia 49
  %VR1 = icmp eq %struct.LambdaList_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch3, label %dispatch_not_void_LambdaList_3
;#######################################; <- entry


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__11 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_LambdaList_3
dispatch_not_void_LambdaList_3:
  %VR2 = ptrtoint %struct.LambdaList_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 0
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 49
;- block -- new -
;; -> new: linia 49
  %VR11 = call i32  @Object__copy(i32 ptrtoint (%struct.LambdaList_protObj_t* @LambdaList_protObj to i32))
  call void @LambdaList_init(i32 %VR11)
;; <- new: linia 49
;; <- block: linia 49
  ret i32 %VR11
;#######################################; <- dispatch_not_void_LambdaList_3


}
define i32 @LambdaList__add(i32 %ARG, i32 %ARG0, i32 %ARG1, i32 %ARG2)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.LambdaList_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
  %VR3 = add i32 %ARG2, 0
;- dispatch -
;; -> dispatch: linia 51
;;generez codul pentru apelul metodei init
;- dispatch -- object -
;; -> object: linia 51
;; <- object: linia 51
;- dispatch -- object -
;; -> object: linia 51
;; <- object: linia 51
;- dispatch -- object -
;; -> object: linia 51
;; <- object: linia 51
;- dispatch -- object -
;; -> object: linia 51
;; <- object: linia 51
;- dispatch -- new -
;; -> new: linia 51
  %VR4 = call i32  @Object__copy(i32 ptrtoint (%struct.LambdaListNE_protObj_t* @LambdaListNE_protObj to i32))
  call void @LambdaListNE_init(i32 %VR4)
;; <- new: linia 51
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = icmp eq i32* %VR5,  null
  br i1 %VR6, label %false_dispatch4, label %dispatch_not_void_LambdaList_4
;#######################################; <- entry


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__12 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_LambdaList_4
dispatch_not_void_LambdaList_4:
  %VR7 = ptrtoint i32* %VR5 to i32 
  %VR8 = add i32 %VR7, 8
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = add i32 %VR10, 36
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
  %VR14 = inttoptr i32 %VR13 to i32 (i32, i32, i32, i32, i32)*
  %VR15 = call i32 (i32, i32, i32, i32, i32)* %VR14(i32 %VR4, i32 %VR1, i32 %VR2, i32 %VR3, i32 %ARG)
;; <- dispatch: linia 51
  ret i32 %VR15
;#######################################; <- dispatch_not_void_LambdaList_4


}
define void @LambdaListNE_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @LambdaList_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @LambdaListNE__isNil(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.LambdaListNE_protObj_t*
;- bool_const -
;; -> bool_const: linia 60
  %VR1 = add i32 0, 0
;; <- bool_const: linia 60
  ret i32 %VR1
;#######################################; <- entry


}
define i32 @LambdaListNE__headE(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.LambdaListNE_protObj_t*
;- object -
;; -> object: linia 61
  %VR1 = add i32 %ARG, 20
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 61
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @LambdaListNE__headC(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.LambdaListNE_protObj_t*
;- object -
;; -> object: linia 62
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 62
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @LambdaListNE__headN(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.LambdaListNE_protObj_t*
;- object -
;; -> object: linia 63
  %VR1 = add i32 %ARG, 16
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 63
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @LambdaListNE__tail(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.LambdaListNE_protObj_t*
;- object -
;; -> object: linia 64
  %VR1 = add i32 %ARG, 24
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 64
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @LambdaListNE__init(i32 %ARG, i32 %ARG0, i32 %ARG1, i32 %ARG2, i32 %ARG3)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.LambdaListNE_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
  %VR3 = add i32 %ARG2, 0
  %VR4 = add i32 %ARG3, 0
;- block -
;; -> block: linia 66
;- block -- assign -
;; -> assign: linia 67
;- block -- assign -- object -
;; -> object: linia 67
;; <- object: linia 67
  %VR5 = add i32 %ARG, 20
  %VR6 = inttoptr i32 %VR5 to i32*
  store i32 %VR1, i32* %VR6
;; <- assign: linia 67
;- block -- assign -
;; -> assign: linia 68
;- block -- assign -- object -
;; -> object: linia 68
;; <- object: linia 68
  %VR7 = add i32 %ARG, 12
  %VR8 = inttoptr i32 %VR7 to i32*
  store i32 %VR2, i32* %VR8
;; <- assign: linia 68
;- block -- assign -
;; -> assign: linia 69
;- block -- assign -- object -
;; -> object: linia 69
;; <- object: linia 69
  %VR9 = add i32 %ARG, 16
  %VR10 = inttoptr i32 %VR9 to i32*
  store i32 %VR3, i32* %VR10
;; <- assign: linia 69
;- block -- assign -
;; -> assign: linia 70
;- block -- assign -- object -
;; -> object: linia 70
;; <- object: linia 70
  %VR11 = add i32 %ARG, 24
  %VR12 = inttoptr i32 %VR11 to i32*
  store i32 %VR4, i32* %VR12
;; <- assign: linia 70
;- block -- object -
;; -> object: linia 71
;; <- object: linia 71
;; <- block: linia 66
  ret i32 %ARG
;#######################################; <- entry


}
define void @LambdaListRef_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Object_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- int_const -
;; -> int_const: linia 77
  %VR1 = add i32 0, 0
;; <- int_const: linia 77
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
  ret void
;#######################################; <- entry


}
define i32 @LambdaListRef__isNil(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.LambdaListRef_protObj_t*
;- dispatch -
;; -> dispatch: linia 79
;;generez codul pentru apelul metodei isNil
;- dispatch -- object -
;; -> object: linia 79
  %VR1 = add i32 %ARG, 16
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 79
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_dispatch0, label %dispatch_not_void_LambdaListRef_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__13 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_LambdaListRef_0
dispatch_not_void_LambdaListRef_0:
  %VR6 = ptrtoint i32* %VR4 to i32 
  %VR7 = add i32 %VR6, 8
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = add i32 %VR9, 12
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = inttoptr i32 %VR12 to i32 (i32)*
  %VR14 = call i32 (i32)* %VR13(i32 %VR3)
;; <- dispatch: linia 79
  ret i32 %VR14
;#######################################; <- dispatch_not_void_LambdaListRef_0


}
define i32 @LambdaListRef__headE(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.LambdaListRef_protObj_t*
;- dispatch -
;; -> dispatch: linia 80
;;generez codul pentru apelul metodei headE
;- dispatch -- object -
;; -> object: linia 80
  %VR1 = add i32 %ARG, 16
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 80
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_dispatch1, label %dispatch_not_void_LambdaListRef_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__14 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_LambdaListRef_1
dispatch_not_void_LambdaListRef_1:
  %VR6 = ptrtoint i32* %VR4 to i32 
  %VR7 = add i32 %VR6, 8
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = add i32 %VR9, 16
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = inttoptr i32 %VR12 to i32 (i32)*
  %VR14 = call i32 (i32)* %VR13(i32 %VR3)
;; <- dispatch: linia 80
  ret i32 %VR14
;#######################################; <- dispatch_not_void_LambdaListRef_1


}
define i32 @LambdaListRef__headC(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.LambdaListRef_protObj_t*
;- dispatch -
;; -> dispatch: linia 81
;;generez codul pentru apelul metodei headC
;- dispatch -- object -
;; -> object: linia 81
  %VR1 = add i32 %ARG, 16
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 81
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_dispatch2, label %dispatch_not_void_LambdaListRef_2
;#######################################; <- entry


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__15 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_LambdaListRef_2
dispatch_not_void_LambdaListRef_2:
  %VR6 = ptrtoint i32* %VR4 to i32 
  %VR7 = add i32 %VR6, 8
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = add i32 %VR9, 20
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = inttoptr i32 %VR12 to i32 (i32)*
  %VR14 = call i32 (i32)* %VR13(i32 %VR3)
;; <- dispatch: linia 81
  ret i32 %VR14
;#######################################; <- dispatch_not_void_LambdaListRef_2


}
define i32 @LambdaListRef__headN(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.LambdaListRef_protObj_t*
;- dispatch -
;; -> dispatch: linia 82
;;generez codul pentru apelul metodei headN
;- dispatch -- object -
;; -> object: linia 82
  %VR1 = add i32 %ARG, 16
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 82
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_dispatch3, label %dispatch_not_void_LambdaListRef_3
;#######################################; <- entry


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__16 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_LambdaListRef_3
dispatch_not_void_LambdaListRef_3:
  %VR6 = ptrtoint i32* %VR4 to i32 
  %VR7 = add i32 %VR6, 8
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = add i32 %VR9, 24
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = inttoptr i32 %VR12 to i32 (i32)*
  %VR14 = call i32 (i32)* %VR13(i32 %VR3)
;; <- dispatch: linia 82
  ret i32 %VR14
;#######################################; <- dispatch_not_void_LambdaListRef_3


}
define i32 @LambdaListRef__reset(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.LambdaListRef_protObj_t*
;- block -
;; -> block: linia 84
;- block -- assign -
;; -> assign: linia 85
;- block -- assign -- int_const -
;; -> int_const: linia 85
  %VR1 = add i32 0, 0
;; <- int_const: linia 85
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
;; <- assign: linia 85
;- block -- assign -
;; -> assign: linia 86
;- block -- assign -- new -
;; -> new: linia 86
  %VR4 = call i32  @Object__copy(i32 ptrtoint (%struct.LambdaList_protObj_t* @LambdaList_protObj to i32))
  call void @LambdaList_init(i32 %VR4)
;; <- new: linia 86
  %VR5 = add i32 %ARG, 16
  %VR6 = inttoptr i32 %VR5 to i32*
  store i32 %VR4, i32* %VR6
;; <- assign: linia 86
;- block -- object -
;; -> object: linia 87
;; <- object: linia 87
;; <- block: linia 84
  ret i32 %ARG
;#######################################; <- entry


}
define i32 @LambdaListRef__add(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.LambdaListRef_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- block -
;; -> block: linia 91
;- block -- assign -
;; -> assign: linia 92
;- block -- assign -- dispatch -
;; -> dispatch: linia 92
;;generez codul pentru apelul metodei add
;- block -- assign -- dispatch -- object -
;; -> object: linia 92
;; <- object: linia 92
;- block -- assign -- dispatch -- object -
;; -> object: linia 92
;; <- object: linia 92
;- block -- assign -- dispatch -- object -
;; -> object: linia 92
  %VR3 = add i32 %ARG, 12
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
;; <- object: linia 92
;- block -- assign -- dispatch -- object -
;; -> object: linia 92
  %VR6 = add i32 %ARG, 16
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
;; <- object: linia 92
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = icmp eq i32* %VR9,  null
  br i1 %VR10, label %false_dispatch4, label %dispatch_not_void_LambdaListRef_4
;#######################################; <- entry


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__17 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_LambdaListRef_4
dispatch_not_void_LambdaListRef_4:
  %VR11 = ptrtoint i32* %VR9 to i32 
  %VR12 = add i32 %VR11, 8
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
  %VR15 = add i32 %VR14, 32
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
  %VR18 = inttoptr i32 %VR17 to i32 (i32, i32, i32, i32)*
  %VR19 = call i32 (i32, i32, i32, i32)* %VR18(i32 %VR8, i32 %VR1, i32 %VR2, i32 %VR5)
;; <- dispatch: linia 92
  %VR20 = add i32 %ARG, 16
  %VR21 = inttoptr i32 %VR20 to i32*
  store i32 %VR19, i32* %VR21
;; <- assign: linia 92
;- block -- assign -
;; -> assign: linia 93
;- block -- assign -- plus -
;; -> plus: linia 93
;- block -- assign -- plus -- object -
;; -> object: linia 93
  %VR22 = add i32 %ARG, 12
  %VR23 = inttoptr i32 %VR22 to i32*
  %VR24 = load i32* %VR23
;; <- object: linia 93
;- block -- assign -- plus -- int_const -
;; -> int_const: linia 93
  %VR25 = add i32 1, 0
;; <- int_const: linia 93
  %VR26 = add i32 %VR24, %VR25
;; <- plus: linia 93
  %VR27 = add i32 %ARG, 12
  %VR28 = inttoptr i32 %VR27 to i32*
  store i32 %VR26, i32* %VR28
;; <- assign: linia 93
;- block -- sub -
;; -> sub: linia 94
;- block -- sub -- object -
;; -> object: linia 94
  %VR29 = add i32 %ARG, 12
  %VR30 = inttoptr i32 %VR29 to i32*
  %VR31 = load i32* %VR30
;; <- object: linia 94
;- block -- sub -- int_const -
;; -> int_const: linia 94
  %VR32 = add i32 1, 0
;; <- int_const: linia 94
  %VR33 = sub i32 %VR31, %VR32
;; <- sub: linia 94
;; <- block: linia 91
  ret i32 %VR33
;#######################################; <- dispatch_not_void_LambdaListRef_4


}
define i32 @LambdaListRef__removeHead(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.LambdaListRef_protObj_t*
;- block -
;; -> block: linia 98
;- block -- assign -
;; -> assign: linia 99
;- block -- assign -- dispatch -
;; -> dispatch: linia 99
;;generez codul pentru apelul metodei tail
;- block -- assign -- dispatch -- object -
;; -> object: linia 99
  %VR1 = add i32 %ARG, 16
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 99
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_dispatch5, label %dispatch_not_void_LambdaListRef_5
;#######################################; <- entry


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__18 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_LambdaListRef_5
dispatch_not_void_LambdaListRef_5:
  %VR6 = ptrtoint i32* %VR4 to i32 
  %VR7 = add i32 %VR6, 8
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = add i32 %VR9, 28
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = inttoptr i32 %VR12 to i32 (i32)*
  %VR14 = call i32 (i32)* %VR13(i32 %VR3)
;; <- dispatch: linia 99
  %VR15 = add i32 %ARG, 16
  %VR16 = inttoptr i32 %VR15 to i32*
  store i32 %VR14, i32* %VR16
;; <- assign: linia 99
;- block -- object -
;; -> object: linia 100
;; <- object: linia 100
;; <- block: linia 98
  ret i32 %ARG
;#######################################; <- dispatch_not_void_LambdaListRef_5


}
define void @Expr_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @Expr__print_self(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Expr_protObj_t*
;- block -
;; -> block: linia 115
;- block -- dispatch -
;; -> dispatch: linia 116
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 116
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 116
;- block -- dispatch -- object -
;; -> object: linia 116
;; <- object: linia 116
  %VR2 = icmp eq %struct.Expr_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch0, label %dispatch_not_void_Expr_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__19 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Expr_0
dispatch_not_void_Expr_0:
  %VR3 = ptrtoint %struct.Expr_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 16
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 116
;- block -- dispatch -
;; -> dispatch: linia 117
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 117
;; <- object: linia 117
  %VR12 = icmp eq %struct.Expr_protObj_t* %VR0,  null
  br i1 %VR12, label %false_dispatch1, label %dispatch_not_void_Expr_1
;#######################################; <- dispatch_not_void_Expr_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__20 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Expr_1
dispatch_not_void_Expr_1:
  %VR13 = ptrtoint %struct.Expr_protObj_t* %VR0 to i32 
  %VR14 = add i32 %VR13, 8
  %VR15 = inttoptr i32 %VR14 to i32*
  %VR16 = load i32* %VR15
  %VR17 = add i32 %VR16, 0
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
  %VR20 = inttoptr i32 %VR19 to i32 (i32)*
  %VR21 = call i32 (i32)* %VR20(i32 %ARG)
;; <- dispatch: linia 117
;- block -- object -
;; -> object: linia 118
;; <- object: linia 118
;; <- block: linia 115
  ret i32 %ARG
;#######################################; <- dispatch_not_void_Expr_1


}
define i32 @Expr__beta(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Expr_protObj_t*
;- block -
;; -> block: linia 124
;- block -- dispatch -
;; -> dispatch: linia 125
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 125
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__4 to i32 
;; <- string_const: linia 125
;- block -- dispatch -- object -
;; -> object: linia 125
;; <- object: linia 125
  %VR2 = icmp eq %struct.Expr_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch2, label %dispatch_not_void_Expr_2
;#######################################; <- entry


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__21 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Expr_2
dispatch_not_void_Expr_2:
  %VR3 = ptrtoint %struct.Expr_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 16
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 125
;- block -- dispatch -
;; -> dispatch: linia 126
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 126
;; <- object: linia 126
  %VR12 = icmp eq %struct.Expr_protObj_t* %VR0,  null
  br i1 %VR12, label %false_dispatch3, label %dispatch_not_void_Expr_3
;#######################################; <- dispatch_not_void_Expr_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__22 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Expr_3
dispatch_not_void_Expr_3:
  %VR13 = ptrtoint %struct.Expr_protObj_t* %VR0 to i32 
  %VR14 = add i32 %VR13, 8
  %VR15 = inttoptr i32 %VR14 to i32*
  %VR16 = load i32* %VR15
  %VR17 = add i32 %VR16, 0
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
  %VR20 = inttoptr i32 %VR19 to i32 (i32)*
  %VR21 = call i32 (i32)* %VR20(i32 %ARG)
;; <- dispatch: linia 126
;- block -- object -
;; -> object: linia 127
;; <- object: linia 127
;; <- block: linia 124
  ret i32 %ARG
;#######################################; <- dispatch_not_void_Expr_3


}
define i32 @Expr__substitute(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Expr_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- block -
;; -> block: linia 133
;- block -- dispatch -
;; -> dispatch: linia 134
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 134
  %VR3 = ptrtoint %struct.String_protObj_t* @str_const__5 to i32 
;; <- string_const: linia 134
;- block -- dispatch -- object -
;; -> object: linia 134
;; <- object: linia 134
  %VR4 = icmp eq %struct.Expr_protObj_t* %VR0,  null
  br i1 %VR4, label %false_dispatch4, label %dispatch_not_void_Expr_4
;#######################################; <- entry


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__23 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Expr_4
dispatch_not_void_Expr_4:
  %VR5 = ptrtoint %struct.Expr_protObj_t* %VR0 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 16
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32, i32)*
  %VR13 = call i32 (i32, i32)* %VR12(i32 %ARG, i32 %VR3)
;; <- dispatch: linia 134
;- block -- dispatch -
;; -> dispatch: linia 135
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 135
;; <- object: linia 135
  %VR14 = icmp eq %struct.Expr_protObj_t* %VR0,  null
  br i1 %VR14, label %false_dispatch5, label %dispatch_not_void_Expr_5
;#######################################; <- dispatch_not_void_Expr_4


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__24 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_Expr_5
dispatch_not_void_Expr_5:
  %VR15 = ptrtoint %struct.Expr_protObj_t* %VR0 to i32 
  %VR16 = add i32 %VR15, 8
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = load i32* %VR17
  %VR19 = add i32 %VR18, 0
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = load i32* %VR20
  %VR22 = inttoptr i32 %VR21 to i32 (i32)*
  %VR23 = call i32 (i32)* %VR22(i32 %ARG)
;; <- dispatch: linia 135
;- block -- object -
;; -> object: linia 136
;; <- object: linia 136
;; <- block: linia 133
  ret i32 %ARG
;#######################################; <- dispatch_not_void_Expr_5


}
define i32 @Expr__gen_code(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Expr_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- block -
;; -> block: linia 142
;- block -- dispatch -
;; -> dispatch: linia 143
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 143
  %VR3 = ptrtoint %struct.String_protObj_t* @str_const__6 to i32 
;; <- string_const: linia 143
;- block -- dispatch -- object -
;; -> object: linia 143
;; <- object: linia 143
  %VR4 = icmp eq %struct.Expr_protObj_t* %VR0,  null
  br i1 %VR4, label %false_dispatch6, label %dispatch_not_void_Expr_6
;#######################################; <- entry


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__25 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_Expr_6
dispatch_not_void_Expr_6:
  %VR5 = ptrtoint %struct.Expr_protObj_t* %VR0 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 16
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32, i32)*
  %VR13 = call i32 (i32, i32)* %VR12(i32 %ARG, i32 %VR3)
;; <- dispatch: linia 143
;- block -- dispatch -
;; -> dispatch: linia 144
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 144
;; <- object: linia 144
  %VR14 = icmp eq %struct.Expr_protObj_t* %VR0,  null
  br i1 %VR14, label %false_dispatch7, label %dispatch_not_void_Expr_7
;#######################################; <- dispatch_not_void_Expr_6


;#######################################; -> false_dispatch7
false_dispatch7:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__26 to i32))
  ret i32 0
;#######################################; <- false_dispatch7


;#######################################; -> dispatch_not_void_Expr_7
dispatch_not_void_Expr_7:
  %VR15 = ptrtoint %struct.Expr_protObj_t* %VR0 to i32 
  %VR16 = add i32 %VR15, 8
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = load i32* %VR17
  %VR19 = add i32 %VR18, 0
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = load i32* %VR20
  %VR22 = inttoptr i32 %VR21 to i32 (i32)*
  %VR23 = call i32 (i32)* %VR22(i32 %ARG)
;; <- dispatch: linia 144
;- block -- object -
;; -> object: linia 145
;; <- object: linia 145
;; <- block: linia 142
  ret i32 %ARG
;#######################################; <- dispatch_not_void_Expr_7


}
define void @Variable_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Expr_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.String_protObj_t* @String_protObj to i32))
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
  ret void
;#######################################; <- entry


}
define i32 @Variable__init(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Variable_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- block -
;; -> block: linia 157
;- block -- assign -
;; -> assign: linia 158
;- block -- assign -- object -
;; -> object: linia 158
;; <- object: linia 158
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
;; <- assign: linia 158
;- block -- object -
;; -> object: linia 159
;; <- object: linia 159
;; <- block: linia 157
  ret i32 %ARG
;#######################################; <- entry


}
define i32 @Variable__print_self(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Variable_protObj_t*
;- dispatch -
;; -> dispatch: linia 164
;;generez codul pentru apelul metodei out_string
;- dispatch -- object -
;; -> object: linia 164
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 164
;- dispatch -- object -
;; -> object: linia 164
;; <- object: linia 164
  %VR4 = icmp eq %struct.Variable_protObj_t* %VR0,  null
  br i1 %VR4, label %false_dispatch0, label %dispatch_not_void_Variable_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__27 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Variable_0
dispatch_not_void_Variable_0:
  %VR5 = ptrtoint %struct.Variable_protObj_t* %VR0 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 16
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32, i32)*
  %VR13 = call i32 (i32, i32)* %VR12(i32 %ARG, i32 %VR3)
;; <- dispatch: linia 164
  ret i32 %VR13
;#######################################; <- dispatch_not_void_Variable_0


}
define i32 @Variable__beta(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Variable_protObj_t*
;- object -
;; -> object: linia 167
;; <- object: linia 167
  ret i32 %ARG
;#######################################; <- entry


}
define i32 @Variable__substitute(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Variable_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- cond -
;; -> cond: linia 170
;;if: linia 170 (expresia pentru predicat)
;;%VR3 rezervat pentru rezultatul if-ului
;- cond -- eq -
;; -> eq: linia 170
;- cond -- eq -- object -
;; -> object: linia 170
;; <- object: linia 170
;- cond -- eq -- object -
;; -> object: linia 170
;; <- object: linia 170
  br label %eq_test_join_true_Variable_0
;#######################################; <- entry


;#######################################; -> eq_test_join_true_Variable_0
eq_test_join_true_Variable_0:
  %VR4.0 = icmp eq i32 %VR1,  %ARG
  br i1 %VR4.0, label %eq_test_join_Variable_0, label %eq_test_join_false_Variable_0
;#######################################; <- eq_test_join_true_Variable_0


;#######################################; -> eq_test_join_false_Variable_0
eq_test_join_false_Variable_0:
  %VR6 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %ARG)
  %VR4.1 = icmp eq i32 %VR6,  1
  br label %eq_test_join_Variable_0
;#######################################; <- eq_test_join_false_Variable_0


;#######################################; -> eq_test_join_Variable_0
eq_test_join_Variable_0:
  %VR4 = phi i1 [ %VR4.0, %eq_test_join_true_Variable_0 ] , [ %VR4.1, %eq_test_join_false_Variable_0 ] 
;; <- eq: linia 170
  %VR7 = icmp eq i1 %VR4,  false
  br i1 %VR7, label %false_Variable_0, label %false_false_Variable_0
;#######################################; <- eq_test_join_Variable_0


;#######################################; -> false_false_Variable_0
false_false_Variable_0:
;;if: linia 170 (expresia pentru then)
;- cond -- object -
;; -> object: linia 170
;; <- object: linia 170
  br label %join_if_Variable_0_true
;#######################################; <- false_false_Variable_0


;#######################################; -> join_if_Variable_0_true
join_if_Variable_0_true:
  %VR3.0 = add i32 %VR2, 0
  br label %join_if_Variable_0
;#######################################; <- join_if_Variable_0_true


;#######################################; -> false_Variable_0
false_Variable_0:
;;if: linia 170 (expresia pentru else)
;- cond -- object -
;; -> object: linia 170
;; <- object: linia 170
  br label %join_if_Variable_0_false
;#######################################; <- false_Variable_0


;#######################################; -> join_if_Variable_0_false
join_if_Variable_0_false:
  %VR3.1 = add i32 %ARG, 0
  br label %join_if_Variable_0
;#######################################; <- join_if_Variable_0_false


;#######################################; -> join_if_Variable_0
join_if_Variable_0:
  %VR3 = phi i32 [ %VR3.0, %join_if_Variable_0_true ], [ %VR3.1, %join_if_Variable_0_false ]
;; <- cond: linia 170
  ret i32 %VR3
;#######################################; <- join_if_Variable_0


}
define i32 @Variable__gen_code(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR1a = alloca i32 
  store i32 0, i32* %VR1a
  %VR0 = inttoptr i32 %ARG to %struct.Variable_protObj_t*
  %VR1.a = add i32 %ARG0, 0
  store i32 %VR1.a, i32* %VR1a
  %VR2 = add i32 %ARG1, 0
;- let -
;; -> let: linia 174
;- let -- object -
;; -> object: linia 174
;; <- object: linia 174
;- let -- block -
;; -> block: linia 175
;- let -- block -- loop -
;; -> loop: linia 175
;; conditie
  br label %start_loop_Variable_0
;#######################################; <- entry


;#######################################; -> start_loop_Variable_0
start_loop_Variable_0:
  %VR1_tmp0 = load i32* %VR1a
;- let -- block -- loop -- cond -
;; -> cond: linia 175
;;if: linia 175 (expresia pentru predicat)
;;%VR3 rezervat pentru rezultatul if-ului
;- let -- block -- loop -- cond -- dispatch -
;; -> dispatch: linia 175
;;generez codul pentru apelul metodei isNil
;- let -- block -- loop -- cond -- dispatch -- object -
;; -> object: linia 175
;; <- object: linia 175
  %VR4 = inttoptr i32 %VR1_tmp0 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_dispatch1, label %dispatch_not_void_Variable_1
;#######################################; <- start_loop_Variable_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__28 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Variable_1
dispatch_not_void_Variable_1:
  %VR1_tmp1 = load i32* %VR1a
  %VR6 = ptrtoint i32* %VR4 to i32 
  %VR7 = add i32 %VR6, 8
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = add i32 %VR9, 28
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = inttoptr i32 %VR12 to i32 (i32)*
  %VR14 = call i32 (i32)* %VR13( i32 %VR1_tmp1)
;; <- dispatch: linia 175
  %VR15 = icmp eq i32 %VR14,  0
  br i1 %VR15, label %false_Variable_1, label %false_false_Variable_1
;#######################################; <- dispatch_not_void_Variable_1


;#######################################; -> false_false_Variable_1
false_false_Variable_1:
;;if: linia 175 (expresia pentru then)
;- let -- block -- loop -- cond -- bool_const -
;; -> bool_const: linia 176
  %VR16 = add i32 0, 0
;; <- bool_const: linia 176
  br label %join_if_Variable_1_true
;#######################################; <- false_false_Variable_1


;#######################################; -> join_if_Variable_1_true
join_if_Variable_1_true:
  %VR3.0 = add i32 %VR16, 0
  br label %join_if_Variable_1
;#######################################; <- join_if_Variable_1_true


;#######################################; -> false_Variable_1
false_Variable_1:
  %VR1_tmp2 = load i32* %VR1a
;;if: linia 175 (expresia pentru else)
;- let -- block -- loop -- cond -- comp -
;; -> comp: linia 178
;- let -- block -- loop -- cond -- comp -- eq -
;; -> eq: linia 178
;- let -- block -- loop -- cond -- comp -- eq -- dispatch -
;; -> dispatch: linia 178
;;generez codul pentru apelul metodei head
;- let -- block -- loop -- cond -- comp -- eq -- dispatch -- object -
;; -> object: linia 178
;; <- object: linia 178
  %VR17 = inttoptr i32 %VR1_tmp2 to i32*
  %VR18 = icmp eq i32* %VR17,  null
  br i1 %VR18, label %false_dispatch2, label %dispatch_not_void_Variable_2
;#######################################; <- false_Variable_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__29 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Variable_2
dispatch_not_void_Variable_2:
  %VR1_tmp3 = load i32* %VR1a
  %VR19 = ptrtoint i32* %VR17 to i32 
  %VR20 = add i32 %VR19, 8
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
  %VR23 = add i32 %VR22, 32
  %VR24 = inttoptr i32 %VR23 to i32*
  %VR25 = load i32* %VR24
  %VR26 = inttoptr i32 %VR25 to i32 (i32)*
  %VR27 = call i32 (i32)* %VR26( i32 %VR1_tmp3)
;; <- dispatch: linia 178
;- let -- block -- loop -- cond -- comp -- eq -- object -
;; -> object: linia 178
;; <- object: linia 178
  br label %eq_test_join_true_Variable_1
;#######################################; <- dispatch_not_void_Variable_2


;#######################################; -> eq_test_join_true_Variable_1
eq_test_join_true_Variable_1:
  %VR28.0 = icmp eq i32 %VR27,  %ARG
  br i1 %VR28.0, label %eq_test_join_Variable_1, label %eq_test_join_false_Variable_1
;#######################################; <- eq_test_join_true_Variable_1


;#######################################; -> eq_test_join_false_Variable_1
eq_test_join_false_Variable_1:
  %VR30 = call i32  @equality_test(i32 1, i32 0, i32 %VR27, i32 %ARG)
  %VR28.1 = icmp eq i32 %VR30,  1
  br label %eq_test_join_Variable_1
;#######################################; <- eq_test_join_false_Variable_1


;#######################################; -> eq_test_join_Variable_1
eq_test_join_Variable_1:
  %VR28 = phi i1  [ %VR28.0 , %eq_test_join_true_Variable_1 ] , [ %VR28.1 , %eq_test_join_false_Variable_1 ] 
;; <- eq: linia 178
  %VR31 = select i1 %VR28, i32 1, i32 0
  %VR32 = sub i32 1, %VR31
;; <- comp: linia 178
  br label %join_if_Variable_1_false
;#######################################; <- eq_test_join_Variable_1


;#######################################; -> join_if_Variable_1_false
join_if_Variable_1_false:
  %VR3.1 = add i32 %VR32, 0
  br label %join_if_Variable_1
;#######################################; <- join_if_Variable_1_false


;#######################################; -> join_if_Variable_1
join_if_Variable_1:
  %VR3 = phi i32  [ %VR3.0 , %join_if_Variable_1_true ] , [ %VR3.1 , %join_if_Variable_1_false ] 
;; <- cond: linia 175
  %VR33 = icmp eq i32 %VR3,  0
  br i1 %VR33, label %sfarsit_loop_Variable_0, label %label_next_loop_Variable_0
;#######################################; <- join_if_Variable_1


;#######################################; -> label_next_loop_Variable_0
label_next_loop_Variable_0:
;; corp loop
;- let -- block -- loop -- block -
;; -> block: linia 180
;- let -- block -- loop -- block -- dispatch -
;; -> dispatch: linia 180
;;generez codul pentru apelul metodei out_string
;- let -- block -- loop -- block -- dispatch -- string_const -
;; -> string_const: linia 180
  %VR34 = ptrtoint %struct.String_protObj_t* @str_const__7 to i32 
;; <- string_const: linia 180
;- let -- block -- loop -- block -- dispatch -- object -
;; -> object: linia 180
;; <- object: linia 180
  %VR35 = icmp eq %struct.Variable_protObj_t* %VR0,  null
  br i1 %VR35, label %false_dispatch3, label %dispatch_not_void_Variable_3
;#######################################; <- label_next_loop_Variable_0


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__30 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Variable_3
dispatch_not_void_Variable_3:
  %VR1_tmp4 = load i32* %VR1a
  %VR36 = ptrtoint %struct.Variable_protObj_t* %VR0 to i32 
  %VR37 = add i32 %VR36, 8
  %VR38 = inttoptr i32 %VR37 to i32*
  %VR39 = load i32* %VR38
  %VR40 = add i32 %VR39, 16
  %VR41 = inttoptr i32 %VR40 to i32*
  %VR42 = load i32* %VR41
  %VR43 = inttoptr i32 %VR42 to i32 (i32, i32)*
  %VR44 = call i32 (i32, i32)* %VR43(i32 %ARG, i32 %VR34)
;; <- dispatch: linia 180
;- let -- block -- loop -- block -- assign -
;; -> assign: linia 181
;- let -- block -- loop -- block -- assign -- dispatch -
;; -> dispatch: linia 181
;;generez codul pentru apelul metodei tail
;- let -- block -- loop -- block -- assign -- dispatch -- object -
;; -> object: linia 181
;; <- object: linia 181
  %VR45 = inttoptr i32 %VR1_tmp4 to i32*
  %VR46 = icmp eq i32* %VR45,  null
  br i1 %VR46, label %false_dispatch4, label %dispatch_not_void_Variable_4
;#######################################; <- dispatch_not_void_Variable_3


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__31 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Variable_4
dispatch_not_void_Variable_4:
  %VR1_tmp5 = load i32* %VR1a
  %VR47 = ptrtoint i32* %VR45 to i32 
  %VR48 = add i32 %VR47, 8
  %VR49 = inttoptr i32 %VR48 to i32*
  %VR50 = load i32* %VR49
  %VR51 = add i32 %VR50, 36
  %VR52 = inttoptr i32 %VR51 to i32*
  %VR53 = load i32* %VR52
  %VR54 = inttoptr i32 %VR53 to i32 (i32)*
  %VR55 = call i32 (i32)* %VR54( i32 %VR1_tmp5)
;; <- dispatch: linia 181
  store i32 %VR55, i32* %VR1a
;; <- assign: linia 181
;; <- block: linia 180
  br label %start_loop_Variable_0
;#######################################; <- dispatch_not_void_Variable_4


;#######################################; -> sfarsit_loop_Variable_0
sfarsit_loop_Variable_0:
  %VR1_tmp6 = load i32* %VR1a
;; <- loop: linia 175
;- let -- block -- cond -
;; -> cond: linia 184
;;if: linia 184 (expresia pentru predicat)
;;%VR56 rezervat pentru rezultatul if-ului
;- let -- block -- cond -- dispatch -
;; -> dispatch: linia 184
;;generez codul pentru apelul metodei isNil
;- let -- block -- cond -- dispatch -- object -
;; -> object: linia 184
;; <- object: linia 184
  %VR57 = inttoptr i32 %VR1_tmp6 to i32*
  %VR58 = icmp eq i32* %VR57,  null
  br i1 %VR58, label %false_dispatch5, label %dispatch_not_void_Variable_5
;#######################################; <- sfarsit_loop_Variable_0


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__32 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_Variable_5
dispatch_not_void_Variable_5:
  %VR1_tmp7 = load i32* %VR1a
  %VR59 = ptrtoint i32* %VR57 to i32 
  %VR60 = add i32 %VR59, 8
  %VR61 = inttoptr i32 %VR60 to i32*
  %VR62 = load i32* %VR61
  %VR63 = add i32 %VR62, 28
  %VR64 = inttoptr i32 %VR63 to i32*
  %VR65 = load i32* %VR64
  %VR66 = inttoptr i32 %VR65 to i32 (i32)*
  %VR67 = call i32 (i32)* %VR66( i32 %VR1_tmp7)
;; <- dispatch: linia 184
  %VR68 = icmp eq i32 %VR67,  0
  br i1 %VR68, label %false_Variable_2, label %false_false_Variable_2
;#######################################; <- dispatch_not_void_Variable_5


;#######################################; -> false_false_Variable_2
false_false_Variable_2:
;;if: linia 184 (expresia pentru then)
;- let -- block -- cond -- block -
;; -> block: linia 185
;- let -- block -- cond -- block -- dispatch -
;; -> dispatch: linia 185
;;generez codul pentru apelul metodei out_string
;- let -- block -- cond -- block -- dispatch -- string_const -
;; -> string_const: linia 185
  %VR69 = ptrtoint %struct.String_protObj_t* @str_const__8 to i32 
;; <- string_const: linia 185
;- let -- block -- cond -- block -- dispatch -- object -
;; -> object: linia 185
;; <- object: linia 185
  %VR70 = icmp eq %struct.Variable_protObj_t* %VR0,  null
  br i1 %VR70, label %false_dispatch6, label %dispatch_not_void_Variable_6
;#######################################; <- false_false_Variable_2


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__33 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_Variable_6
dispatch_not_void_Variable_6:
  %VR71 = ptrtoint %struct.Variable_protObj_t* %VR0 to i32 
  %VR72 = add i32 %VR71, 8
  %VR73 = inttoptr i32 %VR72 to i32*
  %VR74 = load i32* %VR73
  %VR75 = add i32 %VR74, 16
  %VR76 = inttoptr i32 %VR75 to i32*
  %VR77 = load i32* %VR76
  %VR78 = inttoptr i32 %VR77 to i32 (i32, i32)*
  %VR79 = call i32 (i32, i32)* %VR78(i32 %ARG, i32 %VR69)
;; <- dispatch: linia 185
;- let -- block -- cond -- block -- dispatch -
;; -> dispatch: linia 186
;;generez codul pentru apelul metodei print_self
;- let -- block -- cond -- block -- dispatch -- object -
;; -> object: linia 186
;; <- object: linia 186
  %VR80 = icmp eq %struct.Variable_protObj_t* %VR0,  null
  br i1 %VR80, label %false_dispatch7, label %dispatch_not_void_Variable_7
;#######################################; <- dispatch_not_void_Variable_6


;#######################################; -> false_dispatch7
false_dispatch7:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__34 to i32))
  ret i32 0
;#######################################; <- false_dispatch7


;#######################################; -> dispatch_not_void_Variable_7
dispatch_not_void_Variable_7:
  %VR81 = ptrtoint %struct.Variable_protObj_t* %VR0 to i32 
  %VR82 = add i32 %VR81, 8
  %VR83 = inttoptr i32 %VR82 to i32*
  %VR84 = load i32* %VR83
  %VR85 = add i32 %VR84, 28
  %VR86 = inttoptr i32 %VR85 to i32*
  %VR87 = load i32* %VR86
  %VR88 = inttoptr i32 %VR87 to i32 (i32)*
  %VR89 = call i32 (i32)* %VR88(i32 %ARG)
;; <- dispatch: linia 186
;- let -- block -- cond -- block -- dispatch -
;; -> dispatch: linia 187
;;generez codul pentru apelul metodei out_string
;- let -- block -- cond -- block -- dispatch -- string_const -
;; -> string_const: linia 187
  %VR90 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 187
;- let -- block -- cond -- block -- dispatch -- object -
;; -> object: linia 187
;; <- object: linia 187
  %VR91 = icmp eq %struct.Variable_protObj_t* %VR0,  null
  br i1 %VR91, label %false_dispatch8, label %dispatch_not_void_Variable_8
;#######################################; <- dispatch_not_void_Variable_7


;#######################################; -> false_dispatch8
false_dispatch8:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__35 to i32))
  ret i32 0
;#######################################; <- false_dispatch8


;#######################################; -> dispatch_not_void_Variable_8
dispatch_not_void_Variable_8:
  %VR92 = ptrtoint %struct.Variable_protObj_t* %VR0 to i32 
  %VR93 = add i32 %VR92, 8
  %VR94 = inttoptr i32 %VR93 to i32*
  %VR95 = load i32* %VR94
  %VR96 = add i32 %VR95, 16
  %VR97 = inttoptr i32 %VR96 to i32*
  %VR98 = load i32* %VR97
  %VR99 = inttoptr i32 %VR98 to i32 (i32, i32)*
  %VR100 = call i32 (i32, i32)* %VR99(i32 %ARG, i32 %VR90)
;; <- dispatch: linia 187
;- let -- block -- cond -- block -- dispatch -
;; -> dispatch: linia 188
;;generez codul pentru apelul metodei abort
;- let -- block -- cond -- block -- dispatch -- object -
;; -> object: linia 188
;; <- object: linia 188
  %VR101 = icmp eq %struct.Variable_protObj_t* %VR0,  null
  br i1 %VR101, label %false_dispatch9, label %dispatch_not_void_Variable_9
;#######################################; <- dispatch_not_void_Variable_8


;#######################################; -> false_dispatch9
false_dispatch9:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__36 to i32))
  ret i32 0
;#######################################; <- false_dispatch9


;#######################################; -> dispatch_not_void_Variable_9
dispatch_not_void_Variable_9:
  %VR102 = ptrtoint %struct.Variable_protObj_t* %VR0 to i32 
  %VR103 = add i32 %VR102, 8
  %VR104 = inttoptr i32 %VR103 to i32*
  %VR105 = load i32* %VR104
  %VR106 = add i32 %VR105, 0
  %VR107 = inttoptr i32 %VR106 to i32*
  %VR108 = load i32* %VR107
  %VR109 = inttoptr i32 %VR108 to i32 (i32)*
  %VR110 = call i32 (i32)* %VR109(i32 %ARG)
;; <- dispatch: linia 188
;- let -- block -- cond -- block -- object -
;; -> object: linia 189
;; <- object: linia 189
;; <- block: linia 185
  br label %join_if_Variable_2_true
;#######################################; <- dispatch_not_void_Variable_9


;#######################################; -> join_if_Variable_2_true
join_if_Variable_2_true:
  %VR56.0 = add i32 %ARG, 0
  br label %join_if_Variable_2
;#######################################; <- join_if_Variable_2_true


;#######################################; -> false_Variable_2
false_Variable_2:
;;if: linia 184 (expresia pentru else)
;- let -- block -- cond -- dispatch -
;; -> dispatch: linia 192
;;generez codul pentru apelul metodei out_string
;- let -- block -- cond -- dispatch -- string_const -
;; -> string_const: linia 192
  %VR111 = ptrtoint %struct.String_protObj_t* @str_const__9 to i32 
;; <- string_const: linia 192
;- let -- block -- cond -- dispatch -- object -
;; -> object: linia 192
;; <- object: linia 192
  %VR112 = icmp eq %struct.Variable_protObj_t* %VR0,  null
  br i1 %VR112, label %false_dispatch10, label %dispatch_not_void_Variable_10
;#######################################; <- false_Variable_2


;#######################################; -> false_dispatch10
false_dispatch10:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__37 to i32))
  ret i32 0
;#######################################; <- false_dispatch10


;#######################################; -> dispatch_not_void_Variable_10
dispatch_not_void_Variable_10:
  %VR113 = ptrtoint %struct.Variable_protObj_t* %VR0 to i32 
  %VR114 = add i32 %VR113, 8
  %VR115 = inttoptr i32 %VR114 to i32*
  %VR116 = load i32* %VR115
  %VR117 = add i32 %VR116, 16
  %VR118 = inttoptr i32 %VR117 to i32*
  %VR119 = load i32* %VR118
  %VR120 = inttoptr i32 %VR119 to i32 (i32, i32)*
  %VR121 = call i32 (i32, i32)* %VR120(i32 %ARG, i32 %VR111)
;; <- dispatch: linia 192
  br label %join_if_Variable_2_false
;#######################################; <- dispatch_not_void_Variable_10


;#######################################; -> join_if_Variable_2_false
join_if_Variable_2_false:
  %VR56.1 = add i32 %VR121, 0
  br label %join_if_Variable_2
;#######################################; <- join_if_Variable_2_false


;#######################################; -> join_if_Variable_2
join_if_Variable_2:
  %VR56 = phi i32  [ %VR56.0 , %join_if_Variable_2_true ] , [ %VR56.1 , %join_if_Variable_2_false ] 
;; <- cond: linia 184
;; <- block: linia 175
;; <- let: linia 174
  ret i32 %VR56
;#######################################; <- join_if_Variable_2


}
define void @Lambda_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Expr_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @Lambda__init(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Lambda_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- block -
;; -> block: linia 206
;- block -- assign -
;; -> assign: linia 207
;- block -- assign -- object -
;; -> object: linia 207
;; <- object: linia 207
  %VR3 = add i32 %ARG, 12
  %VR4 = inttoptr i32 %VR3 to i32*
  store i32 %VR1, i32* %VR4
;; <- assign: linia 207
;- block -- assign -
;; -> assign: linia 208
;- block -- assign -- object -
;; -> object: linia 208
;; <- object: linia 208
  %VR5 = add i32 %ARG, 16
  %VR6 = inttoptr i32 %VR5 to i32*
  store i32 %VR2, i32* %VR6
;; <- assign: linia 208
;- block -- object -
;; -> object: linia 209
;; <- object: linia 209
;; <- block: linia 206
  ret i32 %ARG
;#######################################; <- entry


}
define i32 @Lambda__print_self(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Lambda_protObj_t*
;- block -
;; -> block: linia 214
;- block -- dispatch -
;; -> dispatch: linia 215
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 215
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__10 to i32 
;; <- string_const: linia 215
;- block -- dispatch -- object -
;; -> object: linia 215
;; <- object: linia 215
  %VR2 = icmp eq %struct.Lambda_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch0, label %dispatch_not_void_Lambda_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__38 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Lambda_0
dispatch_not_void_Lambda_0:
  %VR3 = ptrtoint %struct.Lambda_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 16
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 215
;- block -- dispatch -
;; -> dispatch: linia 216
;;generez codul pentru apelul metodei print_self
;- block -- dispatch -- object -
;; -> object: linia 216
  %VR12 = add i32 %ARG, 12
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
;; <- object: linia 216
  %VR15 = inttoptr i32 %VR14 to i32*
  %VR16 = icmp eq i32* %VR15,  null
  br i1 %VR16, label %false_dispatch1, label %dispatch_not_void_Lambda_1
;#######################################; <- dispatch_not_void_Lambda_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__39 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Lambda_1
dispatch_not_void_Lambda_1:
  %VR17 = ptrtoint i32* %VR15 to i32 
  %VR18 = add i32 %VR17, 8
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
  %VR21 = add i32 %VR20, 28
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = load i32* %VR22
  %VR24 = inttoptr i32 %VR23 to i32 (i32)*
  %VR25 = call i32 (i32)* %VR24(i32 %VR14)
;; <- dispatch: linia 216
;- block -- dispatch -
;; -> dispatch: linia 217
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 217
  %VR26 = ptrtoint %struct.String_protObj_t* @str_const__11 to i32 
;; <- string_const: linia 217
;- block -- dispatch -- object -
;; -> object: linia 217
;; <- object: linia 217
  %VR27 = icmp eq %struct.Lambda_protObj_t* %VR0,  null
  br i1 %VR27, label %false_dispatch2, label %dispatch_not_void_Lambda_2
;#######################################; <- dispatch_not_void_Lambda_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__40 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Lambda_2
dispatch_not_void_Lambda_2:
  %VR28 = ptrtoint %struct.Lambda_protObj_t* %VR0 to i32 
  %VR29 = add i32 %VR28, 8
  %VR30 = inttoptr i32 %VR29 to i32*
  %VR31 = load i32* %VR30
  %VR32 = add i32 %VR31, 16
  %VR33 = inttoptr i32 %VR32 to i32*
  %VR34 = load i32* %VR33
  %VR35 = inttoptr i32 %VR34 to i32 (i32, i32)*
  %VR36 = call i32 (i32, i32)* %VR35(i32 %ARG, i32 %VR26)
;; <- dispatch: linia 217
;- block -- dispatch -
;; -> dispatch: linia 218
;;generez codul pentru apelul metodei print_self
;- block -- dispatch -- object -
;; -> object: linia 218
  %VR37 = add i32 %ARG, 16
  %VR38 = inttoptr i32 %VR37 to i32*
  %VR39 = load i32* %VR38
;; <- object: linia 218
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = icmp eq i32* %VR40,  null
  br i1 %VR41, label %false_dispatch3, label %dispatch_not_void_Lambda_3
;#######################################; <- dispatch_not_void_Lambda_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__41 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Lambda_3
dispatch_not_void_Lambda_3:
  %VR42 = ptrtoint i32* %VR40 to i32 
  %VR43 = add i32 %VR42, 8
  %VR44 = inttoptr i32 %VR43 to i32*
  %VR45 = load i32* %VR44
  %VR46 = add i32 %VR45, 28
  %VR47 = inttoptr i32 %VR46 to i32*
  %VR48 = load i32* %VR47
  %VR49 = inttoptr i32 %VR48 to i32 (i32)*
  %VR50 = call i32 (i32)* %VR49(i32 %VR39)
;; <- dispatch: linia 218
;- block -- object -
;; -> object: linia 219
;; <- object: linia 219
;; <- block: linia 214
  ret i32 %ARG
;#######################################; <- dispatch_not_void_Lambda_3


}
define i32 @Lambda__beta(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Lambda_protObj_t*
;- object -
;; -> object: linia 223
;; <- object: linia 223
  ret i32 %ARG
;#######################################; <- entry


}
define i32 @Lambda__apply(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Lambda_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- dispatch -
;; -> dispatch: linia 226
;;generez codul pentru apelul metodei substitute
;- dispatch -- object -
;; -> object: linia 226
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = load i32* %VR3
;; <- object: linia 226
;- dispatch -- object -
;; -> object: linia 226
;; <- object: linia 226
;- dispatch -- object -
;; -> object: linia 226
  %VR5 = add i32 %ARG, 16
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = load i32* %VR6
;; <- object: linia 226
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = icmp eq i32* %VR8,  null
  br i1 %VR9, label %false_dispatch4, label %dispatch_not_void_Lambda_4
;#######################################; <- entry


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__42 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Lambda_4
dispatch_not_void_Lambda_4:
  %VR10 = ptrtoint i32* %VR8 to i32 
  %VR11 = add i32 %VR10, 8
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
  %VR14 = add i32 %VR13, 36
  %VR15 = inttoptr i32 %VR14 to i32*
  %VR16 = load i32* %VR15
  %VR17 = inttoptr i32 %VR16 to i32 (i32, i32, i32)*
  %VR18 = call i32 (i32, i32, i32)* %VR17(i32 %VR7, i32 %VR4, i32 %VR1)
;; <- dispatch: linia 226
  ret i32 %VR18
;#######################################; <- dispatch_not_void_Lambda_4


}
define i32 @Lambda__substitute(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Lambda_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- cond -
;; -> cond: linia 231
;;if: linia 231 (expresia pentru predicat)
;;%VR3 rezervat pentru rezultatul if-ului
;- cond -- eq -
;; -> eq: linia 231
;- cond -- eq -- object -
;; -> object: linia 231
;; <- object: linia 231
;- cond -- eq -- object -
;; -> object: linia 231
  %VR4 = add i32 %ARG, 12
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
;; <- object: linia 231
  br label %eq_test_join_true_Lambda_0
;#######################################; <- entry


;#######################################; -> eq_test_join_true_Lambda_0
eq_test_join_true_Lambda_0:
  %VR7.0 = icmp eq i32 %VR1,  %VR6
  br i1 %VR7.0, label %eq_test_join_Lambda_0, label %eq_test_join_false_Lambda_0
;#######################################; <- eq_test_join_true_Lambda_0


;#######################################; -> eq_test_join_false_Lambda_0
eq_test_join_false_Lambda_0:
  %VR9 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR6)
  %VR7.1 = icmp eq i32 %VR9,  1
  br label %eq_test_join_Lambda_0
;#######################################; <- eq_test_join_false_Lambda_0


;#######################################; -> eq_test_join_Lambda_0
eq_test_join_Lambda_0:
  %VR7 = phi i1 [ %VR7.0, %eq_test_join_true_Lambda_0 ] , [ %VR7.1, %eq_test_join_false_Lambda_0 ] 
;; <- eq: linia 231
  %VR10 = icmp eq i1 %VR7,  false
  br i1 %VR10, label %false_Lambda_0, label %false_false_Lambda_0
;#######################################; <- eq_test_join_Lambda_0


;#######################################; -> false_false_Lambda_0
false_false_Lambda_0:
;;if: linia 231 (expresia pentru then)
;- cond -- object -
;; -> object: linia 232
;; <- object: linia 232
  br label %join_if_Lambda_0_true
;#######################################; <- false_false_Lambda_0


;#######################################; -> join_if_Lambda_0_true
join_if_Lambda_0_true:
  %VR3.0 = add i32 %ARG, 0
  br label %join_if_Lambda_0
;#######################################; <- join_if_Lambda_0_true


;#######################################; -> false_Lambda_0
false_Lambda_0:
;;if: linia 231 (expresia pentru else)
;- cond -- let -
;; -> let: linia 234
;- cond -- let -- dispatch -
;; -> dispatch: linia 234
;;generez codul pentru apelul metodei substitute
;- cond -- let -- dispatch -- object -
;; -> object: linia 234
;; <- object: linia 234
;- cond -- let -- dispatch -- object -
;; -> object: linia 234
;; <- object: linia 234
;- cond -- let -- dispatch -- object -
;; -> object: linia 234
  %VR11 = add i32 %ARG, 16
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
;; <- object: linia 234
  %VR14 = inttoptr i32 %VR13 to i32*
  %VR15 = icmp eq i32* %VR14,  null
  br i1 %VR15, label %false_dispatch5, label %dispatch_not_void_Lambda_5
;#######################################; <- false_Lambda_0


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__43 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_Lambda_5
dispatch_not_void_Lambda_5:
  %VR16 = ptrtoint i32* %VR14 to i32 
  %VR17 = add i32 %VR16, 8
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
  %VR20 = add i32 %VR19, 36
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
  %VR23 = inttoptr i32 %VR22 to i32 (i32, i32, i32)*
  %VR24 = call i32 (i32, i32, i32)* %VR23(i32 %VR13, i32 %VR1, i32 %VR2)
;; <- dispatch: linia 234
;- cond -- let -- let -
;; -> let: linia 235
;- cond -- let -- let -- new -
;; -> new: linia 235
  %VR25 = call i32  @Object__copy(i32 ptrtoint (%struct.Lambda_protObj_t* @Lambda_protObj to i32))
  call void @Lambda_init(i32 %VR25)
;; <- new: linia 235
;- cond -- let -- let -- dispatch -
;; -> dispatch: linia 236
;;generez codul pentru apelul metodei init
;- cond -- let -- let -- dispatch -- object -
;; -> object: linia 236
  %VR26 = add i32 %ARG, 12
  %VR27 = inttoptr i32 %VR26 to i32*
  %VR28 = load i32* %VR27
;; <- object: linia 236
;- cond -- let -- let -- dispatch -- object -
;; -> object: linia 236
;; <- object: linia 236
;- cond -- let -- let -- dispatch -- object -
;; -> object: linia 236
;; <- object: linia 236
  %VR29 = inttoptr i32 %VR25 to i32*
  %VR30 = icmp eq i32* %VR29,  null
  br i1 %VR30, label %false_dispatch6, label %dispatch_not_void_Lambda_6
;#######################################; <- dispatch_not_void_Lambda_5


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__44 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_Lambda_6
dispatch_not_void_Lambda_6:
  %VR31 = ptrtoint i32* %VR29 to i32 
  %VR32 = add i32 %VR31, 8
  %VR33 = inttoptr i32 %VR32 to i32*
  %VR34 = load i32* %VR33
  %VR35 = add i32 %VR34, 44
  %VR36 = inttoptr i32 %VR35 to i32*
  %VR37 = load i32* %VR36
  %VR38 = inttoptr i32 %VR37 to i32 (i32, i32, i32)*
  %VR39 = call i32 (i32, i32, i32)* %VR38(i32 %VR25, i32 %VR28, i32 %VR24)
;; <- dispatch: linia 236
;; <- let: linia 235
;; <- let: linia 234
  br label %join_if_Lambda_0_false
;#######################################; <- dispatch_not_void_Lambda_6


;#######################################; -> join_if_Lambda_0_false
join_if_Lambda_0_false:
  %VR3.1 = add i32 %VR39, 0
  br label %join_if_Lambda_0
;#######################################; <- join_if_Lambda_0_false


;#######################################; -> join_if_Lambda_0
join_if_Lambda_0:
  %VR3 = phi i32 [ %VR3.0, %join_if_Lambda_0_true ], [ %VR3.1, %join_if_Lambda_0_false ]
;; <- cond: linia 231
  ret i32 %VR3
;#######################################; <- join_if_Lambda_0


}
define i32 @Lambda__gen_code(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Lambda_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- block -
;; -> block: linia 241
;- block -- dispatch -
;; -> dispatch: linia 242
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 242
  %VR3 = ptrtoint %struct.String_protObj_t* @str_const__12 to i32 
;; <- string_const: linia 242
;- block -- dispatch -- object -
;; -> object: linia 242
;; <- object: linia 242
  %VR4 = icmp eq %struct.Lambda_protObj_t* %VR0,  null
  br i1 %VR4, label %false_dispatch7, label %dispatch_not_void_Lambda_7
;#######################################; <- entry


;#######################################; -> false_dispatch7
false_dispatch7:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__45 to i32))
  ret i32 0
;#######################################; <- false_dispatch7


;#######################################; -> dispatch_not_void_Lambda_7
dispatch_not_void_Lambda_7:
  %VR5 = ptrtoint %struct.Lambda_protObj_t* %VR0 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 16
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32, i32)*
  %VR13 = call i32 (i32, i32)* %VR12(i32 %ARG, i32 %VR3)
;; <- dispatch: linia 242
;- block -- dispatch -
;; -> dispatch: linia 243
;;generez codul pentru apelul metodei out_int
;- block -- dispatch -- dispatch -
;; -> dispatch: linia 243
;;generez codul pentru apelul metodei add
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 243
;; <- object: linia 243
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 243
;; <- object: linia 243
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 243
;; <- object: linia 243
  %VR14 = inttoptr i32 %VR2 to i32*
  %VR15 = icmp eq i32* %VR14,  null
  br i1 %VR15, label %false_dispatch8, label %dispatch_not_void_Lambda_8
;#######################################; <- dispatch_not_void_Lambda_7


;#######################################; -> false_dispatch8
false_dispatch8:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__46 to i32))
  ret i32 0
;#######################################; <- false_dispatch8


;#######################################; -> dispatch_not_void_Lambda_8
dispatch_not_void_Lambda_8:
  %VR16 = ptrtoint i32* %VR14 to i32 
  %VR17 = add i32 %VR16, 8
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
  %VR20 = add i32 %VR19, 32
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
  %VR23 = inttoptr i32 %VR22 to i32 (i32, i32, i32)*
  %VR24 = call i32 (i32, i32, i32)* %VR23(i32 %VR2, i32 %VR1, i32 %ARG)
;; <- dispatch: linia 243
;- block -- dispatch -- object -
;; -> object: linia 243
;; <- object: linia 243
  %VR25 = icmp eq %struct.Lambda_protObj_t* %VR0,  null
  br i1 %VR25, label %false_dispatch9, label %dispatch_not_void_Lambda_9
;#######################################; <- dispatch_not_void_Lambda_8


;#######################################; -> false_dispatch9
false_dispatch9:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__46 to i32))
  ret i32 0
;#######################################; <- false_dispatch9


;#######################################; -> dispatch_not_void_Lambda_9
dispatch_not_void_Lambda_9:
  %VR26 = ptrtoint %struct.Lambda_protObj_t* %VR0 to i32 
  %VR27 = add i32 %VR26, 8
  %VR28 = inttoptr i32 %VR27 to i32*
  %VR29 = load i32* %VR28
  %VR30 = add i32 %VR29, 12
  %VR31 = inttoptr i32 %VR30 to i32*
  %VR32 = load i32* %VR31
;boxing to int
  %VR33 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR34 = add i32 %VR33, 12
  %VR35 = inttoptr i32 %VR34 to i32*
  store i32 %VR24, i32* %VR35
  %VR36 = inttoptr i32 %VR32 to i32 (i32, i32)*
  %VR37 = call i32 (i32, i32)* %VR36(i32 %ARG, i32 %VR33)
;; <- dispatch: linia 243
;- block -- dispatch -
;; -> dispatch: linia 244
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 244
  %VR38 = ptrtoint %struct.String_protObj_t* @str_const__13 to i32 
;; <- string_const: linia 244
;- block -- dispatch -- object -
;; -> object: linia 244
;; <- object: linia 244
  %VR39 = icmp eq %struct.Lambda_protObj_t* %VR0,  null
  br i1 %VR39, label %false_dispatch10, label %dispatch_not_void_Lambda_10
;#######################################; <- dispatch_not_void_Lambda_9


;#######################################; -> false_dispatch10
false_dispatch10:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__47 to i32))
  ret i32 0
;#######################################; <- false_dispatch10


;#######################################; -> dispatch_not_void_Lambda_10
dispatch_not_void_Lambda_10:
  %VR40 = ptrtoint %struct.Lambda_protObj_t* %VR0 to i32 
  %VR41 = add i32 %VR40, 8
  %VR42 = inttoptr i32 %VR41 to i32*
  %VR43 = load i32* %VR42
  %VR44 = add i32 %VR43, 16
  %VR45 = inttoptr i32 %VR44 to i32*
  %VR46 = load i32* %VR45
  %VR47 = inttoptr i32 %VR46 to i32 (i32, i32)*
  %VR48 = call i32 (i32, i32)* %VR47(i32 %ARG, i32 %VR38)
;; <- dispatch: linia 244
;- block -- cond -
;; -> cond: linia 245
;;if: linia 245 (expresia pentru predicat)
;;%VR49 rezervat pentru rezultatul if-ului
;- block -- cond -- dispatch -
;; -> dispatch: linia 245
;;generez codul pentru apelul metodei isNil
;- block -- cond -- dispatch -- object -
;; -> object: linia 245
;; <- object: linia 245
  %VR50 = inttoptr i32 %VR1 to i32*
  %VR51 = icmp eq i32* %VR50,  null
  br i1 %VR51, label %false_dispatch11, label %dispatch_not_void_Lambda_11
;#######################################; <- dispatch_not_void_Lambda_10


;#######################################; -> false_dispatch11
false_dispatch11:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__48 to i32))
  ret i32 0
;#######################################; <- false_dispatch11


;#######################################; -> dispatch_not_void_Lambda_11
dispatch_not_void_Lambda_11:
  %VR52 = ptrtoint i32* %VR50 to i32 
  %VR53 = add i32 %VR52, 8
  %VR54 = inttoptr i32 %VR53 to i32*
  %VR55 = load i32* %VR54
  %VR56 = add i32 %VR55, 28
  %VR57 = inttoptr i32 %VR56 to i32*
  %VR58 = load i32* %VR57
  %VR59 = inttoptr i32 %VR58 to i32 (i32)*
  %VR60 = call i32 (i32)* %VR59(i32 %VR1)
;; <- dispatch: linia 245
  %VR61 = icmp eq i32 %VR60,  0
  br i1 %VR61, label %false_Lambda_1, label %false_false_Lambda_1
;#######################################; <- dispatch_not_void_Lambda_11


;#######################################; -> false_false_Lambda_1
false_false_Lambda_1:
;;if: linia 245 (expresia pentru then)
;- block -- cond -- dispatch -
;; -> dispatch: linia 246
;;generez codul pentru apelul metodei out_string
;- block -- cond -- dispatch -- string_const -
;; -> string_const: linia 246
  %VR62 = ptrtoint %struct.String_protObj_t* @str_const__14 to i32 
;; <- string_const: linia 246
;- block -- cond -- dispatch -- object -
;; -> object: linia 246
;; <- object: linia 246
  %VR63 = icmp eq %struct.Lambda_protObj_t* %VR0,  null
  br i1 %VR63, label %false_dispatch12, label %dispatch_not_void_Lambda_12
;#######################################; <- false_false_Lambda_1


;#######################################; -> false_dispatch12
false_dispatch12:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__49 to i32))
  ret i32 0
;#######################################; <- false_dispatch12


;#######################################; -> dispatch_not_void_Lambda_12
dispatch_not_void_Lambda_12:
  %VR64 = ptrtoint %struct.Lambda_protObj_t* %VR0 to i32 
  %VR65 = add i32 %VR64, 8
  %VR66 = inttoptr i32 %VR65 to i32*
  %VR67 = load i32* %VR66
  %VR68 = add i32 %VR67, 16
  %VR69 = inttoptr i32 %VR68 to i32*
  %VR70 = load i32* %VR69
  %VR71 = inttoptr i32 %VR70 to i32 (i32, i32)*
  %VR72 = call i32 (i32, i32)* %VR71(i32 %ARG, i32 %VR62)
;; <- dispatch: linia 246
  br label %join_if_Lambda_1_true
;#######################################; <- dispatch_not_void_Lambda_12


;#######################################; -> join_if_Lambda_1_true
join_if_Lambda_1_true:
  %VR49.0 = add i32 %VR72, 0
  br label %join_if_Lambda_1
;#######################################; <- join_if_Lambda_1_true


;#######################################; -> false_Lambda_1
false_Lambda_1:
;;if: linia 245 (expresia pentru else)
;- block -- cond -- dispatch -
;; -> dispatch: linia 248
;;generez codul pentru apelul metodei out_string
;- block -- cond -- dispatch -- string_const -
;; -> string_const: linia 248
  %VR73 = ptrtoint %struct.String_protObj_t* @str_const__15 to i32 
;; <- string_const: linia 248
;- block -- cond -- dispatch -- object -
;; -> object: linia 248
;; <- object: linia 248
  %VR74 = icmp eq %struct.Lambda_protObj_t* %VR0,  null
  br i1 %VR74, label %false_dispatch13, label %dispatch_not_void_Lambda_13
;#######################################; <- false_Lambda_1


;#######################################; -> false_dispatch13
false_dispatch13:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__50 to i32))
  ret i32 0
;#######################################; <- false_dispatch13


;#######################################; -> dispatch_not_void_Lambda_13
dispatch_not_void_Lambda_13:
  %VR75 = ptrtoint %struct.Lambda_protObj_t* %VR0 to i32 
  %VR76 = add i32 %VR75, 8
  %VR77 = inttoptr i32 %VR76 to i32*
  %VR78 = load i32* %VR77
  %VR79 = add i32 %VR78, 16
  %VR80 = inttoptr i32 %VR79 to i32*
  %VR81 = load i32* %VR80
  %VR82 = inttoptr i32 %VR81 to i32 (i32, i32)*
  %VR83 = call i32 (i32, i32)* %VR82(i32 %ARG, i32 %VR73)
;; <- dispatch: linia 248
  br label %join_if_Lambda_1_false
;#######################################; <- dispatch_not_void_Lambda_13


;#######################################; -> join_if_Lambda_1_false
join_if_Lambda_1_false:
  %VR49.1 = add i32 %VR83, 0
  br label %join_if_Lambda_1
;#######################################; <- join_if_Lambda_1_false


;#######################################; -> join_if_Lambda_1
join_if_Lambda_1:
  %VR49 = phi i32 [ %VR49.0, %join_if_Lambda_1_true ], [ %VR49.1, %join_if_Lambda_1_false ]
;; <- cond: linia 245
;- block -- object -
;; -> object: linia 249
;; <- object: linia 249
;; <- block: linia 241
  ret i32 %ARG
;#######################################; <- join_if_Lambda_1


}
define i32 @Lambda__gen_closure_code(i32 %ARG, i32 %ARG0, i32 %ARG1, i32 %ARG2)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Lambda_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
  %VR3 = add i32 %ARG2, 0
;- block -
;; -> block: linia 255
;- block -- dispatch -
;; -> dispatch: linia 256
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 256
  %VR4 = ptrtoint %struct.String_protObj_t* @str_const__16 to i32 
;; <- string_const: linia 256
;- block -- dispatch -- object -
;; -> object: linia 256
;; <- object: linia 256
  %VR5 = icmp eq %struct.Lambda_protObj_t* %VR0,  null
  br i1 %VR5, label %false_dispatch14, label %dispatch_not_void_Lambda_14
;#######################################; <- entry


;#######################################; -> false_dispatch14
false_dispatch14:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__51 to i32))
  ret i32 0
;#######################################; <- false_dispatch14


;#######################################; -> dispatch_not_void_Lambda_14
dispatch_not_void_Lambda_14:
  %VR6 = ptrtoint %struct.Lambda_protObj_t* %VR0 to i32 
  %VR7 = add i32 %VR6, 8
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = add i32 %VR9, 16
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = inttoptr i32 %VR12 to i32 (i32, i32)*
  %VR14 = call i32 (i32, i32)* %VR13(i32 %ARG, i32 %VR4)
;; <- dispatch: linia 256
;- block -- dispatch -
;; -> dispatch: linia 257
;;generez codul pentru apelul metodei out_int
;- block -- dispatch -- object -
;; -> object: linia 257
;; <- object: linia 257
;- block -- dispatch -- object -
;; -> object: linia 257
;; <- object: linia 257
  %VR15 = icmp eq %struct.Lambda_protObj_t* %VR0,  null
  br i1 %VR15, label %false_dispatch15, label %dispatch_not_void_Lambda_15
;#######################################; <- dispatch_not_void_Lambda_14


;#######################################; -> false_dispatch15
false_dispatch15:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__52 to i32))
  ret i32 0
;#######################################; <- false_dispatch15


;#######################################; -> dispatch_not_void_Lambda_15
dispatch_not_void_Lambda_15:
  %VR16 = ptrtoint %struct.Lambda_protObj_t* %VR0 to i32 
  %VR17 = add i32 %VR16, 8
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
  %VR20 = add i32 %VR19, 12
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
;boxing to int
  %VR23 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR24 = add i32 %VR23, 12
  %VR25 = inttoptr i32 %VR24 to i32*
  store i32 %VR1, i32* %VR25
  %VR26 = inttoptr i32 %VR22 to i32 (i32, i32)*
  %VR27 = call i32 (i32, i32)* %VR26(i32 %ARG, i32 %VR23)
;; <- dispatch: linia 257
;- block -- dispatch -
;; -> dispatch: linia 258
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 258
  %VR28 = ptrtoint %struct.String_protObj_t* @str_const__17 to i32 
;; <- string_const: linia 258
;- block -- dispatch -- object -
;; -> object: linia 258
;; <- object: linia 258
  %VR29 = icmp eq %struct.Lambda_protObj_t* %VR0,  null
  br i1 %VR29, label %false_dispatch16, label %dispatch_not_void_Lambda_16
;#######################################; <- dispatch_not_void_Lambda_15


;#######################################; -> false_dispatch16
false_dispatch16:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__53 to i32))
  ret i32 0
;#######################################; <- false_dispatch16


;#######################################; -> dispatch_not_void_Lambda_16
dispatch_not_void_Lambda_16:
  %VR30 = ptrtoint %struct.Lambda_protObj_t* %VR0 to i32 
  %VR31 = add i32 %VR30, 8
  %VR32 = inttoptr i32 %VR31 to i32*
  %VR33 = load i32* %VR32
  %VR34 = add i32 %VR33, 16
  %VR35 = inttoptr i32 %VR34 to i32*
  %VR36 = load i32* %VR35
  %VR37 = inttoptr i32 %VR36 to i32 (i32, i32)*
  %VR38 = call i32 (i32, i32)* %VR37(i32 %ARG, i32 %VR28)
;; <- dispatch: linia 258
;- block -- dispatch -
;; -> dispatch: linia 259
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 259
  %VR39 = ptrtoint %struct.String_protObj_t* @str_const__18 to i32 
;; <- string_const: linia 259
;- block -- dispatch -- object -
;; -> object: linia 259
;; <- object: linia 259
  %VR40 = icmp eq %struct.Lambda_protObj_t* %VR0,  null
  br i1 %VR40, label %false_dispatch17, label %dispatch_not_void_Lambda_17
;#######################################; <- dispatch_not_void_Lambda_16


;#######################################; -> false_dispatch17
false_dispatch17:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__54 to i32))
  ret i32 0
;#######################################; <- false_dispatch17


;#######################################; -> dispatch_not_void_Lambda_17
dispatch_not_void_Lambda_17:
  %VR41 = ptrtoint %struct.Lambda_protObj_t* %VR0 to i32 
  %VR42 = add i32 %VR41, 8
  %VR43 = inttoptr i32 %VR42 to i32*
  %VR44 = load i32* %VR43
  %VR45 = add i32 %VR44, 16
  %VR46 = inttoptr i32 %VR45 to i32*
  %VR47 = load i32* %VR46
  %VR48 = inttoptr i32 %VR47 to i32 (i32, i32)*
  %VR49 = call i32 (i32, i32)* %VR48(i32 %ARG, i32 %VR39)
;; <- dispatch: linia 259
;- block -- dispatch -
;; -> dispatch: linia 260
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 260
  %VR50 = ptrtoint %struct.String_protObj_t* @str_const__19 to i32 
;; <- string_const: linia 260
;- block -- dispatch -- object -
;; -> object: linia 260
;; <- object: linia 260
  %VR51 = icmp eq %struct.Lambda_protObj_t* %VR0,  null
  br i1 %VR51, label %false_dispatch18, label %dispatch_not_void_Lambda_18
;#######################################; <- dispatch_not_void_Lambda_17


;#######################################; -> false_dispatch18
false_dispatch18:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__55 to i32))
  ret i32 0
;#######################################; <- false_dispatch18


;#######################################; -> dispatch_not_void_Lambda_18
dispatch_not_void_Lambda_18:
  %VR52 = ptrtoint %struct.Lambda_protObj_t* %VR0 to i32 
  %VR53 = add i32 %VR52, 8
  %VR54 = inttoptr i32 %VR53 to i32*
  %VR55 = load i32* %VR54
  %VR56 = add i32 %VR55, 16
  %VR57 = inttoptr i32 %VR56 to i32*
  %VR58 = load i32* %VR57
  %VR59 = inttoptr i32 %VR58 to i32 (i32, i32)*
  %VR60 = call i32 (i32, i32)* %VR59(i32 %ARG, i32 %VR50)
;; <- dispatch: linia 260
;- block -- dispatch -
;; -> dispatch: linia 261
;;generez codul pentru apelul metodei out_int
;- block -- dispatch -- object -
;; -> object: linia 261
;; <- object: linia 261
;- block -- dispatch -- object -
;; -> object: linia 261
;; <- object: linia 261
  %VR61 = icmp eq %struct.Lambda_protObj_t* %VR0,  null
  br i1 %VR61, label %false_dispatch19, label %dispatch_not_void_Lambda_19
;#######################################; <- dispatch_not_void_Lambda_18


;#######################################; -> false_dispatch19
false_dispatch19:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__56 to i32))
  ret i32 0
;#######################################; <- false_dispatch19


;#######################################; -> dispatch_not_void_Lambda_19
dispatch_not_void_Lambda_19:
  %VR62 = ptrtoint %struct.Lambda_protObj_t* %VR0 to i32 
  %VR63 = add i32 %VR62, 8
  %VR64 = inttoptr i32 %VR63 to i32*
  %VR65 = load i32* %VR64
  %VR66 = add i32 %VR65, 12
  %VR67 = inttoptr i32 %VR66 to i32*
  %VR68 = load i32* %VR67
;boxing to int
  %VR69 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR70 = add i32 %VR69, 12
  %VR71 = inttoptr i32 %VR70 to i32*
  store i32 %VR1, i32* %VR71
  %VR72 = inttoptr i32 %VR68 to i32 (i32, i32)*
  %VR73 = call i32 (i32, i32)* %VR72(i32 %ARG, i32 %VR69)
;; <- dispatch: linia 261
;- block -- dispatch -
;; -> dispatch: linia 262
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 262
  %VR74 = ptrtoint %struct.String_protObj_t* @str_const__20 to i32 
;; <- string_const: linia 262
;- block -- dispatch -- object -
;; -> object: linia 262
;; <- object: linia 262
  %VR75 = icmp eq %struct.Lambda_protObj_t* %VR0,  null
  br i1 %VR75, label %false_dispatch20, label %dispatch_not_void_Lambda_20
;#######################################; <- dispatch_not_void_Lambda_19


;#######################################; -> false_dispatch20
false_dispatch20:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__57 to i32))
  ret i32 0
;#######################################; <- false_dispatch20


;#######################################; -> dispatch_not_void_Lambda_20
dispatch_not_void_Lambda_20:
  %VR76 = ptrtoint %struct.Lambda_protObj_t* %VR0 to i32 
  %VR77 = add i32 %VR76, 8
  %VR78 = inttoptr i32 %VR77 to i32*
  %VR79 = load i32* %VR78
  %VR80 = add i32 %VR79, 16
  %VR81 = inttoptr i32 %VR80 to i32*
  %VR82 = load i32* %VR81
  %VR83 = inttoptr i32 %VR82 to i32 (i32, i32)*
  %VR84 = call i32 (i32, i32)* %VR83(i32 %ARG, i32 %VR74)
;; <- dispatch: linia 262
;- block -- dispatch -
;; -> dispatch: linia 263
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 263
  %VR85 = ptrtoint %struct.String_protObj_t* @str_const__21 to i32 
;; <- string_const: linia 263
;- block -- dispatch -- object -
;; -> object: linia 263
;; <- object: linia 263
  %VR86 = icmp eq %struct.Lambda_protObj_t* %VR0,  null
  br i1 %VR86, label %false_dispatch21, label %dispatch_not_void_Lambda_21
;#######################################; <- dispatch_not_void_Lambda_20


;#######################################; -> false_dispatch21
false_dispatch21:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__58 to i32))
  ret i32 0
;#######################################; <- false_dispatch21


;#######################################; -> dispatch_not_void_Lambda_21
dispatch_not_void_Lambda_21:
  %VR87 = ptrtoint %struct.Lambda_protObj_t* %VR0 to i32 
  %VR88 = add i32 %VR87, 8
  %VR89 = inttoptr i32 %VR88 to i32*
  %VR90 = load i32* %VR89
  %VR91 = add i32 %VR90, 16
  %VR92 = inttoptr i32 %VR91 to i32*
  %VR93 = load i32* %VR92
  %VR94 = inttoptr i32 %VR93 to i32 (i32, i32)*
  %VR95 = call i32 (i32, i32)* %VR94(i32 %ARG, i32 %VR85)
;; <- dispatch: linia 263
;- block -- dispatch -
;; -> dispatch: linia 264
;;generez codul pentru apelul metodei gen_code
;- block -- dispatch -- dispatch -
;; -> dispatch: linia 264
;;generez codul pentru apelul metodei add
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 264
  %VR96 = add i32 %ARG, 12
  %VR97 = inttoptr i32 %VR96 to i32*
  %VR98 = load i32* %VR97
;; <- object: linia 264
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 264
;; <- object: linia 264
  %VR99 = inttoptr i32 %VR2 to i32*
  %VR100 = icmp eq i32* %VR99,  null
  br i1 %VR100, label %false_dispatch22, label %dispatch_not_void_Lambda_22
;#######################################; <- dispatch_not_void_Lambda_21


;#######################################; -> false_dispatch22
false_dispatch22:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__59 to i32))
  ret i32 0
;#######################################; <- false_dispatch22


;#######################################; -> dispatch_not_void_Lambda_22
dispatch_not_void_Lambda_22:
  %VR101 = ptrtoint i32* %VR99 to i32 
  %VR102 = add i32 %VR101, 8
  %VR103 = inttoptr i32 %VR102 to i32*
  %VR104 = load i32* %VR103
  %VR105 = add i32 %VR104, 40
  %VR106 = inttoptr i32 %VR105 to i32*
  %VR107 = load i32* %VR106
  %VR108 = inttoptr i32 %VR107 to i32 (i32, i32)*
  %VR109 = call i32 (i32, i32)* %VR108(i32 %VR2, i32 %VR98)
;; <- dispatch: linia 264
;- block -- dispatch -- object -
;; -> object: linia 264
;; <- object: linia 264
;- block -- dispatch -- object -
;; -> object: linia 264
  %VR110 = add i32 %ARG, 16
  %VR111 = inttoptr i32 %VR110 to i32*
  %VR112 = load i32* %VR111
;; <- object: linia 264
  %VR113 = inttoptr i32 %VR112 to i32*
  %VR114 = icmp eq i32* %VR113,  null
  br i1 %VR114, label %false_dispatch23, label %dispatch_not_void_Lambda_23
;#######################################; <- dispatch_not_void_Lambda_22


;#######################################; -> false_dispatch23
false_dispatch23:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__59 to i32))
  ret i32 0
;#######################################; <- false_dispatch23


;#######################################; -> dispatch_not_void_Lambda_23
dispatch_not_void_Lambda_23:
  %VR115 = ptrtoint i32* %VR113 to i32 
  %VR116 = add i32 %VR115, 8
  %VR117 = inttoptr i32 %VR116 to i32*
  %VR118 = load i32* %VR117
  %VR119 = add i32 %VR118, 40
  %VR120 = inttoptr i32 %VR119 to i32*
  %VR121 = load i32* %VR120
  %VR122 = inttoptr i32 %VR121 to i32 (i32, i32, i32)*
  %VR123 = call i32 (i32, i32, i32)* %VR122(i32 %VR112, i32 %VR109, i32 %VR3)
;; <- dispatch: linia 264
;- block -- dispatch -
;; -> dispatch: linia 265
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 265
  %VR124 = ptrtoint %struct.String_protObj_t* @str_const__22 to i32 
;; <- string_const: linia 265
;- block -- dispatch -- object -
;; -> object: linia 265
;; <- object: linia 265
  %VR125 = icmp eq %struct.Lambda_protObj_t* %VR0,  null
  br i1 %VR125, label %false_dispatch24, label %dispatch_not_void_Lambda_24
;#######################################; <- dispatch_not_void_Lambda_23


;#######################################; -> false_dispatch24
false_dispatch24:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__60 to i32))
  ret i32 0
;#######################################; <- false_dispatch24


;#######################################; -> dispatch_not_void_Lambda_24
dispatch_not_void_Lambda_24:
  %VR126 = ptrtoint %struct.Lambda_protObj_t* %VR0 to i32 
  %VR127 = add i32 %VR126, 8
  %VR128 = inttoptr i32 %VR127 to i32*
  %VR129 = load i32* %VR128
  %VR130 = add i32 %VR129, 16
  %VR131 = inttoptr i32 %VR130 to i32*
  %VR132 = load i32* %VR131
  %VR133 = inttoptr i32 %VR132 to i32 (i32, i32)*
  %VR134 = call i32 (i32, i32)* %VR133(i32 %ARG, i32 %VR124)
;; <- dispatch: linia 265
;- block -- dispatch -
;; -> dispatch: linia 266
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 266
  %VR135 = ptrtoint %struct.String_protObj_t* @str_const__23 to i32 
;; <- string_const: linia 266
;- block -- dispatch -- object -
;; -> object: linia 266
;; <- object: linia 266
  %VR136 = icmp eq %struct.Lambda_protObj_t* %VR0,  null
  br i1 %VR136, label %false_dispatch25, label %dispatch_not_void_Lambda_25
;#######################################; <- dispatch_not_void_Lambda_24


;#######################################; -> false_dispatch25
false_dispatch25:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__61 to i32))
  ret i32 0
;#######################################; <- false_dispatch25


;#######################################; -> dispatch_not_void_Lambda_25
dispatch_not_void_Lambda_25:
  %VR137 = ptrtoint %struct.Lambda_protObj_t* %VR0 to i32 
  %VR138 = add i32 %VR137, 8
  %VR139 = inttoptr i32 %VR138 to i32*
  %VR140 = load i32* %VR139
  %VR141 = add i32 %VR140, 16
  %VR142 = inttoptr i32 %VR141 to i32*
  %VR143 = load i32* %VR142
  %VR144 = inttoptr i32 %VR143 to i32 (i32, i32)*
  %VR145 = call i32 (i32, i32)* %VR144(i32 %ARG, i32 %VR135)
;; <- dispatch: linia 266
;; <- block: linia 255
  ret i32 %VR145
;#######################################; <- dispatch_not_void_Lambda_25


}
define void @App_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Expr_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @App__init(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.App_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- block -
;; -> block: linia 279
;- block -- assign -
;; -> assign: linia 280
;- block -- assign -- object -
;; -> object: linia 280
;; <- object: linia 280
  %VR3 = add i32 %ARG, 12
  %VR4 = inttoptr i32 %VR3 to i32*
  store i32 %VR1, i32* %VR4
;; <- assign: linia 280
;- block -- assign -
;; -> assign: linia 281
;- block -- assign -- object -
;; -> object: linia 281
;; <- object: linia 281
  %VR5 = add i32 %ARG, 16
  %VR6 = inttoptr i32 %VR5 to i32*
  store i32 %VR2, i32* %VR6
;; <- assign: linia 281
;- block -- object -
;; -> object: linia 282
;; <- object: linia 282
;; <- block: linia 279
  ret i32 %ARG
;#######################################; <- entry


}
define i32 @App__print_self(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.App_protObj_t*
;- block -
;; -> block: linia 287
;- block -- dispatch -
;; -> dispatch: linia 288
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 288
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__24 to i32 
;; <- string_const: linia 288
;- block -- dispatch -- object -
;; -> object: linia 288
;; <- object: linia 288
  %VR2 = icmp eq %struct.App_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch0, label %dispatch_not_void_App_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__62 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_App_0
dispatch_not_void_App_0:
  %VR3 = ptrtoint %struct.App_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 16
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 288
;- block -- dispatch -
;; -> dispatch: linia 289
;;generez codul pentru apelul metodei print_self
;- block -- dispatch -- object -
;; -> object: linia 289
  %VR12 = add i32 %ARG, 12
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
;; <- object: linia 289
  %VR15 = inttoptr i32 %VR14 to i32*
  %VR16 = icmp eq i32* %VR15,  null
  br i1 %VR16, label %false_dispatch1, label %dispatch_not_void_App_1
;#######################################; <- dispatch_not_void_App_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__63 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_App_1
dispatch_not_void_App_1:
  %VR17 = ptrtoint i32* %VR15 to i32 
  %VR18 = add i32 %VR17, 8
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
  %VR21 = add i32 %VR20, 28
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = load i32* %VR22
  %VR24 = inttoptr i32 %VR23 to i32 (i32)*
  %VR25 = call i32 (i32)* %VR24(i32 %VR14)
;; <- dispatch: linia 289
;- block -- dispatch -
;; -> dispatch: linia 290
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 290
  %VR26 = ptrtoint %struct.String_protObj_t* @str_const__25 to i32 
;; <- string_const: linia 290
;- block -- dispatch -- object -
;; -> object: linia 290
;; <- object: linia 290
  %VR27 = icmp eq %struct.App_protObj_t* %VR0,  null
  br i1 %VR27, label %false_dispatch2, label %dispatch_not_void_App_2
;#######################################; <- dispatch_not_void_App_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__64 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_App_2
dispatch_not_void_App_2:
  %VR28 = ptrtoint %struct.App_protObj_t* %VR0 to i32 
  %VR29 = add i32 %VR28, 8
  %VR30 = inttoptr i32 %VR29 to i32*
  %VR31 = load i32* %VR30
  %VR32 = add i32 %VR31, 16
  %VR33 = inttoptr i32 %VR32 to i32*
  %VR34 = load i32* %VR33
  %VR35 = inttoptr i32 %VR34 to i32 (i32, i32)*
  %VR36 = call i32 (i32, i32)* %VR35(i32 %ARG, i32 %VR26)
;; <- dispatch: linia 290
;- block -- dispatch -
;; -> dispatch: linia 291
;;generez codul pentru apelul metodei print_self
;- block -- dispatch -- object -
;; -> object: linia 291
  %VR37 = add i32 %ARG, 16
  %VR38 = inttoptr i32 %VR37 to i32*
  %VR39 = load i32* %VR38
;; <- object: linia 291
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = icmp eq i32* %VR40,  null
  br i1 %VR41, label %false_dispatch3, label %dispatch_not_void_App_3
;#######################################; <- dispatch_not_void_App_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__65 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_App_3
dispatch_not_void_App_3:
  %VR42 = ptrtoint i32* %VR40 to i32 
  %VR43 = add i32 %VR42, 8
  %VR44 = inttoptr i32 %VR43 to i32*
  %VR45 = load i32* %VR44
  %VR46 = add i32 %VR45, 28
  %VR47 = inttoptr i32 %VR46 to i32*
  %VR48 = load i32* %VR47
  %VR49 = inttoptr i32 %VR48 to i32 (i32)*
  %VR50 = call i32 (i32)* %VR49(i32 %VR39)
;; <- dispatch: linia 291
;- block -- dispatch -
;; -> dispatch: linia 292
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 292
  %VR51 = ptrtoint %struct.String_protObj_t* @str_const__26 to i32 
;; <- string_const: linia 292
;- block -- dispatch -- object -
;; -> object: linia 292
;; <- object: linia 292
  %VR52 = icmp eq %struct.App_protObj_t* %VR0,  null
  br i1 %VR52, label %false_dispatch4, label %dispatch_not_void_App_4
;#######################################; <- dispatch_not_void_App_3


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__66 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_App_4
dispatch_not_void_App_4:
  %VR53 = ptrtoint %struct.App_protObj_t* %VR0 to i32 
  %VR54 = add i32 %VR53, 8
  %VR55 = inttoptr i32 %VR54 to i32*
  %VR56 = load i32* %VR55
  %VR57 = add i32 %VR56, 16
  %VR58 = inttoptr i32 %VR57 to i32*
  %VR59 = load i32* %VR58
  %VR60 = inttoptr i32 %VR59 to i32 (i32, i32)*
  %VR61 = call i32 (i32, i32)* %VR60(i32 %ARG, i32 %VR51)
;; <- dispatch: linia 292
;- block -- object -
;; -> object: linia 293
;; <- object: linia 293
;; <- block: linia 287
  ret i32 %ARG
;#######################################; <- dispatch_not_void_App_4


}
define i32 @App__beta(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.App_protObj_t*
;- typcase -
;; -> typcase: linia 298
;- typcase -- object -
;; -> object: linia 298
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 298
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_typcase00, label %case_not_void_App_0
;#######################################; <- entry


;#######################################; -> false_typcase00
false_typcase00:
  call void @_case_abort2(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__67 to i32))
  ret i32 0
;#######################################; <- false_typcase00


;#######################################; -> case_not_void_App_0
case_not_void_App_0:
;;rezerv %VR6 pentru rezultatul case-ului
  %VR7 = ptrtoint i32* %VR4 to i32 
  %VR8 = add i32 %VR7, 0
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = icmp eq i32 %VR10,  0
  br i1 %VR11, label %case_0_noAlternativeApp_0, label %next0_case_0_noAlternativeApp_0
;#######################################; <- case_not_void_App_0


;#######################################; -> next0_case_0_noAlternativeApp_0
next0_case_0_noAlternativeApp_0:
  %VR12 = icmp eq i32 %VR10,  1
  br i1 %VR12, label %case_0_noAlternativeApp_0, label %next1_case_0_noAlternativeApp_0
;#######################################; <- next0_case_0_noAlternativeApp_0


;#######################################; -> next1_case_0_noAlternativeApp_0
next1_case_0_noAlternativeApp_0:
  %VR13 = icmp eq i32 %VR10,  2
  br i1 %VR13, label %case_0_noAlternativeApp_0, label %next2_case_0_noAlternativeApp_0
;#######################################; <- next1_case_0_noAlternativeApp_0


;#######################################; -> next2_case_0_noAlternativeApp_0
next2_case_0_noAlternativeApp_0:
  %VR14 = icmp eq i32 %VR10,  3
  br i1 %VR14, label %case_0_noAlternativeApp_0, label %next3_case_0_noAlternativeApp_0
;#######################################; <- next2_case_0_noAlternativeApp_0


;#######################################; -> next3_case_0_noAlternativeApp_0
next3_case_0_noAlternativeApp_0:
  %VR15 = icmp eq i32 %VR10,  4
  br i1 %VR15, label %case_0_noAlternativeApp_0, label %next4_case_0_noAlternativeApp_0
;#######################################; <- next3_case_0_noAlternativeApp_0


;#######################################; -> next4_case_0_noAlternativeApp_0
next4_case_0_noAlternativeApp_0:
  %VR16 = icmp eq i32 %VR10,  5
  br i1 %VR16, label %case_0_noAlternativeApp_0, label %next5_case_0_noAlternativeApp_0
;#######################################; <- next4_case_0_noAlternativeApp_0


;#######################################; -> next5_case_0_noAlternativeApp_0
next5_case_0_noAlternativeApp_0:
  %VR17 = icmp eq i32 %VR10,  6
  br i1 %VR17, label %case_0_noAlternativeApp_0, label %next6_case_0_noAlternativeApp_0
;#######################################; <- next5_case_0_noAlternativeApp_0


;#######################################; -> next6_case_0_noAlternativeApp_0
next6_case_0_noAlternativeApp_0:
  %VR18 = icmp eq i32 %VR10,  7
  br i1 %VR18, label %case_0_noAlternativeApp_0, label %next7_case_0_noAlternativeApp_0
;#######################################; <- next6_case_0_noAlternativeApp_0


;#######################################; -> next7_case_0_noAlternativeApp_0
next7_case_0_noAlternativeApp_0:
  %VR19 = icmp eq i32 %VR10,  8
  br i1 %VR19, label %case_0_noAlternativeApp_0, label %next8_case_0_noAlternativeApp_0
;#######################################; <- next7_case_0_noAlternativeApp_0


;#######################################; -> next8_case_0_noAlternativeApp_0
next8_case_0_noAlternativeApp_0:
  %VR20 = icmp eq i32 %VR10,  9
  br i1 %VR20, label %case_0_noAlternativeApp_0, label %next9_case_0_noAlternativeApp_0
;#######################################; <- next8_case_0_noAlternativeApp_0


;#######################################; -> next9_case_0_noAlternativeApp_0
next9_case_0_noAlternativeApp_0:
  %VR21 = icmp eq i32 %VR10,  10
  br i1 %VR21, label %case_Expr__App_0, label %next10_case_Expr__App_0
;#######################################; <- next9_case_0_noAlternativeApp_0


;#######################################; -> next10_case_Expr__App_0
next10_case_Expr__App_0:
  %VR22 = icmp eq i32 %VR10,  11
  br i1 %VR22, label %case_Expr__App_0, label %next11_case_Expr__App_0
;#######################################; <- next10_case_Expr__App_0


;#######################################; -> next11_case_Expr__App_0
next11_case_Expr__App_0:
  %VR23 = icmp eq i32 %VR10,  12
  br i1 %VR23, label %case_Lambda__App_0, label %next12_case_Lambda__App_0
;#######################################; <- next11_case_Expr__App_0


;#######################################; -> next12_case_Lambda__App_0
next12_case_Lambda__App_0:
  %VR24 = icmp eq i32 %VR10,  13
  br i1 %VR24, label %case_Expr__App_0, label %next13_case_Expr__App_0
;#######################################; <- next12_case_Lambda__App_0


;#######################################; -> next13_case_Expr__App_0
next13_case_Expr__App_0:
  %VR25 = icmp eq i32 %VR10,  14
  br i1 %VR25, label %case_0_noAlternativeApp_0, label %next14_case_0_noAlternativeApp_0
;#######################################; <- next13_case_Expr__App_0


;#######################################; -> next14_case_0_noAlternativeApp_0
next14_case_0_noAlternativeApp_0:
  %VR26 = icmp eq i32 %VR10,  15
  br i1 %VR26, label %case_0_noAlternativeApp_0, label %next15_case_0_noAlternativeApp_0
;#######################################; <- next14_case_0_noAlternativeApp_0


;#######################################; -> next15_case_0_noAlternativeApp_0
next15_case_0_noAlternativeApp_0:
  br label %case_Lambda__App_0
;#######################################; <- next15_case_0_noAlternativeApp_0


;#######################################; -> case_Lambda__App_0
case_Lambda__App_0:
  %VR27 = call i32  @Object__copy(i32 %VR7)
  %VR28 = add i32 12, 0
  %VR29 = ptrtoint %struct.Lambda_protObj_t* @Lambda_protObj to i32 
  %VR30 = add i32 %VR29, 8
  %VR31 = inttoptr i32 %VR30 to i32*
  %VR32 = load i32* %VR31
  %VR33 = add i32 %VR27, 0
  %VR34 = inttoptr i32 %VR33 to i32*
  store i32 %VR28, i32* %VR34
  %VR35 = add i32 %VR27, 0
  %VR36 = inttoptr i32 %VR35 to i32*
  store i32 %VR32, i32* %VR36
  %VR37 = add i32 %VR27, 0
  %VR38 = inttoptr i32 %VR37 to i32*
  %VR39 = load i32* %VR38
  %VR40 = icmp eq i32 %VR39,  1
  br i1 %VR40, label %typcase_ok_App_01, label %unboxing_0_App_0
;#######################################; <- case_Lambda__App_0


;#######################################; -> typcase_ok_App_01
typcase_ok_App_01:
  %VR41 = icmp eq i32 %VR39,  2
  br i1 %VR41, label %typcase_ok_App_02, label %unboxing_0_App_0
;#######################################; <- typcase_ok_App_01


;#######################################; -> typcase_ok_App_02
typcase_ok_App_02:
  br label %after_unbox_0_App_0
;#######################################; <- typcase_ok_App_02


;#######################################; -> unboxing_0_App_0
unboxing_0_App_0:
  %VR42 = add i32 %VR27, 12
  %VR43 = inttoptr i32 %VR42 to i32*
  %VR44 = load i32* %VR43
  br label %after_unbox_0_App_0
;#######################################; <- unboxing_0_App_0


;#######################################; -> after_unbox_0_App_0
after_unbox_0_App_0:
;- typcase -- dispatch -
;; -> dispatch: linia 299
;;generez codul pentru apelul metodei apply
;- typcase -- dispatch -- object -
;; -> object: linia 299
  %VR45 = add i32 %ARG, 16
  %VR46 = inttoptr i32 %VR45 to i32*
  %VR47 = load i32* %VR46
;; <- object: linia 299
;- typcase -- dispatch -- object -
;; -> object: linia 299
;; <- object: linia 299
  %VR48 = inttoptr i32 %VR7 to i32*
  %VR49 = icmp eq i32* %VR48,  null
  br i1 %VR49, label %false_dispatch5, label %dispatch_not_void_App_5
;#######################################; <- after_unbox_0_App_0


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__68 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_App_5
dispatch_not_void_App_5:
  %VR50 = ptrtoint i32* %VR48 to i32 
  %VR51 = add i32 %VR50, 8
  %VR52 = inttoptr i32 %VR51 to i32*
  %VR53 = load i32* %VR52
  %VR54 = add i32 %VR53, 48
  %VR55 = inttoptr i32 %VR54 to i32*
  %VR56 = load i32* %VR55
  %VR57 = inttoptr i32 %VR56 to i32 (i32, i32)*
  %VR58 = call i32 (i32, i32)* %VR57(i32 %VR7, i32 %VR47)
;; <- dispatch: linia 299
  %VR6.0 = add i32 %VR58, 0
  br label %phi_0_sfarsit_case_App_0
;#######################################; <- dispatch_not_void_App_5


;#######################################; -> phi_0_sfarsit_case_App_0
phi_0_sfarsit_case_App_0:
  br label %sfarsit_case_App_0
;#######################################; <- phi_0_sfarsit_case_App_0


;#######################################; -> case_Expr__App_0
case_Expr__App_0:
  %VR59 = call i32  @Object__copy(i32 %VR7)
  %VR60 = add i32 10, 0
  %VR61 = ptrtoint %struct.Expr_protObj_t* @Expr_protObj to i32 
  %VR62 = add i32 %VR61, 8
  %VR63 = inttoptr i32 %VR62 to i32*
  %VR64 = load i32* %VR63
  %VR65 = add i32 %VR59, 0
  %VR66 = inttoptr i32 %VR65 to i32*
  store i32 %VR60, i32* %VR66
  %VR67 = add i32 %VR59, 0
  %VR68 = inttoptr i32 %VR67 to i32*
  store i32 %VR64, i32* %VR68
  %VR69 = add i32 %VR59, 0
  %VR70 = inttoptr i32 %VR69 to i32*
  %VR71 = load i32* %VR70
  %VR72 = icmp eq i32 %VR71,  1
  br i1 %VR72, label %typcase_ok_App_03, label %unboxing_1_App_0
;#######################################; <- case_Expr__App_0


;#######################################; -> typcase_ok_App_03
typcase_ok_App_03:
  %VR73 = icmp eq i32 %VR71,  2
  br i1 %VR73, label %typcase_ok_App_04, label %unboxing_1_App_0
;#######################################; <- typcase_ok_App_03


;#######################################; -> typcase_ok_App_04
typcase_ok_App_04:
  br label %after_unbox_1_App_0
;#######################################; <- typcase_ok_App_04


;#######################################; -> unboxing_1_App_0
unboxing_1_App_0:
  %VR74 = add i32 %VR59, 12
  %VR75 = inttoptr i32 %VR74 to i32*
  %VR76 = load i32* %VR75
  br label %after_unbox_1_App_0
;#######################################; <- unboxing_1_App_0


;#######################################; -> after_unbox_1_App_0
after_unbox_1_App_0:
;- typcase -- let -
;; -> let: linia 301
;- typcase -- let -- dispatch -
;; -> dispatch: linia 301
;;generez codul pentru apelul metodei beta
;- typcase -- let -- dispatch -- object -
;; -> object: linia 301
  %VR77 = add i32 %ARG, 12
  %VR78 = inttoptr i32 %VR77 to i32*
  %VR79 = load i32* %VR78
;; <- object: linia 301
  %VR80 = inttoptr i32 %VR79 to i32*
  %VR81 = icmp eq i32* %VR80,  null
  br i1 %VR81, label %false_dispatch6, label %dispatch_not_void_App_6
;#######################################; <- after_unbox_1_App_0


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__69 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_App_6
dispatch_not_void_App_6:
  %VR82 = ptrtoint i32* %VR80 to i32 
  %VR83 = add i32 %VR82, 8
  %VR84 = inttoptr i32 %VR83 to i32*
  %VR85 = load i32* %VR84
  %VR86 = add i32 %VR85, 32
  %VR87 = inttoptr i32 %VR86 to i32*
  %VR88 = load i32* %VR87
  %VR89 = inttoptr i32 %VR88 to i32 (i32)*
  %VR90 = call i32 (i32)* %VR89(i32 %VR79)
;; <- dispatch: linia 301
;- typcase -- let -- let -
;; -> let: linia 302
;- typcase -- let -- let -- new -
;; -> new: linia 302
  %VR91 = call i32  @Object__copy(i32 ptrtoint (%struct.App_protObj_t* @App_protObj to i32))
  call void @App_init(i32 %VR91)
;; <- new: linia 302
;- typcase -- let -- let -- dispatch -
;; -> dispatch: linia 303
;;generez codul pentru apelul metodei init
;- typcase -- let -- let -- dispatch -- object -
;; -> object: linia 303
;; <- object: linia 303
;- typcase -- let -- let -- dispatch -- object -
;; -> object: linia 303
  %VR92 = add i32 %ARG, 16
  %VR93 = inttoptr i32 %VR92 to i32*
  %VR94 = load i32* %VR93
;; <- object: linia 303
;- typcase -- let -- let -- dispatch -- object -
;; -> object: linia 303
;; <- object: linia 303
  %VR95 = inttoptr i32 %VR91 to i32*
  %VR96 = icmp eq i32* %VR95,  null
  br i1 %VR96, label %false_dispatch7, label %dispatch_not_void_App_7
;#######################################; <- dispatch_not_void_App_6


;#######################################; -> false_dispatch7
false_dispatch7:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__70 to i32))
  ret i32 0
;#######################################; <- false_dispatch7


;#######################################; -> dispatch_not_void_App_7
dispatch_not_void_App_7:
  %VR97 = ptrtoint i32* %VR95 to i32 
  %VR98 = add i32 %VR97, 8
  %VR99 = inttoptr i32 %VR98 to i32*
  %VR100 = load i32* %VR99
  %VR101 = add i32 %VR100, 44
  %VR102 = inttoptr i32 %VR101 to i32*
  %VR103 = load i32* %VR102
  %VR104 = inttoptr i32 %VR103 to i32 (i32, i32, i32)*
  %VR105 = call i32 (i32, i32, i32)* %VR104(i32 %VR91, i32 %VR90, i32 %VR94)
;; <- dispatch: linia 303
;; <- let: linia 302
;; <- let: linia 301
  %VR6.1 = add i32 %VR105, 0
  br label %phi_1_sfarsit_case_App_0
;#######################################; <- dispatch_not_void_App_7


;#######################################; -> phi_1_sfarsit_case_App_0
phi_1_sfarsit_case_App_0:
  br label %sfarsit_case_App_0
;#######################################; <- phi_1_sfarsit_case_App_0


;#######################################; -> case_0_noAlternativeApp_0
case_0_noAlternativeApp_0:
  call void @_case_abort(i32 %VR7)
  ret i32 0
;#######################################; <- case_0_noAlternativeApp_0


;#######################################; -> sfarsit_case_App_0
sfarsit_case_App_0:
  %VR6 = phi i32 [ %VR6.0, %phi_0_sfarsit_case_App_0] , [ %VR6.1, %phi_1_sfarsit_case_App_0]
;; <- typcase: linia 298
  ret i32 %VR6
;#######################################; <- sfarsit_case_App_0


}
define i32 @App__substitute(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.App_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- let -
;; -> let: linia 308
;- let -- dispatch -
;; -> dispatch: linia 308
;;generez codul pentru apelul metodei substitute
;- let -- dispatch -- object -
;; -> object: linia 308
;; <- object: linia 308
;- let -- dispatch -- object -
;; -> object: linia 308
;; <- object: linia 308
;- let -- dispatch -- object -
;; -> object: linia 308
  %VR3 = add i32 %ARG, 12
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
;; <- object: linia 308
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = icmp eq i32* %VR6,  null
  br i1 %VR7, label %false_dispatch8, label %dispatch_not_void_App_8
;#######################################; <- entry


;#######################################; -> false_dispatch8
false_dispatch8:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__71 to i32))
  ret i32 0
;#######################################; <- false_dispatch8


;#######################################; -> dispatch_not_void_App_8
dispatch_not_void_App_8:
  %VR8 = ptrtoint i32* %VR6 to i32 
  %VR9 = add i32 %VR8, 8
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = add i32 %VR11, 36
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
  %VR15 = inttoptr i32 %VR14 to i32 (i32, i32, i32)*
  %VR16 = call i32 (i32, i32, i32)* %VR15(i32 %VR5, i32 %VR1, i32 %VR2)
;; <- dispatch: linia 308
;- let -- let -
;; -> let: linia 309
;- let -- let -- dispatch -
;; -> dispatch: linia 309
;;generez codul pentru apelul metodei substitute
;- let -- let -- dispatch -- object -
;; -> object: linia 309
;; <- object: linia 309
;- let -- let -- dispatch -- object -
;; -> object: linia 309
;; <- object: linia 309
;- let -- let -- dispatch -- object -
;; -> object: linia 309
  %VR17 = add i32 %ARG, 16
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
;; <- object: linia 309
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = icmp eq i32* %VR20,  null
  br i1 %VR21, label %false_dispatch9, label %dispatch_not_void_App_9
;#######################################; <- dispatch_not_void_App_8


;#######################################; -> false_dispatch9
false_dispatch9:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__72 to i32))
  ret i32 0
;#######################################; <- false_dispatch9


;#######################################; -> dispatch_not_void_App_9
dispatch_not_void_App_9:
  %VR22 = ptrtoint i32* %VR20 to i32 
  %VR23 = add i32 %VR22, 8
  %VR24 = inttoptr i32 %VR23 to i32*
  %VR25 = load i32* %VR24
  %VR26 = add i32 %VR25, 36
  %VR27 = inttoptr i32 %VR26 to i32*
  %VR28 = load i32* %VR27
  %VR29 = inttoptr i32 %VR28 to i32 (i32, i32, i32)*
  %VR30 = call i32 (i32, i32, i32)* %VR29(i32 %VR19, i32 %VR1, i32 %VR2)
;; <- dispatch: linia 309
;- let -- let -- let -
;; -> let: linia 310
;- let -- let -- let -- new -
;; -> new: linia 310
  %VR31 = call i32  @Object__copy(i32 ptrtoint (%struct.App_protObj_t* @App_protObj to i32))
  call void @App_init(i32 %VR31)
;; <- new: linia 310
;- let -- let -- let -- dispatch -
;; -> dispatch: linia 311
;;generez codul pentru apelul metodei init
;- let -- let -- let -- dispatch -- object -
;; -> object: linia 311
;; <- object: linia 311
;- let -- let -- let -- dispatch -- object -
;; -> object: linia 311
;; <- object: linia 311
;- let -- let -- let -- dispatch -- object -
;; -> object: linia 311
;; <- object: linia 311
  %VR32 = inttoptr i32 %VR31 to i32*
  %VR33 = icmp eq i32* %VR32,  null
  br i1 %VR33, label %false_dispatch10, label %dispatch_not_void_App_10
;#######################################; <- dispatch_not_void_App_9


;#######################################; -> false_dispatch10
false_dispatch10:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__73 to i32))
  ret i32 0
;#######################################; <- false_dispatch10


;#######################################; -> dispatch_not_void_App_10
dispatch_not_void_App_10:
  %VR34 = ptrtoint i32* %VR32 to i32 
  %VR35 = add i32 %VR34, 8
  %VR36 = inttoptr i32 %VR35 to i32*
  %VR37 = load i32* %VR36
  %VR38 = add i32 %VR37, 44
  %VR39 = inttoptr i32 %VR38 to i32*
  %VR40 = load i32* %VR39
  %VR41 = inttoptr i32 %VR40 to i32 (i32, i32, i32)*
  %VR42 = call i32 (i32, i32, i32)* %VR41(i32 %VR31, i32 %VR16, i32 %VR30)
;; <- dispatch: linia 311
;; <- let: linia 310
;; <- let: linia 309
;; <- let: linia 308
  ret i32 %VR42
;#######################################; <- dispatch_not_void_App_10


}
define i32 @App__gen_code(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.App_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- block -
;; -> block: linia 315
;- block -- dispatch -
;; -> dispatch: linia 316
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 316
  %VR3 = ptrtoint %struct.String_protObj_t* @str_const__27 to i32 
;; <- string_const: linia 316
;- block -- dispatch -- object -
;; -> object: linia 316
;; <- object: linia 316
  %VR4 = icmp eq %struct.App_protObj_t* %VR0,  null
  br i1 %VR4, label %false_dispatch11, label %dispatch_not_void_App_11
;#######################################; <- entry


;#######################################; -> false_dispatch11
false_dispatch11:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__74 to i32))
  ret i32 0
;#######################################; <- false_dispatch11


;#######################################; -> dispatch_not_void_App_11
dispatch_not_void_App_11:
  %VR5 = ptrtoint %struct.App_protObj_t* %VR0 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 16
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32, i32)*
  %VR13 = call i32 (i32, i32)* %VR12(i32 %ARG, i32 %VR3)
;; <- dispatch: linia 316
;- block -- dispatch -
;; -> dispatch: linia 317
;;generez codul pentru apelul metodei gen_code
;- block -- dispatch -- object -
;; -> object: linia 317
;; <- object: linia 317
;- block -- dispatch -- object -
;; -> object: linia 317
;; <- object: linia 317
;- block -- dispatch -- object -
;; -> object: linia 317
  %VR14 = add i32 %ARG, 12
  %VR15 = inttoptr i32 %VR14 to i32*
  %VR16 = load i32* %VR15
;; <- object: linia 317
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = icmp eq i32* %VR17,  null
  br i1 %VR18, label %false_dispatch12, label %dispatch_not_void_App_12
;#######################################; <- dispatch_not_void_App_11


;#######################################; -> false_dispatch12
false_dispatch12:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__75 to i32))
  ret i32 0
;#######################################; <- false_dispatch12


;#######################################; -> dispatch_not_void_App_12
dispatch_not_void_App_12:
  %VR19 = ptrtoint i32* %VR17 to i32 
  %VR20 = add i32 %VR19, 8
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
  %VR23 = add i32 %VR22, 40
  %VR24 = inttoptr i32 %VR23 to i32*
  %VR25 = load i32* %VR24
  %VR26 = inttoptr i32 %VR25 to i32 (i32, i32, i32)*
  %VR27 = call i32 (i32, i32, i32)* %VR26(i32 %VR16, i32 %VR1, i32 %VR2)
;; <- dispatch: linia 317
;- block -- dispatch -
;; -> dispatch: linia 318
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 318
  %VR28 = ptrtoint %struct.String_protObj_t* @str_const__28 to i32 
;; <- string_const: linia 318
;- block -- dispatch -- object -
;; -> object: linia 318
;; <- object: linia 318
  %VR29 = icmp eq %struct.App_protObj_t* %VR0,  null
  br i1 %VR29, label %false_dispatch13, label %dispatch_not_void_App_13
;#######################################; <- dispatch_not_void_App_12


;#######################################; -> false_dispatch13
false_dispatch13:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__76 to i32))
  ret i32 0
;#######################################; <- false_dispatch13


;#######################################; -> dispatch_not_void_App_13
dispatch_not_void_App_13:
  %VR30 = ptrtoint %struct.App_protObj_t* %VR0 to i32 
  %VR31 = add i32 %VR30, 8
  %VR32 = inttoptr i32 %VR31 to i32*
  %VR33 = load i32* %VR32
  %VR34 = add i32 %VR33, 16
  %VR35 = inttoptr i32 %VR34 to i32*
  %VR36 = load i32* %VR35
  %VR37 = inttoptr i32 %VR36 to i32 (i32, i32)*
  %VR38 = call i32 (i32, i32)* %VR37(i32 %ARG, i32 %VR28)
;; <- dispatch: linia 318
;- block -- dispatch -
;; -> dispatch: linia 319
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 319
  %VR39 = ptrtoint %struct.String_protObj_t* @str_const__29 to i32 
;; <- string_const: linia 319
;- block -- dispatch -- object -
;; -> object: linia 319
;; <- object: linia 319
  %VR40 = icmp eq %struct.App_protObj_t* %VR0,  null
  br i1 %VR40, label %false_dispatch14, label %dispatch_not_void_App_14
;#######################################; <- dispatch_not_void_App_13


;#######################################; -> false_dispatch14
false_dispatch14:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__77 to i32))
  ret i32 0
;#######################################; <- false_dispatch14


;#######################################; -> dispatch_not_void_App_14
dispatch_not_void_App_14:
  %VR41 = ptrtoint %struct.App_protObj_t* %VR0 to i32 
  %VR42 = add i32 %VR41, 8
  %VR43 = inttoptr i32 %VR42 to i32*
  %VR44 = load i32* %VR43
  %VR45 = add i32 %VR44, 16
  %VR46 = inttoptr i32 %VR45 to i32*
  %VR47 = load i32* %VR46
  %VR48 = inttoptr i32 %VR47 to i32 (i32, i32)*
  %VR49 = call i32 (i32, i32)* %VR48(i32 %ARG, i32 %VR39)
;; <- dispatch: linia 319
;- block -- dispatch -
;; -> dispatch: linia 320
;;generez codul pentru apelul metodei gen_code
;- block -- dispatch -- object -
;; -> object: linia 320
;; <- object: linia 320
;- block -- dispatch -- object -
;; -> object: linia 320
;; <- object: linia 320
;- block -- dispatch -- object -
;; -> object: linia 320
  %VR50 = add i32 %ARG, 16
  %VR51 = inttoptr i32 %VR50 to i32*
  %VR52 = load i32* %VR51
;; <- object: linia 320
  %VR53 = inttoptr i32 %VR52 to i32*
  %VR54 = icmp eq i32* %VR53,  null
  br i1 %VR54, label %false_dispatch15, label %dispatch_not_void_App_15
;#######################################; <- dispatch_not_void_App_14


;#######################################; -> false_dispatch15
false_dispatch15:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__78 to i32))
  ret i32 0
;#######################################; <- false_dispatch15


;#######################################; -> dispatch_not_void_App_15
dispatch_not_void_App_15:
  %VR55 = ptrtoint i32* %VR53 to i32 
  %VR56 = add i32 %VR55, 8
  %VR57 = inttoptr i32 %VR56 to i32*
  %VR58 = load i32* %VR57
  %VR59 = add i32 %VR58, 40
  %VR60 = inttoptr i32 %VR59 to i32*
  %VR61 = load i32* %VR60
  %VR62 = inttoptr i32 %VR61 to i32 (i32, i32, i32)*
  %VR63 = call i32 (i32, i32, i32)* %VR62(i32 %VR52, i32 %VR1, i32 %VR2)
;; <- dispatch: linia 320
;- block -- dispatch -
;; -> dispatch: linia 321
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 321
  %VR64 = ptrtoint %struct.String_protObj_t* @str_const__30 to i32 
;; <- string_const: linia 321
;- block -- dispatch -- object -
;; -> object: linia 321
;; <- object: linia 321
  %VR65 = icmp eq %struct.App_protObj_t* %VR0,  null
  br i1 %VR65, label %false_dispatch16, label %dispatch_not_void_App_16
;#######################################; <- dispatch_not_void_App_15


;#######################################; -> false_dispatch16
false_dispatch16:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__79 to i32))
  ret i32 0
;#######################################; <- false_dispatch16


;#######################################; -> dispatch_not_void_App_16
dispatch_not_void_App_16:
  %VR66 = ptrtoint %struct.App_protObj_t* %VR0 to i32 
  %VR67 = add i32 %VR66, 8
  %VR68 = inttoptr i32 %VR67 to i32*
  %VR69 = load i32* %VR68
  %VR70 = add i32 %VR69, 16
  %VR71 = inttoptr i32 %VR70 to i32*
  %VR72 = load i32* %VR71
  %VR73 = inttoptr i32 %VR72 to i32 (i32, i32)*
  %VR74 = call i32 (i32, i32)* %VR73(i32 %ARG, i32 %VR64)
;; <- dispatch: linia 321
;- block -- dispatch -
;; -> dispatch: linia 322
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 322
  %VR75 = ptrtoint %struct.String_protObj_t* @str_const__31 to i32 
;; <- string_const: linia 322
;- block -- dispatch -- object -
;; -> object: linia 322
;; <- object: linia 322
  %VR76 = icmp eq %struct.App_protObj_t* %VR0,  null
  br i1 %VR76, label %false_dispatch17, label %dispatch_not_void_App_17
;#######################################; <- dispatch_not_void_App_16


;#######################################; -> false_dispatch17
false_dispatch17:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__80 to i32))
  ret i32 0
;#######################################; <- false_dispatch17


;#######################################; -> dispatch_not_void_App_17
dispatch_not_void_App_17:
  %VR77 = ptrtoint %struct.App_protObj_t* %VR0 to i32 
  %VR78 = add i32 %VR77, 8
  %VR79 = inttoptr i32 %VR78 to i32*
  %VR80 = load i32* %VR79
  %VR81 = add i32 %VR80, 16
  %VR82 = inttoptr i32 %VR81 to i32*
  %VR83 = load i32* %VR82
  %VR84 = inttoptr i32 %VR83 to i32 (i32, i32)*
  %VR85 = call i32 (i32, i32)* %VR84(i32 %ARG, i32 %VR75)
;; <- dispatch: linia 322
;- block -- dispatch -
;; -> dispatch: linia 323
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 323
  %VR86 = ptrtoint %struct.String_protObj_t* @str_const__32 to i32 
;; <- string_const: linia 323
;- block -- dispatch -- object -
;; -> object: linia 323
;; <- object: linia 323
  %VR87 = icmp eq %struct.App_protObj_t* %VR0,  null
  br i1 %VR87, label %false_dispatch18, label %dispatch_not_void_App_18
;#######################################; <- dispatch_not_void_App_17


;#######################################; -> false_dispatch18
false_dispatch18:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__81 to i32))
  ret i32 0
;#######################################; <- false_dispatch18


;#######################################; -> dispatch_not_void_App_18
dispatch_not_void_App_18:
  %VR88 = ptrtoint %struct.App_protObj_t* %VR0 to i32 
  %VR89 = add i32 %VR88, 8
  %VR90 = inttoptr i32 %VR89 to i32*
  %VR91 = load i32* %VR90
  %VR92 = add i32 %VR91, 16
  %VR93 = inttoptr i32 %VR92 to i32*
  %VR94 = load i32* %VR93
  %VR95 = inttoptr i32 %VR94 to i32 (i32, i32)*
  %VR96 = call i32 (i32, i32)* %VR95(i32 %ARG, i32 %VR86)
;; <- dispatch: linia 323
;- block -- dispatch -
;; -> dispatch: linia 324
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 324
  %VR97 = ptrtoint %struct.String_protObj_t* @str_const__33 to i32 
;; <- string_const: linia 324
;- block -- dispatch -- object -
;; -> object: linia 324
;; <- object: linia 324
  %VR98 = icmp eq %struct.App_protObj_t* %VR0,  null
  br i1 %VR98, label %false_dispatch19, label %dispatch_not_void_App_19
;#######################################; <- dispatch_not_void_App_18


;#######################################; -> false_dispatch19
false_dispatch19:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__82 to i32))
  ret i32 0
;#######################################; <- false_dispatch19


;#######################################; -> dispatch_not_void_App_19
dispatch_not_void_App_19:
  %VR99 = ptrtoint %struct.App_protObj_t* %VR0 to i32 
  %VR100 = add i32 %VR99, 8
  %VR101 = inttoptr i32 %VR100 to i32*
  %VR102 = load i32* %VR101
  %VR103 = add i32 %VR102, 16
  %VR104 = inttoptr i32 %VR103 to i32*
  %VR105 = load i32* %VR104
  %VR106 = inttoptr i32 %VR105 to i32 (i32, i32)*
  %VR107 = call i32 (i32, i32)* %VR106(i32 %ARG, i32 %VR97)
;; <- dispatch: linia 324
;- block -- dispatch -
;; -> dispatch: linia 325
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 325
  %VR108 = ptrtoint %struct.String_protObj_t* @str_const__34 to i32 
;; <- string_const: linia 325
;- block -- dispatch -- object -
;; -> object: linia 325
;; <- object: linia 325
  %VR109 = icmp eq %struct.App_protObj_t* %VR0,  null
  br i1 %VR109, label %false_dispatch20, label %dispatch_not_void_App_20
;#######################################; <- dispatch_not_void_App_19


;#######################################; -> false_dispatch20
false_dispatch20:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__83 to i32))
  ret i32 0
;#######################################; <- false_dispatch20


;#######################################; -> dispatch_not_void_App_20
dispatch_not_void_App_20:
  %VR110 = ptrtoint %struct.App_protObj_t* %VR0 to i32 
  %VR111 = add i32 %VR110, 8
  %VR112 = inttoptr i32 %VR111 to i32*
  %VR113 = load i32* %VR112
  %VR114 = add i32 %VR113, 16
  %VR115 = inttoptr i32 %VR114 to i32*
  %VR116 = load i32* %VR115
  %VR117 = inttoptr i32 %VR116 to i32 (i32, i32)*
  %VR118 = call i32 (i32, i32)* %VR117(i32 %ARG, i32 %VR108)
;; <- dispatch: linia 325
;; <- block: linia 315
  ret i32 %VR118
;#######################################; <- dispatch_not_void_App_20


}
define void @Term_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @Term__var(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Term_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- let -
;; -> let: linia 340
;- let -- new -
;; -> new: linia 340
  %VR2 = call i32  @Object__copy(i32 ptrtoint (%struct.Variable_protObj_t* @Variable_protObj to i32))
  call void @Variable_init(i32 %VR2)
;; <- new: linia 340
;- let -- dispatch -
;; -> dispatch: linia 341
;;generez codul pentru apelul metodei init
;- let -- dispatch -- object -
;; -> object: linia 341
;; <- object: linia 341
;- let -- dispatch -- object -
;; -> object: linia 341
;; <- object: linia 341
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = icmp eq i32* %VR3,  null
  br i1 %VR4, label %false_dispatch0, label %dispatch_not_void_Term_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__84 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Term_0
dispatch_not_void_Term_0:
  %VR5 = ptrtoint i32* %VR3 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 44
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32, i32)*
  %VR13 = call i32 (i32, i32)* %VR12(i32 %VR2, i32 %VR1)
;; <- dispatch: linia 341
;; <- let: linia 340
  ret i32 %VR13
;#######################################; <- dispatch_not_void_Term_0


}
define i32 @Term__lam(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Term_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- let -
;; -> let: linia 345
;- let -- new -
;; -> new: linia 345
  %VR3 = call i32  @Object__copy(i32 ptrtoint (%struct.Lambda_protObj_t* @Lambda_protObj to i32))
  call void @Lambda_init(i32 %VR3)
;; <- new: linia 345
;- let -- dispatch -
;; -> dispatch: linia 346
;;generez codul pentru apelul metodei init
;- let -- dispatch -- object -
;; -> object: linia 346
;; <- object: linia 346
;- let -- dispatch -- object -
;; -> object: linia 346
;; <- object: linia 346
;- let -- dispatch -- object -
;; -> object: linia 346
;; <- object: linia 346
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_dispatch1, label %dispatch_not_void_Term_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__85 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Term_1
dispatch_not_void_Term_1:
  %VR6 = ptrtoint i32* %VR4 to i32 
  %VR7 = add i32 %VR6, 8
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = add i32 %VR9, 44
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = inttoptr i32 %VR12 to i32 (i32, i32, i32)*
  %VR14 = call i32 (i32, i32, i32)* %VR13(i32 %VR3, i32 %VR1, i32 %VR2)
;; <- dispatch: linia 346
;; <- let: linia 345
  ret i32 %VR14
;#######################################; <- dispatch_not_void_Term_1


}
define i32 @Term__app(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Term_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- let -
;; -> let: linia 350
;- let -- new -
;; -> new: linia 350
  %VR3 = call i32  @Object__copy(i32 ptrtoint (%struct.App_protObj_t* @App_protObj to i32))
  call void @App_init(i32 %VR3)
;; <- new: linia 350
;- let -- dispatch -
;; -> dispatch: linia 351
;;generez codul pentru apelul metodei init
;- let -- dispatch -- object -
;; -> object: linia 351
;; <- object: linia 351
;- let -- dispatch -- object -
;; -> object: linia 351
;; <- object: linia 351
;- let -- dispatch -- object -
;; -> object: linia 351
;; <- object: linia 351
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_dispatch2, label %dispatch_not_void_Term_2
;#######################################; <- entry


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__86 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Term_2
dispatch_not_void_Term_2:
  %VR6 = ptrtoint i32* %VR4 to i32 
  %VR7 = add i32 %VR6, 8
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = add i32 %VR9, 44
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = inttoptr i32 %VR12 to i32 (i32, i32, i32)*
  %VR14 = call i32 (i32, i32, i32)* %VR13(i32 %VR3, i32 %VR1, i32 %VR2)
;; <- dispatch: linia 351
;; <- let: linia 350
  ret i32 %VR14
;#######################################; <- dispatch_not_void_Term_2


}
define i32 @Term__i(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Term_protObj_t*
;- let -
;; -> let: linia 358
;- let -- dispatch -
;; -> dispatch: linia 358
;;generez codul pentru apelul metodei var
;- let -- dispatch -- string_const -
;; -> string_const: linia 358
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__35 to i32 
;; <- string_const: linia 358
;- let -- dispatch -- object -
;; -> object: linia 358
;; <- object: linia 358
  %VR2 = icmp eq %struct.Term_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch3, label %dispatch_not_void_Term_3
;#######################################; <- entry


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__87 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Term_3
dispatch_not_void_Term_3:
  %VR3 = ptrtoint %struct.Term_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 28
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 358
;- let -- dispatch -
;; -> dispatch: linia 359
;;generez codul pentru apelul metodei lam
;- let -- dispatch -- object -
;; -> object: linia 359
;; <- object: linia 359
;- let -- dispatch -- object -
;; -> object: linia 359
;; <- object: linia 359
;- let -- dispatch -- object -
;; -> object: linia 359
;; <- object: linia 359
  %VR12 = icmp eq %struct.Term_protObj_t* %VR0,  null
  br i1 %VR12, label %false_dispatch4, label %dispatch_not_void_Term_4
;#######################################; <- dispatch_not_void_Term_3


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__88 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Term_4
dispatch_not_void_Term_4:
  %VR13 = ptrtoint %struct.Term_protObj_t* %VR0 to i32 
  %VR14 = add i32 %VR13, 8
  %VR15 = inttoptr i32 %VR14 to i32*
  %VR16 = load i32* %VR15
  %VR17 = add i32 %VR16, 32
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
  %VR20 = inttoptr i32 %VR19 to i32 (i32, i32, i32)*
  %VR21 = call i32 (i32, i32, i32)* %VR20(i32 %ARG, i32 %VR11, i32 %VR11)
;; <- dispatch: linia 359
;; <- let: linia 358
  ret i32 %VR21
;#######################################; <- dispatch_not_void_Term_4


}
define i32 @Term__k(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Term_protObj_t*
;- let -
;; -> let: linia 363
;- let -- dispatch -
;; -> dispatch: linia 363
;;generez codul pentru apelul metodei var
;- let -- dispatch -- string_const -
;; -> string_const: linia 363
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__35 to i32 
;; <- string_const: linia 363
;- let -- dispatch -- object -
;; -> object: linia 363
;; <- object: linia 363
  %VR2 = icmp eq %struct.Term_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch5, label %dispatch_not_void_Term_5
;#######################################; <- entry


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__89 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_Term_5
dispatch_not_void_Term_5:
  %VR3 = ptrtoint %struct.Term_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 28
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 363
;- let -- let -
;; -> let: linia 364
;- let -- let -- dispatch -
;; -> dispatch: linia 364
;;generez codul pentru apelul metodei var
;- let -- let -- dispatch -- string_const -
;; -> string_const: linia 364
  %VR12 = ptrtoint %struct.String_protObj_t* @str_const__36 to i32 
;; <- string_const: linia 364
;- let -- let -- dispatch -- object -
;; -> object: linia 364
;; <- object: linia 364
  %VR13 = icmp eq %struct.Term_protObj_t* %VR0,  null
  br i1 %VR13, label %false_dispatch6, label %dispatch_not_void_Term_6
;#######################################; <- dispatch_not_void_Term_5


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__90 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_Term_6
dispatch_not_void_Term_6:
  %VR14 = ptrtoint %struct.Term_protObj_t* %VR0 to i32 
  %VR15 = add i32 %VR14, 8
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
  %VR18 = add i32 %VR17, 28
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
  %VR21 = inttoptr i32 %VR20 to i32 (i32, i32)*
  %VR22 = call i32 (i32, i32)* %VR21(i32 %ARG, i32 %VR12)
;; <- dispatch: linia 364
;- let -- let -- dispatch -
;; -> dispatch: linia 365
;;generez codul pentru apelul metodei lam
;- let -- let -- dispatch -- object -
;; -> object: linia 365
;; <- object: linia 365
;- let -- let -- dispatch -- dispatch -
;; -> dispatch: linia 365
;;generez codul pentru apelul metodei lam
;- let -- let -- dispatch -- dispatch -- object -
;; -> object: linia 365
;; <- object: linia 365
;- let -- let -- dispatch -- dispatch -- object -
;; -> object: linia 365
;; <- object: linia 365
;- let -- let -- dispatch -- dispatch -- object -
;; -> object: linia 365
;; <- object: linia 365
  %VR23 = icmp eq %struct.Term_protObj_t* %VR0,  null
  br i1 %VR23, label %false_dispatch7, label %dispatch_not_void_Term_7
;#######################################; <- dispatch_not_void_Term_6


;#######################################; -> false_dispatch7
false_dispatch7:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__91 to i32))
  ret i32 0
;#######################################; <- false_dispatch7


;#######################################; -> dispatch_not_void_Term_7
dispatch_not_void_Term_7:
  %VR24 = ptrtoint %struct.Term_protObj_t* %VR0 to i32 
  %VR25 = add i32 %VR24, 8
  %VR26 = inttoptr i32 %VR25 to i32*
  %VR27 = load i32* %VR26
  %VR28 = add i32 %VR27, 32
  %VR29 = inttoptr i32 %VR28 to i32*
  %VR30 = load i32* %VR29
  %VR31 = inttoptr i32 %VR30 to i32 (i32, i32, i32)*
  %VR32 = call i32 (i32, i32, i32)* %VR31(i32 %ARG, i32 %VR22, i32 %VR11)
;; <- dispatch: linia 365
;- let -- let -- dispatch -- object -
;; -> object: linia 365
;; <- object: linia 365
  %VR33 = icmp eq %struct.Term_protObj_t* %VR0,  null
  br i1 %VR33, label %false_dispatch8, label %dispatch_not_void_Term_8
;#######################################; <- dispatch_not_void_Term_7


;#######################################; -> false_dispatch8
false_dispatch8:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__91 to i32))
  ret i32 0
;#######################################; <- false_dispatch8


;#######################################; -> dispatch_not_void_Term_8
dispatch_not_void_Term_8:
  %VR34 = ptrtoint %struct.Term_protObj_t* %VR0 to i32 
  %VR35 = add i32 %VR34, 8
  %VR36 = inttoptr i32 %VR35 to i32*
  %VR37 = load i32* %VR36
  %VR38 = add i32 %VR37, 32
  %VR39 = inttoptr i32 %VR38 to i32*
  %VR40 = load i32* %VR39
  %VR41 = inttoptr i32 %VR40 to i32 (i32, i32, i32)*
  %VR42 = call i32 (i32, i32, i32)* %VR41(i32 %ARG, i32 %VR11, i32 %VR32)
;; <- dispatch: linia 365
;; <- let: linia 364
;; <- let: linia 363
  ret i32 %VR42
;#######################################; <- dispatch_not_void_Term_8


}
define i32 @Term__s(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Term_protObj_t*
;- let -
;; -> let: linia 369
;- let -- dispatch -
;; -> dispatch: linia 369
;;generez codul pentru apelul metodei var
;- let -- dispatch -- string_const -
;; -> string_const: linia 369
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__35 to i32 
;; <- string_const: linia 369
;- let -- dispatch -- object -
;; -> object: linia 369
;; <- object: linia 369
  %VR2 = icmp eq %struct.Term_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch9, label %dispatch_not_void_Term_9
;#######################################; <- entry


;#######################################; -> false_dispatch9
false_dispatch9:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__92 to i32))
  ret i32 0
;#######################################; <- false_dispatch9


;#######################################; -> dispatch_not_void_Term_9
dispatch_not_void_Term_9:
  %VR3 = ptrtoint %struct.Term_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 28
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 369
;- let -- let -
;; -> let: linia 370
;- let -- let -- dispatch -
;; -> dispatch: linia 370
;;generez codul pentru apelul metodei var
;- let -- let -- dispatch -- string_const -
;; -> string_const: linia 370
  %VR12 = ptrtoint %struct.String_protObj_t* @str_const__36 to i32 
;; <- string_const: linia 370
;- let -- let -- dispatch -- object -
;; -> object: linia 370
;; <- object: linia 370
  %VR13 = icmp eq %struct.Term_protObj_t* %VR0,  null
  br i1 %VR13, label %false_dispatch10, label %dispatch_not_void_Term_10
;#######################################; <- dispatch_not_void_Term_9


;#######################################; -> false_dispatch10
false_dispatch10:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__93 to i32))
  ret i32 0
;#######################################; <- false_dispatch10


;#######################################; -> dispatch_not_void_Term_10
dispatch_not_void_Term_10:
  %VR14 = ptrtoint %struct.Term_protObj_t* %VR0 to i32 
  %VR15 = add i32 %VR14, 8
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
  %VR18 = add i32 %VR17, 28
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
  %VR21 = inttoptr i32 %VR20 to i32 (i32, i32)*
  %VR22 = call i32 (i32, i32)* %VR21(i32 %ARG, i32 %VR12)
;; <- dispatch: linia 370
;- let -- let -- let -
;; -> let: linia 371
;- let -- let -- let -- dispatch -
;; -> dispatch: linia 371
;;generez codul pentru apelul metodei var
;- let -- let -- let -- dispatch -- string_const -
;; -> string_const: linia 371
  %VR23 = ptrtoint %struct.String_protObj_t* @str_const__37 to i32 
;; <- string_const: linia 371
;- let -- let -- let -- dispatch -- object -
;; -> object: linia 371
;; <- object: linia 371
  %VR24 = icmp eq %struct.Term_protObj_t* %VR0,  null
  br i1 %VR24, label %false_dispatch11, label %dispatch_not_void_Term_11
;#######################################; <- dispatch_not_void_Term_10


;#######################################; -> false_dispatch11
false_dispatch11:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__94 to i32))
  ret i32 0
;#######################################; <- false_dispatch11


;#######################################; -> dispatch_not_void_Term_11
dispatch_not_void_Term_11:
  %VR25 = ptrtoint %struct.Term_protObj_t* %VR0 to i32 
  %VR26 = add i32 %VR25, 8
  %VR27 = inttoptr i32 %VR26 to i32*
  %VR28 = load i32* %VR27
  %VR29 = add i32 %VR28, 28
  %VR30 = inttoptr i32 %VR29 to i32*
  %VR31 = load i32* %VR30
  %VR32 = inttoptr i32 %VR31 to i32 (i32, i32)*
  %VR33 = call i32 (i32, i32)* %VR32(i32 %ARG, i32 %VR23)
;; <- dispatch: linia 371
;- let -- let -- let -- dispatch -
;; -> dispatch: linia 372
;;generez codul pentru apelul metodei lam
;- let -- let -- let -- dispatch -- object -
;; -> object: linia 372
;; <- object: linia 372
;- let -- let -- let -- dispatch -- dispatch -
;; -> dispatch: linia 372
;;generez codul pentru apelul metodei lam
;- let -- let -- let -- dispatch -- dispatch -- object -
;; -> object: linia 372
;; <- object: linia 372
;- let -- let -- let -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 372
;;generez codul pentru apelul metodei lam
;- let -- let -- let -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 372
;; <- object: linia 372
;- let -- let -- let -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 372
;;generez codul pentru apelul metodei app
;- let -- let -- let -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 372
;;generez codul pentru apelul metodei app
;- let -- let -- let -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 372
;; <- object: linia 372
;- let -- let -- let -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 372
;; <- object: linia 372
;- let -- let -- let -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 372
;; <- object: linia 372
  %VR34 = icmp eq %struct.Term_protObj_t* %VR0,  null
  br i1 %VR34, label %false_dispatch12, label %dispatch_not_void_Term_12
;#######################################; <- dispatch_not_void_Term_11


;#######################################; -> false_dispatch12
false_dispatch12:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__95 to i32))
  ret i32 0
;#######################################; <- false_dispatch12


;#######################################; -> dispatch_not_void_Term_12
dispatch_not_void_Term_12:
  %VR35 = ptrtoint %struct.Term_protObj_t* %VR0 to i32 
  %VR36 = add i32 %VR35, 8
  %VR37 = inttoptr i32 %VR36 to i32*
  %VR38 = load i32* %VR37
  %VR39 = add i32 %VR38, 36
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = load i32* %VR40
  %VR42 = inttoptr i32 %VR41 to i32 (i32, i32, i32)*
  %VR43 = call i32 (i32, i32, i32)* %VR42(i32 %ARG, i32 %VR11, i32 %VR33)
;; <- dispatch: linia 372
;- let -- let -- let -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 372
;;generez codul pentru apelul metodei app
;- let -- let -- let -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 372
;; <- object: linia 372
;- let -- let -- let -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 372
;; <- object: linia 372
;- let -- let -- let -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 372
;; <- object: linia 372
  %VR44 = icmp eq %struct.Term_protObj_t* %VR0,  null
  br i1 %VR44, label %false_dispatch13, label %dispatch_not_void_Term_13
;#######################################; <- dispatch_not_void_Term_12


;#######################################; -> false_dispatch13
false_dispatch13:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__95 to i32))
  ret i32 0
;#######################################; <- false_dispatch13


;#######################################; -> dispatch_not_void_Term_13
dispatch_not_void_Term_13:
  %VR45 = ptrtoint %struct.Term_protObj_t* %VR0 to i32 
  %VR46 = add i32 %VR45, 8
  %VR47 = inttoptr i32 %VR46 to i32*
  %VR48 = load i32* %VR47
  %VR49 = add i32 %VR48, 36
  %VR50 = inttoptr i32 %VR49 to i32*
  %VR51 = load i32* %VR50
  %VR52 = inttoptr i32 %VR51 to i32 (i32, i32, i32)*
  %VR53 = call i32 (i32, i32, i32)* %VR52(i32 %ARG, i32 %VR22, i32 %VR33)
;; <- dispatch: linia 372
;- let -- let -- let -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 372
;; <- object: linia 372
  %VR54 = icmp eq %struct.Term_protObj_t* %VR0,  null
  br i1 %VR54, label %false_dispatch14, label %dispatch_not_void_Term_14
;#######################################; <- dispatch_not_void_Term_13


;#######################################; -> false_dispatch14
false_dispatch14:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__95 to i32))
  ret i32 0
;#######################################; <- false_dispatch14


;#######################################; -> dispatch_not_void_Term_14
dispatch_not_void_Term_14:
  %VR55 = ptrtoint %struct.Term_protObj_t* %VR0 to i32 
  %VR56 = add i32 %VR55, 8
  %VR57 = inttoptr i32 %VR56 to i32*
  %VR58 = load i32* %VR57
  %VR59 = add i32 %VR58, 36
  %VR60 = inttoptr i32 %VR59 to i32*
  %VR61 = load i32* %VR60
  %VR62 = inttoptr i32 %VR61 to i32 (i32, i32, i32)*
  %VR63 = call i32 (i32, i32, i32)* %VR62(i32 %ARG, i32 %VR43, i32 %VR53)
;; <- dispatch: linia 372
;- let -- let -- let -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 372
;; <- object: linia 372
  %VR64 = icmp eq %struct.Term_protObj_t* %VR0,  null
  br i1 %VR64, label %false_dispatch15, label %dispatch_not_void_Term_15
;#######################################; <- dispatch_not_void_Term_14


;#######################################; -> false_dispatch15
false_dispatch15:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__95 to i32))
  ret i32 0
;#######################################; <- false_dispatch15


;#######################################; -> dispatch_not_void_Term_15
dispatch_not_void_Term_15:
  %VR65 = ptrtoint %struct.Term_protObj_t* %VR0 to i32 
  %VR66 = add i32 %VR65, 8
  %VR67 = inttoptr i32 %VR66 to i32*
  %VR68 = load i32* %VR67
  %VR69 = add i32 %VR68, 32
  %VR70 = inttoptr i32 %VR69 to i32*
  %VR71 = load i32* %VR70
  %VR72 = inttoptr i32 %VR71 to i32 (i32, i32, i32)*
  %VR73 = call i32 (i32, i32, i32)* %VR72(i32 %ARG, i32 %VR33, i32 %VR63)
;; <- dispatch: linia 372
;- let -- let -- let -- dispatch -- dispatch -- object -
;; -> object: linia 372
;; <- object: linia 372
  %VR74 = icmp eq %struct.Term_protObj_t* %VR0,  null
  br i1 %VR74, label %false_dispatch16, label %dispatch_not_void_Term_16
;#######################################; <- dispatch_not_void_Term_15


;#######################################; -> false_dispatch16
false_dispatch16:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__95 to i32))
  ret i32 0
;#######################################; <- false_dispatch16


;#######################################; -> dispatch_not_void_Term_16
dispatch_not_void_Term_16:
  %VR75 = ptrtoint %struct.Term_protObj_t* %VR0 to i32 
  %VR76 = add i32 %VR75, 8
  %VR77 = inttoptr i32 %VR76 to i32*
  %VR78 = load i32* %VR77
  %VR79 = add i32 %VR78, 32
  %VR80 = inttoptr i32 %VR79 to i32*
  %VR81 = load i32* %VR80
  %VR82 = inttoptr i32 %VR81 to i32 (i32, i32, i32)*
  %VR83 = call i32 (i32, i32, i32)* %VR82(i32 %ARG, i32 %VR22, i32 %VR73)
;; <- dispatch: linia 372
;- let -- let -- let -- dispatch -- object -
;; -> object: linia 372
;; <- object: linia 372
  %VR84 = icmp eq %struct.Term_protObj_t* %VR0,  null
  br i1 %VR84, label %false_dispatch17, label %dispatch_not_void_Term_17
;#######################################; <- dispatch_not_void_Term_16


;#######################################; -> false_dispatch17
false_dispatch17:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__95 to i32))
  ret i32 0
;#######################################; <- false_dispatch17


;#######################################; -> dispatch_not_void_Term_17
dispatch_not_void_Term_17:
  %VR85 = ptrtoint %struct.Term_protObj_t* %VR0 to i32 
  %VR86 = add i32 %VR85, 8
  %VR87 = inttoptr i32 %VR86 to i32*
  %VR88 = load i32* %VR87
  %VR89 = add i32 %VR88, 32
  %VR90 = inttoptr i32 %VR89 to i32*
  %VR91 = load i32* %VR90
  %VR92 = inttoptr i32 %VR91 to i32 (i32, i32, i32)*
  %VR93 = call i32 (i32, i32, i32)* %VR92(i32 %ARG, i32 %VR11, i32 %VR83)
;; <- dispatch: linia 372
;; <- let: linia 371
;; <- let: linia 370
;; <- let: linia 369
  ret i32 %VR93
;#######################################; <- dispatch_not_void_Term_17


}
define void @Main_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Term_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @Main__beta_reduce(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR25a = alloca i32 
  store i32 0, i32* %VR25a
  %VR24a = alloca i32 
  store i32 0, i32* %VR24a
  %VR1a = alloca i32 
  store i32 0, i32* %VR1a
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
  %VR1.a = add i32 %ARG0, 0
  store i32 %VR1.a, i32* %VR1a
;- block -
;; -> block: linia 386
;- block -- dispatch -
;; -> dispatch: linia 387
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 387
  %VR2 = ptrtoint %struct.String_protObj_t* @str_const__38 to i32 
;; <- string_const: linia 387
;- block -- dispatch -- object -
;; -> object: linia 387
;; <- object: linia 387
  %VR3 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR3, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__96 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR1_tmp0 = load i32* %VR1a
  %VR4 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR5 = add i32 %VR4, 8
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = load i32* %VR6
  %VR8 = add i32 %VR7, 16
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = inttoptr i32 %VR10 to i32 (i32, i32)*
  %VR12 = call i32 (i32, i32)* %VR11(i32 %ARG, i32 %VR2)
;; <- dispatch: linia 387
;- block -- dispatch -
;; -> dispatch: linia 388
;;generez codul pentru apelul metodei print_self
;- block -- dispatch -- object -
;; -> object: linia 388
;; <- object: linia 388
  %VR13 = inttoptr i32 %VR1_tmp0 to i32*
  %VR14 = icmp eq i32* %VR13,  null
  br i1 %VR14, label %false_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- dispatch_not_void_Main_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__97 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Main_1
dispatch_not_void_Main_1:
  %VR1_tmp1 = load i32* %VR1a
  %VR15 = ptrtoint i32* %VR13 to i32 
  %VR16 = add i32 %VR15, 8
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = load i32* %VR17
  %VR19 = add i32 %VR18, 28
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = load i32* %VR20
  %VR22 = inttoptr i32 %VR21 to i32 (i32)*
  %VR23 = call i32 (i32)* %VR22( i32 %VR1_tmp1)
;; <- dispatch: linia 388
;- block -- let -
;; -> let: linia 389
;- block -- let -- bool_const -
;; -> bool_const: linia 389
  %VR24.a = add i32 0, 0
  store i32 %VR24.a, i32* %VR24a
;; <- bool_const: linia 389
;- block -- let -- let -
;; -> let: linia 390
  %VR25.a = add i32 0, 0
  store i32 %VR25.a, i32* %VR25a
;- block -- let -- let -- block -
;; -> block: linia 391
;- block -- let -- let -- block -- loop -
;; -> loop: linia 392
;; conditie
  br label %start_loop_Main_0
;#######################################; <- dispatch_not_void_Main_1


;#######################################; -> start_loop_Main_0
start_loop_Main_0:
  %VR24_tmp7 = load i32* %VR24a
;- block -- let -- let -- block -- loop -- comp -
;; -> comp: linia 392
;- block -- let -- let -- block -- loop -- comp -- object -
;; -> object: linia 392
;; <- object: linia 392
  %VR26 = sub i32 1, %VR24_tmp7
;; <- comp: linia 392
  %VR27 = icmp eq i32 %VR26,  0
  br i1 %VR27, label %sfarsit_loop_Main_0, label %label_next_loop_Main_0
;#######################################; <- start_loop_Main_0


;#######################################; -> label_next_loop_Main_0
label_next_loop_Main_0:
  %VR1_tmp2 = load i32* %VR1a
;; corp loop
;- block -- let -- let -- block -- loop -- block -
;; -> block: linia 393
;- block -- let -- let -- block -- loop -- block -- assign -
;; -> assign: linia 394
;- block -- let -- let -- block -- loop -- block -- assign -- dispatch -
;; -> dispatch: linia 394
;;generez codul pentru apelul metodei beta
;- block -- let -- let -- block -- loop -- block -- assign -- dispatch -- object -
;; -> object: linia 394
;; <- object: linia 394
  %VR28 = inttoptr i32 %VR1_tmp2 to i32*
  %VR29 = icmp eq i32* %VR28,  null
  br i1 %VR29, label %false_dispatch2, label %dispatch_not_void_Main_2
;#######################################; <- label_next_loop_Main_0


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__98 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Main_2
dispatch_not_void_Main_2:
  %VR1_tmp3 = load i32* %VR1a
  %VR30 = ptrtoint i32* %VR28 to i32 
  %VR31 = add i32 %VR30, 8
  %VR32 = inttoptr i32 %VR31 to i32*
  %VR33 = load i32* %VR32
  %VR34 = add i32 %VR33, 32
  %VR35 = inttoptr i32 %VR34 to i32*
  %VR36 = load i32* %VR35
  %VR37 = inttoptr i32 %VR36 to i32 (i32)*
  %VR38 = call i32 (i32)* %VR37( i32 %VR1_tmp3)
;; <- dispatch: linia 394
  store i32 %VR38, i32* %VR25a
;; <- assign: linia 394
;- block -- let -- let -- block -- loop -- block -- cond -
;; -> cond: linia 395
;;if: linia 395 (expresia pentru predicat)
;;%VR39 rezervat pentru rezultatul if-ului
;- block -- let -- let -- block -- loop -- block -- cond -- eq -
;; -> eq: linia 395
;- block -- let -- let -- block -- loop -- block -- cond -- eq -- object -
;; -> object: linia 395
;; <- object: linia 395
;- block -- let -- let -- block -- loop -- block -- cond -- eq -- object -
;; -> object: linia 395
;; <- object: linia 395
  br label %eq_test_join_true_Main_0
;#######################################; <- dispatch_not_void_Main_2


;#######################################; -> eq_test_join_true_Main_0
eq_test_join_true_Main_0:
  %VR1_tmp4 = load i32* %VR1a
  %VR40.0 = icmp eq i32 %VR38,  %VR1_tmp4
  br i1 %VR40.0, label %eq_test_join_Main_0, label %eq_test_join_false_Main_0
;#######################################; <- eq_test_join_true_Main_0


;#######################################; -> eq_test_join_false_Main_0
eq_test_join_false_Main_0:
  %VR1_tmp5 = load i32* %VR1a
  %VR42 = call i32  @equality_test(i32 1, i32 0, i32 %VR38, i32 %VR1_tmp5)
  %VR40.1 = icmp eq i32 %VR42,  1
  br label %eq_test_join_Main_0
;#######################################; <- eq_test_join_false_Main_0


;#######################################; -> eq_test_join_Main_0
eq_test_join_Main_0:
  %VR40 = phi i1  [ %VR40.0 , %eq_test_join_true_Main_0 ] , [ %VR40.1 , %eq_test_join_false_Main_0 ] 
;; <- eq: linia 395
  %VR43 = icmp eq i1 %VR40,  false
  br i1 %VR43, label %false_Main_0, label %false_false_Main_0
;#######################################; <- eq_test_join_Main_0


;#######################################; -> false_false_Main_0
false_false_Main_0:
;;if: linia 395 (expresia pentru then)
;- block -- let -- let -- block -- loop -- block -- cond -- assign -
;; -> assign: linia 396
;- block -- let -- let -- block -- loop -- block -- cond -- assign -- bool_const -
;; -> bool_const: linia 396
  %VR44 = add i32 1, 0
;; <- bool_const: linia 396
  store i32 %VR44, i32* %VR24a
;; <- assign: linia 396
  br label %join_if_Main_0_true
;#######################################; <- false_false_Main_0


;#######################################; -> join_if_Main_0_true
join_if_Main_0_true:
  %VR39.0 = add i32 %VR44, 0
  br label %join_if_Main_0
;#######################################; <- join_if_Main_0_true


;#######################################; -> false_Main_0
false_Main_0:
;;if: linia 395 (expresia pentru else)
;- block -- let -- let -- block -- loop -- block -- cond -- block -
;; -> block: linia 398
;- block -- let -- let -- block -- loop -- block -- cond -- block -- assign -
;; -> assign: linia 399
;- block -- let -- let -- block -- loop -- block -- cond -- block -- assign -- object -
;; -> object: linia 399
;; <- object: linia 399
  store i32 %VR38, i32* %VR1a
;; <- assign: linia 399
;- block -- let -- let -- block -- loop -- block -- cond -- block -- dispatch -
;; -> dispatch: linia 400
;;generez codul pentru apelul metodei out_string
;- block -- let -- let -- block -- loop -- block -- cond -- block -- dispatch -- string_const -
;; -> string_const: linia 400
  %VR45 = ptrtoint %struct.String_protObj_t* @str_const__39 to i32 
;; <- string_const: linia 400
;- block -- let -- let -- block -- loop -- block -- cond -- block -- dispatch -- object -
;; -> object: linia 400
;; <- object: linia 400
  %VR46 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR46, label %false_dispatch3, label %dispatch_not_void_Main_3
;#######################################; <- false_Main_0


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__99 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Main_3
dispatch_not_void_Main_3:
  %VR47 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR48 = add i32 %VR47, 8
  %VR49 = inttoptr i32 %VR48 to i32*
  %VR50 = load i32* %VR49
  %VR51 = add i32 %VR50, 16
  %VR52 = inttoptr i32 %VR51 to i32*
  %VR53 = load i32* %VR52
  %VR54 = inttoptr i32 %VR53 to i32 (i32, i32)*
  %VR55 = call i32 (i32, i32)* %VR54(i32 %ARG, i32 %VR45)
;; <- dispatch: linia 400
;- block -- let -- let -- block -- loop -- block -- cond -- block -- dispatch -
;; -> dispatch: linia 401
;;generez codul pentru apelul metodei print_self
;- block -- let -- let -- block -- loop -- block -- cond -- block -- dispatch -- object -
;; -> object: linia 401
;; <- object: linia 401
  %VR56 = inttoptr i32 %VR38 to i32*
  %VR57 = icmp eq i32* %VR56,  null
  br i1 %VR57, label %false_dispatch4, label %dispatch_not_void_Main_4
;#######################################; <- dispatch_not_void_Main_3


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__100 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Main_4
dispatch_not_void_Main_4:
  %VR58 = ptrtoint i32* %VR56 to i32 
  %VR59 = add i32 %VR58, 8
  %VR60 = inttoptr i32 %VR59 to i32*
  %VR61 = load i32* %VR60
  %VR62 = add i32 %VR61, 28
  %VR63 = inttoptr i32 %VR62 to i32*
  %VR64 = load i32* %VR63
  %VR65 = inttoptr i32 %VR64 to i32 (i32)*
  %VR66 = call i32 (i32)* %VR65(i32 %VR38)
;; <- dispatch: linia 401
;; <- block: linia 398
  br label %join_if_Main_0_false
;#######################################; <- dispatch_not_void_Main_4


;#######################################; -> join_if_Main_0_false
join_if_Main_0_false:
  %VR39.1 = add i32 %VR66, 0
  br label %join_if_Main_0
;#######################################; <- join_if_Main_0_false


;#######################################; -> join_if_Main_0
join_if_Main_0:
  %VR39 = phi i32  [ %VR39.0 , %join_if_Main_0_true ] , [ %VR39.1 , %join_if_Main_0_false ] 
;; <- cond: linia 395
;; <- block: linia 393
  br label %start_loop_Main_0
;#######################################; <- join_if_Main_0


;#######################################; -> sfarsit_loop_Main_0
sfarsit_loop_Main_0:
;; <- loop: linia 392
;- block -- let -- let -- block -- dispatch -
;; -> dispatch: linia 406
;;generez codul pentru apelul metodei out_string
;- block -- let -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 406
  %VR67 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 406
;- block -- let -- let -- block -- dispatch -- object -
;; -> object: linia 406
;; <- object: linia 406
  %VR68 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR68, label %false_dispatch5, label %dispatch_not_void_Main_5
;#######################################; <- sfarsit_loop_Main_0


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__101 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_Main_5
dispatch_not_void_Main_5:
  %VR1_tmp6 = load i32* %VR1a
  %VR69 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR70 = add i32 %VR69, 8
  %VR71 = inttoptr i32 %VR70 to i32*
  %VR72 = load i32* %VR71
  %VR73 = add i32 %VR72, 16
  %VR74 = inttoptr i32 %VR73 to i32*
  %VR75 = load i32* %VR74
  %VR76 = inttoptr i32 %VR75 to i32 (i32, i32)*
  %VR77 = call i32 (i32, i32)* %VR76(i32 %ARG, i32 %VR67)
;; <- dispatch: linia 406
;- block -- let -- let -- block -- object -
;; -> object: linia 407
;; <- object: linia 407
;; <- block: linia 391
;; <- let: linia 390
;; <- let: linia 389
;; <- block: linia 386
  ret i32 %VR1_tmp6
;#######################################; <- dispatch_not_void_Main_5


}
define i32 @Main__eval_class(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- block -
;; -> block: linia 413
;- block -- dispatch -
;; -> dispatch: linia 414
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 414
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__40 to i32 
;; <- string_const: linia 414
;- block -- dispatch -- object -
;; -> object: linia 414
;; <- object: linia 414
  %VR2 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch6, label %dispatch_not_void_Main_6
;#######################################; <- entry


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__102 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_Main_6
dispatch_not_void_Main_6:
  %VR3 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 16
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 414
;- block -- dispatch -
;; -> dispatch: linia 415
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 415
  %VR12 = ptrtoint %struct.String_protObj_t* @str_const__41 to i32 
;; <- string_const: linia 415
;- block -- dispatch -- object -
;; -> object: linia 415
;; <- object: linia 415
  %VR13 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR13, label %false_dispatch7, label %dispatch_not_void_Main_7
;#######################################; <- dispatch_not_void_Main_6


;#######################################; -> false_dispatch7
false_dispatch7:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__103 to i32))
  ret i32 0
;#######################################; <- false_dispatch7


;#######################################; -> dispatch_not_void_Main_7
dispatch_not_void_Main_7:
  %VR14 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR15 = add i32 %VR14, 8
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
  %VR18 = add i32 %VR17, 16
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
  %VR21 = inttoptr i32 %VR20 to i32 (i32, i32)*
  %VR22 = call i32 (i32, i32)* %VR21(i32 %ARG, i32 %VR12)
;; <- dispatch: linia 415
;- block -- dispatch -
;; -> dispatch: linia 416
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 416
  %VR23 = ptrtoint %struct.String_protObj_t* @str_const__23 to i32 
;; <- string_const: linia 416
;- block -- dispatch -- object -
;; -> object: linia 416
;; <- object: linia 416
  %VR24 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR24, label %false_dispatch8, label %dispatch_not_void_Main_8
;#######################################; <- dispatch_not_void_Main_7


;#######################################; -> false_dispatch8
false_dispatch8:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__104 to i32))
  ret i32 0
;#######################################; <- false_dispatch8


;#######################################; -> dispatch_not_void_Main_8
dispatch_not_void_Main_8:
  %VR25 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR26 = add i32 %VR25, 8
  %VR27 = inttoptr i32 %VR26 to i32*
  %VR28 = load i32* %VR27
  %VR29 = add i32 %VR28, 16
  %VR30 = inttoptr i32 %VR29 to i32*
  %VR31 = load i32* %VR30
  %VR32 = inttoptr i32 %VR31 to i32 (i32, i32)*
  %VR33 = call i32 (i32, i32)* %VR32(i32 %ARG, i32 %VR23)
;; <- dispatch: linia 416
;; <- block: linia 413
  ret i32 %VR33
;#######################################; <- dispatch_not_void_Main_8


}
define i32 @Main__closure_class(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- block -
;; -> block: linia 421
;- block -- dispatch -
;; -> dispatch: linia 422
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 422
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__42 to i32 
;; <- string_const: linia 422
;- block -- dispatch -- object -
;; -> object: linia 422
;; <- object: linia 422
  %VR2 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch9, label %dispatch_not_void_Main_9
;#######################################; <- entry


;#######################################; -> false_dispatch9
false_dispatch9:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__105 to i32))
  ret i32 0
;#######################################; <- false_dispatch9


;#######################################; -> dispatch_not_void_Main_9
dispatch_not_void_Main_9:
  %VR3 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 16
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 422
;- block -- dispatch -
;; -> dispatch: linia 423
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 423
  %VR12 = ptrtoint %struct.String_protObj_t* @str_const__43 to i32 
;; <- string_const: linia 423
;- block -- dispatch -- object -
;; -> object: linia 423
;; <- object: linia 423
  %VR13 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR13, label %false_dispatch10, label %dispatch_not_void_Main_10
;#######################################; <- dispatch_not_void_Main_9


;#######################################; -> false_dispatch10
false_dispatch10:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__106 to i32))
  ret i32 0
;#######################################; <- false_dispatch10


;#######################################; -> dispatch_not_void_Main_10
dispatch_not_void_Main_10:
  %VR14 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR15 = add i32 %VR14, 8
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
  %VR18 = add i32 %VR17, 16
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
  %VR21 = inttoptr i32 %VR20 to i32 (i32, i32)*
  %VR22 = call i32 (i32, i32)* %VR21(i32 %ARG, i32 %VR12)
;; <- dispatch: linia 423
;- block -- dispatch -
;; -> dispatch: linia 424
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 424
  %VR23 = ptrtoint %struct.String_protObj_t* @str_const__44 to i32 
;; <- string_const: linia 424
;- block -- dispatch -- object -
;; -> object: linia 424
;; <- object: linia 424
  %VR24 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR24, label %false_dispatch11, label %dispatch_not_void_Main_11
;#######################################; <- dispatch_not_void_Main_10


;#######################################; -> false_dispatch11
false_dispatch11:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__107 to i32))
  ret i32 0
;#######################################; <- false_dispatch11


;#######################################; -> dispatch_not_void_Main_11
dispatch_not_void_Main_11:
  %VR25 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR26 = add i32 %VR25, 8
  %VR27 = inttoptr i32 %VR26 to i32*
  %VR28 = load i32* %VR27
  %VR29 = add i32 %VR28, 16
  %VR30 = inttoptr i32 %VR29 to i32*
  %VR31 = load i32* %VR30
  %VR32 = inttoptr i32 %VR31 to i32 (i32, i32)*
  %VR33 = call i32 (i32, i32)* %VR32(i32 %ARG, i32 %VR23)
;; <- dispatch: linia 424
;- block -- dispatch -
;; -> dispatch: linia 425
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 425
  %VR34 = ptrtoint %struct.String_protObj_t* @str_const__45 to i32 
;; <- string_const: linia 425
;- block -- dispatch -- object -
;; -> object: linia 425
;; <- object: linia 425
  %VR35 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR35, label %false_dispatch12, label %dispatch_not_void_Main_12
;#######################################; <- dispatch_not_void_Main_11


;#######################################; -> false_dispatch12
false_dispatch12:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__108 to i32))
  ret i32 0
;#######################################; <- false_dispatch12


;#######################################; -> dispatch_not_void_Main_12
dispatch_not_void_Main_12:
  %VR36 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR37 = add i32 %VR36, 8
  %VR38 = inttoptr i32 %VR37 to i32*
  %VR39 = load i32* %VR38
  %VR40 = add i32 %VR39, 16
  %VR41 = inttoptr i32 %VR40 to i32*
  %VR42 = load i32* %VR41
  %VR43 = inttoptr i32 %VR42 to i32 (i32, i32)*
  %VR44 = call i32 (i32, i32)* %VR43(i32 %ARG, i32 %VR34)
;; <- dispatch: linia 425
;- block -- dispatch -
;; -> dispatch: linia 426
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 426
  %VR45 = ptrtoint %struct.String_protObj_t* @str_const__46 to i32 
;; <- string_const: linia 426
;- block -- dispatch -- object -
;; -> object: linia 426
;; <- object: linia 426
  %VR46 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR46, label %false_dispatch13, label %dispatch_not_void_Main_13
;#######################################; <- dispatch_not_void_Main_12


;#######################################; -> false_dispatch13
false_dispatch13:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__109 to i32))
  ret i32 0
;#######################################; <- false_dispatch13


;#######################################; -> dispatch_not_void_Main_13
dispatch_not_void_Main_13:
  %VR47 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR48 = add i32 %VR47, 8
  %VR49 = inttoptr i32 %VR48 to i32*
  %VR50 = load i32* %VR49
  %VR51 = add i32 %VR50, 16
  %VR52 = inttoptr i32 %VR51 to i32*
  %VR53 = load i32* %VR52
  %VR54 = inttoptr i32 %VR53 to i32 (i32, i32)*
  %VR55 = call i32 (i32, i32)* %VR54(i32 %ARG, i32 %VR45)
;; <- dispatch: linia 426
;- block -- dispatch -
;; -> dispatch: linia 427
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 427
  %VR56 = ptrtoint %struct.String_protObj_t* @str_const__47 to i32 
;; <- string_const: linia 427
;- block -- dispatch -- object -
;; -> object: linia 427
;; <- object: linia 427
  %VR57 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR57, label %false_dispatch14, label %dispatch_not_void_Main_14
;#######################################; <- dispatch_not_void_Main_13


;#######################################; -> false_dispatch14
false_dispatch14:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__110 to i32))
  ret i32 0
;#######################################; <- false_dispatch14


;#######################################; -> dispatch_not_void_Main_14
dispatch_not_void_Main_14:
  %VR58 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR59 = add i32 %VR58, 8
  %VR60 = inttoptr i32 %VR59 to i32*
  %VR61 = load i32* %VR60
  %VR62 = add i32 %VR61, 16
  %VR63 = inttoptr i32 %VR62 to i32*
  %VR64 = load i32* %VR63
  %VR65 = inttoptr i32 %VR64 to i32 (i32, i32)*
  %VR66 = call i32 (i32, i32)* %VR65(i32 %ARG, i32 %VR56)
;; <- dispatch: linia 427
;- block -- dispatch -
;; -> dispatch: linia 428
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 428
  %VR67 = ptrtoint %struct.String_protObj_t* @str_const__48 to i32 
;; <- string_const: linia 428
;- block -- dispatch -- object -
;; -> object: linia 428
;; <- object: linia 428
  %VR68 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR68, label %false_dispatch15, label %dispatch_not_void_Main_15
;#######################################; <- dispatch_not_void_Main_14


;#######################################; -> false_dispatch15
false_dispatch15:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__111 to i32))
  ret i32 0
;#######################################; <- false_dispatch15


;#######################################; -> dispatch_not_void_Main_15
dispatch_not_void_Main_15:
  %VR69 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR70 = add i32 %VR69, 8
  %VR71 = inttoptr i32 %VR70 to i32*
  %VR72 = load i32* %VR71
  %VR73 = add i32 %VR72, 16
  %VR74 = inttoptr i32 %VR73 to i32*
  %VR75 = load i32* %VR74
  %VR76 = inttoptr i32 %VR75 to i32 (i32, i32)*
  %VR77 = call i32 (i32, i32)* %VR76(i32 %ARG, i32 %VR67)
;; <- dispatch: linia 428
;- block -- dispatch -
;; -> dispatch: linia 429
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 429
  %VR78 = ptrtoint %struct.String_protObj_t* @str_const__23 to i32 
;; <- string_const: linia 429
;- block -- dispatch -- object -
;; -> object: linia 429
;; <- object: linia 429
  %VR79 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR79, label %false_dispatch16, label %dispatch_not_void_Main_16
;#######################################; <- dispatch_not_void_Main_15


;#######################################; -> false_dispatch16
false_dispatch16:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__112 to i32))
  ret i32 0
;#######################################; <- false_dispatch16


;#######################################; -> dispatch_not_void_Main_16
dispatch_not_void_Main_16:
  %VR80 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR81 = add i32 %VR80, 8
  %VR82 = inttoptr i32 %VR81 to i32*
  %VR83 = load i32* %VR82
  %VR84 = add i32 %VR83, 16
  %VR85 = inttoptr i32 %VR84 to i32*
  %VR86 = load i32* %VR85
  %VR87 = inttoptr i32 %VR86 to i32 (i32, i32)*
  %VR88 = call i32 (i32, i32)* %VR87(i32 %ARG, i32 %VR78)
;; <- dispatch: linia 429
;; <- block: linia 421
  ret i32 %VR88
;#######################################; <- dispatch_not_void_Main_16


}
define i32 @Main__gen_code(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- let -
;; -> let: linia 434
;- let -- dispatch -
;; -> dispatch: linia 434
;;generez codul pentru apelul metodei reset
;- let -- dispatch -- new -
;; -> new: linia 434
  %VR2 = call i32  @Object__copy(i32 ptrtoint (%struct.LambdaListRef_protObj_t* @LambdaListRef_protObj to i32))
  call void @LambdaListRef_init(i32 %VR2)
;; <- new: linia 434
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = icmp eq i32* %VR3,  null
  br i1 %VR4, label %false_dispatch17, label %dispatch_not_void_Main_17
;#######################################; <- entry


;#######################################; -> false_dispatch17
false_dispatch17:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__113 to i32))
  ret i32 0
;#######################################; <- false_dispatch17


;#######################################; -> dispatch_not_void_Main_17
dispatch_not_void_Main_17:
  %VR5 = ptrtoint i32* %VR3 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 28
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32)*
  %VR13 = call i32 (i32)* %VR12(i32 %VR2)
;; <- dispatch: linia 434
;- let -- block -
;; -> block: linia 435
;- let -- block -- dispatch -
;; -> dispatch: linia 436
;;generez codul pentru apelul metodei out_string
;- let -- block -- dispatch -- string_const -
;; -> string_const: linia 436
  %VR14 = ptrtoint %struct.String_protObj_t* @str_const__49 to i32 
;; <- string_const: linia 436
;- let -- block -- dispatch -- object -
;; -> object: linia 436
;; <- object: linia 436
  %VR15 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR15, label %false_dispatch18, label %dispatch_not_void_Main_18
;#######################################; <- dispatch_not_void_Main_17


;#######################################; -> false_dispatch18
false_dispatch18:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__114 to i32))
  ret i32 0
;#######################################; <- false_dispatch18


;#######################################; -> dispatch_not_void_Main_18
dispatch_not_void_Main_18:
  %VR16 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR17 = add i32 %VR16, 8
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
  %VR20 = add i32 %VR19, 16
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
  %VR23 = inttoptr i32 %VR22 to i32 (i32, i32)*
  %VR24 = call i32 (i32, i32)* %VR23(i32 %ARG, i32 %VR14)
;; <- dispatch: linia 436
;- let -- block -- dispatch -
;; -> dispatch: linia 437
;;generez codul pentru apelul metodei print_self
;- let -- block -- dispatch -- object -
;; -> object: linia 437
;; <- object: linia 437
  %VR25 = inttoptr i32 %VR1 to i32*
  %VR26 = icmp eq i32* %VR25,  null
  br i1 %VR26, label %false_dispatch19, label %dispatch_not_void_Main_19
;#######################################; <- dispatch_not_void_Main_18


;#######################################; -> false_dispatch19
false_dispatch19:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__115 to i32))
  ret i32 0
;#######################################; <- false_dispatch19


;#######################################; -> dispatch_not_void_Main_19
dispatch_not_void_Main_19:
  %VR27 = ptrtoint i32* %VR25 to i32 
  %VR28 = add i32 %VR27, 8
  %VR29 = inttoptr i32 %VR28 to i32*
  %VR30 = load i32* %VR29
  %VR31 = add i32 %VR30, 28
  %VR32 = inttoptr i32 %VR31 to i32*
  %VR33 = load i32* %VR32
  %VR34 = inttoptr i32 %VR33 to i32 (i32)*
  %VR35 = call i32 (i32)* %VR34(i32 %VR1)
;; <- dispatch: linia 437
;- let -- block -- dispatch -
;; -> dispatch: linia 438
;;generez codul pentru apelul metodei out_string
;- let -- block -- dispatch -- string_const -
;; -> string_const: linia 438
  %VR36 = ptrtoint %struct.String_protObj_t* @str_const__50 to i32 
;; <- string_const: linia 438
;- let -- block -- dispatch -- object -
;; -> object: linia 438
;; <- object: linia 438
  %VR37 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR37, label %false_dispatch20, label %dispatch_not_void_Main_20
;#######################################; <- dispatch_not_void_Main_19


;#######################################; -> false_dispatch20
false_dispatch20:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__116 to i32))
  ret i32 0
;#######################################; <- false_dispatch20


;#######################################; -> dispatch_not_void_Main_20
dispatch_not_void_Main_20:
  %VR38 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR39 = add i32 %VR38, 8
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = load i32* %VR40
  %VR42 = add i32 %VR41, 16
  %VR43 = inttoptr i32 %VR42 to i32*
  %VR44 = load i32* %VR43
  %VR45 = inttoptr i32 %VR44 to i32 (i32, i32)*
  %VR46 = call i32 (i32, i32)* %VR45(i32 %ARG, i32 %VR36)
;; <- dispatch: linia 438
;- let -- block -- dispatch -
;; -> dispatch: linia 439
;;generez codul pentru apelul metodei out_string
;- let -- block -- dispatch -- string_const -
;; -> string_const: linia 439
  %VR47 = ptrtoint %struct.String_protObj_t* @str_const__51 to i32 
;; <- string_const: linia 439
;- let -- block -- dispatch -- object -
;; -> object: linia 439
;; <- object: linia 439
  %VR48 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR48, label %false_dispatch21, label %dispatch_not_void_Main_21
;#######################################; <- dispatch_not_void_Main_20


;#######################################; -> false_dispatch21
false_dispatch21:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__117 to i32))
  ret i32 0
;#######################################; <- false_dispatch21


;#######################################; -> dispatch_not_void_Main_21
dispatch_not_void_Main_21:
  %VR49 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR50 = add i32 %VR49, 8
  %VR51 = inttoptr i32 %VR50 to i32*
  %VR52 = load i32* %VR51
  %VR53 = add i32 %VR52, 16
  %VR54 = inttoptr i32 %VR53 to i32*
  %VR55 = load i32* %VR54
  %VR56 = inttoptr i32 %VR55 to i32 (i32, i32)*
  %VR57 = call i32 (i32, i32)* %VR56(i32 %ARG, i32 %VR47)
;; <- dispatch: linia 439
;- let -- block -- dispatch -
;; -> dispatch: linia 440
;;generez codul pentru apelul metodei eval_class
;- let -- block -- dispatch -- object -
;; -> object: linia 440
;; <- object: linia 440
  %VR58 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR58, label %false_dispatch22, label %dispatch_not_void_Main_22
;#######################################; <- dispatch_not_void_Main_21


;#######################################; -> false_dispatch22
false_dispatch22:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__118 to i32))
  ret i32 0
;#######################################; <- false_dispatch22


;#######################################; -> dispatch_not_void_Main_22
dispatch_not_void_Main_22:
  %VR59 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR60 = add i32 %VR59, 8
  %VR61 = inttoptr i32 %VR60 to i32*
  %VR62 = load i32* %VR61
  %VR63 = add i32 %VR62, 56
  %VR64 = inttoptr i32 %VR63 to i32*
  %VR65 = load i32* %VR64
  %VR66 = inttoptr i32 %VR65 to i32 (i32)*
  %VR67 = call i32 (i32)* %VR66(i32 %ARG)
;; <- dispatch: linia 440
;- let -- block -- dispatch -
;; -> dispatch: linia 441
;;generez codul pentru apelul metodei closure_class
;- let -- block -- dispatch -- object -
;; -> object: linia 441
;; <- object: linia 441
  %VR68 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR68, label %false_dispatch23, label %dispatch_not_void_Main_23
;#######################################; <- dispatch_not_void_Main_22


;#######################################; -> false_dispatch23
false_dispatch23:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__119 to i32))
  ret i32 0
;#######################################; <- false_dispatch23


;#######################################; -> dispatch_not_void_Main_23
dispatch_not_void_Main_23:
  %VR69 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR70 = add i32 %VR69, 8
  %VR71 = inttoptr i32 %VR70 to i32*
  %VR72 = load i32* %VR71
  %VR73 = add i32 %VR72, 60
  %VR74 = inttoptr i32 %VR73 to i32*
  %VR75 = load i32* %VR74
  %VR76 = inttoptr i32 %VR75 to i32 (i32)*
  %VR77 = call i32 (i32)* %VR76(i32 %ARG)
;; <- dispatch: linia 441
;- let -- block -- dispatch -
;; -> dispatch: linia 442
;;generez codul pentru apelul metodei out_string
;- let -- block -- dispatch -- string_const -
;; -> string_const: linia 442
  %VR78 = ptrtoint %struct.String_protObj_t* @str_const__52 to i32 
;; <- string_const: linia 442
;- let -- block -- dispatch -- object -
;; -> object: linia 442
;; <- object: linia 442
  %VR79 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR79, label %false_dispatch24, label %dispatch_not_void_Main_24
;#######################################; <- dispatch_not_void_Main_23


;#######################################; -> false_dispatch24
false_dispatch24:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__120 to i32))
  ret i32 0
;#######################################; <- false_dispatch24


;#######################################; -> dispatch_not_void_Main_24
dispatch_not_void_Main_24:
  %VR80 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR81 = add i32 %VR80, 8
  %VR82 = inttoptr i32 %VR81 to i32*
  %VR83 = load i32* %VR82
  %VR84 = add i32 %VR83, 16
  %VR85 = inttoptr i32 %VR84 to i32*
  %VR86 = load i32* %VR85
  %VR87 = inttoptr i32 %VR86 to i32 (i32, i32)*
  %VR88 = call i32 (i32, i32)* %VR87(i32 %ARG, i32 %VR78)
;; <- dispatch: linia 442
;- let -- block -- dispatch -
;; -> dispatch: linia 443
;;generez codul pentru apelul metodei out_string
;- let -- block -- dispatch -- string_const -
;; -> string_const: linia 443
  %VR89 = ptrtoint %struct.String_protObj_t* @str_const__53 to i32 
;; <- string_const: linia 443
;- let -- block -- dispatch -- object -
;; -> object: linia 443
;; <- object: linia 443
  %VR90 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR90, label %false_dispatch25, label %dispatch_not_void_Main_25
;#######################################; <- dispatch_not_void_Main_24


;#######################################; -> false_dispatch25
false_dispatch25:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__121 to i32))
  ret i32 0
;#######################################; <- false_dispatch25


;#######################################; -> dispatch_not_void_Main_25
dispatch_not_void_Main_25:
  %VR91 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR92 = add i32 %VR91, 8
  %VR93 = inttoptr i32 %VR92 to i32*
  %VR94 = load i32* %VR93
  %VR95 = add i32 %VR94, 16
  %VR96 = inttoptr i32 %VR95 to i32*
  %VR97 = load i32* %VR96
  %VR98 = inttoptr i32 %VR97 to i32 (i32, i32)*
  %VR99 = call i32 (i32, i32)* %VR98(i32 %ARG, i32 %VR89)
;; <- dispatch: linia 443
;- let -- block -- dispatch -
;; -> dispatch: linia 444
;;generez codul pentru apelul metodei gen_code
;- let -- block -- dispatch -- new -
;; -> new: linia 444
  %VR100 = call i32  @Object__copy(i32 ptrtoint (%struct.VarList_protObj_t* @VarList_protObj to i32))
  call void @VarList_init(i32 %VR100)
;; <- new: linia 444
;- let -- block -- dispatch -- object -
;; -> object: linia 444
;; <- object: linia 444
;- let -- block -- dispatch -- object -
;; -> object: linia 444
;; <- object: linia 444
  %VR101 = inttoptr i32 %VR1 to i32*
  %VR102 = icmp eq i32* %VR101,  null
  br i1 %VR102, label %false_dispatch26, label %dispatch_not_void_Main_26
;#######################################; <- dispatch_not_void_Main_25


;#######################################; -> false_dispatch26
false_dispatch26:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__122 to i32))
  ret i32 0
;#######################################; <- false_dispatch26


;#######################################; -> dispatch_not_void_Main_26
dispatch_not_void_Main_26:
  %VR103 = ptrtoint i32* %VR101 to i32 
  %VR104 = add i32 %VR103, 8
  %VR105 = inttoptr i32 %VR104 to i32*
  %VR106 = load i32* %VR105
  %VR107 = add i32 %VR106, 40
  %VR108 = inttoptr i32 %VR107 to i32*
  %VR109 = load i32* %VR108
  %VR110 = inttoptr i32 %VR109 to i32 (i32, i32, i32)*
  %VR111 = call i32 (i32, i32, i32)* %VR110(i32 %VR1, i32 %VR100, i32 %VR13)
;; <- dispatch: linia 444
;- let -- block -- dispatch -
;; -> dispatch: linia 445
;;generez codul pentru apelul metodei out_string
;- let -- block -- dispatch -- string_const -
;; -> string_const: linia 445
  %VR112 = ptrtoint %struct.String_protObj_t* @str_const__54 to i32 
;; <- string_const: linia 445
;- let -- block -- dispatch -- object -
;; -> object: linia 445
;; <- object: linia 445
  %VR113 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR113, label %false_dispatch27, label %dispatch_not_void_Main_27
;#######################################; <- dispatch_not_void_Main_26


;#######################################; -> false_dispatch27
false_dispatch27:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__123 to i32))
  ret i32 0
;#######################################; <- false_dispatch27


;#######################################; -> dispatch_not_void_Main_27
dispatch_not_void_Main_27:
  %VR114 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR115 = add i32 %VR114, 8
  %VR116 = inttoptr i32 %VR115 to i32*
  %VR117 = load i32* %VR116
  %VR118 = add i32 %VR117, 16
  %VR119 = inttoptr i32 %VR118 to i32*
  %VR120 = load i32* %VR119
  %VR121 = inttoptr i32 %VR120 to i32 (i32, i32)*
  %VR122 = call i32 (i32, i32)* %VR121(i32 %ARG, i32 %VR112)
;; <- dispatch: linia 445
;- let -- block -- loop -
;; -> loop: linia 446
;; conditie
  br label %start_loop_Main_1
;#######################################; <- dispatch_not_void_Main_27


;#######################################; -> start_loop_Main_1
start_loop_Main_1:
;- let -- block -- loop -- comp -
;; -> comp: linia 446
;- let -- block -- loop -- comp -- dispatch -
;; -> dispatch: linia 446
;;generez codul pentru apelul metodei isNil
;- let -- block -- loop -- comp -- dispatch -- object -
;; -> object: linia 446
;; <- object: linia 446
  %VR123 = inttoptr i32 %VR13 to i32*
  %VR124 = icmp eq i32* %VR123,  null
  br i1 %VR124, label %false_dispatch28, label %dispatch_not_void_Main_28
;#######################################; <- start_loop_Main_1


;#######################################; -> false_dispatch28
false_dispatch28:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__124 to i32))
  ret i32 0
;#######################################; <- false_dispatch28


;#######################################; -> dispatch_not_void_Main_28
dispatch_not_void_Main_28:
  %VR125 = ptrtoint i32* %VR123 to i32 
  %VR126 = add i32 %VR125, 8
  %VR127 = inttoptr i32 %VR126 to i32*
  %VR128 = load i32* %VR127
  %VR129 = add i32 %VR128, 12
  %VR130 = inttoptr i32 %VR129 to i32*
  %VR131 = load i32* %VR130
  %VR132 = inttoptr i32 %VR131 to i32 (i32)*
  %VR133 = call i32 (i32)* %VR132(i32 %VR13)
;; <- dispatch: linia 446
  %VR134 = sub i32 1, %VR133
;; <- comp: linia 446
  %VR135 = icmp eq i32 %VR134,  0
  br i1 %VR135, label %sfarsit_loop_Main_1, label %label_next_loop_Main_1
;#######################################; <- dispatch_not_void_Main_28


;#######################################; -> label_next_loop_Main_1
label_next_loop_Main_1:
;; corp loop
;- let -- block -- loop -- let -
;; -> let: linia 447
;- let -- block -- loop -- let -- dispatch -
;; -> dispatch: linia 447
;;generez codul pentru apelul metodei headE
;- let -- block -- loop -- let -- dispatch -- object -
;; -> object: linia 447
;; <- object: linia 447
  %VR136 = inttoptr i32 %VR13 to i32*
  %VR137 = icmp eq i32* %VR136,  null
  br i1 %VR137, label %false_dispatch29, label %dispatch_not_void_Main_29
;#######################################; <- label_next_loop_Main_1


;#######################################; -> false_dispatch29
false_dispatch29:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__125 to i32))
  ret i32 0
;#######################################; <- false_dispatch29


;#######################################; -> dispatch_not_void_Main_29
dispatch_not_void_Main_29:
  %VR138 = ptrtoint i32* %VR136 to i32 
  %VR139 = add i32 %VR138, 8
  %VR140 = inttoptr i32 %VR139 to i32*
  %VR141 = load i32* %VR140
  %VR142 = add i32 %VR141, 16
  %VR143 = inttoptr i32 %VR142 to i32*
  %VR144 = load i32* %VR143
  %VR145 = inttoptr i32 %VR144 to i32 (i32)*
  %VR146 = call i32 (i32)* %VR145(i32 %VR13)
;; <- dispatch: linia 447
;- let -- block -- loop -- let -- let -
;; -> let: linia 448
;- let -- block -- loop -- let -- let -- dispatch -
;; -> dispatch: linia 448
;;generez codul pentru apelul metodei headC
;- let -- block -- loop -- let -- let -- dispatch -- object -
;; -> object: linia 448
;; <- object: linia 448
  %VR147 = inttoptr i32 %VR13 to i32*
  %VR148 = icmp eq i32* %VR147,  null
  br i1 %VR148, label %false_dispatch30, label %dispatch_not_void_Main_30
;#######################################; <- dispatch_not_void_Main_29


;#######################################; -> false_dispatch30
false_dispatch30:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__126 to i32))
  ret i32 0
;#######################################; <- false_dispatch30


;#######################################; -> dispatch_not_void_Main_30
dispatch_not_void_Main_30:
  %VR149 = ptrtoint i32* %VR147 to i32 
  %VR150 = add i32 %VR149, 8
  %VR151 = inttoptr i32 %VR150 to i32*
  %VR152 = load i32* %VR151
  %VR153 = add i32 %VR152, 20
  %VR154 = inttoptr i32 %VR153 to i32*
  %VR155 = load i32* %VR154
  %VR156 = inttoptr i32 %VR155 to i32 (i32)*
  %VR157 = call i32 (i32)* %VR156(i32 %VR13)
;; <- dispatch: linia 448
;- let -- block -- loop -- let -- let -- let -
;; -> let: linia 449
;- let -- block -- loop -- let -- let -- let -- dispatch -
;; -> dispatch: linia 449
;;generez codul pentru apelul metodei headN
;- let -- block -- loop -- let -- let -- let -- dispatch -- object -
;; -> object: linia 449
;; <- object: linia 449
  %VR158 = inttoptr i32 %VR13 to i32*
  %VR159 = icmp eq i32* %VR158,  null
  br i1 %VR159, label %false_dispatch31, label %dispatch_not_void_Main_31
;#######################################; <- dispatch_not_void_Main_30


;#######################################; -> false_dispatch31
false_dispatch31:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__127 to i32))
  ret i32 0
;#######################################; <- false_dispatch31


;#######################################; -> dispatch_not_void_Main_31
dispatch_not_void_Main_31:
  %VR160 = ptrtoint i32* %VR158 to i32 
  %VR161 = add i32 %VR160, 8
  %VR162 = inttoptr i32 %VR161 to i32*
  %VR163 = load i32* %VR162
  %VR164 = add i32 %VR163, 24
  %VR165 = inttoptr i32 %VR164 to i32*
  %VR166 = load i32* %VR165
  %VR167 = inttoptr i32 %VR166 to i32 (i32)*
  %VR168 = call i32 (i32)* %VR167(i32 %VR13)
;; <- dispatch: linia 449
;- let -- block -- loop -- let -- let -- let -- block -
;; -> block: linia 450
;- let -- block -- loop -- let -- let -- let -- block -- dispatch -
;; -> dispatch: linia 451
;;generez codul pentru apelul metodei removeHead
;- let -- block -- loop -- let -- let -- let -- block -- dispatch -- object -
;; -> object: linia 451
;; <- object: linia 451
  %VR169 = inttoptr i32 %VR13 to i32*
  %VR170 = icmp eq i32* %VR169,  null
  br i1 %VR170, label %false_dispatch32, label %dispatch_not_void_Main_32
;#######################################; <- dispatch_not_void_Main_31


;#######################################; -> false_dispatch32
false_dispatch32:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__128 to i32))
  ret i32 0
;#######################################; <- false_dispatch32


;#######################################; -> dispatch_not_void_Main_32
dispatch_not_void_Main_32:
  %VR171 = ptrtoint i32* %VR169 to i32 
  %VR172 = add i32 %VR171, 8
  %VR173 = inttoptr i32 %VR172 to i32*
  %VR174 = load i32* %VR173
  %VR175 = add i32 %VR174, 36
  %VR176 = inttoptr i32 %VR175 to i32*
  %VR177 = load i32* %VR176
  %VR178 = inttoptr i32 %VR177 to i32 (i32)*
  %VR179 = call i32 (i32)* %VR178(i32 %VR13)
;; <- dispatch: linia 451
;- let -- block -- loop -- let -- let -- let -- block -- dispatch -
;; -> dispatch: linia 452
;;generez codul pentru apelul metodei gen_closure_code
;- let -- block -- loop -- let -- let -- let -- block -- dispatch -- object -
;; -> object: linia 452
;; <- object: linia 452
;- let -- block -- loop -- let -- let -- let -- block -- dispatch -- object -
;; -> object: linia 452
;; <- object: linia 452
;- let -- block -- loop -- let -- let -- let -- block -- dispatch -- object -
;; -> object: linia 452
;; <- object: linia 452
;- let -- block -- loop -- let -- let -- let -- block -- dispatch -- object -
;; -> object: linia 452
;; <- object: linia 452
  %VR180 = inttoptr i32 %VR157 to i32*
  %VR181 = icmp eq i32* %VR180,  null
  br i1 %VR181, label %false_dispatch33, label %dispatch_not_void_Main_33
;#######################################; <- dispatch_not_void_Main_32


;#######################################; -> false_dispatch33
false_dispatch33:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__129 to i32))
  ret i32 0
;#######################################; <- false_dispatch33


;#######################################; -> dispatch_not_void_Main_33
dispatch_not_void_Main_33:
  %VR182 = ptrtoint i32* %VR180 to i32 
  %VR183 = add i32 %VR182, 8
  %VR184 = inttoptr i32 %VR183 to i32*
  %VR185 = load i32* %VR184
  %VR186 = add i32 %VR185, 52
  %VR187 = inttoptr i32 %VR186 to i32*
  %VR188 = load i32* %VR187
  %VR189 = inttoptr i32 %VR188 to i32 (i32, i32, i32, i32)*
  %VR190 = call i32 (i32, i32, i32, i32)* %VR189(i32 %VR157, i32 %VR168, i32 %VR146, i32 %VR13)
;; <- dispatch: linia 452
;; <- block: linia 450
;; <- let: linia 449
;; <- let: linia 448
;; <- let: linia 447
  br label %start_loop_Main_1
;#######################################; <- dispatch_not_void_Main_33


;#######################################; -> sfarsit_loop_Main_1
sfarsit_loop_Main_1:
;; <- loop: linia 446
;- let -- block -- dispatch -
;; -> dispatch: linia 455
;;generez codul pentru apelul metodei out_string
;- let -- block -- dispatch -- string_const -
;; -> string_const: linia 455
  %VR191 = ptrtoint %struct.String_protObj_t* @str_const__50 to i32 
;; <- string_const: linia 455
;- let -- block -- dispatch -- object -
;; -> object: linia 455
;; <- object: linia 455
  %VR192 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR192, label %false_dispatch34, label %dispatch_not_void_Main_34
;#######################################; <- sfarsit_loop_Main_1


;#######################################; -> false_dispatch34
false_dispatch34:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__130 to i32))
  ret i32 0
;#######################################; <- false_dispatch34


;#######################################; -> dispatch_not_void_Main_34
dispatch_not_void_Main_34:
  %VR193 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR194 = add i32 %VR193, 8
  %VR195 = inttoptr i32 %VR194 to i32*
  %VR196 = load i32* %VR195
  %VR197 = add i32 %VR196, 16
  %VR198 = inttoptr i32 %VR197 to i32*
  %VR199 = load i32* %VR198
  %VR200 = inttoptr i32 %VR199 to i32 (i32, i32)*
  %VR201 = call i32 (i32, i32)* %VR200(i32 %ARG, i32 %VR191)
;; <- dispatch: linia 455
;; <- block: linia 435
;; <- let: linia 434
  ret i32 %VR201
;#######################################; <- dispatch_not_void_Main_34


}
define i32 @Main__main(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- block -
;; -> block: linia 460
;- block -- dispatch -
;; -> dispatch: linia 461
;;generez codul pentru apelul metodei print_self
;- block -- dispatch -- dispatch -
;; -> dispatch: linia 461
;;generez codul pentru apelul metodei i
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 461
;; <- object: linia 461
  %VR1 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch35, label %dispatch_not_void_Main_35
;#######################################; <- entry


;#######################################; -> false_dispatch35
false_dispatch35:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__131 to i32))
  ret i32 0
;#######################################; <- false_dispatch35


;#######################################; -> dispatch_not_void_Main_35
dispatch_not_void_Main_35:
  %VR2 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 40
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 461
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = icmp eq i32* %VR11,  null
  br i1 %VR12, label %false_dispatch36, label %dispatch_not_void_Main_36
;#######################################; <- dispatch_not_void_Main_35


;#######################################; -> false_dispatch36
false_dispatch36:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__131 to i32))
  ret i32 0
;#######################################; <- false_dispatch36


;#######################################; -> dispatch_not_void_Main_36
dispatch_not_void_Main_36:
  %VR13 = ptrtoint i32* %VR11 to i32 
  %VR14 = add i32 %VR13, 8
  %VR15 = inttoptr i32 %VR14 to i32*
  %VR16 = load i32* %VR15
  %VR17 = add i32 %VR16, 28
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
  %VR20 = inttoptr i32 %VR19 to i32 (i32)*
  %VR21 = call i32 (i32)* %VR20(i32 %VR10)
;; <- dispatch: linia 461
;- block -- dispatch -
;; -> dispatch: linia 462
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 462
  %VR22 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 462
;- block -- dispatch -- object -
;; -> object: linia 462
;; <- object: linia 462
  %VR23 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR23, label %false_dispatch37, label %dispatch_not_void_Main_37
;#######################################; <- dispatch_not_void_Main_36


;#######################################; -> false_dispatch37
false_dispatch37:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__132 to i32))
  ret i32 0
;#######################################; <- false_dispatch37


;#######################################; -> dispatch_not_void_Main_37
dispatch_not_void_Main_37:
  %VR24 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR25 = add i32 %VR24, 8
  %VR26 = inttoptr i32 %VR25 to i32*
  %VR27 = load i32* %VR26
  %VR28 = add i32 %VR27, 16
  %VR29 = inttoptr i32 %VR28 to i32*
  %VR30 = load i32* %VR29
  %VR31 = inttoptr i32 %VR30 to i32 (i32, i32)*
  %VR32 = call i32 (i32, i32)* %VR31(i32 %ARG, i32 %VR22)
;; <- dispatch: linia 462
;- block -- dispatch -
;; -> dispatch: linia 463
;;generez codul pentru apelul metodei print_self
;- block -- dispatch -- dispatch -
;; -> dispatch: linia 463
;;generez codul pentru apelul metodei k
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 463
;; <- object: linia 463
  %VR33 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR33, label %false_dispatch38, label %dispatch_not_void_Main_38
;#######################################; <- dispatch_not_void_Main_37


;#######################################; -> false_dispatch38
false_dispatch38:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__133 to i32))
  ret i32 0
;#######################################; <- false_dispatch38


;#######################################; -> dispatch_not_void_Main_38
dispatch_not_void_Main_38:
  %VR34 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR35 = add i32 %VR34, 8
  %VR36 = inttoptr i32 %VR35 to i32*
  %VR37 = load i32* %VR36
  %VR38 = add i32 %VR37, 44
  %VR39 = inttoptr i32 %VR38 to i32*
  %VR40 = load i32* %VR39
  %VR41 = inttoptr i32 %VR40 to i32 (i32)*
  %VR42 = call i32 (i32)* %VR41(i32 %ARG)
;; <- dispatch: linia 463
  %VR43 = inttoptr i32 %VR42 to i32*
  %VR44 = icmp eq i32* %VR43,  null
  br i1 %VR44, label %false_dispatch39, label %dispatch_not_void_Main_39
;#######################################; <- dispatch_not_void_Main_38


;#######################################; -> false_dispatch39
false_dispatch39:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__133 to i32))
  ret i32 0
;#######################################; <- false_dispatch39


;#######################################; -> dispatch_not_void_Main_39
dispatch_not_void_Main_39:
  %VR45 = ptrtoint i32* %VR43 to i32 
  %VR46 = add i32 %VR45, 8
  %VR47 = inttoptr i32 %VR46 to i32*
  %VR48 = load i32* %VR47
  %VR49 = add i32 %VR48, 28
  %VR50 = inttoptr i32 %VR49 to i32*
  %VR51 = load i32* %VR50
  %VR52 = inttoptr i32 %VR51 to i32 (i32)*
  %VR53 = call i32 (i32)* %VR52(i32 %VR42)
;; <- dispatch: linia 463
;- block -- dispatch -
;; -> dispatch: linia 464
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 464
  %VR54 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 464
;- block -- dispatch -- object -
;; -> object: linia 464
;; <- object: linia 464
  %VR55 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR55, label %false_dispatch40, label %dispatch_not_void_Main_40
;#######################################; <- dispatch_not_void_Main_39


;#######################################; -> false_dispatch40
false_dispatch40:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__134 to i32))
  ret i32 0
;#######################################; <- false_dispatch40


;#######################################; -> dispatch_not_void_Main_40
dispatch_not_void_Main_40:
  %VR56 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR57 = add i32 %VR56, 8
  %VR58 = inttoptr i32 %VR57 to i32*
  %VR59 = load i32* %VR58
  %VR60 = add i32 %VR59, 16
  %VR61 = inttoptr i32 %VR60 to i32*
  %VR62 = load i32* %VR61
  %VR63 = inttoptr i32 %VR62 to i32 (i32, i32)*
  %VR64 = call i32 (i32, i32)* %VR63(i32 %ARG, i32 %VR54)
;; <- dispatch: linia 464
;- block -- dispatch -
;; -> dispatch: linia 465
;;generez codul pentru apelul metodei print_self
;- block -- dispatch -- dispatch -
;; -> dispatch: linia 465
;;generez codul pentru apelul metodei s
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 465
;; <- object: linia 465
  %VR65 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR65, label %false_dispatch41, label %dispatch_not_void_Main_41
;#######################################; <- dispatch_not_void_Main_40


;#######################################; -> false_dispatch41
false_dispatch41:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__135 to i32))
  ret i32 0
;#######################################; <- false_dispatch41


;#######################################; -> dispatch_not_void_Main_41
dispatch_not_void_Main_41:
  %VR66 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR67 = add i32 %VR66, 8
  %VR68 = inttoptr i32 %VR67 to i32*
  %VR69 = load i32* %VR68
  %VR70 = add i32 %VR69, 48
  %VR71 = inttoptr i32 %VR70 to i32*
  %VR72 = load i32* %VR71
  %VR73 = inttoptr i32 %VR72 to i32 (i32)*
  %VR74 = call i32 (i32)* %VR73(i32 %ARG)
;; <- dispatch: linia 465
  %VR75 = inttoptr i32 %VR74 to i32*
  %VR76 = icmp eq i32* %VR75,  null
  br i1 %VR76, label %false_dispatch42, label %dispatch_not_void_Main_42
;#######################################; <- dispatch_not_void_Main_41


;#######################################; -> false_dispatch42
false_dispatch42:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__135 to i32))
  ret i32 0
;#######################################; <- false_dispatch42


;#######################################; -> dispatch_not_void_Main_42
dispatch_not_void_Main_42:
  %VR77 = ptrtoint i32* %VR75 to i32 
  %VR78 = add i32 %VR77, 8
  %VR79 = inttoptr i32 %VR78 to i32*
  %VR80 = load i32* %VR79
  %VR81 = add i32 %VR80, 28
  %VR82 = inttoptr i32 %VR81 to i32*
  %VR83 = load i32* %VR82
  %VR84 = inttoptr i32 %VR83 to i32 (i32)*
  %VR85 = call i32 (i32)* %VR84(i32 %VR74)
;; <- dispatch: linia 465
;- block -- dispatch -
;; -> dispatch: linia 466
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 466
  %VR86 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 466
;- block -- dispatch -- object -
;; -> object: linia 466
;; <- object: linia 466
  %VR87 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR87, label %false_dispatch43, label %dispatch_not_void_Main_43
;#######################################; <- dispatch_not_void_Main_42


;#######################################; -> false_dispatch43
false_dispatch43:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__136 to i32))
  ret i32 0
;#######################################; <- false_dispatch43


;#######################################; -> dispatch_not_void_Main_43
dispatch_not_void_Main_43:
  %VR88 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR89 = add i32 %VR88, 8
  %VR90 = inttoptr i32 %VR89 to i32*
  %VR91 = load i32* %VR90
  %VR92 = add i32 %VR91, 16
  %VR93 = inttoptr i32 %VR92 to i32*
  %VR94 = load i32* %VR93
  %VR95 = inttoptr i32 %VR94 to i32 (i32, i32)*
  %VR96 = call i32 (i32, i32)* %VR95(i32 %ARG, i32 %VR86)
;; <- dispatch: linia 466
;- block -- dispatch -
;; -> dispatch: linia 467
;;generez codul pentru apelul metodei beta_reduce
;- block -- dispatch -- dispatch -
;; -> dispatch: linia 467
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 467
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 467
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 467
;;generez codul pentru apelul metodei s
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 467
;; <- object: linia 467
  %VR97 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR97, label %false_dispatch44, label %dispatch_not_void_Main_44
;#######################################; <- dispatch_not_void_Main_43


;#######################################; -> false_dispatch44
false_dispatch44:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__137 to i32))
  ret i32 0
;#######################################; <- false_dispatch44


;#######################################; -> dispatch_not_void_Main_44
dispatch_not_void_Main_44:
  %VR98 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR99 = add i32 %VR98, 8
  %VR100 = inttoptr i32 %VR99 to i32*
  %VR101 = load i32* %VR100
  %VR102 = add i32 %VR101, 48
  %VR103 = inttoptr i32 %VR102 to i32*
  %VR104 = load i32* %VR103
  %VR105 = inttoptr i32 %VR104 to i32 (i32)*
  %VR106 = call i32 (i32)* %VR105(i32 %ARG)
;; <- dispatch: linia 467
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 467
;;generez codul pentru apelul metodei k
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 467
;; <- object: linia 467
  %VR107 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR107, label %false_dispatch45, label %dispatch_not_void_Main_45
;#######################################; <- dispatch_not_void_Main_44


;#######################################; -> false_dispatch45
false_dispatch45:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__137 to i32))
  ret i32 0
;#######################################; <- false_dispatch45


;#######################################; -> dispatch_not_void_Main_45
dispatch_not_void_Main_45:
  %VR108 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR109 = add i32 %VR108, 8
  %VR110 = inttoptr i32 %VR109 to i32*
  %VR111 = load i32* %VR110
  %VR112 = add i32 %VR111, 44
  %VR113 = inttoptr i32 %VR112 to i32*
  %VR114 = load i32* %VR113
  %VR115 = inttoptr i32 %VR114 to i32 (i32)*
  %VR116 = call i32 (i32)* %VR115(i32 %ARG)
;; <- dispatch: linia 467
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 467
;; <- object: linia 467
  %VR117 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR117, label %false_dispatch46, label %dispatch_not_void_Main_46
;#######################################; <- dispatch_not_void_Main_45


;#######################################; -> false_dispatch46
false_dispatch46:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__137 to i32))
  ret i32 0
;#######################################; <- false_dispatch46


;#######################################; -> dispatch_not_void_Main_46
dispatch_not_void_Main_46:
  %VR118 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR119 = add i32 %VR118, 8
  %VR120 = inttoptr i32 %VR119 to i32*
  %VR121 = load i32* %VR120
  %VR122 = add i32 %VR121, 36
  %VR123 = inttoptr i32 %VR122 to i32*
  %VR124 = load i32* %VR123
  %VR125 = inttoptr i32 %VR124 to i32 (i32, i32, i32)*
  %VR126 = call i32 (i32, i32, i32)* %VR125(i32 %ARG, i32 %VR106, i32 %VR116)
;; <- dispatch: linia 467
;- block -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 467
;;generez codul pentru apelul metodei i
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 467
;; <- object: linia 467
  %VR127 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR127, label %false_dispatch47, label %dispatch_not_void_Main_47
;#######################################; <- dispatch_not_void_Main_46


;#######################################; -> false_dispatch47
false_dispatch47:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__137 to i32))
  ret i32 0
;#######################################; <- false_dispatch47


;#######################################; -> dispatch_not_void_Main_47
dispatch_not_void_Main_47:
  %VR128 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR129 = add i32 %VR128, 8
  %VR130 = inttoptr i32 %VR129 to i32*
  %VR131 = load i32* %VR130
  %VR132 = add i32 %VR131, 40
  %VR133 = inttoptr i32 %VR132 to i32*
  %VR134 = load i32* %VR133
  %VR135 = inttoptr i32 %VR134 to i32 (i32)*
  %VR136 = call i32 (i32)* %VR135(i32 %ARG)
;; <- dispatch: linia 467
;- block -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 467
;; <- object: linia 467
  %VR137 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR137, label %false_dispatch48, label %dispatch_not_void_Main_48
;#######################################; <- dispatch_not_void_Main_47


;#######################################; -> false_dispatch48
false_dispatch48:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__137 to i32))
  ret i32 0
;#######################################; <- false_dispatch48


;#######################################; -> dispatch_not_void_Main_48
dispatch_not_void_Main_48:
  %VR138 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR139 = add i32 %VR138, 8
  %VR140 = inttoptr i32 %VR139 to i32*
  %VR141 = load i32* %VR140
  %VR142 = add i32 %VR141, 36
  %VR143 = inttoptr i32 %VR142 to i32*
  %VR144 = load i32* %VR143
  %VR145 = inttoptr i32 %VR144 to i32 (i32, i32, i32)*
  %VR146 = call i32 (i32, i32, i32)* %VR145(i32 %ARG, i32 %VR126, i32 %VR136)
;; <- dispatch: linia 467
;- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 467
;;generez codul pentru apelul metodei i
;- block -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 467
;; <- object: linia 467
  %VR147 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR147, label %false_dispatch49, label %dispatch_not_void_Main_49
;#######################################; <- dispatch_not_void_Main_48


;#######################################; -> false_dispatch49
false_dispatch49:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__137 to i32))
  ret i32 0
;#######################################; <- false_dispatch49


;#######################################; -> dispatch_not_void_Main_49
dispatch_not_void_Main_49:
  %VR148 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR149 = add i32 %VR148, 8
  %VR150 = inttoptr i32 %VR149 to i32*
  %VR151 = load i32* %VR150
  %VR152 = add i32 %VR151, 40
  %VR153 = inttoptr i32 %VR152 to i32*
  %VR154 = load i32* %VR153
  %VR155 = inttoptr i32 %VR154 to i32 (i32)*
  %VR156 = call i32 (i32)* %VR155(i32 %ARG)
;; <- dispatch: linia 467
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 467
;; <- object: linia 467
  %VR157 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR157, label %false_dispatch50, label %dispatch_not_void_Main_50
;#######################################; <- dispatch_not_void_Main_49


;#######################################; -> false_dispatch50
false_dispatch50:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__137 to i32))
  ret i32 0
;#######################################; <- false_dispatch50


;#######################################; -> dispatch_not_void_Main_50
dispatch_not_void_Main_50:
  %VR158 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR159 = add i32 %VR158, 8
  %VR160 = inttoptr i32 %VR159 to i32*
  %VR161 = load i32* %VR160
  %VR162 = add i32 %VR161, 36
  %VR163 = inttoptr i32 %VR162 to i32*
  %VR164 = load i32* %VR163
  %VR165 = inttoptr i32 %VR164 to i32 (i32, i32, i32)*
  %VR166 = call i32 (i32, i32, i32)* %VR165(i32 %ARG, i32 %VR146, i32 %VR156)
;; <- dispatch: linia 467
;- block -- dispatch -- object -
;; -> object: linia 467
;; <- object: linia 467
  %VR167 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR167, label %false_dispatch51, label %dispatch_not_void_Main_51
;#######################################; <- dispatch_not_void_Main_50


;#######################################; -> false_dispatch51
false_dispatch51:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__137 to i32))
  ret i32 0
;#######################################; <- false_dispatch51


;#######################################; -> dispatch_not_void_Main_51
dispatch_not_void_Main_51:
  %VR168 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR169 = add i32 %VR168, 8
  %VR170 = inttoptr i32 %VR169 to i32*
  %VR171 = load i32* %VR170
  %VR172 = add i32 %VR171, 52
  %VR173 = inttoptr i32 %VR172 to i32*
  %VR174 = load i32* %VR173
  %VR175 = inttoptr i32 %VR174 to i32 (i32, i32)*
  %VR176 = call i32 (i32, i32)* %VR175(i32 %ARG, i32 %VR166)
;; <- dispatch: linia 467
;- block -- dispatch -
;; -> dispatch: linia 468
;;generez codul pentru apelul metodei beta_reduce
;- block -- dispatch -- dispatch -
;; -> dispatch: linia 468
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 468
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 468
;;generez codul pentru apelul metodei k
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 468
;; <- object: linia 468
  %VR177 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR177, label %false_dispatch52, label %dispatch_not_void_Main_52
;#######################################; <- dispatch_not_void_Main_51


;#######################################; -> false_dispatch52
false_dispatch52:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__138 to i32))
  ret i32 0
;#######################################; <- false_dispatch52


;#######################################; -> dispatch_not_void_Main_52
dispatch_not_void_Main_52:
  %VR178 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR179 = add i32 %VR178, 8
  %VR180 = inttoptr i32 %VR179 to i32*
  %VR181 = load i32* %VR180
  %VR182 = add i32 %VR181, 44
  %VR183 = inttoptr i32 %VR182 to i32*
  %VR184 = load i32* %VR183
  %VR185 = inttoptr i32 %VR184 to i32 (i32)*
  %VR186 = call i32 (i32)* %VR185(i32 %ARG)
;; <- dispatch: linia 468
;- block -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 468
;;generez codul pentru apelul metodei i
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 468
;; <- object: linia 468
  %VR187 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR187, label %false_dispatch53, label %dispatch_not_void_Main_53
;#######################################; <- dispatch_not_void_Main_52


;#######################################; -> false_dispatch53
false_dispatch53:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__138 to i32))
  ret i32 0
;#######################################; <- false_dispatch53


;#######################################; -> dispatch_not_void_Main_53
dispatch_not_void_Main_53:
  %VR188 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR189 = add i32 %VR188, 8
  %VR190 = inttoptr i32 %VR189 to i32*
  %VR191 = load i32* %VR190
  %VR192 = add i32 %VR191, 40
  %VR193 = inttoptr i32 %VR192 to i32*
  %VR194 = load i32* %VR193
  %VR195 = inttoptr i32 %VR194 to i32 (i32)*
  %VR196 = call i32 (i32)* %VR195(i32 %ARG)
;; <- dispatch: linia 468
;- block -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 468
;; <- object: linia 468
  %VR197 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR197, label %false_dispatch54, label %dispatch_not_void_Main_54
;#######################################; <- dispatch_not_void_Main_53


;#######################################; -> false_dispatch54
false_dispatch54:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__138 to i32))
  ret i32 0
;#######################################; <- false_dispatch54


;#######################################; -> dispatch_not_void_Main_54
dispatch_not_void_Main_54:
  %VR198 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR199 = add i32 %VR198, 8
  %VR200 = inttoptr i32 %VR199 to i32*
  %VR201 = load i32* %VR200
  %VR202 = add i32 %VR201, 36
  %VR203 = inttoptr i32 %VR202 to i32*
  %VR204 = load i32* %VR203
  %VR205 = inttoptr i32 %VR204 to i32 (i32, i32, i32)*
  %VR206 = call i32 (i32, i32, i32)* %VR205(i32 %ARG, i32 %VR186, i32 %VR196)
;; <- dispatch: linia 468
;- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 468
;;generez codul pentru apelul metodei i
;- block -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 468
;; <- object: linia 468
  %VR207 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR207, label %false_dispatch55, label %dispatch_not_void_Main_55
;#######################################; <- dispatch_not_void_Main_54


;#######################################; -> false_dispatch55
false_dispatch55:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__138 to i32))
  ret i32 0
;#######################################; <- false_dispatch55


;#######################################; -> dispatch_not_void_Main_55
dispatch_not_void_Main_55:
  %VR208 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR209 = add i32 %VR208, 8
  %VR210 = inttoptr i32 %VR209 to i32*
  %VR211 = load i32* %VR210
  %VR212 = add i32 %VR211, 40
  %VR213 = inttoptr i32 %VR212 to i32*
  %VR214 = load i32* %VR213
  %VR215 = inttoptr i32 %VR214 to i32 (i32)*
  %VR216 = call i32 (i32)* %VR215(i32 %ARG)
;; <- dispatch: linia 468
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 468
;; <- object: linia 468
  %VR217 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR217, label %false_dispatch56, label %dispatch_not_void_Main_56
;#######################################; <- dispatch_not_void_Main_55


;#######################################; -> false_dispatch56
false_dispatch56:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__138 to i32))
  ret i32 0
;#######################################; <- false_dispatch56


;#######################################; -> dispatch_not_void_Main_56
dispatch_not_void_Main_56:
  %VR218 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR219 = add i32 %VR218, 8
  %VR220 = inttoptr i32 %VR219 to i32*
  %VR221 = load i32* %VR220
  %VR222 = add i32 %VR221, 36
  %VR223 = inttoptr i32 %VR222 to i32*
  %VR224 = load i32* %VR223
  %VR225 = inttoptr i32 %VR224 to i32 (i32, i32, i32)*
  %VR226 = call i32 (i32, i32, i32)* %VR225(i32 %ARG, i32 %VR206, i32 %VR216)
;; <- dispatch: linia 468
;- block -- dispatch -- object -
;; -> object: linia 468
;; <- object: linia 468
  %VR227 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR227, label %false_dispatch57, label %dispatch_not_void_Main_57
;#######################################; <- dispatch_not_void_Main_56


;#######################################; -> false_dispatch57
false_dispatch57:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__138 to i32))
  ret i32 0
;#######################################; <- false_dispatch57


;#######################################; -> dispatch_not_void_Main_57
dispatch_not_void_Main_57:
  %VR228 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR229 = add i32 %VR228, 8
  %VR230 = inttoptr i32 %VR229 to i32*
  %VR231 = load i32* %VR230
  %VR232 = add i32 %VR231, 52
  %VR233 = inttoptr i32 %VR232 to i32*
  %VR234 = load i32* %VR233
  %VR235 = inttoptr i32 %VR234 to i32 (i32, i32)*
  %VR236 = call i32 (i32, i32)* %VR235(i32 %ARG, i32 %VR226)
;; <- dispatch: linia 468
;- block -- dispatch -
;; -> dispatch: linia 469
;;generez codul pentru apelul metodei gen_code
;- block -- dispatch -- dispatch -
;; -> dispatch: linia 469
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 469
;;generez codul pentru apelul metodei i
;- block -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 469
;; <- object: linia 469
  %VR237 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR237, label %false_dispatch58, label %dispatch_not_void_Main_58
;#######################################; <- dispatch_not_void_Main_57


;#######################################; -> false_dispatch58
false_dispatch58:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__139 to i32))
  ret i32 0
;#######################################; <- false_dispatch58


;#######################################; -> dispatch_not_void_Main_58
dispatch_not_void_Main_58:
  %VR238 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR239 = add i32 %VR238, 8
  %VR240 = inttoptr i32 %VR239 to i32*
  %VR241 = load i32* %VR240
  %VR242 = add i32 %VR241, 40
  %VR243 = inttoptr i32 %VR242 to i32*
  %VR244 = load i32* %VR243
  %VR245 = inttoptr i32 %VR244 to i32 (i32)*
  %VR246 = call i32 (i32)* %VR245(i32 %ARG)
;; <- dispatch: linia 469
;- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 469
;;generez codul pentru apelul metodei i
;- block -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 469
;; <- object: linia 469
  %VR247 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR247, label %false_dispatch59, label %dispatch_not_void_Main_59
;#######################################; <- dispatch_not_void_Main_58


;#######################################; -> false_dispatch59
false_dispatch59:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__139 to i32))
  ret i32 0
;#######################################; <- false_dispatch59


;#######################################; -> dispatch_not_void_Main_59
dispatch_not_void_Main_59:
  %VR248 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR249 = add i32 %VR248, 8
  %VR250 = inttoptr i32 %VR249 to i32*
  %VR251 = load i32* %VR250
  %VR252 = add i32 %VR251, 40
  %VR253 = inttoptr i32 %VR252 to i32*
  %VR254 = load i32* %VR253
  %VR255 = inttoptr i32 %VR254 to i32 (i32)*
  %VR256 = call i32 (i32)* %VR255(i32 %ARG)
;; <- dispatch: linia 469
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 469
;; <- object: linia 469
  %VR257 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR257, label %false_dispatch60, label %dispatch_not_void_Main_60
;#######################################; <- dispatch_not_void_Main_59


;#######################################; -> false_dispatch60
false_dispatch60:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__139 to i32))
  ret i32 0
;#######################################; <- false_dispatch60


;#######################################; -> dispatch_not_void_Main_60
dispatch_not_void_Main_60:
  %VR258 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR259 = add i32 %VR258, 8
  %VR260 = inttoptr i32 %VR259 to i32*
  %VR261 = load i32* %VR260
  %VR262 = add i32 %VR261, 36
  %VR263 = inttoptr i32 %VR262 to i32*
  %VR264 = load i32* %VR263
  %VR265 = inttoptr i32 %VR264 to i32 (i32, i32, i32)*
  %VR266 = call i32 (i32, i32, i32)* %VR265(i32 %ARG, i32 %VR246, i32 %VR256)
;; <- dispatch: linia 469
;- block -- dispatch -- object -
;; -> object: linia 469
;; <- object: linia 469
  %VR267 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR267, label %false_dispatch61, label %dispatch_not_void_Main_61
;#######################################; <- dispatch_not_void_Main_60


;#######################################; -> false_dispatch61
false_dispatch61:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__139 to i32))
  ret i32 0
;#######################################; <- false_dispatch61


;#######################################; -> dispatch_not_void_Main_61
dispatch_not_void_Main_61:
  %VR268 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR269 = add i32 %VR268, 8
  %VR270 = inttoptr i32 %VR269 to i32*
  %VR271 = load i32* %VR270
  %VR272 = add i32 %VR271, 64
  %VR273 = inttoptr i32 %VR272 to i32*
  %VR274 = load i32* %VR273
  %VR275 = inttoptr i32 %VR274 to i32 (i32, i32)*
  %VR276 = call i32 (i32, i32)* %VR275(i32 %ARG, i32 %VR266)
;; <- dispatch: linia 469
;- block -- dispatch -
;; -> dispatch: linia 470
;;generez codul pentru apelul metodei gen_code
;- block -- dispatch -- dispatch -
;; -> dispatch: linia 470
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 470
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 470
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 470
;;generez codul pentru apelul metodei s
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 470
;; <- object: linia 470
  %VR277 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR277, label %false_dispatch62, label %dispatch_not_void_Main_62
;#######################################; <- dispatch_not_void_Main_61


;#######################################; -> false_dispatch62
false_dispatch62:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__140 to i32))
  ret i32 0
;#######################################; <- false_dispatch62


;#######################################; -> dispatch_not_void_Main_62
dispatch_not_void_Main_62:
  %VR278 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR279 = add i32 %VR278, 8
  %VR280 = inttoptr i32 %VR279 to i32*
  %VR281 = load i32* %VR280
  %VR282 = add i32 %VR281, 48
  %VR283 = inttoptr i32 %VR282 to i32*
  %VR284 = load i32* %VR283
  %VR285 = inttoptr i32 %VR284 to i32 (i32)*
  %VR286 = call i32 (i32)* %VR285(i32 %ARG)
;; <- dispatch: linia 470
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 470
;;generez codul pentru apelul metodei k
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 470
;; <- object: linia 470
  %VR287 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR287, label %false_dispatch63, label %dispatch_not_void_Main_63
;#######################################; <- dispatch_not_void_Main_62


;#######################################; -> false_dispatch63
false_dispatch63:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__140 to i32))
  ret i32 0
;#######################################; <- false_dispatch63


;#######################################; -> dispatch_not_void_Main_63
dispatch_not_void_Main_63:
  %VR288 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR289 = add i32 %VR288, 8
  %VR290 = inttoptr i32 %VR289 to i32*
  %VR291 = load i32* %VR290
  %VR292 = add i32 %VR291, 44
  %VR293 = inttoptr i32 %VR292 to i32*
  %VR294 = load i32* %VR293
  %VR295 = inttoptr i32 %VR294 to i32 (i32)*
  %VR296 = call i32 (i32)* %VR295(i32 %ARG)
;; <- dispatch: linia 470
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 470
;; <- object: linia 470
  %VR297 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR297, label %false_dispatch64, label %dispatch_not_void_Main_64
;#######################################; <- dispatch_not_void_Main_63


;#######################################; -> false_dispatch64
false_dispatch64:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__140 to i32))
  ret i32 0
;#######################################; <- false_dispatch64


;#######################################; -> dispatch_not_void_Main_64
dispatch_not_void_Main_64:
  %VR298 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR299 = add i32 %VR298, 8
  %VR300 = inttoptr i32 %VR299 to i32*
  %VR301 = load i32* %VR300
  %VR302 = add i32 %VR301, 36
  %VR303 = inttoptr i32 %VR302 to i32*
  %VR304 = load i32* %VR303
  %VR305 = inttoptr i32 %VR304 to i32 (i32, i32, i32)*
  %VR306 = call i32 (i32, i32, i32)* %VR305(i32 %ARG, i32 %VR286, i32 %VR296)
;; <- dispatch: linia 470
;- block -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 470
;;generez codul pentru apelul metodei i
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 470
;; <- object: linia 470
  %VR307 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR307, label %false_dispatch65, label %dispatch_not_void_Main_65
;#######################################; <- dispatch_not_void_Main_64


;#######################################; -> false_dispatch65
false_dispatch65:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__140 to i32))
  ret i32 0
;#######################################; <- false_dispatch65


;#######################################; -> dispatch_not_void_Main_65
dispatch_not_void_Main_65:
  %VR308 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR309 = add i32 %VR308, 8
  %VR310 = inttoptr i32 %VR309 to i32*
  %VR311 = load i32* %VR310
  %VR312 = add i32 %VR311, 40
  %VR313 = inttoptr i32 %VR312 to i32*
  %VR314 = load i32* %VR313
  %VR315 = inttoptr i32 %VR314 to i32 (i32)*
  %VR316 = call i32 (i32)* %VR315(i32 %ARG)
;; <- dispatch: linia 470
;- block -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 470
;; <- object: linia 470
  %VR317 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR317, label %false_dispatch66, label %dispatch_not_void_Main_66
;#######################################; <- dispatch_not_void_Main_65


;#######################################; -> false_dispatch66
false_dispatch66:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__140 to i32))
  ret i32 0
;#######################################; <- false_dispatch66


;#######################################; -> dispatch_not_void_Main_66
dispatch_not_void_Main_66:
  %VR318 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR319 = add i32 %VR318, 8
  %VR320 = inttoptr i32 %VR319 to i32*
  %VR321 = load i32* %VR320
  %VR322 = add i32 %VR321, 36
  %VR323 = inttoptr i32 %VR322 to i32*
  %VR324 = load i32* %VR323
  %VR325 = inttoptr i32 %VR324 to i32 (i32, i32, i32)*
  %VR326 = call i32 (i32, i32, i32)* %VR325(i32 %ARG, i32 %VR306, i32 %VR316)
;; <- dispatch: linia 470
;- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 470
;;generez codul pentru apelul metodei i
;- block -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 470
;; <- object: linia 470
  %VR327 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR327, label %false_dispatch67, label %dispatch_not_void_Main_67
;#######################################; <- dispatch_not_void_Main_66


;#######################################; -> false_dispatch67
false_dispatch67:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__140 to i32))
  ret i32 0
;#######################################; <- false_dispatch67


;#######################################; -> dispatch_not_void_Main_67
dispatch_not_void_Main_67:
  %VR328 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR329 = add i32 %VR328, 8
  %VR330 = inttoptr i32 %VR329 to i32*
  %VR331 = load i32* %VR330
  %VR332 = add i32 %VR331, 40
  %VR333 = inttoptr i32 %VR332 to i32*
  %VR334 = load i32* %VR333
  %VR335 = inttoptr i32 %VR334 to i32 (i32)*
  %VR336 = call i32 (i32)* %VR335(i32 %ARG)
;; <- dispatch: linia 470
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 470
;; <- object: linia 470
  %VR337 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR337, label %false_dispatch68, label %dispatch_not_void_Main_68
;#######################################; <- dispatch_not_void_Main_67


;#######################################; -> false_dispatch68
false_dispatch68:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__140 to i32))
  ret i32 0
;#######################################; <- false_dispatch68


;#######################################; -> dispatch_not_void_Main_68
dispatch_not_void_Main_68:
  %VR338 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR339 = add i32 %VR338, 8
  %VR340 = inttoptr i32 %VR339 to i32*
  %VR341 = load i32* %VR340
  %VR342 = add i32 %VR341, 36
  %VR343 = inttoptr i32 %VR342 to i32*
  %VR344 = load i32* %VR343
  %VR345 = inttoptr i32 %VR344 to i32 (i32, i32, i32)*
  %VR346 = call i32 (i32, i32, i32)* %VR345(i32 %ARG, i32 %VR326, i32 %VR336)
;; <- dispatch: linia 470
;- block -- dispatch -- object -
;; -> object: linia 470
;; <- object: linia 470
  %VR347 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR347, label %false_dispatch69, label %dispatch_not_void_Main_69
;#######################################; <- dispatch_not_void_Main_68


;#######################################; -> false_dispatch69
false_dispatch69:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__140 to i32))
  ret i32 0
;#######################################; <- false_dispatch69


;#######################################; -> dispatch_not_void_Main_69
dispatch_not_void_Main_69:
  %VR348 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR349 = add i32 %VR348, 8
  %VR350 = inttoptr i32 %VR349 to i32*
  %VR351 = load i32* %VR350
  %VR352 = add i32 %VR351, 64
  %VR353 = inttoptr i32 %VR352 to i32*
  %VR354 = load i32* %VR353
  %VR355 = inttoptr i32 %VR354 to i32 (i32, i32)*
  %VR356 = call i32 (i32, i32)* %VR355(i32 %ARG, i32 %VR346)
;; <- dispatch: linia 470
;- block -- dispatch -
;; -> dispatch: linia 471
;;generez codul pentru apelul metodei gen_code
;- block -- dispatch -- dispatch -
;; -> dispatch: linia 471
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 471
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 471
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 471
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 471
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 471
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 471
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 471
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 471
;;generez codul pentru apelul metodei i
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 471
;; <- object: linia 471
  %VR357 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR357, label %false_dispatch70, label %dispatch_not_void_Main_70
;#######################################; <- dispatch_not_void_Main_69


;#######################################; -> false_dispatch70
false_dispatch70:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__141 to i32))
  ret i32 0
;#######################################; <- false_dispatch70


;#######################################; -> dispatch_not_void_Main_70
dispatch_not_void_Main_70:
  %VR358 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR359 = add i32 %VR358, 8
  %VR360 = inttoptr i32 %VR359 to i32*
  %VR361 = load i32* %VR360
  %VR362 = add i32 %VR361, 40
  %VR363 = inttoptr i32 %VR362 to i32*
  %VR364 = load i32* %VR363
  %VR365 = inttoptr i32 %VR364 to i32 (i32)*
  %VR366 = call i32 (i32)* %VR365(i32 %ARG)
;; <- dispatch: linia 471
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 471
;;generez codul pentru apelul metodei k
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 471
;; <- object: linia 471
  %VR367 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR367, label %false_dispatch71, label %dispatch_not_void_Main_71
;#######################################; <- dispatch_not_void_Main_70


;#######################################; -> false_dispatch71
false_dispatch71:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__141 to i32))
  ret i32 0
;#######################################; <- false_dispatch71


;#######################################; -> dispatch_not_void_Main_71
dispatch_not_void_Main_71:
  %VR368 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR369 = add i32 %VR368, 8
  %VR370 = inttoptr i32 %VR369 to i32*
  %VR371 = load i32* %VR370
  %VR372 = add i32 %VR371, 44
  %VR373 = inttoptr i32 %VR372 to i32*
  %VR374 = load i32* %VR373
  %VR375 = inttoptr i32 %VR374 to i32 (i32)*
  %VR376 = call i32 (i32)* %VR375(i32 %ARG)
;; <- dispatch: linia 471
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 471
;; <- object: linia 471
  %VR377 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR377, label %false_dispatch72, label %dispatch_not_void_Main_72
;#######################################; <- dispatch_not_void_Main_71


;#######################################; -> false_dispatch72
false_dispatch72:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__141 to i32))
  ret i32 0
;#######################################; <- false_dispatch72


;#######################################; -> dispatch_not_void_Main_72
dispatch_not_void_Main_72:
  %VR378 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR379 = add i32 %VR378, 8
  %VR380 = inttoptr i32 %VR379 to i32*
  %VR381 = load i32* %VR380
  %VR382 = add i32 %VR381, 36
  %VR383 = inttoptr i32 %VR382 to i32*
  %VR384 = load i32* %VR383
  %VR385 = inttoptr i32 %VR384 to i32 (i32, i32, i32)*
  %VR386 = call i32 (i32, i32, i32)* %VR385(i32 %ARG, i32 %VR366, i32 %VR376)
;; <- dispatch: linia 471
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 471
;;generez codul pentru apelul metodei s
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 471
;; <- object: linia 471
  %VR387 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR387, label %false_dispatch73, label %dispatch_not_void_Main_73
;#######################################; <- dispatch_not_void_Main_72


;#######################################; -> false_dispatch73
false_dispatch73:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__141 to i32))
  ret i32 0
;#######################################; <- false_dispatch73


;#######################################; -> dispatch_not_void_Main_73
dispatch_not_void_Main_73:
  %VR388 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR389 = add i32 %VR388, 8
  %VR390 = inttoptr i32 %VR389 to i32*
  %VR391 = load i32* %VR390
  %VR392 = add i32 %VR391, 48
  %VR393 = inttoptr i32 %VR392 to i32*
  %VR394 = load i32* %VR393
  %VR395 = inttoptr i32 %VR394 to i32 (i32)*
  %VR396 = call i32 (i32)* %VR395(i32 %ARG)
;; <- dispatch: linia 471
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 471
;; <- object: linia 471
  %VR397 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR397, label %false_dispatch74, label %dispatch_not_void_Main_74
;#######################################; <- dispatch_not_void_Main_73


;#######################################; -> false_dispatch74
false_dispatch74:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__141 to i32))
  ret i32 0
;#######################################; <- false_dispatch74


;#######################################; -> dispatch_not_void_Main_74
dispatch_not_void_Main_74:
  %VR398 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR399 = add i32 %VR398, 8
  %VR400 = inttoptr i32 %VR399 to i32*
  %VR401 = load i32* %VR400
  %VR402 = add i32 %VR401, 36
  %VR403 = inttoptr i32 %VR402 to i32*
  %VR404 = load i32* %VR403
  %VR405 = inttoptr i32 %VR404 to i32 (i32, i32, i32)*
  %VR406 = call i32 (i32, i32, i32)* %VR405(i32 %ARG, i32 %VR386, i32 %VR396)
;; <- dispatch: linia 471
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 471
;;generez codul pentru apelul metodei s
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 471
;; <- object: linia 471
  %VR407 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR407, label %false_dispatch75, label %dispatch_not_void_Main_75
;#######################################; <- dispatch_not_void_Main_74


;#######################################; -> false_dispatch75
false_dispatch75:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__141 to i32))
  ret i32 0
;#######################################; <- false_dispatch75


;#######################################; -> dispatch_not_void_Main_75
dispatch_not_void_Main_75:
  %VR408 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR409 = add i32 %VR408, 8
  %VR410 = inttoptr i32 %VR409 to i32*
  %VR411 = load i32* %VR410
  %VR412 = add i32 %VR411, 48
  %VR413 = inttoptr i32 %VR412 to i32*
  %VR414 = load i32* %VR413
  %VR415 = inttoptr i32 %VR414 to i32 (i32)*
  %VR416 = call i32 (i32)* %VR415(i32 %ARG)
;; <- dispatch: linia 471
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 471
;; <- object: linia 471
  %VR417 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR417, label %false_dispatch76, label %dispatch_not_void_Main_76
;#######################################; <- dispatch_not_void_Main_75


;#######################################; -> false_dispatch76
false_dispatch76:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__141 to i32))
  ret i32 0
;#######################################; <- false_dispatch76


;#######################################; -> dispatch_not_void_Main_76
dispatch_not_void_Main_76:
  %VR418 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR419 = add i32 %VR418, 8
  %VR420 = inttoptr i32 %VR419 to i32*
  %VR421 = load i32* %VR420
  %VR422 = add i32 %VR421, 36
  %VR423 = inttoptr i32 %VR422 to i32*
  %VR424 = load i32* %VR423
  %VR425 = inttoptr i32 %VR424 to i32 (i32, i32, i32)*
  %VR426 = call i32 (i32, i32, i32)* %VR425(i32 %ARG, i32 %VR406, i32 %VR416)
;; <- dispatch: linia 471
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 472
;;generez codul pentru apelul metodei k
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 472
;; <- object: linia 472
  %VR427 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR427, label %false_dispatch77, label %dispatch_not_void_Main_77
;#######################################; <- dispatch_not_void_Main_76


;#######################################; -> false_dispatch77
false_dispatch77:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__142 to i32))
  ret i32 0
;#######################################; <- false_dispatch77


;#######################################; -> dispatch_not_void_Main_77
dispatch_not_void_Main_77:
  %VR428 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR429 = add i32 %VR428, 8
  %VR430 = inttoptr i32 %VR429 to i32*
  %VR431 = load i32* %VR430
  %VR432 = add i32 %VR431, 44
  %VR433 = inttoptr i32 %VR432 to i32*
  %VR434 = load i32* %VR433
  %VR435 = inttoptr i32 %VR434 to i32 (i32)*
  %VR436 = call i32 (i32)* %VR435(i32 %ARG)
;; <- dispatch: linia 472
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 471
;; <- object: linia 471
  %VR437 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR437, label %false_dispatch78, label %dispatch_not_void_Main_78
;#######################################; <- dispatch_not_void_Main_77


;#######################################; -> false_dispatch78
false_dispatch78:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__141 to i32))
  ret i32 0
;#######################################; <- false_dispatch78


;#######################################; -> dispatch_not_void_Main_78
dispatch_not_void_Main_78:
  %VR438 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR439 = add i32 %VR438, 8
  %VR440 = inttoptr i32 %VR439 to i32*
  %VR441 = load i32* %VR440
  %VR442 = add i32 %VR441, 36
  %VR443 = inttoptr i32 %VR442 to i32*
  %VR444 = load i32* %VR443
  %VR445 = inttoptr i32 %VR444 to i32 (i32, i32, i32)*
  %VR446 = call i32 (i32, i32, i32)* %VR445(i32 %ARG, i32 %VR426, i32 %VR436)
;; <- dispatch: linia 471
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 472
;;generez codul pentru apelul metodei s
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 472
;; <- object: linia 472
  %VR447 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR447, label %false_dispatch79, label %dispatch_not_void_Main_79
;#######################################; <- dispatch_not_void_Main_78


;#######################################; -> false_dispatch79
false_dispatch79:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__142 to i32))
  ret i32 0
;#######################################; <- false_dispatch79


;#######################################; -> dispatch_not_void_Main_79
dispatch_not_void_Main_79:
  %VR448 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR449 = add i32 %VR448, 8
  %VR450 = inttoptr i32 %VR449 to i32*
  %VR451 = load i32* %VR450
  %VR452 = add i32 %VR451, 48
  %VR453 = inttoptr i32 %VR452 to i32*
  %VR454 = load i32* %VR453
  %VR455 = inttoptr i32 %VR454 to i32 (i32)*
  %VR456 = call i32 (i32)* %VR455(i32 %ARG)
;; <- dispatch: linia 472
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 471
;; <- object: linia 471
  %VR457 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR457, label %false_dispatch80, label %dispatch_not_void_Main_80
;#######################################; <- dispatch_not_void_Main_79


;#######################################; -> false_dispatch80
false_dispatch80:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__141 to i32))
  ret i32 0
;#######################################; <- false_dispatch80


;#######################################; -> dispatch_not_void_Main_80
dispatch_not_void_Main_80:
  %VR458 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR459 = add i32 %VR458, 8
  %VR460 = inttoptr i32 %VR459 to i32*
  %VR461 = load i32* %VR460
  %VR462 = add i32 %VR461, 36
  %VR463 = inttoptr i32 %VR462 to i32*
  %VR464 = load i32* %VR463
  %VR465 = inttoptr i32 %VR464 to i32 (i32, i32, i32)*
  %VR466 = call i32 (i32, i32, i32)* %VR465(i32 %ARG, i32 %VR446, i32 %VR456)
;; <- dispatch: linia 471
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 472
;;generez codul pentru apelul metodei i
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 472
;; <- object: linia 472
  %VR467 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR467, label %false_dispatch81, label %dispatch_not_void_Main_81
;#######################################; <- dispatch_not_void_Main_80


;#######################################; -> false_dispatch81
false_dispatch81:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__142 to i32))
  ret i32 0
;#######################################; <- false_dispatch81


;#######################################; -> dispatch_not_void_Main_81
dispatch_not_void_Main_81:
  %VR468 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR469 = add i32 %VR468, 8
  %VR470 = inttoptr i32 %VR469 to i32*
  %VR471 = load i32* %VR470
  %VR472 = add i32 %VR471, 40
  %VR473 = inttoptr i32 %VR472 to i32*
  %VR474 = load i32* %VR473
  %VR475 = inttoptr i32 %VR474 to i32 (i32)*
  %VR476 = call i32 (i32)* %VR475(i32 %ARG)
;; <- dispatch: linia 472
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 471
;; <- object: linia 471
  %VR477 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR477, label %false_dispatch82, label %dispatch_not_void_Main_82
;#######################################; <- dispatch_not_void_Main_81


;#######################################; -> false_dispatch82
false_dispatch82:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__141 to i32))
  ret i32 0
;#######################################; <- false_dispatch82


;#######################################; -> dispatch_not_void_Main_82
dispatch_not_void_Main_82:
  %VR478 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR479 = add i32 %VR478, 8
  %VR480 = inttoptr i32 %VR479 to i32*
  %VR481 = load i32* %VR480
  %VR482 = add i32 %VR481, 36
  %VR483 = inttoptr i32 %VR482 to i32*
  %VR484 = load i32* %VR483
  %VR485 = inttoptr i32 %VR484 to i32 (i32, i32, i32)*
  %VR486 = call i32 (i32, i32, i32)* %VR485(i32 %ARG, i32 %VR466, i32 %VR476)
;; <- dispatch: linia 471
;- block -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 472
;;generez codul pentru apelul metodei k
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 472
;; <- object: linia 472
  %VR487 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR487, label %false_dispatch83, label %dispatch_not_void_Main_83
;#######################################; <- dispatch_not_void_Main_82


;#######################################; -> false_dispatch83
false_dispatch83:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__142 to i32))
  ret i32 0
;#######################################; <- false_dispatch83


;#######################################; -> dispatch_not_void_Main_83
dispatch_not_void_Main_83:
  %VR488 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR489 = add i32 %VR488, 8
  %VR490 = inttoptr i32 %VR489 to i32*
  %VR491 = load i32* %VR490
  %VR492 = add i32 %VR491, 44
  %VR493 = inttoptr i32 %VR492 to i32*
  %VR494 = load i32* %VR493
  %VR495 = inttoptr i32 %VR494 to i32 (i32)*
  %VR496 = call i32 (i32)* %VR495(i32 %ARG)
;; <- dispatch: linia 472
;- block -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 471
;; <- object: linia 471
  %VR497 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR497, label %false_dispatch84, label %dispatch_not_void_Main_84
;#######################################; <- dispatch_not_void_Main_83


;#######################################; -> false_dispatch84
false_dispatch84:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__141 to i32))
  ret i32 0
;#######################################; <- false_dispatch84


;#######################################; -> dispatch_not_void_Main_84
dispatch_not_void_Main_84:
  %VR498 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR499 = add i32 %VR498, 8
  %VR500 = inttoptr i32 %VR499 to i32*
  %VR501 = load i32* %VR500
  %VR502 = add i32 %VR501, 36
  %VR503 = inttoptr i32 %VR502 to i32*
  %VR504 = load i32* %VR503
  %VR505 = inttoptr i32 %VR504 to i32 (i32, i32, i32)*
  %VR506 = call i32 (i32, i32, i32)* %VR505(i32 %ARG, i32 %VR486, i32 %VR496)
;; <- dispatch: linia 471
;- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 472
;;generez codul pentru apelul metodei i
;- block -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 472
;; <- object: linia 472
  %VR507 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR507, label %false_dispatch85, label %dispatch_not_void_Main_85
;#######################################; <- dispatch_not_void_Main_84


;#######################################; -> false_dispatch85
false_dispatch85:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__142 to i32))
  ret i32 0
;#######################################; <- false_dispatch85


;#######################################; -> dispatch_not_void_Main_85
dispatch_not_void_Main_85:
  %VR508 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR509 = add i32 %VR508, 8
  %VR510 = inttoptr i32 %VR509 to i32*
  %VR511 = load i32* %VR510
  %VR512 = add i32 %VR511, 40
  %VR513 = inttoptr i32 %VR512 to i32*
  %VR514 = load i32* %VR513
  %VR515 = inttoptr i32 %VR514 to i32 (i32)*
  %VR516 = call i32 (i32)* %VR515(i32 %ARG)
;; <- dispatch: linia 472
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 471
;; <- object: linia 471
  %VR517 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR517, label %false_dispatch86, label %dispatch_not_void_Main_86
;#######################################; <- dispatch_not_void_Main_85


;#######################################; -> false_dispatch86
false_dispatch86:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__141 to i32))
  ret i32 0
;#######################################; <- false_dispatch86


;#######################################; -> dispatch_not_void_Main_86
dispatch_not_void_Main_86:
  %VR518 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR519 = add i32 %VR518, 8
  %VR520 = inttoptr i32 %VR519 to i32*
  %VR521 = load i32* %VR520
  %VR522 = add i32 %VR521, 36
  %VR523 = inttoptr i32 %VR522 to i32*
  %VR524 = load i32* %VR523
  %VR525 = inttoptr i32 %VR524 to i32 (i32, i32, i32)*
  %VR526 = call i32 (i32, i32, i32)* %VR525(i32 %ARG, i32 %VR506, i32 %VR516)
;; <- dispatch: linia 471
;- block -- dispatch -- object -
;; -> object: linia 471
;; <- object: linia 471
  %VR527 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR527, label %false_dispatch87, label %dispatch_not_void_Main_87
;#######################################; <- dispatch_not_void_Main_86


;#######################################; -> false_dispatch87
false_dispatch87:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__141 to i32))
  ret i32 0
;#######################################; <- false_dispatch87


;#######################################; -> dispatch_not_void_Main_87
dispatch_not_void_Main_87:
  %VR528 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR529 = add i32 %VR528, 8
  %VR530 = inttoptr i32 %VR529 to i32*
  %VR531 = load i32* %VR530
  %VR532 = add i32 %VR531, 64
  %VR533 = inttoptr i32 %VR532 to i32*
  %VR534 = load i32* %VR533
  %VR535 = inttoptr i32 %VR534 to i32 (i32, i32)*
  %VR536 = call i32 (i32, i32)* %VR535(i32 %ARG, i32 %VR526)
;; <- dispatch: linia 471
;- block -- dispatch -
;; -> dispatch: linia 473
;;generez codul pentru apelul metodei gen_code
;- block -- dispatch -- dispatch -
;; -> dispatch: linia 473
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 473
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 473
;;generez codul pentru apelul metodei i
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 473
;; <- object: linia 473
  %VR537 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR537, label %false_dispatch88, label %dispatch_not_void_Main_88
;#######################################; <- dispatch_not_void_Main_87


;#######################################; -> false_dispatch88
false_dispatch88:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__143 to i32))
  ret i32 0
;#######################################; <- false_dispatch88


;#######################################; -> dispatch_not_void_Main_88
dispatch_not_void_Main_88:
  %VR538 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR539 = add i32 %VR538, 8
  %VR540 = inttoptr i32 %VR539 to i32*
  %VR541 = load i32* %VR540
  %VR542 = add i32 %VR541, 40
  %VR543 = inttoptr i32 %VR542 to i32*
  %VR544 = load i32* %VR543
  %VR545 = inttoptr i32 %VR544 to i32 (i32)*
  %VR546 = call i32 (i32)* %VR545(i32 %ARG)
;; <- dispatch: linia 473
;- block -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 473
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 473
;;generez codul pentru apelul metodei k
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 473
;; <- object: linia 473
  %VR547 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR547, label %false_dispatch89, label %dispatch_not_void_Main_89
;#######################################; <- dispatch_not_void_Main_88


;#######################################; -> false_dispatch89
false_dispatch89:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__143 to i32))
  ret i32 0
;#######################################; <- false_dispatch89


;#######################################; -> dispatch_not_void_Main_89
dispatch_not_void_Main_89:
  %VR548 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR549 = add i32 %VR548, 8
  %VR550 = inttoptr i32 %VR549 to i32*
  %VR551 = load i32* %VR550
  %VR552 = add i32 %VR551, 44
  %VR553 = inttoptr i32 %VR552 to i32*
  %VR554 = load i32* %VR553
  %VR555 = inttoptr i32 %VR554 to i32 (i32)*
  %VR556 = call i32 (i32)* %VR555(i32 %ARG)
;; <- dispatch: linia 473
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 473
;;generez codul pentru apelul metodei s
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 473
;; <- object: linia 473
  %VR557 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR557, label %false_dispatch90, label %dispatch_not_void_Main_90
;#######################################; <- dispatch_not_void_Main_89


;#######################################; -> false_dispatch90
false_dispatch90:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__143 to i32))
  ret i32 0
;#######################################; <- false_dispatch90


;#######################################; -> dispatch_not_void_Main_90
dispatch_not_void_Main_90:
  %VR558 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR559 = add i32 %VR558, 8
  %VR560 = inttoptr i32 %VR559 to i32*
  %VR561 = load i32* %VR560
  %VR562 = add i32 %VR561, 48
  %VR563 = inttoptr i32 %VR562 to i32*
  %VR564 = load i32* %VR563
  %VR565 = inttoptr i32 %VR564 to i32 (i32)*
  %VR566 = call i32 (i32)* %VR565(i32 %ARG)
;; <- dispatch: linia 473
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 473
;; <- object: linia 473
  %VR567 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR567, label %false_dispatch91, label %dispatch_not_void_Main_91
;#######################################; <- dispatch_not_void_Main_90


;#######################################; -> false_dispatch91
false_dispatch91:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__143 to i32))
  ret i32 0
;#######################################; <- false_dispatch91


;#######################################; -> dispatch_not_void_Main_91
dispatch_not_void_Main_91:
  %VR568 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR569 = add i32 %VR568, 8
  %VR570 = inttoptr i32 %VR569 to i32*
  %VR571 = load i32* %VR570
  %VR572 = add i32 %VR571, 36
  %VR573 = inttoptr i32 %VR572 to i32*
  %VR574 = load i32* %VR573
  %VR575 = inttoptr i32 %VR574 to i32 (i32, i32, i32)*
  %VR576 = call i32 (i32, i32, i32)* %VR575(i32 %ARG, i32 %VR556, i32 %VR566)
;; <- dispatch: linia 473
;- block -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 473
;; <- object: linia 473
  %VR577 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR577, label %false_dispatch92, label %dispatch_not_void_Main_92
;#######################################; <- dispatch_not_void_Main_91


;#######################################; -> false_dispatch92
false_dispatch92:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__143 to i32))
  ret i32 0
;#######################################; <- false_dispatch92


;#######################################; -> dispatch_not_void_Main_92
dispatch_not_void_Main_92:
  %VR578 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR579 = add i32 %VR578, 8
  %VR580 = inttoptr i32 %VR579 to i32*
  %VR581 = load i32* %VR580
  %VR582 = add i32 %VR581, 36
  %VR583 = inttoptr i32 %VR582 to i32*
  %VR584 = load i32* %VR583
  %VR585 = inttoptr i32 %VR584 to i32 (i32, i32, i32)*
  %VR586 = call i32 (i32, i32, i32)* %VR585(i32 %ARG, i32 %VR546, i32 %VR576)
;; <- dispatch: linia 473
;- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 473
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 473
;;generez codul pentru apelul metodei k
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 473
;; <- object: linia 473
  %VR587 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR587, label %false_dispatch93, label %dispatch_not_void_Main_93
;#######################################; <- dispatch_not_void_Main_92


;#######################################; -> false_dispatch93
false_dispatch93:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__143 to i32))
  ret i32 0
;#######################################; <- false_dispatch93


;#######################################; -> dispatch_not_void_Main_93
dispatch_not_void_Main_93:
  %VR588 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR589 = add i32 %VR588, 8
  %VR590 = inttoptr i32 %VR589 to i32*
  %VR591 = load i32* %VR590
  %VR592 = add i32 %VR591, 44
  %VR593 = inttoptr i32 %VR592 to i32*
  %VR594 = load i32* %VR593
  %VR595 = inttoptr i32 %VR594 to i32 (i32)*
  %VR596 = call i32 (i32)* %VR595(i32 %ARG)
;; <- dispatch: linia 473
;- block -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 473
;;generez codul pentru apelul metodei app
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 473
;;generez codul pentru apelul metodei s
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 473
;; <- object: linia 473
  %VR597 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR597, label %false_dispatch94, label %dispatch_not_void_Main_94
;#######################################; <- dispatch_not_void_Main_93


;#######################################; -> false_dispatch94
false_dispatch94:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__143 to i32))
  ret i32 0
;#######################################; <- false_dispatch94


;#######################################; -> dispatch_not_void_Main_94
dispatch_not_void_Main_94:
  %VR598 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR599 = add i32 %VR598, 8
  %VR600 = inttoptr i32 %VR599 to i32*
  %VR601 = load i32* %VR600
  %VR602 = add i32 %VR601, 48
  %VR603 = inttoptr i32 %VR602 to i32*
  %VR604 = load i32* %VR603
  %VR605 = inttoptr i32 %VR604 to i32 (i32)*
  %VR606 = call i32 (i32)* %VR605(i32 %ARG)
;; <- dispatch: linia 473
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 473
;;generez codul pentru apelul metodei s
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 473
;; <- object: linia 473
  %VR607 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR607, label %false_dispatch95, label %dispatch_not_void_Main_95
;#######################################; <- dispatch_not_void_Main_94


;#######################################; -> false_dispatch95
false_dispatch95:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__143 to i32))
  ret i32 0
;#######################################; <- false_dispatch95


;#######################################; -> dispatch_not_void_Main_95
dispatch_not_void_Main_95:
  %VR608 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR609 = add i32 %VR608, 8
  %VR610 = inttoptr i32 %VR609 to i32*
  %VR611 = load i32* %VR610
  %VR612 = add i32 %VR611, 48
  %VR613 = inttoptr i32 %VR612 to i32*
  %VR614 = load i32* %VR613
  %VR615 = inttoptr i32 %VR614 to i32 (i32)*
  %VR616 = call i32 (i32)* %VR615(i32 %ARG)
;; <- dispatch: linia 473
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 473
;; <- object: linia 473
  %VR617 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR617, label %false_dispatch96, label %dispatch_not_void_Main_96
;#######################################; <- dispatch_not_void_Main_95


;#######################################; -> false_dispatch96
false_dispatch96:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__143 to i32))
  ret i32 0
;#######################################; <- false_dispatch96


;#######################################; -> dispatch_not_void_Main_96
dispatch_not_void_Main_96:
  %VR618 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR619 = add i32 %VR618, 8
  %VR620 = inttoptr i32 %VR619 to i32*
  %VR621 = load i32* %VR620
  %VR622 = add i32 %VR621, 36
  %VR623 = inttoptr i32 %VR622 to i32*
  %VR624 = load i32* %VR623
  %VR625 = inttoptr i32 %VR624 to i32 (i32, i32, i32)*
  %VR626 = call i32 (i32, i32, i32)* %VR625(i32 %ARG, i32 %VR606, i32 %VR616)
;; <- dispatch: linia 473
;- block -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 473
;; <- object: linia 473
  %VR627 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR627, label %false_dispatch97, label %dispatch_not_void_Main_97
;#######################################; <- dispatch_not_void_Main_96


;#######################################; -> false_dispatch97
false_dispatch97:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__143 to i32))
  ret i32 0
;#######################################; <- false_dispatch97


;#######################################; -> dispatch_not_void_Main_97
dispatch_not_void_Main_97:
  %VR628 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR629 = add i32 %VR628, 8
  %VR630 = inttoptr i32 %VR629 to i32*
  %VR631 = load i32* %VR630
  %VR632 = add i32 %VR631, 36
  %VR633 = inttoptr i32 %VR632 to i32*
  %VR634 = load i32* %VR633
  %VR635 = inttoptr i32 %VR634 to i32 (i32, i32, i32)*
  %VR636 = call i32 (i32, i32, i32)* %VR635(i32 %ARG, i32 %VR596, i32 %VR626)
;; <- dispatch: linia 473
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 473
;; <- object: linia 473
  %VR637 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR637, label %false_dispatch98, label %dispatch_not_void_Main_98
;#######################################; <- dispatch_not_void_Main_97


;#######################################; -> false_dispatch98
false_dispatch98:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__143 to i32))
  ret i32 0
;#######################################; <- false_dispatch98


;#######################################; -> dispatch_not_void_Main_98
dispatch_not_void_Main_98:
  %VR638 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR639 = add i32 %VR638, 8
  %VR640 = inttoptr i32 %VR639 to i32*
  %VR641 = load i32* %VR640
  %VR642 = add i32 %VR641, 36
  %VR643 = inttoptr i32 %VR642 to i32*
  %VR644 = load i32* %VR643
  %VR645 = inttoptr i32 %VR644 to i32 (i32, i32, i32)*
  %VR646 = call i32 (i32, i32, i32)* %VR645(i32 %ARG, i32 %VR586, i32 %VR636)
;; <- dispatch: linia 473
;- block -- dispatch -- object -
;; -> object: linia 473
;; <- object: linia 473
  %VR647 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR647, label %false_dispatch99, label %dispatch_not_void_Main_99
;#######################################; <- dispatch_not_void_Main_98


;#######################################; -> false_dispatch99
false_dispatch99:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__143 to i32))
  ret i32 0
;#######################################; <- false_dispatch99


;#######################################; -> dispatch_not_void_Main_99
dispatch_not_void_Main_99:
  %VR648 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR649 = add i32 %VR648, 8
  %VR650 = inttoptr i32 %VR649 to i32*
  %VR651 = load i32* %VR650
  %VR652 = add i32 %VR651, 64
  %VR653 = inttoptr i32 %VR652 to i32*
  %VR654 = load i32* %VR653
  %VR655 = inttoptr i32 %VR654 to i32 (i32, i32)*
  %VR656 = call i32 (i32, i32)* %VR655(i32 %ARG, i32 %VR646)
;; <- dispatch: linia 473
;- block -- int_const -
;; -> int_const: linia 474
  %VR657 = add i32 0, 0
;; <- int_const: linia 474
;; <- block: linia 460
  ret i32 %VR657
;#######################################; <- dispatch_not_void_Main_99


}
@s75 = internal constant [1 x i8] c"\00"
@str_const__75 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([1 x i8]* @s75, i32 0, i32 0)}
@s74 = internal constant [5 x i8] c"Main\00"
@str_const__74 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__144, i8* getelementptr ([5 x i8]* @s74, i32 0, i32 0)}
@s73 = internal constant [5 x i8] c"Term\00"
@str_const__73 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__144, i8* getelementptr ([5 x i8]* @s73, i32 0, i32 0)}
@s72 = internal constant [4 x i8] c"App\00"
@str_const__72 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__145, i8* getelementptr ([4 x i8]* @s72, i32 0, i32 0)}
@s71 = internal constant [7 x i8] c"Lambda\00"
@str_const__71 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__146, i8* getelementptr ([7 x i8]* @s71, i32 0, i32 0)}
@s70 = internal constant [9 x i8] c"Variable\00"
@str_const__70 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__147, i8* getelementptr ([9 x i8]* @s70, i32 0, i32 0)}
@s69 = internal constant [5 x i8] c"Expr\00"
@str_const__69 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__144, i8* getelementptr ([5 x i8]* @s69, i32 0, i32 0)}
@s68 = internal constant [14 x i8] c"LambdaListRef\00"
@str_const__68 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__148, i8* getelementptr ([14 x i8]* @s68, i32 0, i32 0)}
@s67 = internal constant [13 x i8] c"LambdaListNE\00"
@str_const__67 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__149, i8* getelementptr ([13 x i8]* @s67, i32 0, i32 0)}
@s66 = internal constant [11 x i8] c"LambdaList\00"
@str_const__66 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__150, i8* getelementptr ([11 x i8]* @s66, i32 0, i32 0)}
@s65 = internal constant [10 x i8] c"VarListNE\00"
@str_const__65 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__151, i8* getelementptr ([10 x i8]* @s65, i32 0, i32 0)}
@s64 = internal constant [8 x i8] c"VarList\00"
@str_const__64 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__152, i8* getelementptr ([8 x i8]* @s64, i32 0, i32 0)}
@s63 = internal constant [3 x i8] c"IO\00"
@str_const__63 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__153, i8* getelementptr ([3 x i8]* @s63, i32 0, i32 0)}
@s62 = internal constant [7 x i8] c"String\00"
@str_const__62 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__146, i8* getelementptr ([7 x i8]* @s62, i32 0, i32 0)}
@s61 = internal constant [5 x i8] c"Bool\00"
@str_const__61 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__144, i8* getelementptr ([5 x i8]* @s61, i32 0, i32 0)}
@s60 = internal constant [4 x i8] c"Int\00"
@str_const__60 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__145, i8* getelementptr ([4 x i8]* @s60, i32 0, i32 0)}
@s59 = internal constant [7 x i8] c"Object\00"
@str_const__59 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__146, i8* getelementptr ([7 x i8]* @s59, i32 0, i32 0)}
@s58 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__58 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__150, i8* getelementptr ([11 x i8]* @s58, i32 0, i32 0)}
@s57 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__57 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__151, i8* getelementptr ([10 x i8]* @s57, i32 0, i32 0)}
@s56 = internal constant [10 x i8] c"_no_class\00"
@str_const__56 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__151, i8* getelementptr ([10 x i8]* @s56, i32 0, i32 0)}
@s55 = internal constant [14 x i8] c"<basic class>\00"
@str_const__55 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__148, i8* getelementptr ([14 x i8]* @s55, i32 0, i32 0)}
@s54 = internal constant [8 x i8] c"\0A};\0A};\0A\00"
@str_const__54 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__152, i8* getelementptr ([8 x i8]* @s54, i32 0, i32 0)}
@s53 = internal constant [25 x i8] c"  main() : EvalObject {\0A\00"
@str_const__53 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([25 x i8]* @s53, i32 0, i32 0)}
@s52 = internal constant [14 x i8] c"class Main {\0A\00"
@str_const__52 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__148, i8* getelementptr ([14 x i8]* @s52, i32 0, i32 0)}
@s51 = internal constant [51 x i8] c"(*Generated by lam.cl (Jeff Foster, March 2000)*)\0A\00"
@str_const__51 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__154, i8* getelementptr ([51 x i8]* @s51, i32 0, i32 0)}
@s50 = internal constant [47 x i8] c"\0A------------------cut here------------------\0A\00"
@str_const__50 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([47 x i8]* @s50, i32 0, i32 0)}
@s49 = internal constant [21 x i8] c"Generating code for \00"
@str_const__49 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__155, i8* getelementptr ([21 x i8]* @s49, i32 0, i32 0)}
@s48 = internal constant [62 x i8] c"  apply(y : EvalObject) : EvalObject { { abort(); self; } };\0A\00"
@str_const__48 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__156, i8* getelementptr ([62 x i8]* @s48, i32 0, i32 0)}
@s47 = internal constant [57 x i8] c"  init(p : Closure) : Closure {{ parent <- p; self; }};\0A\00"
@str_const__47 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__157, i8* getelementptr ([57 x i8]* @s47, i32 0, i32 0)}
@s46 = internal constant [31 x i8] c"  get_x() : EvalObject { x };\0A\00"
@str_const__46 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__158, i8* getelementptr ([31 x i8]* @s46, i32 0, i32 0)}
@s45 = internal constant [38 x i8] c"  get_parent() : Closure { parent };\0A\00"
@str_const__45 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__7, i8* getelementptr ([38 x i8]* @s45, i32 0, i32 0)}
@s44 = internal constant [19 x i8] c"  x : EvalObject;\0A\00"
@str_const__44 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__159, i8* getelementptr ([19 x i8]* @s44, i32 0, i32 0)}
@s43 = internal constant [21 x i8] c"  parent : Closure;\0A\00"
@str_const__43 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__155, i8* getelementptr ([21 x i8]* @s43, i32 0, i32 0)}
@s42 = internal constant [37 x i8] c"class Closure inherits EvalObject {\0A\00"
@str_const__42 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__6, i8* getelementptr ([37 x i8]* @s42, i32 0, i32 0)}
@s41 = internal constant [47 x i8] c"  eval() : EvalObject { { abort(); self; } };\0A\00"
@str_const__41 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([47 x i8]* @s41, i32 0, i32 0)}
@s40 = internal constant [32 x i8] c"class EvalObject inherits IO {\0A\00"
@str_const__40 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__160, i8* getelementptr ([32 x i8]* @s40, i32 0, i32 0)}
@s39 = internal constant [5 x i8] c" =>\0A\00"
@str_const__39 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__144, i8* getelementptr ([5 x i8]* @s39, i32 0, i32 0)}
@s38 = internal constant [14 x i8] c"beta-reduce: \00"
@str_const__38 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__148, i8* getelementptr ([14 x i8]* @s38, i32 0, i32 0)}
@s37 = internal constant [2 x i8] c"z\00"
@str_const__37 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s37, i32 0, i32 0)}
@s36 = internal constant [2 x i8] c"y\00"
@str_const__36 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s36, i32 0, i32 0)}
@s35 = internal constant [2 x i8] c"x\00"
@str_const__35 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s35, i32 0, i32 0)}
@s34 = internal constant [8 x i8] c"  esac)\00"
@str_const__34 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__152, i8* getelementptr ([8 x i8]* @s34, i32 0, i32 0)}
@s33 = internal constant [49 x i8] c"    o : Object => { abort(); new EvalObject; };\0A\00"
@str_const__33 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([49 x i8]* @s33, i32 0, i32 0)}
@s32 = internal constant [32 x i8] c"    c : Closure => c.apply(y);\0A\00"
@str_const__32 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__160, i8* getelementptr ([32 x i8]* @s32, i32 0, i32 0)}
@s31 = internal constant [13 x i8] c"  case x of\0A\00"
@str_const__31 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__149, i8* getelementptr ([13 x i8]* @s31, i32 0, i32 0)}
@s30 = internal constant [5 x i8] c" in\0A\00"
@str_const__30 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__144, i8* getelementptr ([5 x i8]* @s30, i32 0, i32 0)}
@s29 = internal constant [24 x i8] c"     y : EvalObject <- \00"
@str_const__29 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([24 x i8]* @s29, i32 0, i32 0)}
@s28 = internal constant [3 x i8] c",\0A\00"
@str_const__28 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__153, i8* getelementptr ([3 x i8]* @s28, i32 0, i32 0)}
@s27 = internal constant [24 x i8] c"(let x : EvalObject <- \00"
@str_const__27 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([24 x i8]* @s27, i32 0, i32 0)}
@s26 = internal constant [3 x i8] c"))\00"
@str_const__26 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__153, i8* getelementptr ([3 x i8]* @s26, i32 0, i32 0)}
@s25 = internal constant [4 x i8] c")@(\00"
@str_const__25 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__145, i8* getelementptr ([4 x i8]* @s25, i32 0, i32 0)}
@s24 = internal constant [3 x i8] c"((\00"
@str_const__24 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__153, i8* getelementptr ([3 x i8]* @s24, i32 0, i32 0)}
@s23 = internal constant [4 x i8] c"};\0A\00"
@str_const__23 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__145, i8* getelementptr ([4 x i8]* @s23, i32 0, i32 0)}
@s22 = internal constant [6 x i8] c";}};\0A\00"
@str_const__22 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__161, i8* getelementptr ([6 x i8]* @s22, i32 0, i32 0)}
@s21 = internal constant [15 x i8] c"      x <- y;\0A\00"
@str_const__21 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__162, i8* getelementptr ([15 x i8]* @s21, i32 0, i32 0)}
@s20 = internal constant [7 x i8] c"\5Cn\22);\0A\00"
@str_const__20 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__146, i8* getelementptr ([7 x i8]* @s20, i32 0, i32 0)}
@s19 = internal constant [36 x i8] c"    { out_string(\22Applying closure \00"
@str_const__19 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__163, i8* getelementptr ([36 x i8]* @s19, i32 0, i32 0)}
@s18 = internal constant [40 x i8] c"  apply(y : EvalObject) : EvalObject {\0A\00"
@str_const__18 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__164, i8* getelementptr ([40 x i8]* @s18, i32 0, i32 0)}
@s17 = internal constant [21 x i8] c" inherits Closure {\0A\00"
@str_const__17 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__155, i8* getelementptr ([21 x i8]* @s17, i32 0, i32 0)}
@s16 = internal constant [14 x i8] c"class Closure\00"
@str_const__16 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__148, i8* getelementptr ([14 x i8]* @s16, i32 0, i32 0)}
@s15 = internal constant [7 x i8] c"self))\00"
@str_const__15 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__146, i8* getelementptr ([7 x i8]* @s15, i32 0, i32 0)}
@s14 = internal constant [14 x i8] c"new Closure))\00"
@str_const__14 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__148, i8* getelementptr ([14 x i8]* @s14, i32 0, i32 0)}
@s13 = internal constant [8 x i8] c").init(\00"
@str_const__13 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__152, i8* getelementptr ([8 x i8]* @s13, i32 0, i32 0)}
@s12 = internal constant [14 x i8] c"((new Closure\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__148, i8* getelementptr ([14 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [2 x i8] c".\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [2 x i8] c"\5C\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [8 x i8] c"get_x()\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__152, i8* getelementptr ([8 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [28 x i8] c"Error:  free occurrence of \00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__165, i8* getelementptr ([28 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [14 x i8] c"get_parent().\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__148, i8* getelementptr ([14 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [46 x i8] c"\0AError: Expr is pure virtual; can't gen_code\0A\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__166, i8* getelementptr ([46 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [48 x i8] c"\0AError: Expr is pure virtual; can't substitute\0A\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([48 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [49 x i8] c"\0AError: Expr is pure virtual; can't beta-reduce\0A\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([49 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [48 x i8] c"\0AError: Expr is pure virtual; can't print self\0A\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([48 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [2 x i8] c" \00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [2 x i8] c"\0A\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [16 x i8] c"advanced/lam.cl\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__167, i8* getelementptr ([16 x i8]* @s0, i32 0, i32 0)}
@int_const__167 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 15}
@int_const__166 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 45}
@int_const__165 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 27}
@int_const__164 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 39}
@int_const__163 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 35}
@int_const__162 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 14}
@int_const__161 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 5}
@int_const__160 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 31}
@int_const__159 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 18}
@int_const__158 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 30}
@int_const__157 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 56}
@int_const__156 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 61}
@int_const__155 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 20}
@int_const__154 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 50}
@int_const__153 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__152 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 7}
@int_const__151 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__150 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__149 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 12}
@int_const__148 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__147 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 8}
@int_const__146 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__145 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__144 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__143 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 473}
@int_const__142 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 472}
@int_const__141 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 471}
@int_const__140 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 470}
@int_const__139 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 469}
@int_const__138 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 468}
@int_const__137 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 467}
@int_const__136 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 466}
@int_const__135 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 465}
@int_const__134 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 464}
@int_const__133 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 463}
@int_const__132 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 462}
@int_const__131 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 461}
@int_const__130 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 455}
@int_const__129 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 452}
@int_const__128 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 451}
@int_const__127 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 449}
@int_const__126 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 448}
@int_const__125 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 447}
@int_const__124 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 446}
@int_const__123 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 445}
@int_const__122 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 444}
@int_const__121 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 443}
@int_const__120 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 442}
@int_const__119 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 441}
@int_const__118 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 440}
@int_const__117 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 439}
@int_const__116 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 438}
@int_const__115 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 437}
@int_const__114 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 436}
@int_const__113 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 434}
@int_const__112 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 429}
@int_const__111 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 428}
@int_const__110 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 427}
@int_const__109 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 426}
@int_const__108 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 425}
@int_const__107 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 424}
@int_const__106 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 423}
@int_const__105 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 422}
@int_const__104 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 416}
@int_const__103 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 415}
@int_const__102 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 414}
@int_const__101 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 406}
@int_const__100 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 401}
@int_const__99 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 400}
@int_const__98 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 394}
@int_const__97 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 388}
@int_const__96 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 387}
@int_const__95 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 372}
@int_const__94 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 371}
@int_const__93 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 370}
@int_const__92 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 369}
@int_const__91 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 365}
@int_const__90 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 364}
@int_const__89 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 363}
@int_const__88 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 359}
@int_const__87 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 358}
@int_const__86 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 351}
@int_const__85 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 346}
@int_const__84 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 341}
@int_const__83 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 325}
@int_const__82 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 324}
@int_const__81 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 323}
@int_const__80 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 322}
@int_const__79 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 321}
@int_const__78 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 320}
@int_const__77 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 319}
@int_const__76 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 318}
@int_const__75 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 317}
@int_const__74 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 316}
@int_const__73 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 311}
@int_const__72 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 309}
@int_const__71 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 308}
@int_const__70 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 303}
@int_const__69 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 301}
@int_const__68 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 299}
@int_const__67 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 298}
@int_const__66 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 292}
@int_const__65 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 291}
@int_const__64 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 290}
@int_const__63 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 289}
@int_const__62 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 288}
@int_const__61 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 266}
@int_const__60 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 265}
@int_const__59 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 264}
@int_const__58 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 263}
@int_const__57 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 262}
@int_const__56 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 261}
@int_const__55 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 260}
@int_const__54 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 259}
@int_const__53 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 258}
@int_const__52 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 257}
@int_const__51 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 256}
@int_const__50 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 248}
@int_const__49 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 246}
@int_const__48 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 245}
@int_const__47 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 244}
@int_const__46 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 243}
@int_const__45 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 242}
@int_const__44 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 236}
@int_const__43 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 234}
@int_const__42 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 226}
@int_const__41 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 218}
@int_const__40 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 217}
@int_const__39 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 216}
@int_const__38 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 215}
@int_const__37 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 192}
@int_const__36 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 188}
@int_const__35 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 187}
@int_const__34 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 186}
@int_const__33 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 185}
@int_const__32 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 184}
@int_const__31 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 181}
@int_const__30 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 180}
@int_const__29 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 178}
@int_const__28 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 175}
@int_const__27 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 164}
@int_const__26 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 144}
@int_const__25 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 143}
@int_const__24 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 135}
@int_const__23 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 134}
@int_const__22 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 126}
@int_const__21 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 125}
@int_const__20 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 117}
@int_const__19 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 116}
@int_const__18 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 99}
@int_const__17 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 92}
@int_const__16 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 82}
@int_const__15 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 81}
@int_const__14 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 80}
@int_const__13 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 79}
@int_const__12 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 51}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 49}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 48}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 47}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 46}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 37}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 36}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 26}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 25}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 24}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 23}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
%struct.VarList_protObj_t = type { i32, i32, %struct.VarList_dispTab_t* }
@VarList_protObj = global %struct.VarList_protObj_t {i32 5, i32 3, %struct.VarList_dispTab_t* @VarList_dispTab}
%struct.VarListNE_protObj_t = type { i32, i32, %struct.VarListNE_dispTab_t*, i32, i32 }
@VarListNE_protObj = global %struct.VarListNE_protObj_t {i32 6, i32 5, %struct.VarListNE_dispTab_t* @VarListNE_dispTab, i32 0, i32 0}
%struct.LambdaList_protObj_t = type { i32, i32, %struct.LambdaList_dispTab_t* }
@LambdaList_protObj = global %struct.LambdaList_protObj_t {i32 7, i32 3, %struct.LambdaList_dispTab_t* @LambdaList_dispTab}
%struct.LambdaListNE_protObj_t = type { i32, i32, %struct.LambdaListNE_dispTab_t*, i32, i32, i32, i32 }
@LambdaListNE_protObj = global %struct.LambdaListNE_protObj_t {i32 8, i32 7, %struct.LambdaListNE_dispTab_t* @LambdaListNE_dispTab, i32 0, i32 0, i32 0, i32 0}
%struct.LambdaListRef_protObj_t = type { i32, i32, %struct.LambdaListRef_dispTab_t*, i32, i32 }
@LambdaListRef_protObj = global %struct.LambdaListRef_protObj_t {i32 9, i32 5, %struct.LambdaListRef_dispTab_t* @LambdaListRef_dispTab, i32 0, i32 0}
%struct.Expr_protObj_t = type { i32, i32, %struct.Expr_dispTab_t* }
@Expr_protObj = global %struct.Expr_protObj_t {i32 10, i32 3, %struct.Expr_dispTab_t* @Expr_dispTab}
%struct.Variable_protObj_t = type { i32, i32, %struct.Variable_dispTab_t*, i32 }
@Variable_protObj = global %struct.Variable_protObj_t {i32 11, i32 4, %struct.Variable_dispTab_t* @Variable_dispTab, i32 0}
%struct.Lambda_protObj_t = type { i32, i32, %struct.Lambda_dispTab_t*, i32, i32 }
@Lambda_protObj = global %struct.Lambda_protObj_t {i32 12, i32 5, %struct.Lambda_dispTab_t* @Lambda_dispTab, i32 0, i32 0}
%struct.App_protObj_t = type { i32, i32, %struct.App_dispTab_t*, i32, i32 }
@App_protObj = global %struct.App_protObj_t {i32 13, i32 5, %struct.App_dispTab_t* @App_dispTab, i32 0, i32 0}
%struct.Term_protObj_t = type { i32, i32, %struct.Term_dispTab_t* }
@Term_protObj = global %struct.Term_protObj_t {i32 14, i32 3, %struct.Term_dispTab_t* @Term_dispTab}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t* }
@Main_protObj = global %struct.Main_protObj_t {i32 15, i32 3, %struct.Main_dispTab_t* @Main_dispTab}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__59, %struct.String_protObj_t* @str_const__60, %struct.String_protObj_t* @str_const__61, %struct.String_protObj_t* @str_const__62, %struct.String_protObj_t* @str_const__63, %struct.String_protObj_t* @str_const__64, %struct.String_protObj_t* @str_const__65, %struct.String_protObj_t* @str_const__66, %struct.String_protObj_t* @str_const__67, %struct.String_protObj_t* @str_const__68, %struct.String_protObj_t* @str_const__69, %struct.String_protObj_t* @str_const__70, %struct.String_protObj_t* @str_const__71, %struct.String_protObj_t* @str_const__72, %struct.String_protObj_t* @str_const__73, %struct.String_protObj_t* @str_const__74 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @VarList_init to i8*), i8* bitcast (void (i32)* @VarListNE_init to i8*), i8* bitcast (void (i32)* @LambdaList_init to i8*), i8* bitcast (void (i32)* @LambdaListNE_init to i8*), i8* bitcast (void (i32)* @LambdaListRef_init to i8*), i8* bitcast (void (i32)* @Expr_init to i8*), i8* bitcast (void (i32)* @Variable_init to i8*), i8* bitcast (void (i32)* @Lambda_init to i8*), i8* bitcast (void (i32)* @App_init to i8*), i8* bitcast (void (i32)* @Term_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.VarList_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@VarList_dispTab = global %struct.VarList_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @VarList__isNil to i8*), i8* bitcast (i32 (i32)* @VarList__head to i8*), i8* bitcast (i32 (i32)* @VarList__tail to i8*), i8* bitcast (i32 (i32,i32)* @VarList__add to i8*), i8* bitcast (i32 (i32)* @VarList__print to i8*)}

%struct.VarListNE_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@VarListNE_dispTab = global %struct.VarListNE_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @VarListNE__isNil to i8*), i8* bitcast (i32 (i32)* @VarListNE__head to i8*), i8* bitcast (i32 (i32)* @VarListNE__tail to i8*), i8* bitcast (i32 (i32,i32)* @VarList__add to i8*), i8* bitcast (i32 (i32)* @VarListNE__print to i8*), i8* bitcast (i32 (i32,i32,i32)* @VarListNE__init to i8*)}

%struct.LambdaList_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@LambdaList_dispTab = global %struct.LambdaList_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @LambdaList__isNil to i8*), i8* bitcast (i32 (i32)* @LambdaList__headE to i8*), i8* bitcast (i32 (i32)* @LambdaList__headC to i8*), i8* bitcast (i32 (i32)* @LambdaList__headN to i8*), i8* bitcast (i32 (i32)* @LambdaList__tail to i8*), i8* bitcast (i32 (i32,i32,i32,i32)* @LambdaList__add to i8*)}

%struct.LambdaListNE_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@LambdaListNE_dispTab = global %struct.LambdaListNE_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @LambdaListNE__isNil to i8*), i8* bitcast (i32 (i32)* @LambdaListNE__headE to i8*), i8* bitcast (i32 (i32)* @LambdaListNE__headC to i8*), i8* bitcast (i32 (i32)* @LambdaListNE__headN to i8*), i8* bitcast (i32 (i32)* @LambdaListNE__tail to i8*), i8* bitcast (i32 (i32,i32,i32,i32)* @LambdaList__add to i8*), i8* bitcast (i32 (i32,i32,i32,i32,i32)* @LambdaListNE__init to i8*)}

%struct.LambdaListRef_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@LambdaListRef_dispTab = global %struct.LambdaListRef_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @LambdaListRef__isNil to i8*), i8* bitcast (i32 (i32)* @LambdaListRef__headE to i8*), i8* bitcast (i32 (i32)* @LambdaListRef__headC to i8*), i8* bitcast (i32 (i32)* @LambdaListRef__headN to i8*), i8* bitcast (i32 (i32)* @LambdaListRef__reset to i8*), i8* bitcast (i32 (i32,i32,i32)* @LambdaListRef__add to i8*), i8* bitcast (i32 (i32)* @LambdaListRef__removeHead to i8*)}

%struct.Expr_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Expr_dispTab = global %struct.Expr_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Expr__print_self to i8*), i8* bitcast (i32 (i32)* @Expr__beta to i8*), i8* bitcast (i32 (i32,i32,i32)* @Expr__substitute to i8*), i8* bitcast (i32 (i32,i32,i32)* @Expr__gen_code to i8*)}

%struct.Variable_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Variable_dispTab = global %struct.Variable_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Variable__print_self to i8*), i8* bitcast (i32 (i32)* @Variable__beta to i8*), i8* bitcast (i32 (i32,i32,i32)* @Variable__substitute to i8*), i8* bitcast (i32 (i32,i32,i32)* @Variable__gen_code to i8*), i8* bitcast (i32 (i32,i32)* @Variable__init to i8*)}

%struct.Lambda_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Lambda_dispTab = global %struct.Lambda_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Lambda__print_self to i8*), i8* bitcast (i32 (i32)* @Lambda__beta to i8*), i8* bitcast (i32 (i32,i32,i32)* @Lambda__substitute to i8*), i8* bitcast (i32 (i32,i32,i32)* @Lambda__gen_code to i8*), i8* bitcast (i32 (i32,i32,i32)* @Lambda__init to i8*), i8* bitcast (i32 (i32,i32)* @Lambda__apply to i8*), i8* bitcast (i32 (i32,i32,i32,i32)* @Lambda__gen_closure_code to i8*)}

%struct.App_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@App_dispTab = global %struct.App_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @App__print_self to i8*), i8* bitcast (i32 (i32)* @App__beta to i8*), i8* bitcast (i32 (i32,i32,i32)* @App__substitute to i8*), i8* bitcast (i32 (i32,i32,i32)* @App__gen_code to i8*), i8* bitcast (i32 (i32,i32,i32)* @App__init to i8*)}

%struct.Term_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Term_dispTab = global %struct.Term_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32,i32)* @Term__var to i8*), i8* bitcast (i32 (i32,i32,i32)* @Term__lam to i8*), i8* bitcast (i32 (i32,i32,i32)* @Term__app to i8*), i8* bitcast (i32 (i32)* @Term__i to i8*), i8* bitcast (i32 (i32)* @Term__k to i8*), i8* bitcast (i32 (i32)* @Term__s to i8*)}

%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32,i32)* @Term__var to i8*), i8* bitcast (i32 (i32,i32,i32)* @Term__lam to i8*), i8* bitcast (i32 (i32,i32,i32)* @Term__app to i8*), i8* bitcast (i32 (i32)* @Term__i to i8*), i8* bitcast (i32 (i32)* @Term__k to i8*), i8* bitcast (i32 (i32)* @Term__s to i8*), i8* bitcast (i32 (i32,i32)* @Main__beta_reduce to i8*), i8* bitcast (i32 (i32)* @Main__eval_class to i8*), i8* bitcast (i32 (i32)* @Main__closure_class to i8*), i8* bitcast (i32 (i32,i32)* @Main__gen_code to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}


