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
define void @P_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Object_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- int_const -
;; -> int_const: linia 4
  %VR1 = add i32 10, 0
;; <- int_const: linia 4
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
;- new -
;; -> new: linia 5
  %VR4 = call i32  @Object__copy(i32 ptrtoint (%struct.IO_protObj_t* @IO_protObj to i32))
  call void @IO_init(i32 %VR4)
;; <- new: linia 5
  %VR5 = add i32 %ARG, 16
  %VR6 = inttoptr i32 %VR5 to i32*
  store i32 %VR4, i32* %VR6
  ret void
;#######################################; <- entry


}
define i32 @P__method(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.P_protObj_t*
;- block -
;; -> block: linia 8
;- block -- dispatch -
;; -> dispatch: linia 9
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 9
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 9
;- block -- dispatch -- object -
;; -> object: linia 9
  %VR2 = add i32 %ARG, 16
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = load i32* %VR3
;; <- object: linia 9
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = icmp eq i32* %VR5,  null
  br i1 %VR6, label %false_dispatch0, label %dispatch_not_void_P_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__2 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_P_0
dispatch_not_void_P_0:
  %VR7 = ptrtoint i32* %VR5 to i32 
  %VR8 = add i32 %VR7, 8
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = add i32 %VR10, 16
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
  %VR14 = inttoptr i32 %VR13 to i32 (i32, i32)*
  %VR15 = call i32 (i32, i32)* %VR14(i32 %VR4, i32 %VR1)
;; <- dispatch: linia 9
;- block -- dispatch -
;; -> dispatch: linia 10
;;generez codul pentru apelul metodei out_int
;- block -- dispatch -- object -
;; -> object: linia 10
  %VR16 = add i32 %ARG, 12
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = load i32* %VR17
;; <- object: linia 10
;- block -- dispatch -- object -
;; -> object: linia 10
  %VR19 = add i32 %ARG, 16
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = load i32* %VR20
;; <- object: linia 10
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = icmp eq i32* %VR22,  null
  br i1 %VR23, label %false_dispatch1, label %dispatch_not_void_P_1
;#######################################; <- dispatch_not_void_P_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__0 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_P_1
dispatch_not_void_P_1:
  %VR24 = ptrtoint i32* %VR22 to i32 
  %VR25 = add i32 %VR24, 8
  %VR26 = inttoptr i32 %VR25 to i32*
  %VR27 = load i32* %VR26
  %VR28 = add i32 %VR27, 12
  %VR29 = inttoptr i32 %VR28 to i32*
  %VR30 = load i32* %VR29
;boxing to int
  %VR31 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR32 = add i32 %VR31, 12
  %VR33 = inttoptr i32 %VR32 to i32*
  store i32 %VR18, i32* %VR33
  %VR34 = inttoptr i32 %VR30 to i32 (i32, i32)*
  %VR35 = call i32 (i32, i32)* %VR34(i32 %VR21, i32 %VR31)
;; <- dispatch: linia 10
;- block -- dispatch -
;; -> dispatch: linia 11
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 11
  %VR36 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 11
;- block -- dispatch -- object -
;; -> object: linia 11
  %VR37 = add i32 %ARG, 16
  %VR38 = inttoptr i32 %VR37 to i32*
  %VR39 = load i32* %VR38
;; <- object: linia 11
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = icmp eq i32* %VR40,  null
  br i1 %VR41, label %false_dispatch2, label %dispatch_not_void_P_2
;#######################################; <- dispatch_not_void_P_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__3 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_P_2
dispatch_not_void_P_2:
  %VR42 = ptrtoint i32* %VR40 to i32 
  %VR43 = add i32 %VR42, 8
  %VR44 = inttoptr i32 %VR43 to i32*
  %VR45 = load i32* %VR44
  %VR46 = add i32 %VR45, 16
  %VR47 = inttoptr i32 %VR46 to i32*
  %VR48 = load i32* %VR47
  %VR49 = inttoptr i32 %VR48 to i32 (i32, i32)*
  %VR50 = call i32 (i32, i32)* %VR49(i32 %VR39, i32 %VR36)
;; <- dispatch: linia 11
;- block -- object -
;; -> object: linia 12
;; <- object: linia 12
;; <- block: linia 8
  ret i32 %ARG
;#######################################; <- dispatch_not_void_P_2


}
define void @C_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @P_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @C__method(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.C_protObj_t*
;- block -
;; -> block: linia 20
;- block -- dispatch -
;; -> dispatch: linia 21
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 21
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 21
;- block -- dispatch -- object -
;; -> object: linia 21
  %VR2 = add i32 %ARG, 16
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = load i32* %VR3
;; <- object: linia 21
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = icmp eq i32* %VR5,  null
  br i1 %VR6, label %false_dispatch0, label %dispatch_not_void_C_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_C_0
dispatch_not_void_C_0:
  %VR7 = ptrtoint i32* %VR5 to i32 
  %VR8 = add i32 %VR7, 8
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = add i32 %VR10, 16
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
  %VR14 = inttoptr i32 %VR13 to i32 (i32, i32)*
  %VR15 = call i32 (i32, i32)* %VR14(i32 %VR4, i32 %VR1)
;; <- dispatch: linia 21
;- block -- dispatch -
;; -> dispatch: linia 22
;;generez codul pentru apelul metodei out_int
;- block -- dispatch -- object -
;; -> object: linia 22
  %VR16 = add i32 %ARG, 12
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = load i32* %VR17
;; <- object: linia 22
;- block -- dispatch -- object -
;; -> object: linia 22
  %VR19 = add i32 %ARG, 16
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = load i32* %VR20
;; <- object: linia 22
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = icmp eq i32* %VR22,  null
  br i1 %VR23, label %false_dispatch1, label %dispatch_not_void_C_1
;#######################################; <- dispatch_not_void_C_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__5 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_C_1
dispatch_not_void_C_1:
  %VR24 = ptrtoint i32* %VR22 to i32 
  %VR25 = add i32 %VR24, 8
  %VR26 = inttoptr i32 %VR25 to i32*
  %VR27 = load i32* %VR26
  %VR28 = add i32 %VR27, 12
  %VR29 = inttoptr i32 %VR28 to i32*
  %VR30 = load i32* %VR29
;boxing to int
  %VR31 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR32 = add i32 %VR31, 12
  %VR33 = inttoptr i32 %VR32 to i32*
  store i32 %VR18, i32* %VR33
  %VR34 = inttoptr i32 %VR30 to i32 (i32, i32)*
  %VR35 = call i32 (i32, i32)* %VR34(i32 %VR21, i32 %VR31)
;; <- dispatch: linia 22
;- block -- dispatch -
;; -> dispatch: linia 23
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 23
  %VR36 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 23
;- block -- dispatch -- object -
;; -> object: linia 23
  %VR37 = add i32 %ARG, 16
  %VR38 = inttoptr i32 %VR37 to i32*
  %VR39 = load i32* %VR38
;; <- object: linia 23
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = icmp eq i32* %VR40,  null
  br i1 %VR41, label %false_dispatch2, label %dispatch_not_void_C_2
;#######################################; <- dispatch_not_void_C_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_C_2
dispatch_not_void_C_2:
  %VR42 = ptrtoint i32* %VR40 to i32 
  %VR43 = add i32 %VR42, 8
  %VR44 = inttoptr i32 %VR43 to i32*
  %VR45 = load i32* %VR44
  %VR46 = add i32 %VR45, 16
  %VR47 = inttoptr i32 %VR46 to i32*
  %VR48 = load i32* %VR47
  %VR49 = inttoptr i32 %VR48 to i32 (i32, i32)*
  %VR50 = call i32 (i32, i32)* %VR49(i32 %VR39, i32 %VR36)
;; <- dispatch: linia 23
;- block -- static_dispatch -
;; -> static_dispatch: linia 24
;;generez codul pentru apelul metodei method
;- block -- static_dispatch -- object -
;; -> object: linia 24
;; <- object: linia 24
  %VR51 = icmp eq %struct.C_protObj_t* %VR0,  null
  br i1 %VR51, label %false_static_dispatch3, label %dispatch_not_void_C_3
;#######################################; <- dispatch_not_void_C_2


;#######################################; -> false_static_dispatch3
false_static_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__7 to i32))
  ret i32 0
;#######################################; <- false_static_dispatch3


;#######################################; -> dispatch_not_void_C_3
dispatch_not_void_C_3:
  %VR52 = ptrtoint %struct.P_protObj_t* @P_protObj to i32 
  %VR53 = add i32 %VR52, 8
  %VR54 = inttoptr i32 %VR53 to i32*
  %VR55 = load i32* %VR54
  %VR56 = add i32 %VR55, 12
  %VR57 = inttoptr i32 %VR56 to i32*
  %VR58 = load i32* %VR57
  %VR59 = inttoptr i32 %VR58 to i32 (i32)*
  %VR60 = call i32 (i32)* %VR59(i32 %ARG)
;; <- static_dispatch: linia 24
;- block -- object -
;; -> object: linia 25
;; <- object: linia 25
;; <- block: linia 20
  ret i32 %ARG
;#######################################; <- dispatch_not_void_C_3


}
define void @Main_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Object_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- new -
;; -> new: linia 32
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.C_protObj_t* @C_protObj to i32))
  call void @C_init(i32 %VR1)
;; <- new: linia 32
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
;- new -
;; -> new: linia 33
  %VR4 = call i32  @Object__copy(i32 ptrtoint (%struct.P_protObj_t* @P_protObj to i32))
  call void @P_init(i32 %VR4)
;; <- new: linia 33
  %VR5 = add i32 %ARG, 16
  %VR6 = inttoptr i32 %VR5 to i32*
  store i32 %VR4, i32* %VR6
  ret void
;#######################################; <- entry


}
define i32 @Main__main(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- block -
;; -> block: linia 37
;- block -- dispatch -
;; -> dispatch: linia 38
;;generez codul pentru apelul metodei method
;- block -- dispatch -- object -
;; -> object: linia 38
  %VR1 = add i32 %ARG, 16
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 38
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__8 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR6 = ptrtoint i32* %VR4 to i32 
  %VR7 = add i32 %VR6, 8
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = add i32 %VR9, 12
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = inttoptr i32 %VR12 to i32 (i32)*
  %VR14 = call i32 (i32)* %VR13(i32 %VR3)
;; <- dispatch: linia 38
;- block -- dispatch -
;; -> dispatch: linia 39
;;generez codul pentru apelul metodei method
;- block -- dispatch -- object -
;; -> object: linia 39
  %VR15 = add i32 %ARG, 12
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
;; <- object: linia 39
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = icmp eq i32* %VR18,  null
  br i1 %VR19, label %false_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- dispatch_not_void_Main_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__9 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Main_1
dispatch_not_void_Main_1:
  %VR20 = ptrtoint i32* %VR18 to i32 
  %VR21 = add i32 %VR20, 8
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = load i32* %VR22
  %VR24 = add i32 %VR23, 12
  %VR25 = inttoptr i32 %VR24 to i32*
  %VR26 = load i32* %VR25
  %VR27 = inttoptr i32 %VR26 to i32 (i32)*
  %VR28 = call i32 (i32)* %VR27(i32 %VR17)
;; <- dispatch: linia 39
;- block -- int_const -
;; -> int_const: linia 40
  %VR29 = add i32 0, 0
;; <- int_const: linia 40
;; <- block: linia 37
  ret i32 %VR29
;#######################################; <- dispatch_not_void_Main_1


}
@s16 = internal constant [1 x i8] c"\00"
@str_const__16 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([1 x i8]* @s16, i32 0, i32 0)}
@s15 = internal constant [5 x i8] c"Main\00"
@str_const__15 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([5 x i8]* @s15, i32 0, i32 0)}
@s14 = internal constant [2 x i8] c"C\00"
@str_const__14 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([2 x i8]* @s14, i32 0, i32 0)}
@s13 = internal constant [2 x i8] c"P\00"
@str_const__13 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([2 x i8]* @s13, i32 0, i32 0)}
@s12 = internal constant [3 x i8] c"IO\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__12, i8* getelementptr ([3 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [7 x i8] c"String\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([7 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [5 x i8] c"Bool\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([5 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [4 x i8] c"Int\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__14, i8* getelementptr ([4 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [7 x i8] c"Object\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([7 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([11 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([10 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [10 x i8] c"_no_class\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([10 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [14 x i8] c"<basic class>\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__15, i8* getelementptr ([14 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [12 x i8] c"C.method()\0A\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([12 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [2 x i8] c"\0A\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([2 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [12 x i8] c"P.method()\0A\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([12 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [22 x i8] c"simple/inheritance.cl\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([22 x i8]* @s0, i32 0, i32 0)}
@int_const__15 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__14 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__13 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__12 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 39}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 38}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 24}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 23}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 22}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 21}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 11}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
%struct.P_protObj_t = type { i32, i32, %struct.P_dispTab_t*, i32, i32 }
@P_protObj = global %struct.P_protObj_t {i32 5, i32 5, %struct.P_dispTab_t* @P_dispTab, i32 0, i32 0}
%struct.C_protObj_t = type { i32, i32, %struct.C_dispTab_t*, i32, i32 }
@C_protObj = global %struct.C_protObj_t {i32 6, i32 5, %struct.C_dispTab_t* @C_dispTab, i32 0, i32 0}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t*, i32, i32 }
@Main_protObj = global %struct.Main_protObj_t {i32 7, i32 5, %struct.Main_dispTab_t* @Main_dispTab, i32 0, i32 0}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__8, %struct.String_protObj_t* @str_const__9, %struct.String_protObj_t* @str_const__10, %struct.String_protObj_t* @str_const__11, %struct.String_protObj_t* @str_const__12, %struct.String_protObj_t* @str_const__13, %struct.String_protObj_t* @str_const__14, %struct.String_protObj_t* @str_const__15 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @P_init to i8*), i8* bitcast (void (i32)* @C_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.P_dispTab_t = type { i8*, i8*, i8*, i8*}
@P_dispTab = global %struct.P_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @P__method to i8*)}

%struct.C_dispTab_t = type { i8*, i8*, i8*, i8*}
@C_dispTab = global %struct.C_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @C__method to i8*)}

%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}


