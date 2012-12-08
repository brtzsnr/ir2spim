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
define void @A_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Object_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- new -
;; -> new: linia 4
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.IO_protObj_t* @IO_protObj to i32))
  call void @IO_init(i32 %VR1)
;; <- new: linia 4
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
  ret void
;#######################################; <- entry


}
define i32 @A__init(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.A_protObj_t*
;- block -
;; -> block: linia 7
;- block -- dispatch -
;; -> dispatch: linia 8
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 8
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 8
;- block -- dispatch -- object -
;; -> object: linia 8
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = load i32* %VR3
;; <- object: linia 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = icmp eq i32* %VR5,  null
  br i1 %VR6, label %false_dispatch0, label %dispatch_not_void_A_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__2 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_A_0
dispatch_not_void_A_0:
  %VR7 = ptrtoint i32* %VR5 to i32 
  %VR8 = add i32 %VR7, 8
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = add i32 %VR10, 16
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
  %VR14 = inttoptr i32 %VR13 to i32 (i32, i32)*
  %VR15 = call i32 (i32, i32)* %VR14(i32 %VR4, i32 %VR1)
;; <- dispatch: linia 8
;- block -- object -
;; -> object: linia 9
;; <- object: linia 9
;; <- block: linia 7
  ret i32 %ARG
;#######################################; <- dispatch_not_void_A_0


}
define void @B_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Object_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- dispatch -
;; -> dispatch: linia 16
;;generez codul pentru apelul metodei init
;- dispatch -- new -
;; -> new: linia 16
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.A_protObj_t* @A_protObj to i32))
  call void @A_init(i32 %VR1)
;; <- new: linia 16
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = icmp eq i32* %VR2,  null
  br i1 %VR3, label %false_dispatch0, label %dispatch_not_void_B_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__3 to i32))
  ret void
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_B_0
dispatch_not_void_B_0:
  %VR4 = ptrtoint i32* %VR2 to i32 
  %VR5 = add i32 %VR4, 8
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = load i32* %VR6
  %VR8 = add i32 %VR7, 12
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = inttoptr i32 %VR10 to i32 (i32)*
  %VR12 = call i32 (i32)* %VR11(i32 %VR1)
;; <- dispatch: linia 16
  %VR13 = add i32 %ARG, 16
  %VR14 = inttoptr i32 %VR13 to i32*
  store i32 %VR12, i32* %VR14
;- new -
;; -> new: linia 17
  %VR15 = call i32  @Object__copy(i32 ptrtoint (%struct.IO_protObj_t* @IO_protObj to i32))
  call void @IO_init(i32 %VR15)
;; <- new: linia 17
  %VR16 = add i32 %ARG, 20
  %VR17 = inttoptr i32 %VR16 to i32*
  store i32 %VR15, i32* %VR17
  ret void
;#######################################; <- dispatch_not_void_B_0


}
define i32 @B__init(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.B_protObj_t*
;- block -
;; -> block: linia 20
;- block -- dispatch -
;; -> dispatch: linia 21
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 21
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 21
;- block -- dispatch -- object -
;; -> object: linia 21
  %VR2 = add i32 %ARG, 20
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = load i32* %VR3
;; <- object: linia 21
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = icmp eq i32* %VR5,  null
  br i1 %VR6, label %false_dispatch1, label %dispatch_not_void_B_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_B_1
dispatch_not_void_B_1:
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
;- block -- object -
;; -> object: linia 22
;; <- object: linia 22
;; <- block: linia 20
  ret i32 %ARG
;#######################################; <- dispatch_not_void_B_1


}
define i32 @B__doSomething(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.B_protObj_t*
;- block -
;; -> block: linia 27
;- block -- assign -
;; -> assign: linia 28
;- block -- assign -- int_const -
;; -> int_const: linia 28
  %VR1 = add i32 10, 0
;; <- int_const: linia 28
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
;; <- assign: linia 28
;- block -- dispatch -
;; -> dispatch: linia 29
;;generez codul pentru apelul metodei out_int
;- block -- dispatch -- object -
;; -> object: linia 29
  %VR4 = add i32 %ARG, 12
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
;; <- object: linia 29
;- block -- dispatch -- object -
;; -> object: linia 29
  %VR7 = add i32 %ARG, 20
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
;; <- object: linia 29
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = icmp eq i32* %VR10,  null
  br i1 %VR11, label %false_dispatch2, label %dispatch_not_void_B_2
;#######################################; <- entry


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__5 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_B_2
dispatch_not_void_B_2:
  %VR12 = ptrtoint i32* %VR10 to i32 
  %VR13 = add i32 %VR12, 8
  %VR14 = inttoptr i32 %VR13 to i32*
  %VR15 = load i32* %VR14
  %VR16 = add i32 %VR15, 12
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = load i32* %VR17
;boxing to int
  %VR19 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR20 = add i32 %VR19, 12
  %VR21 = inttoptr i32 %VR20 to i32*
  store i32 %VR6, i32* %VR21
  %VR22 = inttoptr i32 %VR18 to i32 (i32, i32)*
  %VR23 = call i32 (i32, i32)* %VR22(i32 %VR9, i32 %VR19)
;; <- dispatch: linia 29
;- block -- dispatch -
;; -> dispatch: linia 30
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 30
  %VR24 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 30
;- block -- dispatch -- object -
;; -> object: linia 30
  %VR25 = add i32 %ARG, 20
  %VR26 = inttoptr i32 %VR25 to i32*
  %VR27 = load i32* %VR26
;; <- object: linia 30
  %VR28 = inttoptr i32 %VR27 to i32*
  %VR29 = icmp eq i32* %VR28,  null
  br i1 %VR29, label %false_dispatch3, label %dispatch_not_void_B_3
;#######################################; <- dispatch_not_void_B_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_B_3
dispatch_not_void_B_3:
  %VR30 = ptrtoint i32* %VR28 to i32 
  %VR31 = add i32 %VR30, 8
  %VR32 = inttoptr i32 %VR31 to i32*
  %VR33 = load i32* %VR32
  %VR34 = add i32 %VR33, 16
  %VR35 = inttoptr i32 %VR34 to i32*
  %VR36 = load i32* %VR35
  %VR37 = inttoptr i32 %VR36 to i32 (i32, i32)*
  %VR38 = call i32 (i32, i32)* %VR37(i32 %VR27, i32 %VR24)
;; <- dispatch: linia 30
;- block -- int_const -
;; -> int_const: linia 31
  %VR39 = add i32 0, 0
;; <- int_const: linia 31
;; <- block: linia 27
  ret i32 %VR39
;#######################################; <- dispatch_not_void_B_3


}
define void @Main_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- dispatch -
;; -> dispatch: linia 37
;;generez codul pentru apelul metodei init
;- dispatch -- new -
;; -> new: linia 37
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.B_protObj_t* @B_protObj to i32))
  call void @B_init(i32 %VR1)
;; <- new: linia 37
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = icmp eq i32* %VR2,  null
  br i1 %VR3, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__7 to i32))
  ret void
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR4 = ptrtoint i32* %VR2 to i32 
  %VR5 = add i32 %VR4, 8
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = load i32* %VR6
  %VR8 = add i32 %VR7, 12
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = inttoptr i32 %VR10 to i32 (i32)*
  %VR12 = call i32 (i32)* %VR11(i32 %VR1)
;; <- dispatch: linia 37
  %VR13 = add i32 %ARG, 12
  %VR14 = inttoptr i32 %VR13 to i32*
  store i32 %VR12, i32* %VR14
  ret void
;#######################################; <- dispatch_not_void_Main_0


}
define i32 @Main__main(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- block -
;; -> block: linia 40
;- block -- dispatch -
;; -> dispatch: linia 41
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 41
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__4 to i32 
;; <- string_const: linia 41
;- block -- dispatch -- object -
;; -> object: linia 41
;; <- object: linia 41
  %VR2 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__8 to i32))
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
;; <- dispatch: linia 41
;- block -- dispatch -
;; -> dispatch: linia 42
;;generez codul pentru apelul metodei doSomething
;- block -- dispatch -- object -
;; -> object: linia 42
  %VR12 = add i32 %ARG, 12
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
;; <- object: linia 42
  %VR15 = inttoptr i32 %VR14 to i32*
  %VR16 = icmp eq i32* %VR15,  null
  br i1 %VR16, label %false_dispatch2, label %dispatch_not_void_Main_2
;#######################################; <- dispatch_not_void_Main_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__9 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Main_2
dispatch_not_void_Main_2:
  %VR17 = ptrtoint i32* %VR15 to i32 
  %VR18 = add i32 %VR17, 8
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
  %VR21 = add i32 %VR20, 16
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = load i32* %VR22
  %VR24 = inttoptr i32 %VR23 to i32 (i32)*
  %VR25 = call i32 (i32)* %VR24(i32 %VR14)
;; <- dispatch: linia 42
;; <- block: linia 40
  ret i32 %VR25
;#######################################; <- dispatch_not_void_Main_2


}
@s17 = internal constant [1 x i8] c"\00"
@str_const__17 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([1 x i8]* @s17, i32 0, i32 0)}
@s16 = internal constant [5 x i8] c"Main\00"
@str_const__16 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([5 x i8]* @s16, i32 0, i32 0)}
@s15 = internal constant [2 x i8] c"B\00"
@str_const__15 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([2 x i8]* @s15, i32 0, i32 0)}
@s14 = internal constant [2 x i8] c"A\00"
@str_const__14 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([2 x i8]* @s14, i32 0, i32 0)}
@s13 = internal constant [3 x i8] c"IO\00"
@str_const__13 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__12, i8* getelementptr ([3 x i8]* @s13, i32 0, i32 0)}
@s12 = internal constant [7 x i8] c"String\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([7 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [5 x i8] c"Bool\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([5 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [4 x i8] c"Int\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__14, i8* getelementptr ([4 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [7 x i8] c"Object\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([7 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([11 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__15, i8* getelementptr ([10 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [10 x i8] c"_no_class\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__15, i8* getelementptr ([10 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [14 x i8] c"<basic class>\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__16, i8* getelementptr ([14 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [13 x i8] c"Main.main()\0A\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__17, i8* getelementptr ([13 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [2 x i8] c"\0A\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([2 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [10 x i8] c"B.init()\0A\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__15, i8* getelementptr ([10 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [10 x i8] c"A.init()\0A\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__15, i8* getelementptr ([10 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [21 x i8] c"simple/attributes.cl\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__18, i8* getelementptr ([21 x i8]* @s0, i32 0, i32 0)}
@int_const__18 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 20}
@int_const__17 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 12}
@int_const__16 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__15 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__14 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__13 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__12 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 42}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 41}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 37}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 30}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 29}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 21}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 16}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 8}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
%struct.A_protObj_t = type { i32, i32, %struct.A_dispTab_t*, i32 }
@A_protObj = global %struct.A_protObj_t {i32 5, i32 4, %struct.A_dispTab_t* @A_dispTab, i32 0}
%struct.B_protObj_t = type { i32, i32, %struct.B_dispTab_t*, i32, i32, i32 }
@B_protObj = global %struct.B_protObj_t {i32 6, i32 6, %struct.B_dispTab_t* @B_dispTab, i32 0, i32 0, i32 0}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t*, i32 }
@Main_protObj = global %struct.Main_protObj_t {i32 7, i32 4, %struct.Main_dispTab_t* @Main_dispTab, i32 0}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__9, %struct.String_protObj_t* @str_const__10, %struct.String_protObj_t* @str_const__11, %struct.String_protObj_t* @str_const__12, %struct.String_protObj_t* @str_const__13, %struct.String_protObj_t* @str_const__14, %struct.String_protObj_t* @str_const__15, %struct.String_protObj_t* @str_const__16 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @A_init to i8*), i8* bitcast (void (i32)* @B_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.A_dispTab_t = type { i8*, i8*, i8*, i8*}
@A_dispTab = global %struct.A_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @A__init to i8*)}

%struct.B_dispTab_t = type { i8*, i8*, i8*, i8*, i8*}
@B_dispTab = global %struct.B_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @B__init to i8*), i8* bitcast (i32 (i32)* @B__doSomething to i8*)}

%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}


