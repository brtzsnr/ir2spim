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
define void @B_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @A_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define void @C_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @B_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


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
define void @E_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @D_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define void @F_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @E_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define void @G_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @F_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define void @H_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @G_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define void @I_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @H_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define void @J_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @I_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define void @K_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @J_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define void @L_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @K_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define void @M_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @L_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define void @N_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @M_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define void @O_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @N_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define void @P_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @O_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define void @Q_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @P_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define void @Main_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Object_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- new -
;; -> new: linia 21
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.IO_protObj_t* @IO_protObj to i32))
  call void @IO_init(i32 %VR1)
;; <- new: linia 21
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
  ret void
;#######################################; <- entry


}
define i32 @Main__main(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR1a = alloca i32 
  store i32 0, i32* %VR1a
  %VR4a = alloca i32 
  store i32 0, i32* %VR4a
  %VR403a = alloca i32 
  store i32 0, i32* %VR403a
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- let -
;; -> let: linia 24
;- let -- int_const -
;; -> int_const: linia 24
  %VR1.a = add i32 0, 0
  store i32 %VR1.a, i32* %VR1a
;; <- int_const: linia 24
;- let -- let -
;; -> let: linia 25
;- let -- let -- new -
;; -> new: linia 25
  %VR2 = call i32  @Object__copy(i32 ptrtoint (%struct.A_protObj_t* @A_protObj to i32))
  call void @A_init(i32 %VR2)
;; <- new: linia 25
;- let -- let -- let -
;; -> let: linia 26
;- let -- let -- let -- new -
;; -> new: linia 26
  %VR3 = call i32  @Object__copy(i32 ptrtoint (%struct.Q_protObj_t* @Q_protObj to i32))
  call void @Q_init(i32 %VR3)
;; <- new: linia 26
;- let -- let -- let -- let -
;; -> let: linia 27
  %VR4.a = add i32 0, 0
  store i32 %VR4.a, i32* %VR4a
;- let -- let -- let -- let -- block -
;; -> block: linia 28
;- let -- let -- let -- let -- block -- loop -
;; -> loop: linia 29
;; conditie
  br label %start_loop_Main_0
;#######################################; <- entry


;#######################################; -> start_loop_Main_0
start_loop_Main_0:
  %VR1_tmp5 = load i32* %VR1a
;- let -- let -- let -- let -- block -- loop -- lt -
;; -> lt: linia 29
;- let -- let -- let -- let -- block -- loop -- lt -- object -
;; -> object: linia 29
;; <- object: linia 29
;- let -- let -- let -- let -- block -- loop -- lt -- int_const -
;; -> int_const: linia 29
  %VR5 = add i32 1000, 0
;; <- int_const: linia 29
  %VR6 = icmp slt i32 %VR1_tmp5,  %VR5
;; <- lt: linia 29
  %VR7 = icmp eq i1 %VR6,  false
  br i1 %VR7, label %sfarsit_loop_Main_0, label %label_next_loop_Main_0
;#######################################; <- start_loop_Main_0


;#######################################; -> label_next_loop_Main_0
label_next_loop_Main_0:
;; corp loop
;- let -- let -- let -- let -- block -- loop -- block -
;; -> block: linia 29
;- let -- let -- let -- let -- block -- loop -- block -- assign -
;; -> assign: linia 30
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -
;; -> typcase: linia 31
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- object -
;; -> object: linia 31
;; <- object: linia 31
  %VR8 = inttoptr i32 %VR3 to i32*
  %VR9 = icmp eq i32* %VR8,  null
  br i1 %VR9, label %false_typcase00, label %case_not_void_Main_0
;#######################################; <- label_next_loop_Main_0


;#######################################; -> false_typcase00
false_typcase00:
  call void @_case_abort2(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__19 to i32))
  ret i32 0
;#######################################; <- false_typcase00


;#######################################; -> case_not_void_Main_0
case_not_void_Main_0:
;;rezerv %VR10 pentru rezultatul case-ului
  %VR11 = ptrtoint i32* %VR8 to i32 
  %VR12 = add i32 %VR11, 0
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
  %VR15 = icmp eq i32 %VR14,  0
  br i1 %VR15, label %case_0_noAlternativeMain_0, label %next0_case_0_noAlternativeMain_0
;#######################################; <- case_not_void_Main_0


;#######################################; -> next0_case_0_noAlternativeMain_0
next0_case_0_noAlternativeMain_0:
  %VR16 = icmp eq i32 %VR14,  1
  br i1 %VR16, label %case_0_noAlternativeMain_0, label %next1_case_0_noAlternativeMain_0
;#######################################; <- next0_case_0_noAlternativeMain_0


;#######################################; -> next1_case_0_noAlternativeMain_0
next1_case_0_noAlternativeMain_0:
  %VR17 = icmp eq i32 %VR14,  2
  br i1 %VR17, label %case_0_noAlternativeMain_0, label %next2_case_0_noAlternativeMain_0
;#######################################; <- next1_case_0_noAlternativeMain_0


;#######################################; -> next2_case_0_noAlternativeMain_0
next2_case_0_noAlternativeMain_0:
  %VR18 = icmp eq i32 %VR14,  3
  br i1 %VR18, label %case_0_noAlternativeMain_0, label %next3_case_0_noAlternativeMain_0
;#######################################; <- next2_case_0_noAlternativeMain_0


;#######################################; -> next3_case_0_noAlternativeMain_0
next3_case_0_noAlternativeMain_0:
  %VR19 = icmp eq i32 %VR14,  4
  br i1 %VR19, label %case_0_noAlternativeMain_0, label %next4_case_0_noAlternativeMain_0
;#######################################; <- next3_case_0_noAlternativeMain_0


;#######################################; -> next4_case_0_noAlternativeMain_0
next4_case_0_noAlternativeMain_0:
  %VR20 = icmp eq i32 %VR14,  5
  br i1 %VR20, label %case_A__Main_0, label %next5_case_A__Main_0
;#######################################; <- next4_case_0_noAlternativeMain_0


;#######################################; -> next5_case_A__Main_0
next5_case_A__Main_0:
  %VR21 = icmp eq i32 %VR14,  6
  br i1 %VR21, label %case_B__Main_0, label %next6_case_B__Main_0
;#######################################; <- next5_case_A__Main_0


;#######################################; -> next6_case_B__Main_0
next6_case_B__Main_0:
  %VR22 = icmp eq i32 %VR14,  7
  br i1 %VR22, label %case_C__Main_0, label %next7_case_C__Main_0
;#######################################; <- next6_case_B__Main_0


;#######################################; -> next7_case_C__Main_0
next7_case_C__Main_0:
  %VR23 = icmp eq i32 %VR14,  8
  br i1 %VR23, label %case_D__Main_0, label %next8_case_D__Main_0
;#######################################; <- next7_case_C__Main_0


;#######################################; -> next8_case_D__Main_0
next8_case_D__Main_0:
  %VR24 = icmp eq i32 %VR14,  9
  br i1 %VR24, label %case_E__Main_0, label %next9_case_E__Main_0
;#######################################; <- next8_case_D__Main_0


;#######################################; -> next9_case_E__Main_0
next9_case_E__Main_0:
  %VR25 = icmp eq i32 %VR14,  10
  br i1 %VR25, label %case_F__Main_0, label %next10_case_F__Main_0
;#######################################; <- next9_case_E__Main_0


;#######################################; -> next10_case_F__Main_0
next10_case_F__Main_0:
  %VR26 = icmp eq i32 %VR14,  11
  br i1 %VR26, label %case_G__Main_0, label %next11_case_G__Main_0
;#######################################; <- next10_case_F__Main_0


;#######################################; -> next11_case_G__Main_0
next11_case_G__Main_0:
  %VR27 = icmp eq i32 %VR14,  12
  br i1 %VR27, label %case_H__Main_0, label %next12_case_H__Main_0
;#######################################; <- next11_case_G__Main_0


;#######################################; -> next12_case_H__Main_0
next12_case_H__Main_0:
  %VR28 = icmp eq i32 %VR14,  13
  br i1 %VR28, label %case_I__Main_0, label %next13_case_I__Main_0
;#######################################; <- next12_case_H__Main_0


;#######################################; -> next13_case_I__Main_0
next13_case_I__Main_0:
  %VR29 = icmp eq i32 %VR14,  14
  br i1 %VR29, label %case_J__Main_0, label %next14_case_J__Main_0
;#######################################; <- next13_case_I__Main_0


;#######################################; -> next14_case_J__Main_0
next14_case_J__Main_0:
  %VR30 = icmp eq i32 %VR14,  15
  br i1 %VR30, label %case_K__Main_0, label %next15_case_K__Main_0
;#######################################; <- next14_case_J__Main_0


;#######################################; -> next15_case_K__Main_0
next15_case_K__Main_0:
  %VR31 = icmp eq i32 %VR14,  16
  br i1 %VR31, label %case_L__Main_0, label %next16_case_L__Main_0
;#######################################; <- next15_case_K__Main_0


;#######################################; -> next16_case_L__Main_0
next16_case_L__Main_0:
  %VR32 = icmp eq i32 %VR14,  17
  br i1 %VR32, label %case_M__Main_0, label %next17_case_M__Main_0
;#######################################; <- next16_case_L__Main_0


;#######################################; -> next17_case_M__Main_0
next17_case_M__Main_0:
  %VR33 = icmp eq i32 %VR14,  18
  br i1 %VR33, label %case_N__Main_0, label %next18_case_N__Main_0
;#######################################; <- next17_case_M__Main_0


;#######################################; -> next18_case_N__Main_0
next18_case_N__Main_0:
  %VR34 = icmp eq i32 %VR14,  19
  br i1 %VR34, label %case_O__Main_0, label %next19_case_O__Main_0
;#######################################; <- next18_case_N__Main_0


;#######################################; -> next19_case_O__Main_0
next19_case_O__Main_0:
  %VR35 = icmp eq i32 %VR14,  20
  br i1 %VR35, label %case_P__Main_0, label %next20_case_P__Main_0
;#######################################; <- next19_case_O__Main_0


;#######################################; -> next20_case_P__Main_0
next20_case_P__Main_0:
  %VR36 = icmp eq i32 %VR14,  21
  br i1 %VR36, label %case_Q__Main_0, label %next21_case_Q__Main_0
;#######################################; <- next20_case_P__Main_0


;#######################################; -> next21_case_Q__Main_0
next21_case_Q__Main_0:
  %VR37 = icmp eq i32 %VR14,  22
  br i1 %VR37, label %case_0_noAlternativeMain_0, label %next22_case_0_noAlternativeMain_0
;#######################################; <- next21_case_Q__Main_0


;#######################################; -> next22_case_0_noAlternativeMain_0
next22_case_0_noAlternativeMain_0:
  br label %case_A__Main_0
;#######################################; <- next22_case_0_noAlternativeMain_0


;#######################################; -> case_A__Main_0
case_A__Main_0:
  %VR38 = call i32  @Object__copy(i32 %VR11)
  %VR39 = add i32 5, 0
  %VR40 = ptrtoint %struct.A_protObj_t* @A_protObj to i32 
  %VR41 = add i32 %VR40, 8
  %VR42 = inttoptr i32 %VR41 to i32*
  %VR43 = load i32* %VR42
  %VR44 = add i32 %VR38, 0
  %VR45 = inttoptr i32 %VR44 to i32*
  store i32 %VR39, i32* %VR45
  %VR46 = add i32 %VR38, 0
  %VR47 = inttoptr i32 %VR46 to i32*
  store i32 %VR43, i32* %VR47
  %VR48 = add i32 %VR38, 0
  %VR49 = inttoptr i32 %VR48 to i32*
  %VR50 = load i32* %VR49
  %VR51 = icmp eq i32 %VR50,  1
  br i1 %VR51, label %typcase_ok_Main_01, label %unboxing_0_Main_0
;#######################################; <- case_A__Main_0


;#######################################; -> typcase_ok_Main_01
typcase_ok_Main_01:
  %VR52 = icmp eq i32 %VR50,  2
  br i1 %VR52, label %typcase_ok_Main_02, label %unboxing_0_Main_0
;#######################################; <- typcase_ok_Main_01


;#######################################; -> typcase_ok_Main_02
typcase_ok_Main_02:
  br label %after_unbox_0_Main_0
;#######################################; <- typcase_ok_Main_02


;#######################################; -> unboxing_0_Main_0
unboxing_0_Main_0:
  %VR53 = add i32 %VR38, 12
  %VR54 = inttoptr i32 %VR53 to i32*
  %VR55 = load i32* %VR54
  br label %after_unbox_0_Main_0
;#######################################; <- unboxing_0_Main_0


;#######################################; -> after_unbox_0_Main_0
after_unbox_0_Main_0:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 32
  %VR56 = add i32 1, 0
;; <- int_const: linia 32
  %VR10.0 = add i32 %VR56, 0
  br label %phi_0_sfarsit_case_Main_0
;#######################################; <- after_unbox_0_Main_0


;#######################################; -> phi_0_sfarsit_case_Main_0
phi_0_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_0_sfarsit_case_Main_0


;#######################################; -> case_B__Main_0
case_B__Main_0:
  %VR57 = call i32  @Object__copy(i32 %VR11)
  %VR58 = add i32 6, 0
  %VR59 = ptrtoint %struct.B_protObj_t* @B_protObj to i32 
  %VR60 = add i32 %VR59, 8
  %VR61 = inttoptr i32 %VR60 to i32*
  %VR62 = load i32* %VR61
  %VR63 = add i32 %VR57, 0
  %VR64 = inttoptr i32 %VR63 to i32*
  store i32 %VR58, i32* %VR64
  %VR65 = add i32 %VR57, 0
  %VR66 = inttoptr i32 %VR65 to i32*
  store i32 %VR62, i32* %VR66
  %VR67 = add i32 %VR57, 0
  %VR68 = inttoptr i32 %VR67 to i32*
  %VR69 = load i32* %VR68
  %VR70 = icmp eq i32 %VR69,  1
  br i1 %VR70, label %typcase_ok_Main_03, label %unboxing_1_Main_0
;#######################################; <- case_B__Main_0


;#######################################; -> typcase_ok_Main_03
typcase_ok_Main_03:
  %VR71 = icmp eq i32 %VR69,  2
  br i1 %VR71, label %typcase_ok_Main_04, label %unboxing_1_Main_0
;#######################################; <- typcase_ok_Main_03


;#######################################; -> typcase_ok_Main_04
typcase_ok_Main_04:
  br label %after_unbox_1_Main_0
;#######################################; <- typcase_ok_Main_04


;#######################################; -> unboxing_1_Main_0
unboxing_1_Main_0:
  %VR72 = add i32 %VR57, 12
  %VR73 = inttoptr i32 %VR72 to i32*
  %VR74 = load i32* %VR73
  br label %after_unbox_1_Main_0
;#######################################; <- unboxing_1_Main_0


;#######################################; -> after_unbox_1_Main_0
after_unbox_1_Main_0:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 33
  %VR75 = add i32 2, 0
;; <- int_const: linia 33
  %VR10.1 = add i32 %VR75, 0
  br label %phi_1_sfarsit_case_Main_0
;#######################################; <- after_unbox_1_Main_0


;#######################################; -> phi_1_sfarsit_case_Main_0
phi_1_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_1_sfarsit_case_Main_0


;#######################################; -> case_C__Main_0
case_C__Main_0:
  %VR76 = call i32  @Object__copy(i32 %VR11)
  %VR77 = add i32 7, 0
  %VR78 = ptrtoint %struct.C_protObj_t* @C_protObj to i32 
  %VR79 = add i32 %VR78, 8
  %VR80 = inttoptr i32 %VR79 to i32*
  %VR81 = load i32* %VR80
  %VR82 = add i32 %VR76, 0
  %VR83 = inttoptr i32 %VR82 to i32*
  store i32 %VR77, i32* %VR83
  %VR84 = add i32 %VR76, 0
  %VR85 = inttoptr i32 %VR84 to i32*
  store i32 %VR81, i32* %VR85
  %VR86 = add i32 %VR76, 0
  %VR87 = inttoptr i32 %VR86 to i32*
  %VR88 = load i32* %VR87
  %VR89 = icmp eq i32 %VR88,  1
  br i1 %VR89, label %typcase_ok_Main_05, label %unboxing_2_Main_0
;#######################################; <- case_C__Main_0


;#######################################; -> typcase_ok_Main_05
typcase_ok_Main_05:
  %VR90 = icmp eq i32 %VR88,  2
  br i1 %VR90, label %typcase_ok_Main_06, label %unboxing_2_Main_0
;#######################################; <- typcase_ok_Main_05


;#######################################; -> typcase_ok_Main_06
typcase_ok_Main_06:
  br label %after_unbox_2_Main_0
;#######################################; <- typcase_ok_Main_06


;#######################################; -> unboxing_2_Main_0
unboxing_2_Main_0:
  %VR91 = add i32 %VR76, 12
  %VR92 = inttoptr i32 %VR91 to i32*
  %VR93 = load i32* %VR92
  br label %after_unbox_2_Main_0
;#######################################; <- unboxing_2_Main_0


;#######################################; -> after_unbox_2_Main_0
after_unbox_2_Main_0:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 34
  %VR94 = add i32 3, 0
;; <- int_const: linia 34
  %VR10.2 = add i32 %VR94, 0
  br label %phi_2_sfarsit_case_Main_0
;#######################################; <- after_unbox_2_Main_0


;#######################################; -> phi_2_sfarsit_case_Main_0
phi_2_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_2_sfarsit_case_Main_0


;#######################################; -> case_D__Main_0
case_D__Main_0:
  %VR95 = call i32  @Object__copy(i32 %VR11)
  %VR96 = add i32 8, 0
  %VR97 = ptrtoint %struct.D_protObj_t* @D_protObj to i32 
  %VR98 = add i32 %VR97, 8
  %VR99 = inttoptr i32 %VR98 to i32*
  %VR100 = load i32* %VR99
  %VR101 = add i32 %VR95, 0
  %VR102 = inttoptr i32 %VR101 to i32*
  store i32 %VR96, i32* %VR102
  %VR103 = add i32 %VR95, 0
  %VR104 = inttoptr i32 %VR103 to i32*
  store i32 %VR100, i32* %VR104
  %VR105 = add i32 %VR95, 0
  %VR106 = inttoptr i32 %VR105 to i32*
  %VR107 = load i32* %VR106
  %VR108 = icmp eq i32 %VR107,  1
  br i1 %VR108, label %typcase_ok_Main_07, label %unboxing_3_Main_0
;#######################################; <- case_D__Main_0


;#######################################; -> typcase_ok_Main_07
typcase_ok_Main_07:
  %VR109 = icmp eq i32 %VR107,  2
  br i1 %VR109, label %typcase_ok_Main_08, label %unboxing_3_Main_0
;#######################################; <- typcase_ok_Main_07


;#######################################; -> typcase_ok_Main_08
typcase_ok_Main_08:
  br label %after_unbox_3_Main_0
;#######################################; <- typcase_ok_Main_08


;#######################################; -> unboxing_3_Main_0
unboxing_3_Main_0:
  %VR110 = add i32 %VR95, 12
  %VR111 = inttoptr i32 %VR110 to i32*
  %VR112 = load i32* %VR111
  br label %after_unbox_3_Main_0
;#######################################; <- unboxing_3_Main_0


;#######################################; -> after_unbox_3_Main_0
after_unbox_3_Main_0:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 35
  %VR113 = add i32 4, 0
;; <- int_const: linia 35
  %VR10.3 = add i32 %VR113, 0
  br label %phi_3_sfarsit_case_Main_0
;#######################################; <- after_unbox_3_Main_0


;#######################################; -> phi_3_sfarsit_case_Main_0
phi_3_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_3_sfarsit_case_Main_0


;#######################################; -> case_E__Main_0
case_E__Main_0:
  %VR114 = call i32  @Object__copy(i32 %VR11)
  %VR115 = add i32 9, 0
  %VR116 = ptrtoint %struct.E_protObj_t* @E_protObj to i32 
  %VR117 = add i32 %VR116, 8
  %VR118 = inttoptr i32 %VR117 to i32*
  %VR119 = load i32* %VR118
  %VR120 = add i32 %VR114, 0
  %VR121 = inttoptr i32 %VR120 to i32*
  store i32 %VR115, i32* %VR121
  %VR122 = add i32 %VR114, 0
  %VR123 = inttoptr i32 %VR122 to i32*
  store i32 %VR119, i32* %VR123
  %VR124 = add i32 %VR114, 0
  %VR125 = inttoptr i32 %VR124 to i32*
  %VR126 = load i32* %VR125
  %VR127 = icmp eq i32 %VR126,  1
  br i1 %VR127, label %typcase_ok_Main_09, label %unboxing_4_Main_0
;#######################################; <- case_E__Main_0


;#######################################; -> typcase_ok_Main_09
typcase_ok_Main_09:
  %VR128 = icmp eq i32 %VR126,  2
  br i1 %VR128, label %typcase_ok_Main_010, label %unboxing_4_Main_0
;#######################################; <- typcase_ok_Main_09


;#######################################; -> typcase_ok_Main_010
typcase_ok_Main_010:
  br label %after_unbox_4_Main_0
;#######################################; <- typcase_ok_Main_010


;#######################################; -> unboxing_4_Main_0
unboxing_4_Main_0:
  %VR129 = add i32 %VR114, 12
  %VR130 = inttoptr i32 %VR129 to i32*
  %VR131 = load i32* %VR130
  br label %after_unbox_4_Main_0
;#######################################; <- unboxing_4_Main_0


;#######################################; -> after_unbox_4_Main_0
after_unbox_4_Main_0:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 36
  %VR132 = add i32 5, 0
;; <- int_const: linia 36
  %VR10.4 = add i32 %VR132, 0
  br label %phi_4_sfarsit_case_Main_0
;#######################################; <- after_unbox_4_Main_0


;#######################################; -> phi_4_sfarsit_case_Main_0
phi_4_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_4_sfarsit_case_Main_0


;#######################################; -> case_F__Main_0
case_F__Main_0:
  %VR133 = call i32  @Object__copy(i32 %VR11)
  %VR134 = add i32 10, 0
  %VR135 = ptrtoint %struct.F_protObj_t* @F_protObj to i32 
  %VR136 = add i32 %VR135, 8
  %VR137 = inttoptr i32 %VR136 to i32*
  %VR138 = load i32* %VR137
  %VR139 = add i32 %VR133, 0
  %VR140 = inttoptr i32 %VR139 to i32*
  store i32 %VR134, i32* %VR140
  %VR141 = add i32 %VR133, 0
  %VR142 = inttoptr i32 %VR141 to i32*
  store i32 %VR138, i32* %VR142
  %VR143 = add i32 %VR133, 0
  %VR144 = inttoptr i32 %VR143 to i32*
  %VR145 = load i32* %VR144
  %VR146 = icmp eq i32 %VR145,  1
  br i1 %VR146, label %typcase_ok_Main_011, label %unboxing_5_Main_0
;#######################################; <- case_F__Main_0


;#######################################; -> typcase_ok_Main_011
typcase_ok_Main_011:
  %VR147 = icmp eq i32 %VR145,  2
  br i1 %VR147, label %typcase_ok_Main_012, label %unboxing_5_Main_0
;#######################################; <- typcase_ok_Main_011


;#######################################; -> typcase_ok_Main_012
typcase_ok_Main_012:
  br label %after_unbox_5_Main_0
;#######################################; <- typcase_ok_Main_012


;#######################################; -> unboxing_5_Main_0
unboxing_5_Main_0:
  %VR148 = add i32 %VR133, 12
  %VR149 = inttoptr i32 %VR148 to i32*
  %VR150 = load i32* %VR149
  br label %after_unbox_5_Main_0
;#######################################; <- unboxing_5_Main_0


;#######################################; -> after_unbox_5_Main_0
after_unbox_5_Main_0:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 37
  %VR151 = add i32 6, 0
;; <- int_const: linia 37
  %VR10.5 = add i32 %VR151, 0
  br label %phi_5_sfarsit_case_Main_0
;#######################################; <- after_unbox_5_Main_0


;#######################################; -> phi_5_sfarsit_case_Main_0
phi_5_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_5_sfarsit_case_Main_0


;#######################################; -> case_G__Main_0
case_G__Main_0:
  %VR152 = call i32  @Object__copy(i32 %VR11)
  %VR153 = add i32 11, 0
  %VR154 = ptrtoint %struct.G_protObj_t* @G_protObj to i32 
  %VR155 = add i32 %VR154, 8
  %VR156 = inttoptr i32 %VR155 to i32*
  %VR157 = load i32* %VR156
  %VR158 = add i32 %VR152, 0
  %VR159 = inttoptr i32 %VR158 to i32*
  store i32 %VR153, i32* %VR159
  %VR160 = add i32 %VR152, 0
  %VR161 = inttoptr i32 %VR160 to i32*
  store i32 %VR157, i32* %VR161
  %VR162 = add i32 %VR152, 0
  %VR163 = inttoptr i32 %VR162 to i32*
  %VR164 = load i32* %VR163
  %VR165 = icmp eq i32 %VR164,  1
  br i1 %VR165, label %typcase_ok_Main_013, label %unboxing_6_Main_0
;#######################################; <- case_G__Main_0


;#######################################; -> typcase_ok_Main_013
typcase_ok_Main_013:
  %VR166 = icmp eq i32 %VR164,  2
  br i1 %VR166, label %typcase_ok_Main_014, label %unboxing_6_Main_0
;#######################################; <- typcase_ok_Main_013


;#######################################; -> typcase_ok_Main_014
typcase_ok_Main_014:
  br label %after_unbox_6_Main_0
;#######################################; <- typcase_ok_Main_014


;#######################################; -> unboxing_6_Main_0
unboxing_6_Main_0:
  %VR167 = add i32 %VR152, 12
  %VR168 = inttoptr i32 %VR167 to i32*
  %VR169 = load i32* %VR168
  br label %after_unbox_6_Main_0
;#######################################; <- unboxing_6_Main_0


;#######################################; -> after_unbox_6_Main_0
after_unbox_6_Main_0:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 38
  %VR170 = add i32 7, 0
;; <- int_const: linia 38
  %VR10.6 = add i32 %VR170, 0
  br label %phi_6_sfarsit_case_Main_0
;#######################################; <- after_unbox_6_Main_0


;#######################################; -> phi_6_sfarsit_case_Main_0
phi_6_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_6_sfarsit_case_Main_0


;#######################################; -> case_H__Main_0
case_H__Main_0:
  %VR171 = call i32  @Object__copy(i32 %VR11)
  %VR172 = add i32 12, 0
  %VR173 = ptrtoint %struct.H_protObj_t* @H_protObj to i32 
  %VR174 = add i32 %VR173, 8
  %VR175 = inttoptr i32 %VR174 to i32*
  %VR176 = load i32* %VR175
  %VR177 = add i32 %VR171, 0
  %VR178 = inttoptr i32 %VR177 to i32*
  store i32 %VR172, i32* %VR178
  %VR179 = add i32 %VR171, 0
  %VR180 = inttoptr i32 %VR179 to i32*
  store i32 %VR176, i32* %VR180
  %VR181 = add i32 %VR171, 0
  %VR182 = inttoptr i32 %VR181 to i32*
  %VR183 = load i32* %VR182
  %VR184 = icmp eq i32 %VR183,  1
  br i1 %VR184, label %typcase_ok_Main_015, label %unboxing_7_Main_0
;#######################################; <- case_H__Main_0


;#######################################; -> typcase_ok_Main_015
typcase_ok_Main_015:
  %VR185 = icmp eq i32 %VR183,  2
  br i1 %VR185, label %typcase_ok_Main_016, label %unboxing_7_Main_0
;#######################################; <- typcase_ok_Main_015


;#######################################; -> typcase_ok_Main_016
typcase_ok_Main_016:
  br label %after_unbox_7_Main_0
;#######################################; <- typcase_ok_Main_016


;#######################################; -> unboxing_7_Main_0
unboxing_7_Main_0:
  %VR186 = add i32 %VR171, 12
  %VR187 = inttoptr i32 %VR186 to i32*
  %VR188 = load i32* %VR187
  br label %after_unbox_7_Main_0
;#######################################; <- unboxing_7_Main_0


;#######################################; -> after_unbox_7_Main_0
after_unbox_7_Main_0:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 39
  %VR189 = add i32 8, 0
;; <- int_const: linia 39
  %VR10.7 = add i32 %VR189, 0
  br label %phi_7_sfarsit_case_Main_0
;#######################################; <- after_unbox_7_Main_0


;#######################################; -> phi_7_sfarsit_case_Main_0
phi_7_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_7_sfarsit_case_Main_0


;#######################################; -> case_I__Main_0
case_I__Main_0:
  %VR190 = call i32  @Object__copy(i32 %VR11)
  %VR191 = add i32 13, 0
  %VR192 = ptrtoint %struct.I_protObj_t* @I_protObj to i32 
  %VR193 = add i32 %VR192, 8
  %VR194 = inttoptr i32 %VR193 to i32*
  %VR195 = load i32* %VR194
  %VR196 = add i32 %VR190, 0
  %VR197 = inttoptr i32 %VR196 to i32*
  store i32 %VR191, i32* %VR197
  %VR198 = add i32 %VR190, 0
  %VR199 = inttoptr i32 %VR198 to i32*
  store i32 %VR195, i32* %VR199
  %VR200 = add i32 %VR190, 0
  %VR201 = inttoptr i32 %VR200 to i32*
  %VR202 = load i32* %VR201
  %VR203 = icmp eq i32 %VR202,  1
  br i1 %VR203, label %typcase_ok_Main_017, label %unboxing_8_Main_0
;#######################################; <- case_I__Main_0


;#######################################; -> typcase_ok_Main_017
typcase_ok_Main_017:
  %VR204 = icmp eq i32 %VR202,  2
  br i1 %VR204, label %typcase_ok_Main_018, label %unboxing_8_Main_0
;#######################################; <- typcase_ok_Main_017


;#######################################; -> typcase_ok_Main_018
typcase_ok_Main_018:
  br label %after_unbox_8_Main_0
;#######################################; <- typcase_ok_Main_018


;#######################################; -> unboxing_8_Main_0
unboxing_8_Main_0:
  %VR205 = add i32 %VR190, 12
  %VR206 = inttoptr i32 %VR205 to i32*
  %VR207 = load i32* %VR206
  br label %after_unbox_8_Main_0
;#######################################; <- unboxing_8_Main_0


;#######################################; -> after_unbox_8_Main_0
after_unbox_8_Main_0:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 40
  %VR208 = add i32 9, 0
;; <- int_const: linia 40
  %VR10.8 = add i32 %VR208, 0
  br label %phi_8_sfarsit_case_Main_0
;#######################################; <- after_unbox_8_Main_0


;#######################################; -> phi_8_sfarsit_case_Main_0
phi_8_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_8_sfarsit_case_Main_0


;#######################################; -> case_J__Main_0
case_J__Main_0:
  %VR209 = call i32  @Object__copy(i32 %VR11)
  %VR210 = add i32 14, 0
  %VR211 = ptrtoint %struct.J_protObj_t* @J_protObj to i32 
  %VR212 = add i32 %VR211, 8
  %VR213 = inttoptr i32 %VR212 to i32*
  %VR214 = load i32* %VR213
  %VR215 = add i32 %VR209, 0
  %VR216 = inttoptr i32 %VR215 to i32*
  store i32 %VR210, i32* %VR216
  %VR217 = add i32 %VR209, 0
  %VR218 = inttoptr i32 %VR217 to i32*
  store i32 %VR214, i32* %VR218
  %VR219 = add i32 %VR209, 0
  %VR220 = inttoptr i32 %VR219 to i32*
  %VR221 = load i32* %VR220
  %VR222 = icmp eq i32 %VR221,  1
  br i1 %VR222, label %typcase_ok_Main_019, label %unboxing_9_Main_0
;#######################################; <- case_J__Main_0


;#######################################; -> typcase_ok_Main_019
typcase_ok_Main_019:
  %VR223 = icmp eq i32 %VR221,  2
  br i1 %VR223, label %typcase_ok_Main_020, label %unboxing_9_Main_0
;#######################################; <- typcase_ok_Main_019


;#######################################; -> typcase_ok_Main_020
typcase_ok_Main_020:
  br label %after_unbox_9_Main_0
;#######################################; <- typcase_ok_Main_020


;#######################################; -> unboxing_9_Main_0
unboxing_9_Main_0:
  %VR224 = add i32 %VR209, 12
  %VR225 = inttoptr i32 %VR224 to i32*
  %VR226 = load i32* %VR225
  br label %after_unbox_9_Main_0
;#######################################; <- unboxing_9_Main_0


;#######################################; -> after_unbox_9_Main_0
after_unbox_9_Main_0:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 41
  %VR227 = add i32 10, 0
;; <- int_const: linia 41
  %VR10.9 = add i32 %VR227, 0
  br label %phi_9_sfarsit_case_Main_0
;#######################################; <- after_unbox_9_Main_0


;#######################################; -> phi_9_sfarsit_case_Main_0
phi_9_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_9_sfarsit_case_Main_0


;#######################################; -> case_K__Main_0
case_K__Main_0:
  %VR228 = call i32  @Object__copy(i32 %VR11)
  %VR229 = add i32 15, 0
  %VR230 = ptrtoint %struct.K_protObj_t* @K_protObj to i32 
  %VR231 = add i32 %VR230, 8
  %VR232 = inttoptr i32 %VR231 to i32*
  %VR233 = load i32* %VR232
  %VR234 = add i32 %VR228, 0
  %VR235 = inttoptr i32 %VR234 to i32*
  store i32 %VR229, i32* %VR235
  %VR236 = add i32 %VR228, 0
  %VR237 = inttoptr i32 %VR236 to i32*
  store i32 %VR233, i32* %VR237
  %VR238 = add i32 %VR228, 0
  %VR239 = inttoptr i32 %VR238 to i32*
  %VR240 = load i32* %VR239
  %VR241 = icmp eq i32 %VR240,  1
  br i1 %VR241, label %typcase_ok_Main_021, label %unboxing_10_Main_0
;#######################################; <- case_K__Main_0


;#######################################; -> typcase_ok_Main_021
typcase_ok_Main_021:
  %VR242 = icmp eq i32 %VR240,  2
  br i1 %VR242, label %typcase_ok_Main_022, label %unboxing_10_Main_0
;#######################################; <- typcase_ok_Main_021


;#######################################; -> typcase_ok_Main_022
typcase_ok_Main_022:
  br label %after_unbox_10_Main_0
;#######################################; <- typcase_ok_Main_022


;#######################################; -> unboxing_10_Main_0
unboxing_10_Main_0:
  %VR243 = add i32 %VR228, 12
  %VR244 = inttoptr i32 %VR243 to i32*
  %VR245 = load i32* %VR244
  br label %after_unbox_10_Main_0
;#######################################; <- unboxing_10_Main_0


;#######################################; -> after_unbox_10_Main_0
after_unbox_10_Main_0:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 42
  %VR246 = add i32 11, 0
;; <- int_const: linia 42
  %VR10.10 = add i32 %VR246, 0
  br label %phi_10_sfarsit_case_Main_0
;#######################################; <- after_unbox_10_Main_0


;#######################################; -> phi_10_sfarsit_case_Main_0
phi_10_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_10_sfarsit_case_Main_0


;#######################################; -> case_L__Main_0
case_L__Main_0:
  %VR247 = call i32  @Object__copy(i32 %VR11)
  %VR248 = add i32 16, 0
  %VR249 = ptrtoint %struct.L_protObj_t* @L_protObj to i32 
  %VR250 = add i32 %VR249, 8
  %VR251 = inttoptr i32 %VR250 to i32*
  %VR252 = load i32* %VR251
  %VR253 = add i32 %VR247, 0
  %VR254 = inttoptr i32 %VR253 to i32*
  store i32 %VR248, i32* %VR254
  %VR255 = add i32 %VR247, 0
  %VR256 = inttoptr i32 %VR255 to i32*
  store i32 %VR252, i32* %VR256
  %VR257 = add i32 %VR247, 0
  %VR258 = inttoptr i32 %VR257 to i32*
  %VR259 = load i32* %VR258
  %VR260 = icmp eq i32 %VR259,  1
  br i1 %VR260, label %typcase_ok_Main_023, label %unboxing_11_Main_0
;#######################################; <- case_L__Main_0


;#######################################; -> typcase_ok_Main_023
typcase_ok_Main_023:
  %VR261 = icmp eq i32 %VR259,  2
  br i1 %VR261, label %typcase_ok_Main_024, label %unboxing_11_Main_0
;#######################################; <- typcase_ok_Main_023


;#######################################; -> typcase_ok_Main_024
typcase_ok_Main_024:
  br label %after_unbox_11_Main_0
;#######################################; <- typcase_ok_Main_024


;#######################################; -> unboxing_11_Main_0
unboxing_11_Main_0:
  %VR262 = add i32 %VR247, 12
  %VR263 = inttoptr i32 %VR262 to i32*
  %VR264 = load i32* %VR263
  br label %after_unbox_11_Main_0
;#######################################; <- unboxing_11_Main_0


;#######################################; -> after_unbox_11_Main_0
after_unbox_11_Main_0:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 43
  %VR265 = add i32 12, 0
;; <- int_const: linia 43
  %VR10.11 = add i32 %VR265, 0
  br label %phi_11_sfarsit_case_Main_0
;#######################################; <- after_unbox_11_Main_0


;#######################################; -> phi_11_sfarsit_case_Main_0
phi_11_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_11_sfarsit_case_Main_0


;#######################################; -> case_M__Main_0
case_M__Main_0:
  %VR266 = call i32  @Object__copy(i32 %VR11)
  %VR267 = add i32 17, 0
  %VR268 = ptrtoint %struct.M_protObj_t* @M_protObj to i32 
  %VR269 = add i32 %VR268, 8
  %VR270 = inttoptr i32 %VR269 to i32*
  %VR271 = load i32* %VR270
  %VR272 = add i32 %VR266, 0
  %VR273 = inttoptr i32 %VR272 to i32*
  store i32 %VR267, i32* %VR273
  %VR274 = add i32 %VR266, 0
  %VR275 = inttoptr i32 %VR274 to i32*
  store i32 %VR271, i32* %VR275
  %VR276 = add i32 %VR266, 0
  %VR277 = inttoptr i32 %VR276 to i32*
  %VR278 = load i32* %VR277
  %VR279 = icmp eq i32 %VR278,  1
  br i1 %VR279, label %typcase_ok_Main_025, label %unboxing_12_Main_0
;#######################################; <- case_M__Main_0


;#######################################; -> typcase_ok_Main_025
typcase_ok_Main_025:
  %VR280 = icmp eq i32 %VR278,  2
  br i1 %VR280, label %typcase_ok_Main_026, label %unboxing_12_Main_0
;#######################################; <- typcase_ok_Main_025


;#######################################; -> typcase_ok_Main_026
typcase_ok_Main_026:
  br label %after_unbox_12_Main_0
;#######################################; <- typcase_ok_Main_026


;#######################################; -> unboxing_12_Main_0
unboxing_12_Main_0:
  %VR281 = add i32 %VR266, 12
  %VR282 = inttoptr i32 %VR281 to i32*
  %VR283 = load i32* %VR282
  br label %after_unbox_12_Main_0
;#######################################; <- unboxing_12_Main_0


;#######################################; -> after_unbox_12_Main_0
after_unbox_12_Main_0:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 44
  %VR284 = add i32 13, 0
;; <- int_const: linia 44
  %VR10.12 = add i32 %VR284, 0
  br label %phi_12_sfarsit_case_Main_0
;#######################################; <- after_unbox_12_Main_0


;#######################################; -> phi_12_sfarsit_case_Main_0
phi_12_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_12_sfarsit_case_Main_0


;#######################################; -> case_N__Main_0
case_N__Main_0:
  %VR285 = call i32  @Object__copy(i32 %VR11)
  %VR286 = add i32 18, 0
  %VR287 = ptrtoint %struct.N_protObj_t* @N_protObj to i32 
  %VR288 = add i32 %VR287, 8
  %VR289 = inttoptr i32 %VR288 to i32*
  %VR290 = load i32* %VR289
  %VR291 = add i32 %VR285, 0
  %VR292 = inttoptr i32 %VR291 to i32*
  store i32 %VR286, i32* %VR292
  %VR293 = add i32 %VR285, 0
  %VR294 = inttoptr i32 %VR293 to i32*
  store i32 %VR290, i32* %VR294
  %VR295 = add i32 %VR285, 0
  %VR296 = inttoptr i32 %VR295 to i32*
  %VR297 = load i32* %VR296
  %VR298 = icmp eq i32 %VR297,  1
  br i1 %VR298, label %typcase_ok_Main_027, label %unboxing_13_Main_0
;#######################################; <- case_N__Main_0


;#######################################; -> typcase_ok_Main_027
typcase_ok_Main_027:
  %VR299 = icmp eq i32 %VR297,  2
  br i1 %VR299, label %typcase_ok_Main_028, label %unboxing_13_Main_0
;#######################################; <- typcase_ok_Main_027


;#######################################; -> typcase_ok_Main_028
typcase_ok_Main_028:
  br label %after_unbox_13_Main_0
;#######################################; <- typcase_ok_Main_028


;#######################################; -> unboxing_13_Main_0
unboxing_13_Main_0:
  %VR300 = add i32 %VR285, 12
  %VR301 = inttoptr i32 %VR300 to i32*
  %VR302 = load i32* %VR301
  br label %after_unbox_13_Main_0
;#######################################; <- unboxing_13_Main_0


;#######################################; -> after_unbox_13_Main_0
after_unbox_13_Main_0:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 45
  %VR303 = add i32 14, 0
;; <- int_const: linia 45
  %VR10.13 = add i32 %VR303, 0
  br label %phi_13_sfarsit_case_Main_0
;#######################################; <- after_unbox_13_Main_0


;#######################################; -> phi_13_sfarsit_case_Main_0
phi_13_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_13_sfarsit_case_Main_0


;#######################################; -> case_O__Main_0
case_O__Main_0:
  %VR304 = call i32  @Object__copy(i32 %VR11)
  %VR305 = add i32 19, 0
  %VR306 = ptrtoint %struct.O_protObj_t* @O_protObj to i32 
  %VR307 = add i32 %VR306, 8
  %VR308 = inttoptr i32 %VR307 to i32*
  %VR309 = load i32* %VR308
  %VR310 = add i32 %VR304, 0
  %VR311 = inttoptr i32 %VR310 to i32*
  store i32 %VR305, i32* %VR311
  %VR312 = add i32 %VR304, 0
  %VR313 = inttoptr i32 %VR312 to i32*
  store i32 %VR309, i32* %VR313
  %VR314 = add i32 %VR304, 0
  %VR315 = inttoptr i32 %VR314 to i32*
  %VR316 = load i32* %VR315
  %VR317 = icmp eq i32 %VR316,  1
  br i1 %VR317, label %typcase_ok_Main_029, label %unboxing_14_Main_0
;#######################################; <- case_O__Main_0


;#######################################; -> typcase_ok_Main_029
typcase_ok_Main_029:
  %VR318 = icmp eq i32 %VR316,  2
  br i1 %VR318, label %typcase_ok_Main_030, label %unboxing_14_Main_0
;#######################################; <- typcase_ok_Main_029


;#######################################; -> typcase_ok_Main_030
typcase_ok_Main_030:
  br label %after_unbox_14_Main_0
;#######################################; <- typcase_ok_Main_030


;#######################################; -> unboxing_14_Main_0
unboxing_14_Main_0:
  %VR319 = add i32 %VR304, 12
  %VR320 = inttoptr i32 %VR319 to i32*
  %VR321 = load i32* %VR320
  br label %after_unbox_14_Main_0
;#######################################; <- unboxing_14_Main_0


;#######################################; -> after_unbox_14_Main_0
after_unbox_14_Main_0:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 46
  %VR322 = add i32 15, 0
;; <- int_const: linia 46
  %VR10.14 = add i32 %VR322, 0
  br label %phi_14_sfarsit_case_Main_0
;#######################################; <- after_unbox_14_Main_0


;#######################################; -> phi_14_sfarsit_case_Main_0
phi_14_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_14_sfarsit_case_Main_0


;#######################################; -> case_P__Main_0
case_P__Main_0:
  %VR323 = call i32  @Object__copy(i32 %VR11)
  %VR324 = add i32 20, 0
  %VR325 = ptrtoint %struct.P_protObj_t* @P_protObj to i32 
  %VR326 = add i32 %VR325, 8
  %VR327 = inttoptr i32 %VR326 to i32*
  %VR328 = load i32* %VR327
  %VR329 = add i32 %VR323, 0
  %VR330 = inttoptr i32 %VR329 to i32*
  store i32 %VR324, i32* %VR330
  %VR331 = add i32 %VR323, 0
  %VR332 = inttoptr i32 %VR331 to i32*
  store i32 %VR328, i32* %VR332
  %VR333 = add i32 %VR323, 0
  %VR334 = inttoptr i32 %VR333 to i32*
  %VR335 = load i32* %VR334
  %VR336 = icmp eq i32 %VR335,  1
  br i1 %VR336, label %typcase_ok_Main_031, label %unboxing_15_Main_0
;#######################################; <- case_P__Main_0


;#######################################; -> typcase_ok_Main_031
typcase_ok_Main_031:
  %VR337 = icmp eq i32 %VR335,  2
  br i1 %VR337, label %typcase_ok_Main_032, label %unboxing_15_Main_0
;#######################################; <- typcase_ok_Main_031


;#######################################; -> typcase_ok_Main_032
typcase_ok_Main_032:
  br label %after_unbox_15_Main_0
;#######################################; <- typcase_ok_Main_032


;#######################################; -> unboxing_15_Main_0
unboxing_15_Main_0:
  %VR338 = add i32 %VR323, 12
  %VR339 = inttoptr i32 %VR338 to i32*
  %VR340 = load i32* %VR339
  br label %after_unbox_15_Main_0
;#######################################; <- unboxing_15_Main_0


;#######################################; -> after_unbox_15_Main_0
after_unbox_15_Main_0:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 47
  %VR341 = add i32 16, 0
;; <- int_const: linia 47
  %VR10.15 = add i32 %VR341, 0
  br label %phi_15_sfarsit_case_Main_0
;#######################################; <- after_unbox_15_Main_0


;#######################################; -> phi_15_sfarsit_case_Main_0
phi_15_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_15_sfarsit_case_Main_0


;#######################################; -> case_Q__Main_0
case_Q__Main_0:
  %VR342 = call i32  @Object__copy(i32 %VR11)
  %VR343 = add i32 21, 0
  %VR344 = ptrtoint %struct.Q_protObj_t* @Q_protObj to i32 
  %VR345 = add i32 %VR344, 8
  %VR346 = inttoptr i32 %VR345 to i32*
  %VR347 = load i32* %VR346
  %VR348 = add i32 %VR342, 0
  %VR349 = inttoptr i32 %VR348 to i32*
  store i32 %VR343, i32* %VR349
  %VR350 = add i32 %VR342, 0
  %VR351 = inttoptr i32 %VR350 to i32*
  store i32 %VR347, i32* %VR351
  %VR352 = add i32 %VR342, 0
  %VR353 = inttoptr i32 %VR352 to i32*
  %VR354 = load i32* %VR353
  %VR355 = icmp eq i32 %VR354,  1
  br i1 %VR355, label %typcase_ok_Main_033, label %unboxing_16_Main_0
;#######################################; <- case_Q__Main_0


;#######################################; -> typcase_ok_Main_033
typcase_ok_Main_033:
  %VR356 = icmp eq i32 %VR354,  2
  br i1 %VR356, label %typcase_ok_Main_034, label %unboxing_16_Main_0
;#######################################; <- typcase_ok_Main_033


;#######################################; -> typcase_ok_Main_034
typcase_ok_Main_034:
  br label %after_unbox_16_Main_0
;#######################################; <- typcase_ok_Main_034


;#######################################; -> unboxing_16_Main_0
unboxing_16_Main_0:
  %VR357 = add i32 %VR342, 12
  %VR358 = inttoptr i32 %VR357 to i32*
  %VR359 = load i32* %VR358
  br label %after_unbox_16_Main_0
;#######################################; <- unboxing_16_Main_0


;#######################################; -> after_unbox_16_Main_0
after_unbox_16_Main_0:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 48
  %VR360 = add i32 17, 0
;; <- int_const: linia 48
  %VR10.16 = add i32 %VR360, 0
  br label %phi_16_sfarsit_case_Main_0
;#######################################; <- after_unbox_16_Main_0


;#######################################; -> phi_16_sfarsit_case_Main_0
phi_16_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_16_sfarsit_case_Main_0


;#######################################; -> case_0_noAlternativeMain_0
case_0_noAlternativeMain_0:
  call void @_case_abort(i32 %VR11)
  ret i32 0
;#######################################; <- case_0_noAlternativeMain_0


;#######################################; -> sfarsit_case_Main_0
sfarsit_case_Main_0:
  %VR10 = phi i32  [ %VR10.0 , %phi_0_sfarsit_case_Main_0 ] , [ %VR10.1 , %phi_1_sfarsit_case_Main_0 ] , [ %VR10.2 , %phi_2_sfarsit_case_Main_0 ] , [ %VR10.3 , %phi_3_sfarsit_case_Main_0 ] , [ %VR10.4 , %phi_4_sfarsit_case_Main_0 ] , [ %VR10.5 , %phi_5_sfarsit_case_Main_0 ] , [ %VR10.6 , %phi_6_sfarsit_case_Main_0 ] , [ %VR10.7 , %phi_7_sfarsit_case_Main_0 ] , [ %VR10.8 , %phi_8_sfarsit_case_Main_0 ] , [ %VR10.9 , %phi_9_sfarsit_case_Main_0 ] , [ %VR10.10 , %phi_10_sfarsit_case_Main_0 ] , [ %VR10.11 , %phi_11_sfarsit_case_Main_0 ] , [ %VR10.12 , %phi_12_sfarsit_case_Main_0 ] , [ %VR10.13 , %phi_13_sfarsit_case_Main_0 ] , [ %VR10.14 , %phi_14_sfarsit_case_Main_0 ] , [ %VR10.15 , %phi_15_sfarsit_case_Main_0 ] , [ %VR10.16 , %phi_16_sfarsit_case_Main_0 ] 
  %VR1_tmp6 = load i32* %VR1a
;; <- typcase: linia 31
  store i32 %VR10, i32* %VR4a
;; <- assign: linia 30
;- let -- let -- let -- let -- block -- loop -- block -- assign -
;; -> assign: linia 50
;- let -- let -- let -- let -- block -- loop -- block -- assign -- plus -
;; -> plus: linia 50
;- let -- let -- let -- let -- block -- loop -- block -- assign -- plus -- object -
;; -> object: linia 50
;; <- object: linia 50
;- let -- let -- let -- let -- block -- loop -- block -- assign -- plus -- int_const -
;; -> int_const: linia 50
  %VR361 = add i32 1, 0
;; <- int_const: linia 50
  %VR362 = add i32 %VR1_tmp6, %VR361
;; <- plus: linia 50
  store i32 %VR362, i32* %VR1a
;; <- assign: linia 50
;; <- block: linia 29
  br label %start_loop_Main_0
;#######################################; <- sfarsit_case_Main_0


;#######################################; -> sfarsit_loop_Main_0
sfarsit_loop_Main_0:
  %VR4_tmp3 = load i32* %VR4a
;; <- loop: linia 29
;- let -- let -- let -- let -- block -- cond -
;; -> cond: linia 52
;;if: linia 52 (expresia pentru predicat)
;;%VR363 rezervat pentru rezultatul if-ului
;- let -- let -- let -- let -- block -- cond -- comp -
;; -> comp: linia 52
;- let -- let -- let -- let -- block -- cond -- comp -- eq -
;; -> eq: linia 52
;- let -- let -- let -- let -- block -- cond -- comp -- eq -- object -
;; -> object: linia 52
;; <- object: linia 52
;- let -- let -- let -- let -- block -- cond -- comp -- eq -- int_const -
;; -> int_const: linia 52
  %VR364 = add i32 17, 0
;; <- int_const: linia 52
;boxing to int
  %VR365 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR366 = add i32 %VR365, 12
  %VR367 = inttoptr i32 %VR366 to i32*
  store i32 %VR4_tmp3, i32* %VR367
;boxing to int
  %VR368 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR369 = add i32 %VR368, 12
  %VR370 = inttoptr i32 %VR369 to i32*
  store i32 %VR364, i32* %VR370
  br label %eq_test_join_true_Main_0
;#######################################; <- sfarsit_loop_Main_0


;#######################################; -> eq_test_join_true_Main_0
eq_test_join_true_Main_0:
  %VR371.0 = icmp eq i32 %VR365,  %VR368
  br i1 %VR371.0, label %eq_test_join_Main_0, label %eq_test_join_false_Main_0
;#######################################; <- eq_test_join_true_Main_0


;#######################################; -> eq_test_join_false_Main_0
eq_test_join_false_Main_0:
  %VR373 = call i32  @equality_test(i32 1, i32 0, i32 %VR365, i32 %VR368)
  %VR371.1 = icmp eq i32 %VR373,  1
  br label %eq_test_join_Main_0
;#######################################; <- eq_test_join_false_Main_0


;#######################################; -> eq_test_join_Main_0
eq_test_join_Main_0:
  %VR371 = phi i1  [ %VR371.0 , %eq_test_join_true_Main_0 ] , [ %VR371.1 , %eq_test_join_false_Main_0 ] 
;; <- eq: linia 52
  %VR374 = select i1 %VR371, i32 1, i32 0
  %VR375 = sub i32 1, %VR374
;; <- comp: linia 52
  %VR376 = icmp eq i32 %VR375,  0
  br i1 %VR376, label %false_Main_0, label %false_false_Main_0
;#######################################; <- eq_test_join_Main_0


;#######################################; -> false_false_Main_0
false_false_Main_0:
;;if: linia 52 (expresia pentru then)
;- let -- let -- let -- let -- block -- cond -- dispatch -
;; -> dispatch: linia 52
;;generez codul pentru apelul metodei abort
;- let -- let -- let -- let -- block -- cond -- dispatch -- object -
;; -> object: linia 52
;; <- object: linia 52
  %VR377 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR377, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- false_false_Main_0


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__20 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR378 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR379 = add i32 %VR378, 8
  %VR380 = inttoptr i32 %VR379 to i32*
  %VR381 = load i32* %VR380
  %VR382 = add i32 %VR381, 0
  %VR383 = inttoptr i32 %VR382 to i32*
  %VR384 = load i32* %VR383
  %VR385 = inttoptr i32 %VR384 to i32 (i32)*
  %VR386 = call i32 (i32)* %VR385(i32 %ARG)
;; <- dispatch: linia 52
  br label %join_if_Main_0_true
;#######################################; <- dispatch_not_void_Main_0


;#######################################; -> join_if_Main_0_true
join_if_Main_0_true:
  %VR363.0 = add i32 %VR386, 0
  br label %join_if_Main_0
;#######################################; <- join_if_Main_0_true


;#######################################; -> false_Main_0
false_Main_0:
;;if: linia 52 (expresia pentru else)
;- let -- let -- let -- let -- block -- cond -- int_const -
;; -> int_const: linia 52
  %VR387 = add i32 0, 0
;; <- int_const: linia 52
  br label %join_if_Main_0_false
;#######################################; <- false_Main_0


;#######################################; -> join_if_Main_0_false
join_if_Main_0_false:
  %VR363.1 = add i32 %VR387, 0
  br label %join_if_Main_0
;#######################################; <- join_if_Main_0_false


;#######################################; -> join_if_Main_0
join_if_Main_0:
  %VR363 = phi i32  [ %VR363.0 , %join_if_Main_0_true ] , [ %VR363.1 , %join_if_Main_0_false ] 
;; <- cond: linia 52
;- let -- let -- let -- let -- block -- dispatch -
;; -> dispatch: linia 54
;;generez codul pentru apelul metodei out_string
;- let -- let -- let -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 54
  %VR388 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 54
;- let -- let -- let -- let -- block -- dispatch -- object -
;; -> object: linia 54
  %VR389 = add i32 %ARG, 12
  %VR390 = inttoptr i32 %VR389 to i32*
  %VR391 = load i32* %VR390
;; <- object: linia 54
  %VR392 = inttoptr i32 %VR391 to i32*
  %VR393 = icmp eq i32* %VR392,  null
  br i1 %VR393, label %false_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- join_if_Main_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__21 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Main_1
dispatch_not_void_Main_1:
  %VR394 = ptrtoint i32* %VR392 to i32 
  %VR395 = add i32 %VR394, 8
  %VR396 = inttoptr i32 %VR395 to i32*
  %VR397 = load i32* %VR396
  %VR398 = add i32 %VR397, 16
  %VR399 = inttoptr i32 %VR398 to i32*
  %VR400 = load i32* %VR399
  %VR401 = inttoptr i32 %VR400 to i32 (i32, i32)*
  %VR402 = call i32 (i32, i32)* %VR401(i32 %VR391, i32 %VR388)
;; <- dispatch: linia 54
;- let -- let -- let -- let -- block -- assign -
;; -> assign: linia 56
;- let -- let -- let -- let -- block -- assign -- int_const -
;; -> int_const: linia 56
  %VR403.a = add i32 0, 0
  store i32 %VR403.a, i32* %VR403a
  %VR403_tmp0 = load i32* %VR403a
;; <- int_const: linia 56
  store i32 %VR403_tmp0, i32* %VR1a
;; <- assign: linia 56
;- let -- let -- let -- let -- block -- loop -
;; -> loop: linia 57
;; conditie
  br label %start_loop_Main_1
;#######################################; <- dispatch_not_void_Main_1


;#######################################; -> start_loop_Main_1
start_loop_Main_1:
  %VR403_tmp1 = load i32* %VR403a
;- let -- let -- let -- let -- block -- loop -- lt -
;; -> lt: linia 57
;- let -- let -- let -- let -- block -- loop -- lt -- object -
;; -> object: linia 57
;; <- object: linia 57
;- let -- let -- let -- let -- block -- loop -- lt -- int_const -
;; -> int_const: linia 57
  %VR404 = add i32 1000, 0
;; <- int_const: linia 57
  %VR405 = icmp slt i32 %VR403_tmp1,  %VR404
;; <- lt: linia 57
  %VR406 = icmp eq i1 %VR405,  false
  br i1 %VR406, label %sfarsit_loop_Main_1, label %label_next_loop_Main_1
;#######################################; <- start_loop_Main_1


;#######################################; -> label_next_loop_Main_1
label_next_loop_Main_1:
;; corp loop
;- let -- let -- let -- let -- block -- loop -- block -
;; -> block: linia 57
;- let -- let -- let -- let -- block -- loop -- block -- assign -
;; -> assign: linia 58
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -
;; -> typcase: linia 59
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- object -
;; -> object: linia 59
;; <- object: linia 59
  %VR407 = inttoptr i32 %VR2 to i32*
  %VR408 = icmp eq i32* %VR407,  null
  br i1 %VR408, label %false_typcase01, label %case_not_void_Main_1
;#######################################; <- label_next_loop_Main_1


;#######################################; -> false_typcase01
false_typcase01:
  call void @_case_abort2(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__22 to i32))
  ret i32 0
;#######################################; <- false_typcase01


;#######################################; -> case_not_void_Main_1
case_not_void_Main_1:
;;rezerv %VR409 pentru rezultatul case-ului
  %VR410 = ptrtoint i32* %VR407 to i32 
  %VR411 = add i32 %VR410, 0
  %VR412 = inttoptr i32 %VR411 to i32*
  %VR413 = load i32* %VR412
  %VR414 = icmp eq i32 %VR413,  0
  br i1 %VR414, label %case_1_noAlternativeMain_1, label %next0_case_1_noAlternativeMain_1
;#######################################; <- case_not_void_Main_1


;#######################################; -> next0_case_1_noAlternativeMain_1
next0_case_1_noAlternativeMain_1:
  %VR415 = icmp eq i32 %VR413,  1
  br i1 %VR415, label %case_1_noAlternativeMain_1, label %next1_case_1_noAlternativeMain_1
;#######################################; <- next0_case_1_noAlternativeMain_1


;#######################################; -> next1_case_1_noAlternativeMain_1
next1_case_1_noAlternativeMain_1:
  %VR416 = icmp eq i32 %VR413,  2
  br i1 %VR416, label %case_1_noAlternativeMain_1, label %next2_case_1_noAlternativeMain_1
;#######################################; <- next1_case_1_noAlternativeMain_1


;#######################################; -> next2_case_1_noAlternativeMain_1
next2_case_1_noAlternativeMain_1:
  %VR417 = icmp eq i32 %VR413,  3
  br i1 %VR417, label %case_1_noAlternativeMain_1, label %next3_case_1_noAlternativeMain_1
;#######################################; <- next2_case_1_noAlternativeMain_1


;#######################################; -> next3_case_1_noAlternativeMain_1
next3_case_1_noAlternativeMain_1:
  %VR418 = icmp eq i32 %VR413,  4
  br i1 %VR418, label %case_1_noAlternativeMain_1, label %next4_case_1_noAlternativeMain_1
;#######################################; <- next3_case_1_noAlternativeMain_1


;#######################################; -> next4_case_1_noAlternativeMain_1
next4_case_1_noAlternativeMain_1:
  %VR419 = icmp eq i32 %VR413,  5
  br i1 %VR419, label %case_A__Main_1, label %next5_case_A__Main_1
;#######################################; <- next4_case_1_noAlternativeMain_1


;#######################################; -> next5_case_A__Main_1
next5_case_A__Main_1:
  %VR420 = icmp eq i32 %VR413,  6
  br i1 %VR420, label %case_B__Main_1, label %next6_case_B__Main_1
;#######################################; <- next5_case_A__Main_1


;#######################################; -> next6_case_B__Main_1
next6_case_B__Main_1:
  %VR421 = icmp eq i32 %VR413,  7
  br i1 %VR421, label %case_C__Main_1, label %next7_case_C__Main_1
;#######################################; <- next6_case_B__Main_1


;#######################################; -> next7_case_C__Main_1
next7_case_C__Main_1:
  %VR422 = icmp eq i32 %VR413,  8
  br i1 %VR422, label %case_D__Main_1, label %next8_case_D__Main_1
;#######################################; <- next7_case_C__Main_1


;#######################################; -> next8_case_D__Main_1
next8_case_D__Main_1:
  %VR423 = icmp eq i32 %VR413,  9
  br i1 %VR423, label %case_E__Main_1, label %next9_case_E__Main_1
;#######################################; <- next8_case_D__Main_1


;#######################################; -> next9_case_E__Main_1
next9_case_E__Main_1:
  %VR424 = icmp eq i32 %VR413,  10
  br i1 %VR424, label %case_F__Main_1, label %next10_case_F__Main_1
;#######################################; <- next9_case_E__Main_1


;#######################################; -> next10_case_F__Main_1
next10_case_F__Main_1:
  %VR425 = icmp eq i32 %VR413,  11
  br i1 %VR425, label %case_G__Main_1, label %next11_case_G__Main_1
;#######################################; <- next10_case_F__Main_1


;#######################################; -> next11_case_G__Main_1
next11_case_G__Main_1:
  %VR426 = icmp eq i32 %VR413,  12
  br i1 %VR426, label %case_H__Main_1, label %next12_case_H__Main_1
;#######################################; <- next11_case_G__Main_1


;#######################################; -> next12_case_H__Main_1
next12_case_H__Main_1:
  %VR427 = icmp eq i32 %VR413,  13
  br i1 %VR427, label %case_I__Main_1, label %next13_case_I__Main_1
;#######################################; <- next12_case_H__Main_1


;#######################################; -> next13_case_I__Main_1
next13_case_I__Main_1:
  %VR428 = icmp eq i32 %VR413,  14
  br i1 %VR428, label %case_J__Main_1, label %next14_case_J__Main_1
;#######################################; <- next13_case_I__Main_1


;#######################################; -> next14_case_J__Main_1
next14_case_J__Main_1:
  %VR429 = icmp eq i32 %VR413,  15
  br i1 %VR429, label %case_K__Main_1, label %next15_case_K__Main_1
;#######################################; <- next14_case_J__Main_1


;#######################################; -> next15_case_K__Main_1
next15_case_K__Main_1:
  %VR430 = icmp eq i32 %VR413,  16
  br i1 %VR430, label %case_L__Main_1, label %next16_case_L__Main_1
;#######################################; <- next15_case_K__Main_1


;#######################################; -> next16_case_L__Main_1
next16_case_L__Main_1:
  %VR431 = icmp eq i32 %VR413,  17
  br i1 %VR431, label %case_M__Main_1, label %next17_case_M__Main_1
;#######################################; <- next16_case_L__Main_1


;#######################################; -> next17_case_M__Main_1
next17_case_M__Main_1:
  %VR432 = icmp eq i32 %VR413,  18
  br i1 %VR432, label %case_N__Main_1, label %next18_case_N__Main_1
;#######################################; <- next17_case_M__Main_1


;#######################################; -> next18_case_N__Main_1
next18_case_N__Main_1:
  %VR433 = icmp eq i32 %VR413,  19
  br i1 %VR433, label %case_O__Main_1, label %next19_case_O__Main_1
;#######################################; <- next18_case_N__Main_1


;#######################################; -> next19_case_O__Main_1
next19_case_O__Main_1:
  %VR434 = icmp eq i32 %VR413,  20
  br i1 %VR434, label %case_P__Main_1, label %next20_case_P__Main_1
;#######################################; <- next19_case_O__Main_1


;#######################################; -> next20_case_P__Main_1
next20_case_P__Main_1:
  %VR435 = icmp eq i32 %VR413,  21
  br i1 %VR435, label %case_Q__Main_1, label %next21_case_Q__Main_1
;#######################################; <- next20_case_P__Main_1


;#######################################; -> next21_case_Q__Main_1
next21_case_Q__Main_1:
  %VR436 = icmp eq i32 %VR413,  22
  br i1 %VR436, label %case_1_noAlternativeMain_1, label %next22_case_1_noAlternativeMain_1
;#######################################; <- next21_case_Q__Main_1


;#######################################; -> next22_case_1_noAlternativeMain_1
next22_case_1_noAlternativeMain_1:
  br label %case_A__Main_1
;#######################################; <- next22_case_1_noAlternativeMain_1


;#######################################; -> case_A__Main_1
case_A__Main_1:
  %VR437 = call i32  @Object__copy(i32 %VR410)
  %VR438 = add i32 5, 0
  %VR439 = ptrtoint %struct.A_protObj_t* @A_protObj to i32 
  %VR440 = add i32 %VR439, 8
  %VR441 = inttoptr i32 %VR440 to i32*
  %VR442 = load i32* %VR441
  %VR443 = add i32 %VR437, 0
  %VR444 = inttoptr i32 %VR443 to i32*
  store i32 %VR438, i32* %VR444
  %VR445 = add i32 %VR437, 0
  %VR446 = inttoptr i32 %VR445 to i32*
  store i32 %VR442, i32* %VR446
  %VR447 = add i32 %VR437, 0
  %VR448 = inttoptr i32 %VR447 to i32*
  %VR449 = load i32* %VR448
  %VR450 = icmp eq i32 %VR449,  1
  br i1 %VR450, label %typcase_ok_Main_11, label %unboxing_0_Main_1
;#######################################; <- case_A__Main_1


;#######################################; -> typcase_ok_Main_11
typcase_ok_Main_11:
  %VR451 = icmp eq i32 %VR449,  2
  br i1 %VR451, label %typcase_ok_Main_12, label %unboxing_0_Main_1
;#######################################; <- typcase_ok_Main_11


;#######################################; -> typcase_ok_Main_12
typcase_ok_Main_12:
  br label %after_unbox_0_Main_1
;#######################################; <- typcase_ok_Main_12


;#######################################; -> unboxing_0_Main_1
unboxing_0_Main_1:
  %VR452 = add i32 %VR437, 12
  %VR453 = inttoptr i32 %VR452 to i32*
  %VR454 = load i32* %VR453
  br label %after_unbox_0_Main_1
;#######################################; <- unboxing_0_Main_1


;#######################################; -> after_unbox_0_Main_1
after_unbox_0_Main_1:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 60
  %VR455 = add i32 1, 0
;; <- int_const: linia 60
  %VR409.0 = add i32 %VR455, 0
  br label %phi_0_sfarsit_case_Main_1
;#######################################; <- after_unbox_0_Main_1


;#######################################; -> phi_0_sfarsit_case_Main_1
phi_0_sfarsit_case_Main_1:
  br label %sfarsit_case_Main_1
;#######################################; <- phi_0_sfarsit_case_Main_1


;#######################################; -> case_B__Main_1
case_B__Main_1:
  %VR456 = call i32  @Object__copy(i32 %VR410)
  %VR457 = add i32 6, 0
  %VR458 = ptrtoint %struct.B_protObj_t* @B_protObj to i32 
  %VR459 = add i32 %VR458, 8
  %VR460 = inttoptr i32 %VR459 to i32*
  %VR461 = load i32* %VR460
  %VR462 = add i32 %VR456, 0
  %VR463 = inttoptr i32 %VR462 to i32*
  store i32 %VR457, i32* %VR463
  %VR464 = add i32 %VR456, 0
  %VR465 = inttoptr i32 %VR464 to i32*
  store i32 %VR461, i32* %VR465
  %VR466 = add i32 %VR456, 0
  %VR467 = inttoptr i32 %VR466 to i32*
  %VR468 = load i32* %VR467
  %VR469 = icmp eq i32 %VR468,  1
  br i1 %VR469, label %typcase_ok_Main_13, label %unboxing_1_Main_1
;#######################################; <- case_B__Main_1


;#######################################; -> typcase_ok_Main_13
typcase_ok_Main_13:
  %VR470 = icmp eq i32 %VR468,  2
  br i1 %VR470, label %typcase_ok_Main_14, label %unboxing_1_Main_1
;#######################################; <- typcase_ok_Main_13


;#######################################; -> typcase_ok_Main_14
typcase_ok_Main_14:
  br label %after_unbox_1_Main_1
;#######################################; <- typcase_ok_Main_14


;#######################################; -> unboxing_1_Main_1
unboxing_1_Main_1:
  %VR471 = add i32 %VR456, 12
  %VR472 = inttoptr i32 %VR471 to i32*
  %VR473 = load i32* %VR472
  br label %after_unbox_1_Main_1
;#######################################; <- unboxing_1_Main_1


;#######################################; -> after_unbox_1_Main_1
after_unbox_1_Main_1:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 61
  %VR474 = add i32 2, 0
;; <- int_const: linia 61
  %VR409.1 = add i32 %VR474, 0
  br label %phi_1_sfarsit_case_Main_1
;#######################################; <- after_unbox_1_Main_1


;#######################################; -> phi_1_sfarsit_case_Main_1
phi_1_sfarsit_case_Main_1:
  br label %sfarsit_case_Main_1
;#######################################; <- phi_1_sfarsit_case_Main_1


;#######################################; -> case_C__Main_1
case_C__Main_1:
  %VR475 = call i32  @Object__copy(i32 %VR410)
  %VR476 = add i32 7, 0
  %VR477 = ptrtoint %struct.C_protObj_t* @C_protObj to i32 
  %VR478 = add i32 %VR477, 8
  %VR479 = inttoptr i32 %VR478 to i32*
  %VR480 = load i32* %VR479
  %VR481 = add i32 %VR475, 0
  %VR482 = inttoptr i32 %VR481 to i32*
  store i32 %VR476, i32* %VR482
  %VR483 = add i32 %VR475, 0
  %VR484 = inttoptr i32 %VR483 to i32*
  store i32 %VR480, i32* %VR484
  %VR485 = add i32 %VR475, 0
  %VR486 = inttoptr i32 %VR485 to i32*
  %VR487 = load i32* %VR486
  %VR488 = icmp eq i32 %VR487,  1
  br i1 %VR488, label %typcase_ok_Main_15, label %unboxing_2_Main_1
;#######################################; <- case_C__Main_1


;#######################################; -> typcase_ok_Main_15
typcase_ok_Main_15:
  %VR489 = icmp eq i32 %VR487,  2
  br i1 %VR489, label %typcase_ok_Main_16, label %unboxing_2_Main_1
;#######################################; <- typcase_ok_Main_15


;#######################################; -> typcase_ok_Main_16
typcase_ok_Main_16:
  br label %after_unbox_2_Main_1
;#######################################; <- typcase_ok_Main_16


;#######################################; -> unboxing_2_Main_1
unboxing_2_Main_1:
  %VR490 = add i32 %VR475, 12
  %VR491 = inttoptr i32 %VR490 to i32*
  %VR492 = load i32* %VR491
  br label %after_unbox_2_Main_1
;#######################################; <- unboxing_2_Main_1


;#######################################; -> after_unbox_2_Main_1
after_unbox_2_Main_1:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 62
  %VR493 = add i32 3, 0
;; <- int_const: linia 62
  %VR409.2 = add i32 %VR493, 0
  br label %phi_2_sfarsit_case_Main_1
;#######################################; <- after_unbox_2_Main_1


;#######################################; -> phi_2_sfarsit_case_Main_1
phi_2_sfarsit_case_Main_1:
  br label %sfarsit_case_Main_1
;#######################################; <- phi_2_sfarsit_case_Main_1


;#######################################; -> case_D__Main_1
case_D__Main_1:
  %VR494 = call i32  @Object__copy(i32 %VR410)
  %VR495 = add i32 8, 0
  %VR496 = ptrtoint %struct.D_protObj_t* @D_protObj to i32 
  %VR497 = add i32 %VR496, 8
  %VR498 = inttoptr i32 %VR497 to i32*
  %VR499 = load i32* %VR498
  %VR500 = add i32 %VR494, 0
  %VR501 = inttoptr i32 %VR500 to i32*
  store i32 %VR495, i32* %VR501
  %VR502 = add i32 %VR494, 0
  %VR503 = inttoptr i32 %VR502 to i32*
  store i32 %VR499, i32* %VR503
  %VR504 = add i32 %VR494, 0
  %VR505 = inttoptr i32 %VR504 to i32*
  %VR506 = load i32* %VR505
  %VR507 = icmp eq i32 %VR506,  1
  br i1 %VR507, label %typcase_ok_Main_17, label %unboxing_3_Main_1
;#######################################; <- case_D__Main_1


;#######################################; -> typcase_ok_Main_17
typcase_ok_Main_17:
  %VR508 = icmp eq i32 %VR506,  2
  br i1 %VR508, label %typcase_ok_Main_18, label %unboxing_3_Main_1
;#######################################; <- typcase_ok_Main_17


;#######################################; -> typcase_ok_Main_18
typcase_ok_Main_18:
  br label %after_unbox_3_Main_1
;#######################################; <- typcase_ok_Main_18


;#######################################; -> unboxing_3_Main_1
unboxing_3_Main_1:
  %VR509 = add i32 %VR494, 12
  %VR510 = inttoptr i32 %VR509 to i32*
  %VR511 = load i32* %VR510
  br label %after_unbox_3_Main_1
;#######################################; <- unboxing_3_Main_1


;#######################################; -> after_unbox_3_Main_1
after_unbox_3_Main_1:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 63
  %VR512 = add i32 4, 0
;; <- int_const: linia 63
  %VR409.3 = add i32 %VR512, 0
  br label %phi_3_sfarsit_case_Main_1
;#######################################; <- after_unbox_3_Main_1


;#######################################; -> phi_3_sfarsit_case_Main_1
phi_3_sfarsit_case_Main_1:
  br label %sfarsit_case_Main_1
;#######################################; <- phi_3_sfarsit_case_Main_1


;#######################################; -> case_E__Main_1
case_E__Main_1:
  %VR513 = call i32  @Object__copy(i32 %VR410)
  %VR514 = add i32 9, 0
  %VR515 = ptrtoint %struct.E_protObj_t* @E_protObj to i32 
  %VR516 = add i32 %VR515, 8
  %VR517 = inttoptr i32 %VR516 to i32*
  %VR518 = load i32* %VR517
  %VR519 = add i32 %VR513, 0
  %VR520 = inttoptr i32 %VR519 to i32*
  store i32 %VR514, i32* %VR520
  %VR521 = add i32 %VR513, 0
  %VR522 = inttoptr i32 %VR521 to i32*
  store i32 %VR518, i32* %VR522
  %VR523 = add i32 %VR513, 0
  %VR524 = inttoptr i32 %VR523 to i32*
  %VR525 = load i32* %VR524
  %VR526 = icmp eq i32 %VR525,  1
  br i1 %VR526, label %typcase_ok_Main_19, label %unboxing_4_Main_1
;#######################################; <- case_E__Main_1


;#######################################; -> typcase_ok_Main_19
typcase_ok_Main_19:
  %VR527 = icmp eq i32 %VR525,  2
  br i1 %VR527, label %typcase_ok_Main_110, label %unboxing_4_Main_1
;#######################################; <- typcase_ok_Main_19


;#######################################; -> typcase_ok_Main_110
typcase_ok_Main_110:
  br label %after_unbox_4_Main_1
;#######################################; <- typcase_ok_Main_110


;#######################################; -> unboxing_4_Main_1
unboxing_4_Main_1:
  %VR528 = add i32 %VR513, 12
  %VR529 = inttoptr i32 %VR528 to i32*
  %VR530 = load i32* %VR529
  br label %after_unbox_4_Main_1
;#######################################; <- unboxing_4_Main_1


;#######################################; -> after_unbox_4_Main_1
after_unbox_4_Main_1:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 64
  %VR531 = add i32 5, 0
;; <- int_const: linia 64
  %VR409.4 = add i32 %VR531, 0
  br label %phi_4_sfarsit_case_Main_1
;#######################################; <- after_unbox_4_Main_1


;#######################################; -> phi_4_sfarsit_case_Main_1
phi_4_sfarsit_case_Main_1:
  br label %sfarsit_case_Main_1
;#######################################; <- phi_4_sfarsit_case_Main_1


;#######################################; -> case_F__Main_1
case_F__Main_1:
  %VR532 = call i32  @Object__copy(i32 %VR410)
  %VR533 = add i32 10, 0
  %VR534 = ptrtoint %struct.F_protObj_t* @F_protObj to i32 
  %VR535 = add i32 %VR534, 8
  %VR536 = inttoptr i32 %VR535 to i32*
  %VR537 = load i32* %VR536
  %VR538 = add i32 %VR532, 0
  %VR539 = inttoptr i32 %VR538 to i32*
  store i32 %VR533, i32* %VR539
  %VR540 = add i32 %VR532, 0
  %VR541 = inttoptr i32 %VR540 to i32*
  store i32 %VR537, i32* %VR541
  %VR542 = add i32 %VR532, 0
  %VR543 = inttoptr i32 %VR542 to i32*
  %VR544 = load i32* %VR543
  %VR545 = icmp eq i32 %VR544,  1
  br i1 %VR545, label %typcase_ok_Main_111, label %unboxing_5_Main_1
;#######################################; <- case_F__Main_1


;#######################################; -> typcase_ok_Main_111
typcase_ok_Main_111:
  %VR546 = icmp eq i32 %VR544,  2
  br i1 %VR546, label %typcase_ok_Main_112, label %unboxing_5_Main_1
;#######################################; <- typcase_ok_Main_111


;#######################################; -> typcase_ok_Main_112
typcase_ok_Main_112:
  br label %after_unbox_5_Main_1
;#######################################; <- typcase_ok_Main_112


;#######################################; -> unboxing_5_Main_1
unboxing_5_Main_1:
  %VR547 = add i32 %VR532, 12
  %VR548 = inttoptr i32 %VR547 to i32*
  %VR549 = load i32* %VR548
  br label %after_unbox_5_Main_1
;#######################################; <- unboxing_5_Main_1


;#######################################; -> after_unbox_5_Main_1
after_unbox_5_Main_1:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 65
  %VR550 = add i32 6, 0
;; <- int_const: linia 65
  %VR409.5 = add i32 %VR550, 0
  br label %phi_5_sfarsit_case_Main_1
;#######################################; <- after_unbox_5_Main_1


;#######################################; -> phi_5_sfarsit_case_Main_1
phi_5_sfarsit_case_Main_1:
  br label %sfarsit_case_Main_1
;#######################################; <- phi_5_sfarsit_case_Main_1


;#######################################; -> case_G__Main_1
case_G__Main_1:
  %VR551 = call i32  @Object__copy(i32 %VR410)
  %VR552 = add i32 11, 0
  %VR553 = ptrtoint %struct.G_protObj_t* @G_protObj to i32 
  %VR554 = add i32 %VR553, 8
  %VR555 = inttoptr i32 %VR554 to i32*
  %VR556 = load i32* %VR555
  %VR557 = add i32 %VR551, 0
  %VR558 = inttoptr i32 %VR557 to i32*
  store i32 %VR552, i32* %VR558
  %VR559 = add i32 %VR551, 0
  %VR560 = inttoptr i32 %VR559 to i32*
  store i32 %VR556, i32* %VR560
  %VR561 = add i32 %VR551, 0
  %VR562 = inttoptr i32 %VR561 to i32*
  %VR563 = load i32* %VR562
  %VR564 = icmp eq i32 %VR563,  1
  br i1 %VR564, label %typcase_ok_Main_113, label %unboxing_6_Main_1
;#######################################; <- case_G__Main_1


;#######################################; -> typcase_ok_Main_113
typcase_ok_Main_113:
  %VR565 = icmp eq i32 %VR563,  2
  br i1 %VR565, label %typcase_ok_Main_114, label %unboxing_6_Main_1
;#######################################; <- typcase_ok_Main_113


;#######################################; -> typcase_ok_Main_114
typcase_ok_Main_114:
  br label %after_unbox_6_Main_1
;#######################################; <- typcase_ok_Main_114


;#######################################; -> unboxing_6_Main_1
unboxing_6_Main_1:
  %VR566 = add i32 %VR551, 12
  %VR567 = inttoptr i32 %VR566 to i32*
  %VR568 = load i32* %VR567
  br label %after_unbox_6_Main_1
;#######################################; <- unboxing_6_Main_1


;#######################################; -> after_unbox_6_Main_1
after_unbox_6_Main_1:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 66
  %VR569 = add i32 7, 0
;; <- int_const: linia 66
  %VR409.6 = add i32 %VR569, 0
  br label %phi_6_sfarsit_case_Main_1
;#######################################; <- after_unbox_6_Main_1


;#######################################; -> phi_6_sfarsit_case_Main_1
phi_6_sfarsit_case_Main_1:
  br label %sfarsit_case_Main_1
;#######################################; <- phi_6_sfarsit_case_Main_1


;#######################################; -> case_H__Main_1
case_H__Main_1:
  %VR570 = call i32  @Object__copy(i32 %VR410)
  %VR571 = add i32 12, 0
  %VR572 = ptrtoint %struct.H_protObj_t* @H_protObj to i32 
  %VR573 = add i32 %VR572, 8
  %VR574 = inttoptr i32 %VR573 to i32*
  %VR575 = load i32* %VR574
  %VR576 = add i32 %VR570, 0
  %VR577 = inttoptr i32 %VR576 to i32*
  store i32 %VR571, i32* %VR577
  %VR578 = add i32 %VR570, 0
  %VR579 = inttoptr i32 %VR578 to i32*
  store i32 %VR575, i32* %VR579
  %VR580 = add i32 %VR570, 0
  %VR581 = inttoptr i32 %VR580 to i32*
  %VR582 = load i32* %VR581
  %VR583 = icmp eq i32 %VR582,  1
  br i1 %VR583, label %typcase_ok_Main_115, label %unboxing_7_Main_1
;#######################################; <- case_H__Main_1


;#######################################; -> typcase_ok_Main_115
typcase_ok_Main_115:
  %VR584 = icmp eq i32 %VR582,  2
  br i1 %VR584, label %typcase_ok_Main_116, label %unboxing_7_Main_1
;#######################################; <- typcase_ok_Main_115


;#######################################; -> typcase_ok_Main_116
typcase_ok_Main_116:
  br label %after_unbox_7_Main_1
;#######################################; <- typcase_ok_Main_116


;#######################################; -> unboxing_7_Main_1
unboxing_7_Main_1:
  %VR585 = add i32 %VR570, 12
  %VR586 = inttoptr i32 %VR585 to i32*
  %VR587 = load i32* %VR586
  br label %after_unbox_7_Main_1
;#######################################; <- unboxing_7_Main_1


;#######################################; -> after_unbox_7_Main_1
after_unbox_7_Main_1:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 67
  %VR588 = add i32 8, 0
;; <- int_const: linia 67
  %VR409.7 = add i32 %VR588, 0
  br label %phi_7_sfarsit_case_Main_1
;#######################################; <- after_unbox_7_Main_1


;#######################################; -> phi_7_sfarsit_case_Main_1
phi_7_sfarsit_case_Main_1:
  br label %sfarsit_case_Main_1
;#######################################; <- phi_7_sfarsit_case_Main_1


;#######################################; -> case_I__Main_1
case_I__Main_1:
  %VR589 = call i32  @Object__copy(i32 %VR410)
  %VR590 = add i32 13, 0
  %VR591 = ptrtoint %struct.I_protObj_t* @I_protObj to i32 
  %VR592 = add i32 %VR591, 8
  %VR593 = inttoptr i32 %VR592 to i32*
  %VR594 = load i32* %VR593
  %VR595 = add i32 %VR589, 0
  %VR596 = inttoptr i32 %VR595 to i32*
  store i32 %VR590, i32* %VR596
  %VR597 = add i32 %VR589, 0
  %VR598 = inttoptr i32 %VR597 to i32*
  store i32 %VR594, i32* %VR598
  %VR599 = add i32 %VR589, 0
  %VR600 = inttoptr i32 %VR599 to i32*
  %VR601 = load i32* %VR600
  %VR602 = icmp eq i32 %VR601,  1
  br i1 %VR602, label %typcase_ok_Main_117, label %unboxing_8_Main_1
;#######################################; <- case_I__Main_1


;#######################################; -> typcase_ok_Main_117
typcase_ok_Main_117:
  %VR603 = icmp eq i32 %VR601,  2
  br i1 %VR603, label %typcase_ok_Main_118, label %unboxing_8_Main_1
;#######################################; <- typcase_ok_Main_117


;#######################################; -> typcase_ok_Main_118
typcase_ok_Main_118:
  br label %after_unbox_8_Main_1
;#######################################; <- typcase_ok_Main_118


;#######################################; -> unboxing_8_Main_1
unboxing_8_Main_1:
  %VR604 = add i32 %VR589, 12
  %VR605 = inttoptr i32 %VR604 to i32*
  %VR606 = load i32* %VR605
  br label %after_unbox_8_Main_1
;#######################################; <- unboxing_8_Main_1


;#######################################; -> after_unbox_8_Main_1
after_unbox_8_Main_1:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 68
  %VR607 = add i32 9, 0
;; <- int_const: linia 68
  %VR409.8 = add i32 %VR607, 0
  br label %phi_8_sfarsit_case_Main_1
;#######################################; <- after_unbox_8_Main_1


;#######################################; -> phi_8_sfarsit_case_Main_1
phi_8_sfarsit_case_Main_1:
  br label %sfarsit_case_Main_1
;#######################################; <- phi_8_sfarsit_case_Main_1


;#######################################; -> case_J__Main_1
case_J__Main_1:
  %VR608 = call i32  @Object__copy(i32 %VR410)
  %VR609 = add i32 14, 0
  %VR610 = ptrtoint %struct.J_protObj_t* @J_protObj to i32 
  %VR611 = add i32 %VR610, 8
  %VR612 = inttoptr i32 %VR611 to i32*
  %VR613 = load i32* %VR612
  %VR614 = add i32 %VR608, 0
  %VR615 = inttoptr i32 %VR614 to i32*
  store i32 %VR609, i32* %VR615
  %VR616 = add i32 %VR608, 0
  %VR617 = inttoptr i32 %VR616 to i32*
  store i32 %VR613, i32* %VR617
  %VR618 = add i32 %VR608, 0
  %VR619 = inttoptr i32 %VR618 to i32*
  %VR620 = load i32* %VR619
  %VR621 = icmp eq i32 %VR620,  1
  br i1 %VR621, label %typcase_ok_Main_119, label %unboxing_9_Main_1
;#######################################; <- case_J__Main_1


;#######################################; -> typcase_ok_Main_119
typcase_ok_Main_119:
  %VR622 = icmp eq i32 %VR620,  2
  br i1 %VR622, label %typcase_ok_Main_120, label %unboxing_9_Main_1
;#######################################; <- typcase_ok_Main_119


;#######################################; -> typcase_ok_Main_120
typcase_ok_Main_120:
  br label %after_unbox_9_Main_1
;#######################################; <- typcase_ok_Main_120


;#######################################; -> unboxing_9_Main_1
unboxing_9_Main_1:
  %VR623 = add i32 %VR608, 12
  %VR624 = inttoptr i32 %VR623 to i32*
  %VR625 = load i32* %VR624
  br label %after_unbox_9_Main_1
;#######################################; <- unboxing_9_Main_1


;#######################################; -> after_unbox_9_Main_1
after_unbox_9_Main_1:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 69
  %VR626 = add i32 10, 0
;; <- int_const: linia 69
  %VR409.9 = add i32 %VR626, 0
  br label %phi_9_sfarsit_case_Main_1
;#######################################; <- after_unbox_9_Main_1


;#######################################; -> phi_9_sfarsit_case_Main_1
phi_9_sfarsit_case_Main_1:
  br label %sfarsit_case_Main_1
;#######################################; <- phi_9_sfarsit_case_Main_1


;#######################################; -> case_K__Main_1
case_K__Main_1:
  %VR627 = call i32  @Object__copy(i32 %VR410)
  %VR628 = add i32 15, 0
  %VR629 = ptrtoint %struct.K_protObj_t* @K_protObj to i32 
  %VR630 = add i32 %VR629, 8
  %VR631 = inttoptr i32 %VR630 to i32*
  %VR632 = load i32* %VR631
  %VR633 = add i32 %VR627, 0
  %VR634 = inttoptr i32 %VR633 to i32*
  store i32 %VR628, i32* %VR634
  %VR635 = add i32 %VR627, 0
  %VR636 = inttoptr i32 %VR635 to i32*
  store i32 %VR632, i32* %VR636
  %VR637 = add i32 %VR627, 0
  %VR638 = inttoptr i32 %VR637 to i32*
  %VR639 = load i32* %VR638
  %VR640 = icmp eq i32 %VR639,  1
  br i1 %VR640, label %typcase_ok_Main_121, label %unboxing_10_Main_1
;#######################################; <- case_K__Main_1


;#######################################; -> typcase_ok_Main_121
typcase_ok_Main_121:
  %VR641 = icmp eq i32 %VR639,  2
  br i1 %VR641, label %typcase_ok_Main_122, label %unboxing_10_Main_1
;#######################################; <- typcase_ok_Main_121


;#######################################; -> typcase_ok_Main_122
typcase_ok_Main_122:
  br label %after_unbox_10_Main_1
;#######################################; <- typcase_ok_Main_122


;#######################################; -> unboxing_10_Main_1
unboxing_10_Main_1:
  %VR642 = add i32 %VR627, 12
  %VR643 = inttoptr i32 %VR642 to i32*
  %VR644 = load i32* %VR643
  br label %after_unbox_10_Main_1
;#######################################; <- unboxing_10_Main_1


;#######################################; -> after_unbox_10_Main_1
after_unbox_10_Main_1:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 70
  %VR645 = add i32 11, 0
;; <- int_const: linia 70
  %VR409.10 = add i32 %VR645, 0
  br label %phi_10_sfarsit_case_Main_1
;#######################################; <- after_unbox_10_Main_1


;#######################################; -> phi_10_sfarsit_case_Main_1
phi_10_sfarsit_case_Main_1:
  br label %sfarsit_case_Main_1
;#######################################; <- phi_10_sfarsit_case_Main_1


;#######################################; -> case_L__Main_1
case_L__Main_1:
  %VR646 = call i32  @Object__copy(i32 %VR410)
  %VR647 = add i32 16, 0
  %VR648 = ptrtoint %struct.L_protObj_t* @L_protObj to i32 
  %VR649 = add i32 %VR648, 8
  %VR650 = inttoptr i32 %VR649 to i32*
  %VR651 = load i32* %VR650
  %VR652 = add i32 %VR646, 0
  %VR653 = inttoptr i32 %VR652 to i32*
  store i32 %VR647, i32* %VR653
  %VR654 = add i32 %VR646, 0
  %VR655 = inttoptr i32 %VR654 to i32*
  store i32 %VR651, i32* %VR655
  %VR656 = add i32 %VR646, 0
  %VR657 = inttoptr i32 %VR656 to i32*
  %VR658 = load i32* %VR657
  %VR659 = icmp eq i32 %VR658,  1
  br i1 %VR659, label %typcase_ok_Main_123, label %unboxing_11_Main_1
;#######################################; <- case_L__Main_1


;#######################################; -> typcase_ok_Main_123
typcase_ok_Main_123:
  %VR660 = icmp eq i32 %VR658,  2
  br i1 %VR660, label %typcase_ok_Main_124, label %unboxing_11_Main_1
;#######################################; <- typcase_ok_Main_123


;#######################################; -> typcase_ok_Main_124
typcase_ok_Main_124:
  br label %after_unbox_11_Main_1
;#######################################; <- typcase_ok_Main_124


;#######################################; -> unboxing_11_Main_1
unboxing_11_Main_1:
  %VR661 = add i32 %VR646, 12
  %VR662 = inttoptr i32 %VR661 to i32*
  %VR663 = load i32* %VR662
  br label %after_unbox_11_Main_1
;#######################################; <- unboxing_11_Main_1


;#######################################; -> after_unbox_11_Main_1
after_unbox_11_Main_1:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 71
  %VR664 = add i32 12, 0
;; <- int_const: linia 71
  %VR409.11 = add i32 %VR664, 0
  br label %phi_11_sfarsit_case_Main_1
;#######################################; <- after_unbox_11_Main_1


;#######################################; -> phi_11_sfarsit_case_Main_1
phi_11_sfarsit_case_Main_1:
  br label %sfarsit_case_Main_1
;#######################################; <- phi_11_sfarsit_case_Main_1


;#######################################; -> case_M__Main_1
case_M__Main_1:
  %VR665 = call i32  @Object__copy(i32 %VR410)
  %VR666 = add i32 17, 0
  %VR667 = ptrtoint %struct.M_protObj_t* @M_protObj to i32 
  %VR668 = add i32 %VR667, 8
  %VR669 = inttoptr i32 %VR668 to i32*
  %VR670 = load i32* %VR669
  %VR671 = add i32 %VR665, 0
  %VR672 = inttoptr i32 %VR671 to i32*
  store i32 %VR666, i32* %VR672
  %VR673 = add i32 %VR665, 0
  %VR674 = inttoptr i32 %VR673 to i32*
  store i32 %VR670, i32* %VR674
  %VR675 = add i32 %VR665, 0
  %VR676 = inttoptr i32 %VR675 to i32*
  %VR677 = load i32* %VR676
  %VR678 = icmp eq i32 %VR677,  1
  br i1 %VR678, label %typcase_ok_Main_125, label %unboxing_12_Main_1
;#######################################; <- case_M__Main_1


;#######################################; -> typcase_ok_Main_125
typcase_ok_Main_125:
  %VR679 = icmp eq i32 %VR677,  2
  br i1 %VR679, label %typcase_ok_Main_126, label %unboxing_12_Main_1
;#######################################; <- typcase_ok_Main_125


;#######################################; -> typcase_ok_Main_126
typcase_ok_Main_126:
  br label %after_unbox_12_Main_1
;#######################################; <- typcase_ok_Main_126


;#######################################; -> unboxing_12_Main_1
unboxing_12_Main_1:
  %VR680 = add i32 %VR665, 12
  %VR681 = inttoptr i32 %VR680 to i32*
  %VR682 = load i32* %VR681
  br label %after_unbox_12_Main_1
;#######################################; <- unboxing_12_Main_1


;#######################################; -> after_unbox_12_Main_1
after_unbox_12_Main_1:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 72
  %VR683 = add i32 13, 0
;; <- int_const: linia 72
  %VR409.12 = add i32 %VR683, 0
  br label %phi_12_sfarsit_case_Main_1
;#######################################; <- after_unbox_12_Main_1


;#######################################; -> phi_12_sfarsit_case_Main_1
phi_12_sfarsit_case_Main_1:
  br label %sfarsit_case_Main_1
;#######################################; <- phi_12_sfarsit_case_Main_1


;#######################################; -> case_N__Main_1
case_N__Main_1:
  %VR684 = call i32  @Object__copy(i32 %VR410)
  %VR685 = add i32 18, 0
  %VR686 = ptrtoint %struct.N_protObj_t* @N_protObj to i32 
  %VR687 = add i32 %VR686, 8
  %VR688 = inttoptr i32 %VR687 to i32*
  %VR689 = load i32* %VR688
  %VR690 = add i32 %VR684, 0
  %VR691 = inttoptr i32 %VR690 to i32*
  store i32 %VR685, i32* %VR691
  %VR692 = add i32 %VR684, 0
  %VR693 = inttoptr i32 %VR692 to i32*
  store i32 %VR689, i32* %VR693
  %VR694 = add i32 %VR684, 0
  %VR695 = inttoptr i32 %VR694 to i32*
  %VR696 = load i32* %VR695
  %VR697 = icmp eq i32 %VR696,  1
  br i1 %VR697, label %typcase_ok_Main_127, label %unboxing_13_Main_1
;#######################################; <- case_N__Main_1


;#######################################; -> typcase_ok_Main_127
typcase_ok_Main_127:
  %VR698 = icmp eq i32 %VR696,  2
  br i1 %VR698, label %typcase_ok_Main_128, label %unboxing_13_Main_1
;#######################################; <- typcase_ok_Main_127


;#######################################; -> typcase_ok_Main_128
typcase_ok_Main_128:
  br label %after_unbox_13_Main_1
;#######################################; <- typcase_ok_Main_128


;#######################################; -> unboxing_13_Main_1
unboxing_13_Main_1:
  %VR699 = add i32 %VR684, 12
  %VR700 = inttoptr i32 %VR699 to i32*
  %VR701 = load i32* %VR700
  br label %after_unbox_13_Main_1
;#######################################; <- unboxing_13_Main_1


;#######################################; -> after_unbox_13_Main_1
after_unbox_13_Main_1:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 73
  %VR702 = add i32 14, 0
;; <- int_const: linia 73
  %VR409.13 = add i32 %VR702, 0
  br label %phi_13_sfarsit_case_Main_1
;#######################################; <- after_unbox_13_Main_1


;#######################################; -> phi_13_sfarsit_case_Main_1
phi_13_sfarsit_case_Main_1:
  br label %sfarsit_case_Main_1
;#######################################; <- phi_13_sfarsit_case_Main_1


;#######################################; -> case_O__Main_1
case_O__Main_1:
  %VR703 = call i32  @Object__copy(i32 %VR410)
  %VR704 = add i32 19, 0
  %VR705 = ptrtoint %struct.O_protObj_t* @O_protObj to i32 
  %VR706 = add i32 %VR705, 8
  %VR707 = inttoptr i32 %VR706 to i32*
  %VR708 = load i32* %VR707
  %VR709 = add i32 %VR703, 0
  %VR710 = inttoptr i32 %VR709 to i32*
  store i32 %VR704, i32* %VR710
  %VR711 = add i32 %VR703, 0
  %VR712 = inttoptr i32 %VR711 to i32*
  store i32 %VR708, i32* %VR712
  %VR713 = add i32 %VR703, 0
  %VR714 = inttoptr i32 %VR713 to i32*
  %VR715 = load i32* %VR714
  %VR716 = icmp eq i32 %VR715,  1
  br i1 %VR716, label %typcase_ok_Main_129, label %unboxing_14_Main_1
;#######################################; <- case_O__Main_1


;#######################################; -> typcase_ok_Main_129
typcase_ok_Main_129:
  %VR717 = icmp eq i32 %VR715,  2
  br i1 %VR717, label %typcase_ok_Main_130, label %unboxing_14_Main_1
;#######################################; <- typcase_ok_Main_129


;#######################################; -> typcase_ok_Main_130
typcase_ok_Main_130:
  br label %after_unbox_14_Main_1
;#######################################; <- typcase_ok_Main_130


;#######################################; -> unboxing_14_Main_1
unboxing_14_Main_1:
  %VR718 = add i32 %VR703, 12
  %VR719 = inttoptr i32 %VR718 to i32*
  %VR720 = load i32* %VR719
  br label %after_unbox_14_Main_1
;#######################################; <- unboxing_14_Main_1


;#######################################; -> after_unbox_14_Main_1
after_unbox_14_Main_1:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 74
  %VR721 = add i32 15, 0
;; <- int_const: linia 74
  %VR409.14 = add i32 %VR721, 0
  br label %phi_14_sfarsit_case_Main_1
;#######################################; <- after_unbox_14_Main_1


;#######################################; -> phi_14_sfarsit_case_Main_1
phi_14_sfarsit_case_Main_1:
  br label %sfarsit_case_Main_1
;#######################################; <- phi_14_sfarsit_case_Main_1


;#######################################; -> case_P__Main_1
case_P__Main_1:
  %VR722 = call i32  @Object__copy(i32 %VR410)
  %VR723 = add i32 20, 0
  %VR724 = ptrtoint %struct.P_protObj_t* @P_protObj to i32 
  %VR725 = add i32 %VR724, 8
  %VR726 = inttoptr i32 %VR725 to i32*
  %VR727 = load i32* %VR726
  %VR728 = add i32 %VR722, 0
  %VR729 = inttoptr i32 %VR728 to i32*
  store i32 %VR723, i32* %VR729
  %VR730 = add i32 %VR722, 0
  %VR731 = inttoptr i32 %VR730 to i32*
  store i32 %VR727, i32* %VR731
  %VR732 = add i32 %VR722, 0
  %VR733 = inttoptr i32 %VR732 to i32*
  %VR734 = load i32* %VR733
  %VR735 = icmp eq i32 %VR734,  1
  br i1 %VR735, label %typcase_ok_Main_131, label %unboxing_15_Main_1
;#######################################; <- case_P__Main_1


;#######################################; -> typcase_ok_Main_131
typcase_ok_Main_131:
  %VR736 = icmp eq i32 %VR734,  2
  br i1 %VR736, label %typcase_ok_Main_132, label %unboxing_15_Main_1
;#######################################; <- typcase_ok_Main_131


;#######################################; -> typcase_ok_Main_132
typcase_ok_Main_132:
  br label %after_unbox_15_Main_1
;#######################################; <- typcase_ok_Main_132


;#######################################; -> unboxing_15_Main_1
unboxing_15_Main_1:
  %VR737 = add i32 %VR722, 12
  %VR738 = inttoptr i32 %VR737 to i32*
  %VR739 = load i32* %VR738
  br label %after_unbox_15_Main_1
;#######################################; <- unboxing_15_Main_1


;#######################################; -> after_unbox_15_Main_1
after_unbox_15_Main_1:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 75
  %VR740 = add i32 16, 0
;; <- int_const: linia 75
  %VR409.15 = add i32 %VR740, 0
  br label %phi_15_sfarsit_case_Main_1
;#######################################; <- after_unbox_15_Main_1


;#######################################; -> phi_15_sfarsit_case_Main_1
phi_15_sfarsit_case_Main_1:
  br label %sfarsit_case_Main_1
;#######################################; <- phi_15_sfarsit_case_Main_1


;#######################################; -> case_Q__Main_1
case_Q__Main_1:
  %VR741 = call i32  @Object__copy(i32 %VR410)
  %VR742 = add i32 21, 0
  %VR743 = ptrtoint %struct.Q_protObj_t* @Q_protObj to i32 
  %VR744 = add i32 %VR743, 8
  %VR745 = inttoptr i32 %VR744 to i32*
  %VR746 = load i32* %VR745
  %VR747 = add i32 %VR741, 0
  %VR748 = inttoptr i32 %VR747 to i32*
  store i32 %VR742, i32* %VR748
  %VR749 = add i32 %VR741, 0
  %VR750 = inttoptr i32 %VR749 to i32*
  store i32 %VR746, i32* %VR750
  %VR751 = add i32 %VR741, 0
  %VR752 = inttoptr i32 %VR751 to i32*
  %VR753 = load i32* %VR752
  %VR754 = icmp eq i32 %VR753,  1
  br i1 %VR754, label %typcase_ok_Main_133, label %unboxing_16_Main_1
;#######################################; <- case_Q__Main_1


;#######################################; -> typcase_ok_Main_133
typcase_ok_Main_133:
  %VR755 = icmp eq i32 %VR753,  2
  br i1 %VR755, label %typcase_ok_Main_134, label %unboxing_16_Main_1
;#######################################; <- typcase_ok_Main_133


;#######################################; -> typcase_ok_Main_134
typcase_ok_Main_134:
  br label %after_unbox_16_Main_1
;#######################################; <- typcase_ok_Main_134


;#######################################; -> unboxing_16_Main_1
unboxing_16_Main_1:
  %VR756 = add i32 %VR741, 12
  %VR757 = inttoptr i32 %VR756 to i32*
  %VR758 = load i32* %VR757
  br label %after_unbox_16_Main_1
;#######################################; <- unboxing_16_Main_1


;#######################################; -> after_unbox_16_Main_1
after_unbox_16_Main_1:
;- let -- let -- let -- let -- block -- loop -- block -- assign -- typcase -- int_const -
;; -> int_const: linia 76
  %VR759 = add i32 17, 0
;; <- int_const: linia 76
  %VR409.16 = add i32 %VR759, 0
  br label %phi_16_sfarsit_case_Main_1
;#######################################; <- after_unbox_16_Main_1


;#######################################; -> phi_16_sfarsit_case_Main_1
phi_16_sfarsit_case_Main_1:
  br label %sfarsit_case_Main_1
;#######################################; <- phi_16_sfarsit_case_Main_1


;#######################################; -> case_1_noAlternativeMain_1
case_1_noAlternativeMain_1:
  call void @_case_abort(i32 %VR410)
  ret i32 0
;#######################################; <- case_1_noAlternativeMain_1


;#######################################; -> sfarsit_case_Main_1
sfarsit_case_Main_1:
  %VR409 = phi i32  [ %VR409.0 , %phi_0_sfarsit_case_Main_1 ] , [ %VR409.1 , %phi_1_sfarsit_case_Main_1 ] , [ %VR409.2 , %phi_2_sfarsit_case_Main_1 ] , [ %VR409.3 , %phi_3_sfarsit_case_Main_1 ] , [ %VR409.4 , %phi_4_sfarsit_case_Main_1 ] , [ %VR409.5 , %phi_5_sfarsit_case_Main_1 ] , [ %VR409.6 , %phi_6_sfarsit_case_Main_1 ] , [ %VR409.7 , %phi_7_sfarsit_case_Main_1 ] , [ %VR409.8 , %phi_8_sfarsit_case_Main_1 ] , [ %VR409.9 , %phi_9_sfarsit_case_Main_1 ] , [ %VR409.10 , %phi_10_sfarsit_case_Main_1 ] , [ %VR409.11 , %phi_11_sfarsit_case_Main_1 ] , [ %VR409.12 , %phi_12_sfarsit_case_Main_1 ] , [ %VR409.13 , %phi_13_sfarsit_case_Main_1 ] , [ %VR409.14 , %phi_14_sfarsit_case_Main_1 ] , [ %VR409.15 , %phi_15_sfarsit_case_Main_1 ] , [ %VR409.16 , %phi_16_sfarsit_case_Main_1 ] 
  %VR403_tmp2 = load i32* %VR403a
;; <- typcase: linia 59
  store i32 %VR409, i32* %VR4a
;; <- assign: linia 58
;- let -- let -- let -- let -- block -- loop -- block -- assign -
;; -> assign: linia 78
;- let -- let -- let -- let -- block -- loop -- block -- assign -- plus -
;; -> plus: linia 78
;- let -- let -- let -- let -- block -- loop -- block -- assign -- plus -- object -
;; -> object: linia 78
;; <- object: linia 78
;- let -- let -- let -- let -- block -- loop -- block -- assign -- plus -- int_const -
;; -> int_const: linia 78
  %VR760 = add i32 1, 0
;; <- int_const: linia 78
  %VR761 = add i32 %VR403_tmp2, %VR760
;; <- plus: linia 78
  store i32 %VR761, i32* %VR403a
;; <- assign: linia 78
;; <- block: linia 57
  br label %start_loop_Main_1
;#######################################; <- sfarsit_case_Main_1


;#######################################; -> sfarsit_loop_Main_1
sfarsit_loop_Main_1:
  %VR4_tmp4 = load i32* %VR4a
;; <- loop: linia 57
;- let -- let -- let -- let -- block -- cond -
;; -> cond: linia 80
;;if: linia 80 (expresia pentru predicat)
;;%VR762 rezervat pentru rezultatul if-ului
;- let -- let -- let -- let -- block -- cond -- comp -
;; -> comp: linia 80
;- let -- let -- let -- let -- block -- cond -- comp -- eq -
;; -> eq: linia 80
;- let -- let -- let -- let -- block -- cond -- comp -- eq -- object -
;; -> object: linia 80
;; <- object: linia 80
;- let -- let -- let -- let -- block -- cond -- comp -- eq -- int_const -
;; -> int_const: linia 80
  %VR763 = add i32 1, 0
;; <- int_const: linia 80
;boxing to int
  %VR764 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR765 = add i32 %VR764, 12
  %VR766 = inttoptr i32 %VR765 to i32*
  store i32 %VR4_tmp4, i32* %VR766
;boxing to int
  %VR767 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR768 = add i32 %VR767, 12
  %VR769 = inttoptr i32 %VR768 to i32*
  store i32 %VR763, i32* %VR769
  br label %eq_test_join_true_Main_1
;#######################################; <- sfarsit_loop_Main_1


;#######################################; -> eq_test_join_true_Main_1
eq_test_join_true_Main_1:
  %VR770.0 = icmp eq i32 %VR764,  %VR767
  br i1 %VR770.0, label %eq_test_join_Main_1, label %eq_test_join_false_Main_1
;#######################################; <- eq_test_join_true_Main_1


;#######################################; -> eq_test_join_false_Main_1
eq_test_join_false_Main_1:
  %VR772 = call i32  @equality_test(i32 1, i32 0, i32 %VR764, i32 %VR767)
  %VR770.1 = icmp eq i32 %VR772,  1
  br label %eq_test_join_Main_1
;#######################################; <- eq_test_join_false_Main_1


;#######################################; -> eq_test_join_Main_1
eq_test_join_Main_1:
  %VR770 = phi i1  [ %VR770.0 , %eq_test_join_true_Main_1 ] , [ %VR770.1 , %eq_test_join_false_Main_1 ] 
;; <- eq: linia 80
  %VR773 = select i1 %VR770, i32 1, i32 0
  %VR774 = sub i32 1, %VR773
;; <- comp: linia 80
  %VR775 = icmp eq i32 %VR774,  0
  br i1 %VR775, label %false_Main_1, label %false_false_Main_1
;#######################################; <- eq_test_join_Main_1


;#######################################; -> false_false_Main_1
false_false_Main_1:
;;if: linia 80 (expresia pentru then)
;- let -- let -- let -- let -- block -- cond -- dispatch -
;; -> dispatch: linia 80
;;generez codul pentru apelul metodei abort
;- let -- let -- let -- let -- block -- cond -- dispatch -- object -
;; -> object: linia 80
;; <- object: linia 80
  %VR776 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR776, label %false_dispatch2, label %dispatch_not_void_Main_2
;#######################################; <- false_false_Main_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__23 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Main_2
dispatch_not_void_Main_2:
  %VR777 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR778 = add i32 %VR777, 8
  %VR779 = inttoptr i32 %VR778 to i32*
  %VR780 = load i32* %VR779
  %VR781 = add i32 %VR780, 0
  %VR782 = inttoptr i32 %VR781 to i32*
  %VR783 = load i32* %VR782
  %VR784 = inttoptr i32 %VR783 to i32 (i32)*
  %VR785 = call i32 (i32)* %VR784(i32 %ARG)
;; <- dispatch: linia 80
  br label %join_if_Main_1_true
;#######################################; <- dispatch_not_void_Main_2


;#######################################; -> join_if_Main_1_true
join_if_Main_1_true:
  %VR762.0 = add i32 %VR785, 0
  br label %join_if_Main_1
;#######################################; <- join_if_Main_1_true


;#######################################; -> false_Main_1
false_Main_1:
;;if: linia 80 (expresia pentru else)
;- let -- let -- let -- let -- block -- cond -- int_const -
;; -> int_const: linia 80
  %VR786 = add i32 0, 0
;; <- int_const: linia 80
  br label %join_if_Main_1_false
;#######################################; <- false_Main_1


;#######################################; -> join_if_Main_1_false
join_if_Main_1_false:
  %VR762.1 = add i32 %VR786, 0
  br label %join_if_Main_1
;#######################################; <- join_if_Main_1_false


;#######################################; -> join_if_Main_1
join_if_Main_1:
  %VR762 = phi i32  [ %VR762.0 , %join_if_Main_1_true ] , [ %VR762.1 , %join_if_Main_1_false ] 
;; <- cond: linia 80
;- let -- let -- let -- let -- block -- dispatch -
;; -> dispatch: linia 82
;;generez codul pentru apelul metodei out_string
;- let -- let -- let -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 82
  %VR787 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 82
;- let -- let -- let -- let -- block -- dispatch -- object -
;; -> object: linia 82
  %VR788 = add i32 %ARG, 12
  %VR789 = inttoptr i32 %VR788 to i32*
  %VR790 = load i32* %VR789
;; <- object: linia 82
  %VR791 = inttoptr i32 %VR790 to i32*
  %VR792 = icmp eq i32* %VR791,  null
  br i1 %VR792, label %false_dispatch3, label %dispatch_not_void_Main_3
;#######################################; <- join_if_Main_1


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__24 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Main_3
dispatch_not_void_Main_3:
  %VR793 = ptrtoint i32* %VR791 to i32 
  %VR794 = add i32 %VR793, 8
  %VR795 = inttoptr i32 %VR794 to i32*
  %VR796 = load i32* %VR795
  %VR797 = add i32 %VR796, 16
  %VR798 = inttoptr i32 %VR797 to i32*
  %VR799 = load i32* %VR798
  %VR800 = inttoptr i32 %VR799 to i32 (i32, i32)*
  %VR801 = call i32 (i32, i32)* %VR800(i32 %VR790, i32 %VR787)
;; <- dispatch: linia 82
;; <- block: linia 28
;; <- let: linia 27
;; <- let: linia 26
;; <- let: linia 25
;; <- let: linia 24
  ret i32 %VR801
;#######################################; <- dispatch_not_void_Main_3


}
@s30 = internal constant [1 x i8] c"\00"
@str_const__30 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([1 x i8]* @s30, i32 0, i32 0)}
@s29 = internal constant [5 x i8] c"Main\00"
@str_const__29 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__5, i8* getelementptr ([5 x i8]* @s29, i32 0, i32 0)}
@s28 = internal constant [2 x i8] c"Q\00"
@str_const__28 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([2 x i8]* @s28, i32 0, i32 0)}
@s27 = internal constant [2 x i8] c"P\00"
@str_const__27 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([2 x i8]* @s27, i32 0, i32 0)}
@s26 = internal constant [2 x i8] c"O\00"
@str_const__26 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([2 x i8]* @s26, i32 0, i32 0)}
@s25 = internal constant [2 x i8] c"N\00"
@str_const__25 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([2 x i8]* @s25, i32 0, i32 0)}
@s24 = internal constant [2 x i8] c"M\00"
@str_const__24 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([2 x i8]* @s24, i32 0, i32 0)}
@s23 = internal constant [2 x i8] c"L\00"
@str_const__23 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([2 x i8]* @s23, i32 0, i32 0)}
@s22 = internal constant [2 x i8] c"K\00"
@str_const__22 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([2 x i8]* @s22, i32 0, i32 0)}
@s21 = internal constant [2 x i8] c"J\00"
@str_const__21 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([2 x i8]* @s21, i32 0, i32 0)}
@s20 = internal constant [2 x i8] c"I\00"
@str_const__20 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([2 x i8]* @s20, i32 0, i32 0)}
@s19 = internal constant [2 x i8] c"H\00"
@str_const__19 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([2 x i8]* @s19, i32 0, i32 0)}
@s18 = internal constant [2 x i8] c"G\00"
@str_const__18 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([2 x i8]* @s18, i32 0, i32 0)}
@s17 = internal constant [2 x i8] c"F\00"
@str_const__17 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([2 x i8]* @s17, i32 0, i32 0)}
@s16 = internal constant [2 x i8] c"E\00"
@str_const__16 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([2 x i8]* @s16, i32 0, i32 0)}
@s15 = internal constant [2 x i8] c"D\00"
@str_const__15 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([2 x i8]* @s15, i32 0, i32 0)}
@s14 = internal constant [2 x i8] c"C\00"
@str_const__14 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([2 x i8]* @s14, i32 0, i32 0)}
@s13 = internal constant [2 x i8] c"B\00"
@str_const__13 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([2 x i8]* @s13, i32 0, i32 0)}
@s12 = internal constant [2 x i8] c"A\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([2 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [3 x i8] c"IO\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([3 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [7 x i8] c"String\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__7, i8* getelementptr ([7 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [5 x i8] c"Bool\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__5, i8* getelementptr ([5 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [4 x i8] c"Int\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([4 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [7 x i8] c"Object\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__7, i8* getelementptr ([7 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([11 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([10 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [10 x i8] c"_no_class\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([10 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [14 x i8] c"<basic class>\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__14, i8* getelementptr ([14 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [10 x i8] c"A passed\0A\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([10 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [10 x i8] c"Q passed\0A\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([10 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [26 x i8] c"_tests/simple/caseloop.cl\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__25, i8* getelementptr ([26 x i8]* @s0, i32 0, i32 0)}
@int_const__25 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 25}
@int_const__24 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 82}
@int_const__23 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 80}
@int_const__22 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 59}
@int_const__21 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 54}
@int_const__20 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 52}
@int_const__19 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 31}
@int_const__18 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 17}
@int_const__17 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 16}
@int_const__16 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 15}
@int_const__15 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 14}
@int_const__14 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__13 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 12}
@int_const__12 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 11}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 8}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 7}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 5}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1000}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
%struct.A_protObj_t = type { i32, i32, %struct.A_dispTab_t* }
@A_protObj = global %struct.A_protObj_t {i32 5, i32 3, %struct.A_dispTab_t* @A_dispTab}
%struct.B_protObj_t = type { i32, i32, %struct.B_dispTab_t* }
@B_protObj = global %struct.B_protObj_t {i32 6, i32 3, %struct.B_dispTab_t* @B_dispTab}
%struct.C_protObj_t = type { i32, i32, %struct.C_dispTab_t* }
@C_protObj = global %struct.C_protObj_t {i32 7, i32 3, %struct.C_dispTab_t* @C_dispTab}
%struct.D_protObj_t = type { i32, i32, %struct.D_dispTab_t* }
@D_protObj = global %struct.D_protObj_t {i32 8, i32 3, %struct.D_dispTab_t* @D_dispTab}
%struct.E_protObj_t = type { i32, i32, %struct.E_dispTab_t* }
@E_protObj = global %struct.E_protObj_t {i32 9, i32 3, %struct.E_dispTab_t* @E_dispTab}
%struct.F_protObj_t = type { i32, i32, %struct.F_dispTab_t* }
@F_protObj = global %struct.F_protObj_t {i32 10, i32 3, %struct.F_dispTab_t* @F_dispTab}
%struct.G_protObj_t = type { i32, i32, %struct.G_dispTab_t* }
@G_protObj = global %struct.G_protObj_t {i32 11, i32 3, %struct.G_dispTab_t* @G_dispTab}
%struct.H_protObj_t = type { i32, i32, %struct.H_dispTab_t* }
@H_protObj = global %struct.H_protObj_t {i32 12, i32 3, %struct.H_dispTab_t* @H_dispTab}
%struct.I_protObj_t = type { i32, i32, %struct.I_dispTab_t* }
@I_protObj = global %struct.I_protObj_t {i32 13, i32 3, %struct.I_dispTab_t* @I_dispTab}
%struct.J_protObj_t = type { i32, i32, %struct.J_dispTab_t* }
@J_protObj = global %struct.J_protObj_t {i32 14, i32 3, %struct.J_dispTab_t* @J_dispTab}
%struct.K_protObj_t = type { i32, i32, %struct.K_dispTab_t* }
@K_protObj = global %struct.K_protObj_t {i32 15, i32 3, %struct.K_dispTab_t* @K_dispTab}
%struct.L_protObj_t = type { i32, i32, %struct.L_dispTab_t* }
@L_protObj = global %struct.L_protObj_t {i32 16, i32 3, %struct.L_dispTab_t* @L_dispTab}
%struct.M_protObj_t = type { i32, i32, %struct.M_dispTab_t* }
@M_protObj = global %struct.M_protObj_t {i32 17, i32 3, %struct.M_dispTab_t* @M_dispTab}
%struct.N_protObj_t = type { i32, i32, %struct.N_dispTab_t* }
@N_protObj = global %struct.N_protObj_t {i32 18, i32 3, %struct.N_dispTab_t* @N_dispTab}
%struct.O_protObj_t = type { i32, i32, %struct.O_dispTab_t* }
@O_protObj = global %struct.O_protObj_t {i32 19, i32 3, %struct.O_dispTab_t* @O_dispTab}
%struct.P_protObj_t = type { i32, i32, %struct.P_dispTab_t* }
@P_protObj = global %struct.P_protObj_t {i32 20, i32 3, %struct.P_dispTab_t* @P_dispTab}
%struct.Q_protObj_t = type { i32, i32, %struct.Q_dispTab_t* }
@Q_protObj = global %struct.Q_protObj_t {i32 21, i32 3, %struct.Q_dispTab_t* @Q_dispTab}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t*, i32 }
@Main_protObj = global %struct.Main_protObj_t {i32 22, i32 4, %struct.Main_dispTab_t* @Main_dispTab, i32 0}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__7, %struct.String_protObj_t* @str_const__8, %struct.String_protObj_t* @str_const__9, %struct.String_protObj_t* @str_const__10, %struct.String_protObj_t* @str_const__11, %struct.String_protObj_t* @str_const__12, %struct.String_protObj_t* @str_const__13, %struct.String_protObj_t* @str_const__14, %struct.String_protObj_t* @str_const__15, %struct.String_protObj_t* @str_const__16, %struct.String_protObj_t* @str_const__17, %struct.String_protObj_t* @str_const__18, %struct.String_protObj_t* @str_const__19, %struct.String_protObj_t* @str_const__20, %struct.String_protObj_t* @str_const__21, %struct.String_protObj_t* @str_const__22, %struct.String_protObj_t* @str_const__23, %struct.String_protObj_t* @str_const__24, %struct.String_protObj_t* @str_const__25, %struct.String_protObj_t* @str_const__26, %struct.String_protObj_t* @str_const__27, %struct.String_protObj_t* @str_const__28, %struct.String_protObj_t* @str_const__29 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @A_init to i8*), i8* bitcast (void (i32)* @B_init to i8*), i8* bitcast (void (i32)* @C_init to i8*), i8* bitcast (void (i32)* @D_init to i8*), i8* bitcast (void (i32)* @E_init to i8*), i8* bitcast (void (i32)* @F_init to i8*), i8* bitcast (void (i32)* @G_init to i8*), i8* bitcast (void (i32)* @H_init to i8*), i8* bitcast (void (i32)* @I_init to i8*), i8* bitcast (void (i32)* @J_init to i8*), i8* bitcast (void (i32)* @K_init to i8*), i8* bitcast (void (i32)* @L_init to i8*), i8* bitcast (void (i32)* @M_init to i8*), i8* bitcast (void (i32)* @N_init to i8*), i8* bitcast (void (i32)* @O_init to i8*), i8* bitcast (void (i32)* @P_init to i8*), i8* bitcast (void (i32)* @Q_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.A_dispTab_t = type { i8*, i8*, i8*}
@A_dispTab = global %struct.A_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*)}

%struct.B_dispTab_t = type { i8*, i8*, i8*}
@B_dispTab = global %struct.B_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*)}

%struct.C_dispTab_t = type { i8*, i8*, i8*}
@C_dispTab = global %struct.C_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*)}

%struct.D_dispTab_t = type { i8*, i8*, i8*}
@D_dispTab = global %struct.D_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*)}

%struct.E_dispTab_t = type { i8*, i8*, i8*}
@E_dispTab = global %struct.E_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*)}

%struct.F_dispTab_t = type { i8*, i8*, i8*}
@F_dispTab = global %struct.F_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*)}

%struct.G_dispTab_t = type { i8*, i8*, i8*}
@G_dispTab = global %struct.G_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*)}

%struct.H_dispTab_t = type { i8*, i8*, i8*}
@H_dispTab = global %struct.H_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*)}

%struct.I_dispTab_t = type { i8*, i8*, i8*}
@I_dispTab = global %struct.I_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*)}

%struct.J_dispTab_t = type { i8*, i8*, i8*}
@J_dispTab = global %struct.J_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*)}

%struct.K_dispTab_t = type { i8*, i8*, i8*}
@K_dispTab = global %struct.K_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*)}

%struct.L_dispTab_t = type { i8*, i8*, i8*}
@L_dispTab = global %struct.L_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*)}

%struct.M_dispTab_t = type { i8*, i8*, i8*}
@M_dispTab = global %struct.M_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*)}

%struct.N_dispTab_t = type { i8*, i8*, i8*}
@N_dispTab = global %struct.N_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*)}

%struct.O_dispTab_t = type { i8*, i8*, i8*}
@O_dispTab = global %struct.O_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*)}

%struct.P_dispTab_t = type { i8*, i8*, i8*}
@P_dispTab = global %struct.P_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*)}

%struct.Q_dispTab_t = type { i8*, i8*, i8*}
@Q_dispTab = global %struct.Q_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*)}

%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}

