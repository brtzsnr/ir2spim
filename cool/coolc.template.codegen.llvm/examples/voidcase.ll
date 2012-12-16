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
;- let -
;; -> let: linia 3
  %VR1 = add i32 0, 0
;- let -- typcase -
;; -> typcase: linia 4
;- let -- typcase -- object -
;; -> object: linia 4
;; <- object: linia 4
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = icmp eq i32* %VR2,  null
  br i1 %VR3, label %false_typcase00, label %case_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_typcase00
false_typcase00:
  call void @_case_abort2(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__0 to i32))
  ret i32 0
;#######################################; <- false_typcase00


;#######################################; -> case_not_void_Main_0
case_not_void_Main_0:
;;rezerv %VR4 pentru rezultatul case-ului
  %VR5 = ptrtoint i32* %VR2 to i32 
  %VR6 = add i32 %VR5, 0
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = icmp eq i32 %VR8,  0
  br i1 %VR9, label %case_Object__Main_0, label %next0_case_Object__Main_0
;#######################################; <- case_not_void_Main_0


;#######################################; -> next0_case_Object__Main_0
next0_case_Object__Main_0:
  %VR10 = icmp eq i32 %VR8,  1
  br i1 %VR10, label %case_Object__Main_0, label %next1_case_Object__Main_0
;#######################################; <- next0_case_Object__Main_0


;#######################################; -> next1_case_Object__Main_0
next1_case_Object__Main_0:
  %VR11 = icmp eq i32 %VR8,  2
  br i1 %VR11, label %case_Object__Main_0, label %next2_case_Object__Main_0
;#######################################; <- next1_case_Object__Main_0


;#######################################; -> next2_case_Object__Main_0
next2_case_Object__Main_0:
  %VR12 = icmp eq i32 %VR8,  3
  br i1 %VR12, label %case_Object__Main_0, label %next3_case_Object__Main_0
;#######################################; <- next2_case_Object__Main_0


;#######################################; -> next3_case_Object__Main_0
next3_case_Object__Main_0:
  %VR13 = icmp eq i32 %VR8,  4
  br i1 %VR13, label %case_Object__Main_0, label %next4_case_Object__Main_0
;#######################################; <- next3_case_Object__Main_0


;#######################################; -> next4_case_Object__Main_0
next4_case_Object__Main_0:
  %VR14 = icmp eq i32 %VR8,  5
  br i1 %VR14, label %case_Object__Main_0, label %next5_case_Object__Main_0
;#######################################; <- next4_case_Object__Main_0


;#######################################; -> next5_case_Object__Main_0
next5_case_Object__Main_0:
  br label %case_Object__Main_0
;#######################################; <- next5_case_Object__Main_0


;#######################################; -> case_Object__Main_0
case_Object__Main_0:
  %VR15 = call i32  @Object__copy(i32 %VR5)
  %VR16 = add i32 0, 0
  %VR17 = ptrtoint %struct.Object_protObj_t* @Object_protObj to i32 
  %VR18 = add i32 %VR17, 8
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
  %VR21 = add i32 %VR15, 0
  %VR22 = inttoptr i32 %VR21 to i32*
  store i32 %VR16, i32* %VR22
  %VR23 = add i32 %VR15, 0
  %VR24 = inttoptr i32 %VR23 to i32*
  store i32 %VR20, i32* %VR24
  %VR25 = add i32 %VR15, 0
  %VR26 = inttoptr i32 %VR25 to i32*
  %VR27 = load i32* %VR26
  %VR28 = icmp eq i32 %VR27,  1
  br i1 %VR28, label %typcase_ok_Main_01, label %unboxing_0_Main_0
;#######################################; <- case_Object__Main_0


;#######################################; -> typcase_ok_Main_01
typcase_ok_Main_01:
  %VR29 = icmp eq i32 %VR27,  2
  br i1 %VR29, label %typcase_ok_Main_02, label %unboxing_0_Main_0
;#######################################; <- typcase_ok_Main_01


;#######################################; -> typcase_ok_Main_02
typcase_ok_Main_02:
  br label %after_unbox_0_Main_0
;#######################################; <- typcase_ok_Main_02


;#######################################; -> unboxing_0_Main_0
unboxing_0_Main_0:
  %VR30 = add i32 %VR15, 12
  %VR31 = inttoptr i32 %VR30 to i32*
  %VR32 = load i32* %VR31
  br label %after_unbox_0_Main_0
;#######################################; <- unboxing_0_Main_0


;#######################################; -> after_unbox_0_Main_0
after_unbox_0_Main_0:
;- let -- typcase -- dispatch -
;; -> dispatch: linia 4
;;generez codul pentru apelul metodei type_name
;- let -- typcase -- dispatch -- object -
;; -> object: linia 4
;; <- object: linia 4
  %VR33 = inttoptr i32 %VR5 to i32*
  %VR34 = icmp eq i32* %VR33,  null
  br i1 %VR34, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- after_unbox_0_Main_0


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__0 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR35 = ptrtoint i32* %VR33 to i32 
  %VR36 = add i32 %VR35, 8
  %VR37 = inttoptr i32 %VR36 to i32*
  %VR38 = load i32* %VR37
  %VR39 = add i32 %VR38, 8
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = load i32* %VR40
  %VR42 = inttoptr i32 %VR41 to i32 (i32)*
  %VR43 = call i32 (i32)* %VR42(i32 %VR5)
;; <- dispatch: linia 4
  %VR4.0 = add i32 %VR43, 0
  br label %phi_0_sfarsit_case_Main_0
;#######################################; <- dispatch_not_void_Main_0


;#######################################; -> phi_0_sfarsit_case_Main_0
phi_0_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_0_sfarsit_case_Main_0


;#######################################; -> case_0_noAlternativeMain_0
case_0_noAlternativeMain_0:
  call void @_case_abort(i32 %VR5)
  ret i32 0
;#######################################; <- case_0_noAlternativeMain_0


;#######################################; -> sfarsit_case_Main_0
sfarsit_case_Main_0:
  %VR4 = phi i32 [ %VR4.0, %phi_0_sfarsit_case_Main_0]
;; <- typcase: linia 4
;; <- let: linia 3
  ret i32 %VR4
;#######################################; <- sfarsit_case_Main_0


}
@s11 = internal constant [1 x i8] c"\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([1 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [5 x i8] c"Main\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([5 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [3 x i8] c"IO\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([3 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [7 x i8] c"String\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([7 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [5 x i8] c"Bool\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([5 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [4 x i8] c"Int\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([4 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [7 x i8] c"Object\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([7 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__5, i8* getelementptr ([11 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__6, i8* getelementptr ([10 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [10 x i8] c"_no_class\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__6, i8* getelementptr ([10 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [14 x i8] c"<basic class>\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__7, i8* getelementptr ([14 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [27 x i8] c"_tests/library/voidcase.cl\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([27 x i8]* @s0, i32 0, i32 0)}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 26}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t* }
@Main_protObj = global %struct.Main_protObj_t {i32 5, i32 3, %struct.Main_dispTab_t* @Main_dispTab}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__5, %struct.String_protObj_t* @str_const__6, %struct.String_protObj_t* @str_const__7, %struct.String_protObj_t* @str_const__8, %struct.String_protObj_t* @str_const__9, %struct.String_protObj_t* @str_const__10 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}

