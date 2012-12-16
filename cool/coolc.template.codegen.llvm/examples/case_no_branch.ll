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
;- block -- assign -
;; -> assign: linia 8
;- block -- assign -- int_const -
;; -> int_const: linia 8
  %VR1 = add i32 10, 0
;; <- int_const: linia 8
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
;; <- assign: linia 8
;- block -- object -
;; -> object: linia 9
;; <- object: linia 9
;; <- block: linia 7
  ret i32 %ARG
;#######################################; <- entry


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
define i32 @B__init(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.B_protObj_t*
;- block -
;; -> block: linia 17
;- block -- assign -
;; -> assign: linia 18
;- block -- assign -- int_const -
;; -> int_const: linia 18
  %VR1 = add i32 20, 0
;; <- int_const: linia 18
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
;; <- assign: linia 18
;- block -- object -
;; -> object: linia 19
;; <- object: linia 19
;; <- block: linia 17
  ret i32 %ARG
;#######################################; <- entry


}
define void @C_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @A_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @C__init(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.C_protObj_t*
;- block -
;; -> block: linia 27
;- block -- assign -
;; -> assign: linia 28
;- block -- assign -- int_const -
;; -> int_const: linia 28
  %VR1 = add i32 30, 0
;; <- int_const: linia 28
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
;; <- assign: linia 28
;- block -- object -
;; -> object: linia 29
;; <- object: linia 29
;; <- block: linia 27
  ret i32 %ARG
;#######################################; <- entry


}
define void @Main_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Object_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- dispatch -
;; -> dispatch: linia 36
;;generez codul pentru apelul metodei init
;- dispatch -- new -
;; -> new: linia 36
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.A_protObj_t* @A_protObj to i32))
  call void @A_init(i32 %VR1)
;; <- new: linia 36
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = icmp eq i32* %VR2,  null
  br i1 %VR3, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
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
;; <- dispatch: linia 36
  %VR13 = add i32 %ARG, 12
  %VR14 = inttoptr i32 %VR13 to i32*
  store i32 %VR12, i32* %VR14
;- new -
;; -> new: linia 37
  %VR15 = call i32  @Object__copy(i32 ptrtoint (%struct.IO_protObj_t* @IO_protObj to i32))
  call void @IO_init(i32 %VR15)
;; <- new: linia 37
  %VR16 = add i32 %ARG, 16
  %VR17 = inttoptr i32 %VR16 to i32*
  store i32 %VR15, i32* %VR17
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
;- block -- typcase -
;; -> typcase: linia 41
;- block -- typcase -- object -
;; -> object: linia 41
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 41
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_typcase00, label %case_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_typcase00
false_typcase00:
  call void @_case_abort2(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__5 to i32))
  ret i32 0
;#######################################; <- false_typcase00


;#######################################; -> case_not_void_Main_0
case_not_void_Main_0:
;;rezerv %VR6 pentru rezultatul case-ului
  %VR7 = ptrtoint i32* %VR4 to i32 
  %VR8 = add i32 %VR7, 0
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = icmp eq i32 %VR10,  0
  br i1 %VR11, label %case_0_noAlternativeMain_0, label %next0_case_0_noAlternativeMain_0
;#######################################; <- case_not_void_Main_0


;#######################################; -> next0_case_0_noAlternativeMain_0
next0_case_0_noAlternativeMain_0:
  %VR12 = icmp eq i32 %VR10,  1
  br i1 %VR12, label %case_0_noAlternativeMain_0, label %next1_case_0_noAlternativeMain_0
;#######################################; <- next0_case_0_noAlternativeMain_0


;#######################################; -> next1_case_0_noAlternativeMain_0
next1_case_0_noAlternativeMain_0:
  %VR13 = icmp eq i32 %VR10,  2
  br i1 %VR13, label %case_0_noAlternativeMain_0, label %next2_case_0_noAlternativeMain_0
;#######################################; <- next1_case_0_noAlternativeMain_0


;#######################################; -> next2_case_0_noAlternativeMain_0
next2_case_0_noAlternativeMain_0:
  %VR14 = icmp eq i32 %VR10,  3
  br i1 %VR14, label %case_0_noAlternativeMain_0, label %next3_case_0_noAlternativeMain_0
;#######################################; <- next2_case_0_noAlternativeMain_0


;#######################################; -> next3_case_0_noAlternativeMain_0
next3_case_0_noAlternativeMain_0:
  %VR15 = icmp eq i32 %VR10,  4
  br i1 %VR15, label %case_0_noAlternativeMain_0, label %next4_case_0_noAlternativeMain_0
;#######################################; <- next3_case_0_noAlternativeMain_0


;#######################################; -> next4_case_0_noAlternativeMain_0
next4_case_0_noAlternativeMain_0:
  %VR16 = icmp eq i32 %VR10,  5
  br i1 %VR16, label %case_0_noAlternativeMain_0, label %next5_case_0_noAlternativeMain_0
;#######################################; <- next4_case_0_noAlternativeMain_0


;#######################################; -> next5_case_0_noAlternativeMain_0
next5_case_0_noAlternativeMain_0:
  %VR17 = icmp eq i32 %VR10,  6
  br i1 %VR17, label %case_B__Main_0, label %next6_case_B__Main_0
;#######################################; <- next5_case_0_noAlternativeMain_0


;#######################################; -> next6_case_B__Main_0
next6_case_B__Main_0:
  %VR18 = icmp eq i32 %VR10,  7
  br i1 %VR18, label %case_C__Main_0, label %next7_case_C__Main_0
;#######################################; <- next6_case_B__Main_0


;#######################################; -> next7_case_C__Main_0
next7_case_C__Main_0:
  %VR19 = icmp eq i32 %VR10,  8
  br i1 %VR19, label %case_0_noAlternativeMain_0, label %next8_case_0_noAlternativeMain_0
;#######################################; <- next7_case_C__Main_0


;#######################################; -> next8_case_0_noAlternativeMain_0
next8_case_0_noAlternativeMain_0:
  br label %case_B__Main_0
;#######################################; <- next8_case_0_noAlternativeMain_0


;#######################################; -> case_B__Main_0
case_B__Main_0:
  %VR20 = call i32  @Object__copy(i32 %VR7)
  %VR21 = add i32 6, 0
  %VR22 = ptrtoint %struct.B_protObj_t* @B_protObj to i32 
  %VR23 = add i32 %VR22, 8
  %VR24 = inttoptr i32 %VR23 to i32*
  %VR25 = load i32* %VR24
  %VR26 = add i32 %VR20, 0
  %VR27 = inttoptr i32 %VR26 to i32*
  store i32 %VR21, i32* %VR27
  %VR28 = add i32 %VR20, 0
  %VR29 = inttoptr i32 %VR28 to i32*
  store i32 %VR25, i32* %VR29
  %VR30 = add i32 %VR20, 0
  %VR31 = inttoptr i32 %VR30 to i32*
  %VR32 = load i32* %VR31
  %VR33 = icmp eq i32 %VR32,  1
  br i1 %VR33, label %typcase_ok_Main_01, label %unboxing_0_Main_0
;#######################################; <- case_B__Main_0


;#######################################; -> typcase_ok_Main_01
typcase_ok_Main_01:
  %VR34 = icmp eq i32 %VR32,  2
  br i1 %VR34, label %typcase_ok_Main_02, label %unboxing_0_Main_0
;#######################################; <- typcase_ok_Main_01


;#######################################; -> typcase_ok_Main_02
typcase_ok_Main_02:
  br label %after_unbox_0_Main_0
;#######################################; <- typcase_ok_Main_02


;#######################################; -> unboxing_0_Main_0
unboxing_0_Main_0:
  %VR35 = add i32 %VR20, 12
  %VR36 = inttoptr i32 %VR35 to i32*
  %VR37 = load i32* %VR36
  br label %after_unbox_0_Main_0
;#######################################; <- unboxing_0_Main_0


;#######################################; -> after_unbox_0_Main_0
after_unbox_0_Main_0:
;- block -- typcase -- dispatch -
;; -> dispatch: linia 42
;;generez codul pentru apelul metodei out_string
;- block -- typcase -- dispatch -- string_const -
;; -> string_const: linia 42
  %VR38 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 42
;- block -- typcase -- dispatch -- object -
;; -> object: linia 42
  %VR39 = add i32 %ARG, 16
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = load i32* %VR40
;; <- object: linia 42
  %VR42 = inttoptr i32 %VR41 to i32*
  %VR43 = icmp eq i32* %VR42,  null
  br i1 %VR43, label %false_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- after_unbox_0_Main_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Main_1
dispatch_not_void_Main_1:
  %VR44 = ptrtoint i32* %VR42 to i32 
  %VR45 = add i32 %VR44, 8
  %VR46 = inttoptr i32 %VR45 to i32*
  %VR47 = load i32* %VR46
  %VR48 = add i32 %VR47, 16
  %VR49 = inttoptr i32 %VR48 to i32*
  %VR50 = load i32* %VR49
  %VR51 = inttoptr i32 %VR50 to i32 (i32, i32)*
  %VR52 = call i32 (i32, i32)* %VR51(i32 %VR41, i32 %VR38)
;; <- dispatch: linia 42
  %VR6.0 = add i32 %VR52, 0
  br label %phi_0_sfarsit_case_Main_0
;#######################################; <- dispatch_not_void_Main_1


;#######################################; -> phi_0_sfarsit_case_Main_0
phi_0_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_0_sfarsit_case_Main_0


;#######################################; -> case_C__Main_0
case_C__Main_0:
  %VR53 = call i32  @Object__copy(i32 %VR7)
  %VR54 = add i32 7, 0
  %VR55 = ptrtoint %struct.C_protObj_t* @C_protObj to i32 
  %VR56 = add i32 %VR55, 8
  %VR57 = inttoptr i32 %VR56 to i32*
  %VR58 = load i32* %VR57
  %VR59 = add i32 %VR53, 0
  %VR60 = inttoptr i32 %VR59 to i32*
  store i32 %VR54, i32* %VR60
  %VR61 = add i32 %VR53, 0
  %VR62 = inttoptr i32 %VR61 to i32*
  store i32 %VR58, i32* %VR62
  %VR63 = add i32 %VR53, 0
  %VR64 = inttoptr i32 %VR63 to i32*
  %VR65 = load i32* %VR64
  %VR66 = icmp eq i32 %VR65,  1
  br i1 %VR66, label %typcase_ok_Main_03, label %unboxing_1_Main_0
;#######################################; <- case_C__Main_0


;#######################################; -> typcase_ok_Main_03
typcase_ok_Main_03:
  %VR67 = icmp eq i32 %VR65,  2
  br i1 %VR67, label %typcase_ok_Main_04, label %unboxing_1_Main_0
;#######################################; <- typcase_ok_Main_03


;#######################################; -> typcase_ok_Main_04
typcase_ok_Main_04:
  br label %after_unbox_1_Main_0
;#######################################; <- typcase_ok_Main_04


;#######################################; -> unboxing_1_Main_0
unboxing_1_Main_0:
  %VR68 = add i32 %VR53, 12
  %VR69 = inttoptr i32 %VR68 to i32*
  %VR70 = load i32* %VR69
  br label %after_unbox_1_Main_0
;#######################################; <- unboxing_1_Main_0


;#######################################; -> after_unbox_1_Main_0
after_unbox_1_Main_0:
;- block -- typcase -- dispatch -
;; -> dispatch: linia 43
;;generez codul pentru apelul metodei out_string
;- block -- typcase -- dispatch -- string_const -
;; -> string_const: linia 43
  %VR71 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 43
;- block -- typcase -- dispatch -- object -
;; -> object: linia 43
  %VR72 = add i32 %ARG, 16
  %VR73 = inttoptr i32 %VR72 to i32*
  %VR74 = load i32* %VR73
;; <- object: linia 43
  %VR75 = inttoptr i32 %VR74 to i32*
  %VR76 = icmp eq i32* %VR75,  null
  br i1 %VR76, label %false_dispatch2, label %dispatch_not_void_Main_2
;#######################################; <- after_unbox_1_Main_0


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__7 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Main_2
dispatch_not_void_Main_2:
  %VR77 = ptrtoint i32* %VR75 to i32 
  %VR78 = add i32 %VR77, 8
  %VR79 = inttoptr i32 %VR78 to i32*
  %VR80 = load i32* %VR79
  %VR81 = add i32 %VR80, 16
  %VR82 = inttoptr i32 %VR81 to i32*
  %VR83 = load i32* %VR82
  %VR84 = inttoptr i32 %VR83 to i32 (i32, i32)*
  %VR85 = call i32 (i32, i32)* %VR84(i32 %VR74, i32 %VR71)
;; <- dispatch: linia 43
  %VR6.1 = add i32 %VR85, 0
  br label %phi_1_sfarsit_case_Main_0
;#######################################; <- dispatch_not_void_Main_2


;#######################################; -> phi_1_sfarsit_case_Main_0
phi_1_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_1_sfarsit_case_Main_0


;#######################################; -> case_0_noAlternativeMain_0
case_0_noAlternativeMain_0:
  call void @_case_abort(i32 %VR7)
  ret i32 0
;#######################################; <- case_0_noAlternativeMain_0


;#######################################; -> sfarsit_case_Main_0
sfarsit_case_Main_0:
  %VR6 = phi i32 [ %VR6.0, %phi_0_sfarsit_case_Main_0] , [ %VR6.1, %phi_1_sfarsit_case_Main_0]
;; <- typcase: linia 41
;- block -- int_const -
;; -> int_const: linia 46
  %VR86 = add i32 0, 0
;; <- int_const: linia 46
;; <- block: linia 40
  ret i32 %VR86
;#######################################; <- sfarsit_case_Main_0


}
@s16 = internal constant [1 x i8] c"\00"
@str_const__16 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([1 x i8]* @s16, i32 0, i32 0)}
@s15 = internal constant [5 x i8] c"Main\00"
@str_const__15 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([5 x i8]* @s15, i32 0, i32 0)}
@s14 = internal constant [2 x i8] c"C\00"
@str_const__14 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([2 x i8]* @s14, i32 0, i32 0)}
@s13 = internal constant [2 x i8] c"B\00"
@str_const__13 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([2 x i8]* @s13, i32 0, i32 0)}
@s12 = internal constant [2 x i8] c"A\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([2 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [3 x i8] c"IO\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([3 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [7 x i8] c"String\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([7 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [5 x i8] c"Bool\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([5 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [4 x i8] c"Int\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__12, i8* getelementptr ([4 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [7 x i8] c"Object\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([7 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([11 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([10 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [10 x i8] c"_no_class\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([10 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [14 x i8] c"<basic class>\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__14, i8* getelementptr ([14 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [3 x i8] c"C\0A\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([3 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [3 x i8] c"B\0A\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([3 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [31 x i8] c"_tests/error/case_no_branch.cl\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([31 x i8]* @s0, i32 0, i32 0)}
@int_const__14 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__13 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__12 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 43}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 42}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 41}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 36}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 30}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 20}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
%struct.A_protObj_t = type { i32, i32, %struct.A_dispTab_t*, i32 }
@A_protObj = global %struct.A_protObj_t {i32 5, i32 4, %struct.A_dispTab_t* @A_dispTab, i32 0}
%struct.B_protObj_t = type { i32, i32, %struct.B_dispTab_t*, i32 }
@B_protObj = global %struct.B_protObj_t {i32 6, i32 4, %struct.B_dispTab_t* @B_dispTab, i32 0}
%struct.C_protObj_t = type { i32, i32, %struct.C_dispTab_t*, i32 }
@C_protObj = global %struct.C_protObj_t {i32 7, i32 4, %struct.C_dispTab_t* @C_dispTab, i32 0}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t*, i32, i32 }
@Main_protObj = global %struct.Main_protObj_t {i32 8, i32 5, %struct.Main_dispTab_t* @Main_dispTab, i32 0, i32 0}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__7, %struct.String_protObj_t* @str_const__8, %struct.String_protObj_t* @str_const__9, %struct.String_protObj_t* @str_const__10, %struct.String_protObj_t* @str_const__11, %struct.String_protObj_t* @str_const__12, %struct.String_protObj_t* @str_const__13, %struct.String_protObj_t* @str_const__14, %struct.String_protObj_t* @str_const__15 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @A_init to i8*), i8* bitcast (void (i32)* @B_init to i8*), i8* bitcast (void (i32)* @C_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.A_dispTab_t = type { i8*, i8*, i8*, i8*}
@A_dispTab = global %struct.A_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @A__init to i8*)}

%struct.B_dispTab_t = type { i8*, i8*, i8*, i8*}
@B_dispTab = global %struct.B_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @B__init to i8*)}

%struct.C_dispTab_t = type { i8*, i8*, i8*, i8*}
@C_dispTab = global %struct.C_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @C__init to i8*)}

%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}

