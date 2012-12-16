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
define void @Bob_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- int_const -
;; -> int_const: linia 3
  %VR1 = add i32 4, 0
;; <- int_const: linia 3
  %VR2 = add i32 %ARG, 16
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
  ret void
;#######################################; <- entry


}
define void @Main_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Bob_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- int_const -
;; -> int_const: linia 7
  %VR1 = add i32 23, 0
;; <- int_const: linia 7
  %VR2 = add i32 %ARG, 20
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
  ret void
;#######################################; <- entry


}
define i32 @Main__jack(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- block -
;; -> block: linia 9
;- block -- let -
;; -> let: linia 10
;- block -- let -- plus -
;; -> plus: linia 10
;- block -- let -- plus -- object -
;; -> object: linia 10
;; <- object: linia 10
;- block -- let -- plus -- object -
;; -> object: linia 10
  %VR3 = add i32 %ARG, 16
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
;; <- object: linia 10
  %VR6 = add i32 %VR2, %VR5
;; <- plus: linia 10
;- block -- let -- dispatch -
;; -> dispatch: linia 10
;;generez codul pentru apelul metodei print_z
;- block -- let -- dispatch -- object -
;; -> object: linia 10
;; <- object: linia 10
;- block -- let -- dispatch -- object -
;; -> object: linia 10
;; <- object: linia 10
  %VR7 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR7, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR8 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR9 = add i32 %VR8, 8
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = add i32 %VR11, 32
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
  %VR15 = inttoptr i32 %VR14 to i32 (i32, i32)*
  %VR16 = call i32 (i32, i32)* %VR15(i32 %ARG, i32 %VR6)
;; <- dispatch: linia 10
;; <- let: linia 10
;- block -- assign -
;; -> assign: linia 11
;- block -- assign -- plus -
;; -> plus: linia 11
;- block -- assign -- plus -- object -
;; -> object: linia 11
  %VR17 = add i32 %ARG, 16
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
;; <- object: linia 11
;- block -- assign -- plus -- int_const -
;; -> int_const: linia 11
  %VR20 = add i32 4, 0
;; <- int_const: linia 11
  %VR21 = add i32 %VR19, %VR20
;; <- plus: linia 11
  %VR22 = add i32 %ARG, 16
  %VR23 = inttoptr i32 %VR22 to i32*
  store i32 %VR21, i32* %VR23
;; <- assign: linia 11
;- block -- let -
;; -> let: linia 12
;- block -- let -- plus -
;; -> plus: linia 12
;- block -- let -- plus -- object -
;; -> object: linia 12
;; <- object: linia 12
;- block -- let -- plus -- object -
;; -> object: linia 12
  %VR24 = add i32 %ARG, 16
  %VR25 = inttoptr i32 %VR24 to i32*
  %VR26 = load i32* %VR25
;; <- object: linia 12
  %VR27 = add i32 %VR2, %VR26
;; <- plus: linia 12
;- block -- let -- object -
;; -> object: linia 12
;; <- object: linia 12
;; <- let: linia 12
;; <- block: linia 9
  ret i32 %VR27
;#######################################; <- dispatch_not_void_Main_0


}
define i32 @Main__print_z(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- block -
;; -> block: linia 15
;- block -- dispatch -
;; -> dispatch: linia 16
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 16
  %VR2 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 16
;- block -- dispatch -- object -
;; -> object: linia 16
;; <- object: linia 16
  %VR3 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR3, label %false_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__5 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Main_1
dispatch_not_void_Main_1:
  %VR4 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR5 = add i32 %VR4, 8
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = load i32* %VR6
  %VR8 = add i32 %VR7, 16
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = inttoptr i32 %VR10 to i32 (i32, i32)*
  %VR12 = call i32 (i32, i32)* %VR11(i32 %ARG, i32 %VR2)
;; <- dispatch: linia 16
;- block -- dispatch -
;; -> dispatch: linia 17
;;generez codul pentru apelul metodei out_int
;- block -- dispatch -- object -
;; -> object: linia 17
;; <- object: linia 17
;- block -- dispatch -- object -
;; -> object: linia 17
;; <- object: linia 17
  %VR13 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR13, label %false_dispatch2, label %dispatch_not_void_Main_2
;#######################################; <- dispatch_not_void_Main_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Main_2
dispatch_not_void_Main_2:
  %VR14 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR15 = add i32 %VR14, 8
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
  %VR18 = add i32 %VR17, 12
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
;boxing to int
  %VR21 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR22 = add i32 %VR21, 12
  %VR23 = inttoptr i32 %VR22 to i32*
  store i32 %VR1, i32* %VR23
  %VR24 = inttoptr i32 %VR20 to i32 (i32, i32)*
  %VR25 = call i32 (i32, i32)* %VR24(i32 %ARG, i32 %VR21)
;; <- dispatch: linia 17
;- block -- dispatch -
;; -> dispatch: linia 18
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 18
  %VR26 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 18
;- block -- dispatch -- object -
;; -> object: linia 18
;; <- object: linia 18
  %VR27 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR27, label %false_dispatch3, label %dispatch_not_void_Main_3
;#######################################; <- dispatch_not_void_Main_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__7 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Main_3
dispatch_not_void_Main_3:
  %VR28 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR29 = add i32 %VR28, 8
  %VR30 = inttoptr i32 %VR29 to i32*
  %VR31 = load i32* %VR30
  %VR32 = add i32 %VR31, 16
  %VR33 = inttoptr i32 %VR32 to i32*
  %VR34 = load i32* %VR33
  %VR35 = inttoptr i32 %VR34 to i32 (i32, i32)*
  %VR36 = call i32 (i32, i32)* %VR35(i32 %ARG, i32 %VR26)
;; <- dispatch: linia 18
;; <- block: linia 15
  ret i32 %VR36
;#######################################; <- dispatch_not_void_Main_3


}
define i32 @Main__main(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- block -
;; -> block: linia 21
;- block -- dispatch -
;; -> dispatch: linia 22
;;generez codul pentru apelul metodei print_z
;- block -- dispatch -- object -
;; -> object: linia 22
  %VR1 = add i32 %ARG, 20
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 22
;- block -- dispatch -- object -
;; -> object: linia 22
;; <- object: linia 22
  %VR4 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR4, label %false_dispatch4, label %dispatch_not_void_Main_4
;#######################################; <- entry


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__8 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Main_4
dispatch_not_void_Main_4:
  %VR5 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 32
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32, i32)*
  %VR13 = call i32 (i32, i32)* %VR12(i32 %ARG, i32 %VR3)
;; <- dispatch: linia 22
;- block -- let -
;; -> let: linia 23
;- block -- let -- dispatch -
;; -> dispatch: linia 23
;;generez codul pentru apelul metodei jack
;- block -- let -- dispatch -- int_const -
;; -> int_const: linia 23
  %VR14 = add i32 5, 0
;; <- int_const: linia 23
;- block -- let -- dispatch -- plus -
;; -> plus: linia 23
;- block -- let -- dispatch -- plus -- object -
;; -> object: linia 23
  %VR15 = add i32 %ARG, 20
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
;; <- object: linia 23
;- block -- let -- dispatch -- plus -- int_const -
;; -> int_const: linia 23
  %VR18 = add i32 2, 0
;; <- int_const: linia 23
  %VR19 = add i32 %VR17, %VR18
;; <- plus: linia 23
;- block -- let -- dispatch -- object -
;; -> object: linia 23
;; <- object: linia 23
  %VR20 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR20, label %false_dispatch5, label %dispatch_not_void_Main_5
;#######################################; <- dispatch_not_void_Main_4


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__1 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_Main_5
dispatch_not_void_Main_5:
  %VR21 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR22 = add i32 %VR21, 8
  %VR23 = inttoptr i32 %VR22 to i32*
  %VR24 = load i32* %VR23
  %VR25 = add i32 %VR24, 28
  %VR26 = inttoptr i32 %VR25 to i32*
  %VR27 = load i32* %VR26
  %VR28 = inttoptr i32 %VR27 to i32 (i32, i32, i32)*
  %VR29 = call i32 (i32, i32, i32)* %VR28(i32 %ARG, i32 %VR14, i32 %VR19)
;; <- dispatch: linia 23
;- block -- let -- dispatch -
;; -> dispatch: linia 24
;;generez codul pentru apelul metodei print_z
;- block -- let -- dispatch -- object -
;; -> object: linia 24
;; <- object: linia 24
;- block -- let -- dispatch -- object -
;; -> object: linia 24
;; <- object: linia 24
  %VR30 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR30, label %false_dispatch6, label %dispatch_not_void_Main_6
;#######################################; <- dispatch_not_void_Main_5


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__9 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_Main_6
dispatch_not_void_Main_6:
  %VR31 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR32 = add i32 %VR31, 8
  %VR33 = inttoptr i32 %VR32 to i32*
  %VR34 = load i32* %VR33
  %VR35 = add i32 %VR34, 32
  %VR36 = inttoptr i32 %VR35 to i32*
  %VR37 = load i32* %VR36
  %VR38 = inttoptr i32 %VR37 to i32 (i32, i32)*
  %VR39 = call i32 (i32, i32)* %VR38(i32 %ARG, i32 %VR29)
;; <- dispatch: linia 24
;; <- let: linia 23
;; <- block: linia 21
  ret i32 %VR39
;#######################################; <- dispatch_not_void_Main_6


}
@s14 = internal constant [1 x i8] c"\00"
@str_const__14 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([1 x i8]* @s14, i32 0, i32 0)}
@s13 = internal constant [5 x i8] c"Main\00"
@str_const__13 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([5 x i8]* @s13, i32 0, i32 0)}
@s12 = internal constant [4 x i8] c"Bob\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([4 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [3 x i8] c"IO\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([3 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [7 x i8] c"String\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__12, i8* getelementptr ([7 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [5 x i8] c"Bool\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([5 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [4 x i8] c"Int\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([4 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [7 x i8] c"Object\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__12, i8* getelementptr ([7 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([11 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([10 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [10 x i8] c"_no_class\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([10 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [14 x i8] c"<basic class>\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__14, i8* getelementptr ([14 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [2 x i8] c"\0A\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__15, i8* getelementptr ([2 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [5 x i8] c"z = \00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([5 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [25 x i8] c"_tests/simple/scoping.cl\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([25 x i8]* @s0, i32 0, i32 0)}
@int_const__15 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
@int_const__14 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__13 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__12 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 24}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 22}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 18}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 17}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 16}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 5}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 23}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
%struct.Bob_protObj_t = type { i32, i32, %struct.Bob_dispTab_t*, i32, i32 }
@Bob_protObj = global %struct.Bob_protObj_t {i32 5, i32 5, %struct.Bob_dispTab_t* @Bob_dispTab, i32 0, i32 0}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t*, i32, i32, i32 }
@Main_protObj = global %struct.Main_protObj_t {i32 6, i32 6, %struct.Main_dispTab_t* @Main_dispTab, i32 0, i32 0, i32 0}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__7, %struct.String_protObj_t* @str_const__8, %struct.String_protObj_t* @str_const__9, %struct.String_protObj_t* @str_const__10, %struct.String_protObj_t* @str_const__11, %struct.String_protObj_t* @str_const__12, %struct.String_protObj_t* @str_const__13 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @Bob_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.Bob_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Bob_dispTab = global %struct.Bob_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*)}

%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32,i32,i32)* @Main__jack to i8*), i8* bitcast (i32 (i32,i32)* @Main__print_z to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}

