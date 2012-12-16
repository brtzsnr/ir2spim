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
define void @A_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Object_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- new -
;; -> new: linia 53
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.IO_protObj_t* @IO_protObj to i32))
  call void @IO_init(i32 %VR1)
;; <- new: linia 53
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
  ret void
;#######################################; <- entry


}
define i32 @A__out_a(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.A_protObj_t*
;- dispatch -
;; -> dispatch: linia 55
;;generez codul pentru apelul metodei out_string
;- dispatch -- string_const -
;; -> string_const: linia 55
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 55
;- dispatch -- object -
;; -> object: linia 55
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = load i32* %VR3
;; <- object: linia 55
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = icmp eq i32* %VR5,  null
  br i1 %VR6, label %false_dispatch0, label %dispatch_not_void_A_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__0 to i32))
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
;; <- dispatch: linia 55
  ret i32 %VR15
;#######################################; <- dispatch_not_void_A_0


}
define void @B_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @A_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @B__out_b(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.B_protObj_t*
;- dispatch -
;; -> dispatch: linia 64
;;generez codul pentru apelul metodei out_string
;- dispatch -- string_const -
;; -> string_const: linia 64
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 64
;- dispatch -- object -
;; -> object: linia 64
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = load i32* %VR3
;; <- object: linia 64
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = icmp eq i32* %VR5,  null
  br i1 %VR6, label %false_dispatch0, label %dispatch_not_void_B_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__1 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_B_0
dispatch_not_void_B_0:
  %VR7 = ptrtoint i32* %VR5 to i32 
  %VR8 = add i32 %VR7, 8
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = add i32 %VR10, 16
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
  %VR14 = inttoptr i32 %VR13 to i32 (i32, i32)*
  %VR15 = call i32 (i32, i32)* %VR14(i32 %VR4, i32 %VR1)
;; <- dispatch: linia 64
  ret i32 %VR15
;#######################################; <- dispatch_not_void_B_0


}
define void @C_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @C__out_c(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.C_protObj_t*
;- dispatch -
;; -> dispatch: linia 73
;;generez codul pentru apelul metodei out_string
;- dispatch -- string_const -
;; -> string_const: linia 73
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 73
;- dispatch -- object -
;; -> object: linia 73
;; <- object: linia 73
  %VR2 = icmp eq %struct.C_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch0, label %dispatch_not_void_C_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__2 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_C_0
dispatch_not_void_C_0:
  %VR3 = ptrtoint %struct.C_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 16
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 73
  ret i32 %VR11
;#######################################; <- dispatch_not_void_C_0


}
define void @D_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @C_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @D__out_d(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.D_protObj_t*
;- dispatch -
;; -> dispatch: linia 84
;;generez codul pentru apelul metodei out_string
;- dispatch -- string_const -
;; -> string_const: linia 84
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__4 to i32 
;; <- string_const: linia 84
;- dispatch -- object -
;; -> object: linia 84
;; <- object: linia 84
  %VR2 = icmp eq %struct.D_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch0, label %dispatch_not_void_D_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__3 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_D_0
dispatch_not_void_D_0:
  %VR3 = ptrtoint %struct.D_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 16
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 84
  ret i32 %VR11
;#######################################; <- dispatch_not_void_D_0


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
define i32 @Main__main(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- block -
;; -> block: linia 94
;- block -- dispatch -
;; -> dispatch: linia 95
;;generez codul pentru apelul metodei out_a
;- block -- dispatch -- new -
;; -> new: linia 95
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.A_protObj_t* @A_protObj to i32))
  call void @A_init(i32 %VR1)
;; <- new: linia 95
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = icmp eq i32* %VR2,  null
  br i1 %VR3, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret i32 0
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
;; <- dispatch: linia 95
;- block -- dispatch -
;; -> dispatch: linia 96
;;generez codul pentru apelul metodei out_b
;- block -- dispatch -- new -
;; -> new: linia 96
  %VR13 = call i32  @Object__copy(i32 ptrtoint (%struct.B_protObj_t* @B_protObj to i32))
  call void @B_init(i32 %VR13)
;; <- new: linia 96
  %VR14 = inttoptr i32 %VR13 to i32*
  %VR15 = icmp eq i32* %VR14,  null
  br i1 %VR15, label %false_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- dispatch_not_void_Main_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__5 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Main_1
dispatch_not_void_Main_1:
  %VR16 = ptrtoint i32* %VR14 to i32 
  %VR17 = add i32 %VR16, 8
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
  %VR20 = add i32 %VR19, 16
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
  %VR23 = inttoptr i32 %VR22 to i32 (i32)*
  %VR24 = call i32 (i32)* %VR23(i32 %VR13)
;; <- dispatch: linia 96
;- block -- dispatch -
;; -> dispatch: linia 97
;;generez codul pentru apelul metodei out_c
;- block -- dispatch -- new -
;; -> new: linia 97
  %VR25 = call i32  @Object__copy(i32 ptrtoint (%struct.C_protObj_t* @C_protObj to i32))
  call void @C_init(i32 %VR25)
;; <- new: linia 97
  %VR26 = inttoptr i32 %VR25 to i32*
  %VR27 = icmp eq i32* %VR26,  null
  br i1 %VR27, label %false_dispatch2, label %dispatch_not_void_Main_2
;#######################################; <- dispatch_not_void_Main_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Main_2
dispatch_not_void_Main_2:
  %VR28 = ptrtoint i32* %VR26 to i32 
  %VR29 = add i32 %VR28, 8
  %VR30 = inttoptr i32 %VR29 to i32*
  %VR31 = load i32* %VR30
  %VR32 = add i32 %VR31, 28
  %VR33 = inttoptr i32 %VR32 to i32*
  %VR34 = load i32* %VR33
  %VR35 = inttoptr i32 %VR34 to i32 (i32)*
  %VR36 = call i32 (i32)* %VR35(i32 %VR25)
;; <- dispatch: linia 97
;- block -- dispatch -
;; -> dispatch: linia 98
;;generez codul pentru apelul metodei out_d
;- block -- dispatch -- new -
;; -> new: linia 98
  %VR37 = call i32  @Object__copy(i32 ptrtoint (%struct.D_protObj_t* @D_protObj to i32))
  call void @D_init(i32 %VR37)
;; <- new: linia 98
  %VR38 = inttoptr i32 %VR37 to i32*
  %VR39 = icmp eq i32* %VR38,  null
  br i1 %VR39, label %false_dispatch3, label %dispatch_not_void_Main_3
;#######################################; <- dispatch_not_void_Main_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__7 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Main_3
dispatch_not_void_Main_3:
  %VR40 = ptrtoint i32* %VR38 to i32 
  %VR41 = add i32 %VR40, 8
  %VR42 = inttoptr i32 %VR41 to i32*
  %VR43 = load i32* %VR42
  %VR44 = add i32 %VR43, 32
  %VR45 = inttoptr i32 %VR44 to i32*
  %VR46 = load i32* %VR45
  %VR47 = inttoptr i32 %VR46 to i32 (i32)*
  %VR48 = call i32 (i32)* %VR47(i32 %VR37)
;; <- dispatch: linia 98
;- block -- dispatch -
;; -> dispatch: linia 99
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 99
  %VR49 = ptrtoint %struct.String_protObj_t* @str_const__5 to i32 
;; <- string_const: linia 99
;- block -- dispatch -- object -
;; -> object: linia 99
;; <- object: linia 99
  %VR50 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR50, label %false_dispatch4, label %dispatch_not_void_Main_4
;#######################################; <- dispatch_not_void_Main_3


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__8 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Main_4
dispatch_not_void_Main_4:
  %VR51 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR52 = add i32 %VR51, 8
  %VR53 = inttoptr i32 %VR52 to i32*
  %VR54 = load i32* %VR53
  %VR55 = add i32 %VR54, 16
  %VR56 = inttoptr i32 %VR55 to i32*
  %VR57 = load i32* %VR56
  %VR58 = inttoptr i32 %VR57 to i32 (i32, i32)*
  %VR59 = call i32 (i32, i32)* %VR58(i32 %ARG, i32 %VR49)
;; <- dispatch: linia 99
;; <- block: linia 94
  ret i32 %VR59
;#######################################; <- dispatch_not_void_Main_4


}
@s20 = internal constant [1 x i8] c"\00"
@str_const__20 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([1 x i8]* @s20, i32 0, i32 0)}
@s19 = internal constant [5 x i8] c"Main\00"
@str_const__19 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([5 x i8]* @s19, i32 0, i32 0)}
@s18 = internal constant [2 x i8] c"D\00"
@str_const__18 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([2 x i8]* @s18, i32 0, i32 0)}
@s17 = internal constant [2 x i8] c"C\00"
@str_const__17 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([2 x i8]* @s17, i32 0, i32 0)}
@s16 = internal constant [2 x i8] c"B\00"
@str_const__16 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([2 x i8]* @s16, i32 0, i32 0)}
@s15 = internal constant [2 x i8] c"A\00"
@str_const__15 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([2 x i8]* @s15, i32 0, i32 0)}
@s14 = internal constant [3 x i8] c"IO\00"
@str_const__14 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__12, i8* getelementptr ([3 x i8]* @s14, i32 0, i32 0)}
@s13 = internal constant [7 x i8] c"String\00"
@str_const__13 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([7 x i8]* @s13, i32 0, i32 0)}
@s12 = internal constant [5 x i8] c"Bool\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([5 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [4 x i8] c"Int\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__14, i8* getelementptr ([4 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [7 x i8] c"Object\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([7 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__15, i8* getelementptr ([11 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__16, i8* getelementptr ([10 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [10 x i8] c"_no_class\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__16, i8* getelementptr ([10 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [14 x i8] c"<basic class>\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__17, i8* getelementptr ([14 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [7 x i8] c"Done.\0A\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([7 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [16 x i8] c"D: Hello world\0A\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__18, i8* getelementptr ([16 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [16 x i8] c"C: Hello world\0A\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__18, i8* getelementptr ([16 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [16 x i8] c"B: Hello world\0A\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__18, i8* getelementptr ([16 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [16 x i8] c"A: Hello world\0A\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__18, i8* getelementptr ([16 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [15 x i8] c"/tmp/cpleW5AAm\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__19, i8* getelementptr ([15 x i8]* @s0, i32 0, i32 0)}
@int_const__19 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 14}
@int_const__18 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 15}
@int_const__17 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__16 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__15 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__14 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__13 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__12 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 99}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 98}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 97}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 96}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 95}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 84}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 73}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 64}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 55}
%struct.A_protObj_t = type { i32, i32, %struct.A_dispTab_t*, i32 }
@A_protObj = global %struct.A_protObj_t {i32 5, i32 4, %struct.A_dispTab_t* @A_dispTab, i32 0}
%struct.B_protObj_t = type { i32, i32, %struct.B_dispTab_t*, i32 }
@B_protObj = global %struct.B_protObj_t {i32 6, i32 4, %struct.B_dispTab_t* @B_dispTab, i32 0}
%struct.C_protObj_t = type { i32, i32, %struct.C_dispTab_t* }
@C_protObj = global %struct.C_protObj_t {i32 7, i32 3, %struct.C_dispTab_t* @C_dispTab}
%struct.D_protObj_t = type { i32, i32, %struct.D_dispTab_t* }
@D_protObj = global %struct.D_protObj_t {i32 8, i32 3, %struct.D_dispTab_t* @D_dispTab}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t* }
@Main_protObj = global %struct.Main_protObj_t {i32 9, i32 3, %struct.Main_dispTab_t* @Main_dispTab}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__10, %struct.String_protObj_t* @str_const__11, %struct.String_protObj_t* @str_const__12, %struct.String_protObj_t* @str_const__13, %struct.String_protObj_t* @str_const__14, %struct.String_protObj_t* @str_const__15, %struct.String_protObj_t* @str_const__16, %struct.String_protObj_t* @str_const__17, %struct.String_protObj_t* @str_const__18, %struct.String_protObj_t* @str_const__19 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @A_init to i8*), i8* bitcast (void (i32)* @B_init to i8*), i8* bitcast (void (i32)* @C_init to i8*), i8* bitcast (void (i32)* @D_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.A_dispTab_t = type { i8*, i8*, i8*, i8*}
@A_dispTab = global %struct.A_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @A__out_a to i8*)}

%struct.B_dispTab_t = type { i8*, i8*, i8*, i8*, i8*}
@B_dispTab = global %struct.B_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @A__out_a to i8*), i8* bitcast (i32 (i32)* @B__out_b to i8*)}

%struct.C_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@C_dispTab = global %struct.C_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @C__out_c to i8*)}

%struct.D_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@D_dispTab = global %struct.D_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @C__out_c to i8*), i8* bitcast (i32 (i32)* @D__out_d to i8*)}

%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}

