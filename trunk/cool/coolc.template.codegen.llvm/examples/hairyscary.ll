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
define void @Foo_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Bazz_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- typcase -
;; -> typcase: linia 4
;- typcase -- object -
;; -> object: linia 4
;; <- object: linia 4
  %VR1 = icmp eq i32* %VR0,  null
  br i1 %VR1, label %false_typcase00, label %case_not_void_Foo_0
;#######################################; <- entry


;#######################################; -> false_typcase00
false_typcase00:
  call void @_case_abort2(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__3 to i32))
  ret void
;#######################################; <- false_typcase00


;#######################################; -> case_not_void_Foo_0
case_not_void_Foo_0:
;;rezerv %VR2 pentru rezultatul case-ului
  %VR3 = ptrtoint i32* %VR0 to i32 
  %VR4 = add i32 %VR3, 0
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = icmp eq i32 %VR6,  0
  br i1 %VR7, label %case_0_noAlternativeFoo_0, label %next0_case_0_noAlternativeFoo_0
;#######################################; <- case_not_void_Foo_0


;#######################################; -> next0_case_0_noAlternativeFoo_0
next0_case_0_noAlternativeFoo_0:
  %VR8 = icmp eq i32 %VR6,  1
  br i1 %VR8, label %case_0_noAlternativeFoo_0, label %next1_case_0_noAlternativeFoo_0
;#######################################; <- next0_case_0_noAlternativeFoo_0


;#######################################; -> next1_case_0_noAlternativeFoo_0
next1_case_0_noAlternativeFoo_0:
  %VR9 = icmp eq i32 %VR6,  2
  br i1 %VR9, label %case_0_noAlternativeFoo_0, label %next2_case_0_noAlternativeFoo_0
;#######################################; <- next1_case_0_noAlternativeFoo_0


;#######################################; -> next2_case_0_noAlternativeFoo_0
next2_case_0_noAlternativeFoo_0:
  %VR10 = icmp eq i32 %VR6,  3
  br i1 %VR10, label %case_0_noAlternativeFoo_0, label %next3_case_0_noAlternativeFoo_0
;#######################################; <- next2_case_0_noAlternativeFoo_0


;#######################################; -> next3_case_0_noAlternativeFoo_0
next3_case_0_noAlternativeFoo_0:
  %VR11 = icmp eq i32 %VR6,  4
  br i1 %VR11, label %case_0_noAlternativeFoo_0, label %next4_case_0_noAlternativeFoo_0
;#######################################; <- next3_case_0_noAlternativeFoo_0


;#######################################; -> next4_case_0_noAlternativeFoo_0
next4_case_0_noAlternativeFoo_0:
  %VR12 = icmp eq i32 %VR6,  5
  br i1 %VR12, label %case_Foo__Foo_0, label %next5_case_Foo__Foo_0
;#######################################; <- next4_case_0_noAlternativeFoo_0


;#######################################; -> next5_case_Foo__Foo_0
next5_case_Foo__Foo_0:
  %VR13 = icmp eq i32 %VR6,  6
  br i1 %VR13, label %case_Bar__Foo_0, label %next6_case_Bar__Foo_0
;#######################################; <- next5_case_Foo__Foo_0


;#######################################; -> next6_case_Bar__Foo_0
next6_case_Bar__Foo_0:
  %VR14 = icmp eq i32 %VR6,  7
  br i1 %VR14, label %case_Razz__Foo_0, label %next7_case_Razz__Foo_0
;#######################################; <- next6_case_Bar__Foo_0


;#######################################; -> next7_case_Razz__Foo_0
next7_case_Razz__Foo_0:
  %VR15 = icmp eq i32 %VR6,  8
  br i1 %VR15, label %case_0_noAlternativeFoo_0, label %next8_case_0_noAlternativeFoo_0
;#######################################; <- next7_case_Razz__Foo_0


;#######################################; -> next8_case_0_noAlternativeFoo_0
next8_case_0_noAlternativeFoo_0:
  %VR16 = icmp eq i32 %VR6,  9
  br i1 %VR16, label %case_0_noAlternativeFoo_0, label %next9_case_0_noAlternativeFoo_0
;#######################################; <- next8_case_0_noAlternativeFoo_0


;#######################################; -> next9_case_0_noAlternativeFoo_0
next9_case_0_noAlternativeFoo_0:
  br label %case_Razz__Foo_0
;#######################################; <- next9_case_0_noAlternativeFoo_0


;#######################################; -> case_Razz__Foo_0
case_Razz__Foo_0:
  %VR17 = call i32  @Object__copy(i32 %VR3)
  %VR18 = add i32 7, 0
  %VR19 = ptrtoint %struct.Razz_protObj_t* @Razz_protObj to i32 
  %VR20 = add i32 %VR19, 8
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
  %VR23 = add i32 %VR17, 0
  %VR24 = inttoptr i32 %VR23 to i32*
  store i32 %VR18, i32* %VR24
  %VR25 = add i32 %VR17, 0
  %VR26 = inttoptr i32 %VR25 to i32*
  store i32 %VR22, i32* %VR26
  %VR27 = add i32 %VR17, 0
  %VR28 = inttoptr i32 %VR27 to i32*
  %VR29 = load i32* %VR28
  %VR30 = icmp eq i32 %VR29,  1
  br i1 %VR30, label %typcase_ok_Foo_01, label %unboxing_0_Foo_0
;#######################################; <- case_Razz__Foo_0


;#######################################; -> typcase_ok_Foo_01
typcase_ok_Foo_01:
  %VR31 = icmp eq i32 %VR29,  2
  br i1 %VR31, label %typcase_ok_Foo_02, label %unboxing_0_Foo_0
;#######################################; <- typcase_ok_Foo_01


;#######################################; -> typcase_ok_Foo_02
typcase_ok_Foo_02:
  br label %after_unbox_0_Foo_0
;#######################################; <- typcase_ok_Foo_02


;#######################################; -> unboxing_0_Foo_0
unboxing_0_Foo_0:
  %VR32 = add i32 %VR17, 12
  %VR33 = inttoptr i32 %VR32 to i32*
  %VR34 = load i32* %VR33
  br label %after_unbox_0_Foo_0
;#######################################; <- unboxing_0_Foo_0


;#######################################; -> after_unbox_0_Foo_0
after_unbox_0_Foo_0:
;- typcase -- new -
;; -> new: linia 5
  %VR35 = call i32  @Object__copy(i32 ptrtoint (%struct.Bar_protObj_t* @Bar_protObj to i32))
  call void @Bar_init(i32 %VR35)
;; <- new: linia 5
  %VR2.0 = add i32 %VR35, 0
  br label %phi_0_sfarsit_case_Foo_0
;#######################################; <- after_unbox_0_Foo_0


;#######################################; -> phi_0_sfarsit_case_Foo_0
phi_0_sfarsit_case_Foo_0:
  br label %sfarsit_case_Foo_0
;#######################################; <- phi_0_sfarsit_case_Foo_0


;#######################################; -> case_Foo__Foo_0
case_Foo__Foo_0:
  %VR36 = call i32  @Object__copy(i32 %VR3)
  %VR37 = add i32 5, 0
  %VR38 = ptrtoint %struct.Foo_protObj_t* @Foo_protObj to i32 
  %VR39 = add i32 %VR38, 8
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = load i32* %VR40
  %VR42 = add i32 %VR36, 0
  %VR43 = inttoptr i32 %VR42 to i32*
  store i32 %VR37, i32* %VR43
  %VR44 = add i32 %VR36, 0
  %VR45 = inttoptr i32 %VR44 to i32*
  store i32 %VR41, i32* %VR45
  %VR46 = add i32 %VR36, 0
  %VR47 = inttoptr i32 %VR46 to i32*
  %VR48 = load i32* %VR47
  %VR49 = icmp eq i32 %VR48,  1
  br i1 %VR49, label %typcase_ok_Foo_03, label %unboxing_1_Foo_0
;#######################################; <- case_Foo__Foo_0


;#######################################; -> typcase_ok_Foo_03
typcase_ok_Foo_03:
  %VR50 = icmp eq i32 %VR48,  2
  br i1 %VR50, label %typcase_ok_Foo_04, label %unboxing_1_Foo_0
;#######################################; <- typcase_ok_Foo_03


;#######################################; -> typcase_ok_Foo_04
typcase_ok_Foo_04:
  br label %after_unbox_1_Foo_0
;#######################################; <- typcase_ok_Foo_04


;#######################################; -> unboxing_1_Foo_0
unboxing_1_Foo_0:
  %VR51 = add i32 %VR36, 12
  %VR52 = inttoptr i32 %VR51 to i32*
  %VR53 = load i32* %VR52
  br label %after_unbox_1_Foo_0
;#######################################; <- unboxing_1_Foo_0


;#######################################; -> after_unbox_1_Foo_0
after_unbox_1_Foo_0:
;- typcase -- new -
;; -> new: linia 6
  %VR54 = call i32  @Object__copy(i32 ptrtoint (%struct.Razz_protObj_t* @Razz_protObj to i32))
  call void @Razz_init(i32 %VR54)
;; <- new: linia 6
  %VR2.1 = add i32 %VR54, 0
  br label %phi_1_sfarsit_case_Foo_0
;#######################################; <- after_unbox_1_Foo_0


;#######################################; -> phi_1_sfarsit_case_Foo_0
phi_1_sfarsit_case_Foo_0:
  br label %sfarsit_case_Foo_0
;#######################################; <- phi_1_sfarsit_case_Foo_0


;#######################################; -> case_Bar__Foo_0
case_Bar__Foo_0:
  %VR55 = call i32  @Object__copy(i32 %VR3)
  %VR56 = add i32 6, 0
  %VR57 = ptrtoint %struct.Bar_protObj_t* @Bar_protObj to i32 
  %VR58 = add i32 %VR57, 8
  %VR59 = inttoptr i32 %VR58 to i32*
  %VR60 = load i32* %VR59
  %VR61 = add i32 %VR55, 0
  %VR62 = inttoptr i32 %VR61 to i32*
  store i32 %VR56, i32* %VR62
  %VR63 = add i32 %VR55, 0
  %VR64 = inttoptr i32 %VR63 to i32*
  store i32 %VR60, i32* %VR64
  %VR65 = add i32 %VR55, 0
  %VR66 = inttoptr i32 %VR65 to i32*
  %VR67 = load i32* %VR66
  %VR68 = icmp eq i32 %VR67,  1
  br i1 %VR68, label %typcase_ok_Foo_05, label %unboxing_2_Foo_0
;#######################################; <- case_Bar__Foo_0


;#######################################; -> typcase_ok_Foo_05
typcase_ok_Foo_05:
  %VR69 = icmp eq i32 %VR67,  2
  br i1 %VR69, label %typcase_ok_Foo_06, label %unboxing_2_Foo_0
;#######################################; <- typcase_ok_Foo_05


;#######################################; -> typcase_ok_Foo_06
typcase_ok_Foo_06:
  br label %after_unbox_2_Foo_0
;#######################################; <- typcase_ok_Foo_06


;#######################################; -> unboxing_2_Foo_0
unboxing_2_Foo_0:
  %VR70 = add i32 %VR55, 12
  %VR71 = inttoptr i32 %VR70 to i32*
  %VR72 = load i32* %VR71
  br label %after_unbox_2_Foo_0
;#######################################; <- unboxing_2_Foo_0


;#######################################; -> after_unbox_2_Foo_0
after_unbox_2_Foo_0:
;- typcase -- object -
;; -> object: linia 7
;; <- object: linia 7
  %VR2.2 = add i32 %VR3, 0
  br label %phi_2_sfarsit_case_Foo_0
;#######################################; <- after_unbox_2_Foo_0


;#######################################; -> phi_2_sfarsit_case_Foo_0
phi_2_sfarsit_case_Foo_0:
  br label %sfarsit_case_Foo_0
;#######################################; <- phi_2_sfarsit_case_Foo_0


;#######################################; -> case_0_noAlternativeFoo_0
case_0_noAlternativeFoo_0:
  call void @_case_abort(i32 %VR3)
  ret void
;#######################################; <- case_0_noAlternativeFoo_0


;#######################################; -> sfarsit_case_Foo_0
sfarsit_case_Foo_0:
  %VR2 = phi i32 [ %VR2.0, %phi_0_sfarsit_case_Foo_0] , [ %VR2.1, %phi_1_sfarsit_case_Foo_0] , [ %VR2.2, %phi_2_sfarsit_case_Foo_0]
;; <- typcase: linia 4
  %VR73 = add i32 %ARG, 24
  %VR74 = inttoptr i32 %VR73 to i32*
  store i32 %VR2, i32* %VR74
;- plus -
;; -> plus: linia 10
;- plus -- plus -
;; -> plus: linia 10
;- plus -- plus -- plus -
;; -> plus: linia 10
;- plus -- plus -- plus -- dispatch -
;; -> dispatch: linia 10
;;generez codul pentru apelul metodei doh
;- plus -- plus -- plus -- dispatch -- object -
;; -> object: linia 10
  %VR75 = add i32 %ARG, 24
  %VR76 = inttoptr i32 %VR75 to i32*
  %VR77 = load i32* %VR76
;; <- object: linia 10
  %VR78 = inttoptr i32 %VR77 to i32*
  %VR79 = icmp eq i32* %VR78,  null
  br i1 %VR79, label %false_dispatch0, label %dispatch_not_void_Foo_0
;#######################################; <- sfarsit_case_Foo_0


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret void
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Foo_0
dispatch_not_void_Foo_0:
  %VR80 = ptrtoint i32* %VR78 to i32 
  %VR81 = add i32 %VR80, 8
  %VR82 = inttoptr i32 %VR81 to i32*
  %VR83 = load i32* %VR82
  %VR84 = add i32 %VR83, 32
  %VR85 = inttoptr i32 %VR84 to i32*
  %VR86 = load i32* %VR85
  %VR87 = inttoptr i32 %VR86 to i32 (i32)*
  %VR88 = call i32 (i32)* %VR87(i32 %VR77)
;; <- dispatch: linia 10
;- plus -- plus -- plus -- dispatch -
;; -> dispatch: linia 10
;;generez codul pentru apelul metodei doh
;- plus -- plus -- plus -- dispatch -- object -
;; -> object: linia 10
  %VR89 = add i32 %ARG, 16
  %VR90 = inttoptr i32 %VR89 to i32*
  %VR91 = load i32* %VR90
;; <- object: linia 10
  %VR92 = inttoptr i32 %VR91 to i32*
  %VR93 = icmp eq i32* %VR92,  null
  br i1 %VR93, label %false_dispatch1, label %dispatch_not_void_Foo_1
;#######################################; <- dispatch_not_void_Foo_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret void
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Foo_1
dispatch_not_void_Foo_1:
  %VR94 = ptrtoint i32* %VR92 to i32 
  %VR95 = add i32 %VR94, 8
  %VR96 = inttoptr i32 %VR95 to i32*
  %VR97 = load i32* %VR96
  %VR98 = add i32 %VR97, 32
  %VR99 = inttoptr i32 %VR98 to i32*
  %VR100 = load i32* %VR99
  %VR101 = inttoptr i32 %VR100 to i32 (i32)*
  %VR102 = call i32 (i32)* %VR101(i32 %VR91)
;; <- dispatch: linia 10
  %VR103 = add i32 %VR88, %VR102
;; <- plus: linia 10
;- plus -- plus -- dispatch -
;; -> dispatch: linia 10
;;generez codul pentru apelul metodei doh
;- plus -- plus -- dispatch -- object -
;; -> object: linia 10
;; <- object: linia 10
  %VR104 = icmp eq i32* %VR0,  null
  br i1 %VR104, label %false_dispatch2, label %dispatch_not_void_Foo_2
;#######################################; <- dispatch_not_void_Foo_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret void
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Foo_2
dispatch_not_void_Foo_2:
  %VR105 = ptrtoint i32* %VR0 to i32 
  %VR106 = add i32 %VR105, 8
  %VR107 = inttoptr i32 %VR106 to i32*
  %VR108 = load i32* %VR107
  %VR109 = add i32 %VR108, 32
  %VR110 = inttoptr i32 %VR109 to i32*
  %VR111 = load i32* %VR110
  %VR112 = inttoptr i32 %VR111 to i32 (i32)*
  %VR113 = call i32 (i32)* %VR112(i32 %ARG)
;; <- dispatch: linia 10
  %VR114 = add i32 %VR103, %VR113
;; <- plus: linia 10
;- plus -- dispatch -
;; -> dispatch: linia 10
;;generez codul pentru apelul metodei printh
;- plus -- dispatch -- object -
;; -> object: linia 10
;; <- object: linia 10
  %VR115 = icmp eq i32* %VR0,  null
  br i1 %VR115, label %false_dispatch3, label %dispatch_not_void_Foo_3
;#######################################; <- dispatch_not_void_Foo_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret void
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Foo_3
dispatch_not_void_Foo_3:
  %VR116 = ptrtoint i32* %VR0 to i32 
  %VR117 = add i32 %VR116, 8
  %VR118 = inttoptr i32 %VR117 to i32*
  %VR119 = load i32* %VR118
  %VR120 = add i32 %VR119, 28
  %VR121 = inttoptr i32 %VR120 to i32*
  %VR122 = load i32* %VR121
  %VR123 = inttoptr i32 %VR122 to i32 (i32)*
  %VR124 = call i32 (i32)* %VR123(i32 %ARG)
;; <- dispatch: linia 10
  %VR125 = add i32 %VR114, %VR124
;; <- plus: linia 10
  %VR126 = add i32 %ARG, 28
  %VR127 = inttoptr i32 %VR126 to i32*
  store i32 %VR125, i32* %VR127
  ret void
;#######################################; <- dispatch_not_void_Foo_3


}
define i32 @Foo__doh(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Foo_protObj_t*
;- let -
;; -> let: linia 12
;- let -- object -
;; -> object: linia 12
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 12
;- let -- block -
;; -> block: linia 12
;- let -- block -- assign -
;; -> assign: linia 12
;- let -- block -- assign -- plus -
;; -> plus: linia 12
;- let -- block -- assign -- plus -- object -
;; -> object: linia 12
  %VR4 = add i32 %ARG, 12
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
;; <- object: linia 12
;- let -- block -- assign -- plus -- int_const -
;; -> int_const: linia 12
  %VR7 = add i32 2, 0
;; <- int_const: linia 12
  %VR8 = add i32 %VR6, %VR7
;; <- plus: linia 12
  %VR9 = add i32 %ARG, 12
  %VR10 = inttoptr i32 %VR9 to i32*
  store i32 %VR8, i32* %VR10
;; <- assign: linia 12
;- let -- block -- object -
;; -> object: linia 12
;; <- object: linia 12
;; <- block: linia 12
;; <- let: linia 12
  ret i32 %VR3
;#######################################; <- entry


}
define void @Bar_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Razz_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- dispatch -
;; -> dispatch: linia 18
;;generez codul pentru apelul metodei doh
;- dispatch -- object -
;; -> object: linia 18
;; <- object: linia 18
  %VR1 = icmp eq i32* %VR0,  null
  br i1 %VR1, label %false_dispatch0, label %dispatch_not_void_Bar_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__5 to i32))
  ret void
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Bar_0
dispatch_not_void_Bar_0:
  %VR2 = ptrtoint i32* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 32
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 18
  %VR11 = add i32 %ARG, 40
  %VR12 = inttoptr i32 %VR11 to i32*
  store i32 %VR10, i32* %VR12
;- dispatch -
;; -> dispatch: linia 20
;;generez codul pentru apelul metodei printh
;- dispatch -- object -
;; -> object: linia 20
;; <- object: linia 20
  %VR13 = icmp eq i32* %VR0,  null
  br i1 %VR13, label %false_dispatch1, label %dispatch_not_void_Bar_1
;#######################################; <- dispatch_not_void_Bar_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret void
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Bar_1
dispatch_not_void_Bar_1:
  %VR14 = ptrtoint i32* %VR0 to i32 
  %VR15 = add i32 %VR14, 8
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
  %VR18 = add i32 %VR17, 28
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
  %VR21 = inttoptr i32 %VR20 to i32 (i32)*
  %VR22 = call i32 (i32)* %VR21(i32 %ARG)
;; <- dispatch: linia 20
;boxing to int
  %VR23 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR24 = add i32 %VR23, 12
  %VR25 = inttoptr i32 %VR24 to i32*
  store i32 %VR22, i32* %VR25
  %VR26 = add i32 %ARG, 44
  %VR27 = inttoptr i32 %VR26 to i32*
  store i32 %VR23, i32* %VR27
  ret void
;#######################################; <- dispatch_not_void_Bar_1


}
define void @Razz_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Foo_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- typcase -
;; -> typcase: linia 26
;- typcase -- object -
;; -> object: linia 26
;; <- object: linia 26
  %VR1 = icmp eq i32* %VR0,  null
  br i1 %VR1, label %false_typcase00, label %case_not_void_Razz_0
;#######################################; <- entry


;#######################################; -> false_typcase00
false_typcase00:
  call void @_case_abort2(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__7 to i32))
  ret void
;#######################################; <- false_typcase00


;#######################################; -> case_not_void_Razz_0
case_not_void_Razz_0:
;;rezerv %VR2 pentru rezultatul case-ului
  %VR3 = ptrtoint i32* %VR0 to i32 
  %VR4 = add i32 %VR3, 0
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = icmp eq i32 %VR6,  0
  br i1 %VR7, label %case_0_noAlternativeRazz_0, label %next0_case_0_noAlternativeRazz_0
;#######################################; <- case_not_void_Razz_0


;#######################################; -> next0_case_0_noAlternativeRazz_0
next0_case_0_noAlternativeRazz_0:
  %VR8 = icmp eq i32 %VR6,  1
  br i1 %VR8, label %case_0_noAlternativeRazz_0, label %next1_case_0_noAlternativeRazz_0
;#######################################; <- next0_case_0_noAlternativeRazz_0


;#######################################; -> next1_case_0_noAlternativeRazz_0
next1_case_0_noAlternativeRazz_0:
  %VR9 = icmp eq i32 %VR6,  2
  br i1 %VR9, label %case_0_noAlternativeRazz_0, label %next2_case_0_noAlternativeRazz_0
;#######################################; <- next1_case_0_noAlternativeRazz_0


;#######################################; -> next2_case_0_noAlternativeRazz_0
next2_case_0_noAlternativeRazz_0:
  %VR10 = icmp eq i32 %VR6,  3
  br i1 %VR10, label %case_0_noAlternativeRazz_0, label %next3_case_0_noAlternativeRazz_0
;#######################################; <- next2_case_0_noAlternativeRazz_0


;#######################################; -> next3_case_0_noAlternativeRazz_0
next3_case_0_noAlternativeRazz_0:
  %VR11 = icmp eq i32 %VR6,  4
  br i1 %VR11, label %case_0_noAlternativeRazz_0, label %next4_case_0_noAlternativeRazz_0
;#######################################; <- next3_case_0_noAlternativeRazz_0


;#######################################; -> next4_case_0_noAlternativeRazz_0
next4_case_0_noAlternativeRazz_0:
  %VR12 = icmp eq i32 %VR6,  5
  br i1 %VR12, label %case_0_noAlternativeRazz_0, label %next5_case_0_noAlternativeRazz_0
;#######################################; <- next4_case_0_noAlternativeRazz_0


;#######################################; -> next5_case_0_noAlternativeRazz_0
next5_case_0_noAlternativeRazz_0:
  %VR13 = icmp eq i32 %VR6,  6
  br i1 %VR13, label %case_Bar__Razz_0, label %next6_case_Bar__Razz_0
;#######################################; <- next5_case_0_noAlternativeRazz_0


;#######################################; -> next6_case_Bar__Razz_0
next6_case_Bar__Razz_0:
  %VR14 = icmp eq i32 %VR6,  7
  br i1 %VR14, label %case_Razz__Razz_0, label %next7_case_Razz__Razz_0
;#######################################; <- next6_case_Bar__Razz_0


;#######################################; -> next7_case_Razz__Razz_0
next7_case_Razz__Razz_0:
  %VR15 = icmp eq i32 %VR6,  8
  br i1 %VR15, label %case_0_noAlternativeRazz_0, label %next8_case_0_noAlternativeRazz_0
;#######################################; <- next7_case_Razz__Razz_0


;#######################################; -> next8_case_0_noAlternativeRazz_0
next8_case_0_noAlternativeRazz_0:
  %VR16 = icmp eq i32 %VR6,  9
  br i1 %VR16, label %case_0_noAlternativeRazz_0, label %next9_case_0_noAlternativeRazz_0
;#######################################; <- next8_case_0_noAlternativeRazz_0


;#######################################; -> next9_case_0_noAlternativeRazz_0
next9_case_0_noAlternativeRazz_0:
  br label %case_Razz__Razz_0
;#######################################; <- next9_case_0_noAlternativeRazz_0


;#######################################; -> case_Razz__Razz_0
case_Razz__Razz_0:
  %VR17 = call i32  @Object__copy(i32 %VR3)
  %VR18 = add i32 7, 0
  %VR19 = ptrtoint %struct.Razz_protObj_t* @Razz_protObj to i32 
  %VR20 = add i32 %VR19, 8
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
  %VR23 = add i32 %VR17, 0
  %VR24 = inttoptr i32 %VR23 to i32*
  store i32 %VR18, i32* %VR24
  %VR25 = add i32 %VR17, 0
  %VR26 = inttoptr i32 %VR25 to i32*
  store i32 %VR22, i32* %VR26
  %VR27 = add i32 %VR17, 0
  %VR28 = inttoptr i32 %VR27 to i32*
  %VR29 = load i32* %VR28
  %VR30 = icmp eq i32 %VR29,  1
  br i1 %VR30, label %typcase_ok_Razz_01, label %unboxing_0_Razz_0
;#######################################; <- case_Razz__Razz_0


;#######################################; -> typcase_ok_Razz_01
typcase_ok_Razz_01:
  %VR31 = icmp eq i32 %VR29,  2
  br i1 %VR31, label %typcase_ok_Razz_02, label %unboxing_0_Razz_0
;#######################################; <- typcase_ok_Razz_01


;#######################################; -> typcase_ok_Razz_02
typcase_ok_Razz_02:
  br label %after_unbox_0_Razz_0
;#######################################; <- typcase_ok_Razz_02


;#######################################; -> unboxing_0_Razz_0
unboxing_0_Razz_0:
  %VR32 = add i32 %VR17, 12
  %VR33 = inttoptr i32 %VR32 to i32*
  %VR34 = load i32* %VR33
  br label %after_unbox_0_Razz_0
;#######################################; <- unboxing_0_Razz_0


;#######################################; -> after_unbox_0_Razz_0
after_unbox_0_Razz_0:
;- typcase -- new -
;; -> new: linia 27
  %VR35 = call i32  @Object__copy(i32 ptrtoint (%struct.Bar_protObj_t* @Bar_protObj to i32))
  call void @Bar_init(i32 %VR35)
;; <- new: linia 27
  %VR2.0 = add i32 %VR35, 0
  br label %phi_0_sfarsit_case_Razz_0
;#######################################; <- after_unbox_0_Razz_0


;#######################################; -> phi_0_sfarsit_case_Razz_0
phi_0_sfarsit_case_Razz_0:
  br label %sfarsit_case_Razz_0
;#######################################; <- phi_0_sfarsit_case_Razz_0


;#######################################; -> case_Bar__Razz_0
case_Bar__Razz_0:
  %VR36 = call i32  @Object__copy(i32 %VR3)
  %VR37 = add i32 6, 0
  %VR38 = ptrtoint %struct.Bar_protObj_t* @Bar_protObj to i32 
  %VR39 = add i32 %VR38, 8
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = load i32* %VR40
  %VR42 = add i32 %VR36, 0
  %VR43 = inttoptr i32 %VR42 to i32*
  store i32 %VR37, i32* %VR43
  %VR44 = add i32 %VR36, 0
  %VR45 = inttoptr i32 %VR44 to i32*
  store i32 %VR41, i32* %VR45
  %VR46 = add i32 %VR36, 0
  %VR47 = inttoptr i32 %VR46 to i32*
  %VR48 = load i32* %VR47
  %VR49 = icmp eq i32 %VR48,  1
  br i1 %VR49, label %typcase_ok_Razz_03, label %unboxing_1_Razz_0
;#######################################; <- case_Bar__Razz_0


;#######################################; -> typcase_ok_Razz_03
typcase_ok_Razz_03:
  %VR50 = icmp eq i32 %VR48,  2
  br i1 %VR50, label %typcase_ok_Razz_04, label %unboxing_1_Razz_0
;#######################################; <- typcase_ok_Razz_03


;#######################################; -> typcase_ok_Razz_04
typcase_ok_Razz_04:
  br label %after_unbox_1_Razz_0
;#######################################; <- typcase_ok_Razz_04


;#######################################; -> unboxing_1_Razz_0
unboxing_1_Razz_0:
  %VR51 = add i32 %VR36, 12
  %VR52 = inttoptr i32 %VR51 to i32*
  %VR53 = load i32* %VR52
  br label %after_unbox_1_Razz_0
;#######################################; <- unboxing_1_Razz_0


;#######################################; -> after_unbox_1_Razz_0
after_unbox_1_Razz_0:
;- typcase -- object -
;; -> object: linia 28
;; <- object: linia 28
  %VR2.1 = add i32 %VR3, 0
  br label %phi_1_sfarsit_case_Razz_0
;#######################################; <- after_unbox_1_Razz_0


;#######################################; -> phi_1_sfarsit_case_Razz_0
phi_1_sfarsit_case_Razz_0:
  br label %sfarsit_case_Razz_0
;#######################################; <- phi_1_sfarsit_case_Razz_0


;#######################################; -> case_0_noAlternativeRazz_0
case_0_noAlternativeRazz_0:
  call void @_case_abort(i32 %VR3)
  ret void
;#######################################; <- case_0_noAlternativeRazz_0


;#######################################; -> sfarsit_case_Razz_0
sfarsit_case_Razz_0:
  %VR2 = phi i32 [ %VR2.0, %phi_0_sfarsit_case_Razz_0] , [ %VR2.1, %phi_1_sfarsit_case_Razz_0]
;; <- typcase: linia 26
  %VR54 = add i32 %ARG, 32
  %VR55 = inttoptr i32 %VR54 to i32*
  store i32 %VR2, i32* %VR55
;- plus -
;; -> plus: linia 31
;- plus -- plus -
;; -> plus: linia 31
;- plus -- plus -- plus -
;; -> plus: linia 31
;- plus -- plus -- plus -- plus -
;; -> plus: linia 31
;- plus -- plus -- plus -- plus -- static_dispatch -
;; -> static_dispatch: linia 31
;;generez codul pentru apelul metodei doh
;- plus -- plus -- plus -- plus -- static_dispatch -- object -
;; -> object: linia 31
  %VR56 = add i32 %ARG, 24
  %VR57 = inttoptr i32 %VR56 to i32*
  %VR58 = load i32* %VR57
;; <- object: linia 31
  %VR59 = inttoptr i32 %VR58 to i32*
  %VR60 = icmp eq i32* %VR59,  null
  br i1 %VR60, label %false_static_dispatch0, label %dispatch_not_void_Razz_0
;#######################################; <- sfarsit_case_Razz_0


;#######################################; -> false_static_dispatch0
false_static_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__8 to i32))
  ret void
;#######################################; <- false_static_dispatch0


;#######################################; -> dispatch_not_void_Razz_0
dispatch_not_void_Razz_0:
  %VR61 = ptrtoint %struct.Bazz_protObj_t* @Bazz_protObj to i32 
  %VR62 = add i32 %VR61, 8
  %VR63 = inttoptr i32 %VR62 to i32*
  %VR64 = load i32* %VR63
  %VR65 = add i32 %VR64, 32
  %VR66 = inttoptr i32 %VR65 to i32*
  %VR67 = load i32* %VR66
  %VR68 = inttoptr i32 %VR67 to i32 (i32)*
  %VR69 = call i32 (i32)* %VR68(i32 %VR58)
;; <- static_dispatch: linia 31
;- plus -- plus -- plus -- plus -- dispatch -
;; -> dispatch: linia 31
;;generez codul pentru apelul metodei doh
;- plus -- plus -- plus -- plus -- dispatch -- object -
;; -> object: linia 31
  %VR70 = add i32 %ARG, 16
  %VR71 = inttoptr i32 %VR70 to i32*
  %VR72 = load i32* %VR71
;; <- object: linia 31
  %VR73 = inttoptr i32 %VR72 to i32*
  %VR74 = icmp eq i32* %VR73,  null
  br i1 %VR74, label %false_dispatch1, label %dispatch_not_void_Razz_1
;#######################################; <- dispatch_not_void_Razz_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__8 to i32))
  ret void
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Razz_1
dispatch_not_void_Razz_1:
  %VR75 = ptrtoint i32* %VR73 to i32 
  %VR76 = add i32 %VR75, 8
  %VR77 = inttoptr i32 %VR76 to i32*
  %VR78 = load i32* %VR77
  %VR79 = add i32 %VR78, 32
  %VR80 = inttoptr i32 %VR79 to i32*
  %VR81 = load i32* %VR80
  %VR82 = inttoptr i32 %VR81 to i32 (i32)*
  %VR83 = call i32 (i32)* %VR82(i32 %VR72)
;; <- dispatch: linia 31
  %VR84 = add i32 %VR69, %VR83
;; <- plus: linia 31
;- plus -- plus -- plus -- dispatch -
;; -> dispatch: linia 31
;;generez codul pentru apelul metodei doh
;- plus -- plus -- plus -- dispatch -- object -
;; -> object: linia 31
  %VR85 = add i32 %ARG, 32
  %VR86 = inttoptr i32 %VR85 to i32*
  %VR87 = load i32* %VR86
;; <- object: linia 31
  %VR88 = inttoptr i32 %VR87 to i32*
  %VR89 = icmp eq i32* %VR88,  null
  br i1 %VR89, label %false_dispatch2, label %dispatch_not_void_Razz_2
;#######################################; <- dispatch_not_void_Razz_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__8 to i32))
  ret void
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Razz_2
dispatch_not_void_Razz_2:
  %VR90 = ptrtoint i32* %VR88 to i32 
  %VR91 = add i32 %VR90, 8
  %VR92 = inttoptr i32 %VR91 to i32*
  %VR93 = load i32* %VR92
  %VR94 = add i32 %VR93, 32
  %VR95 = inttoptr i32 %VR94 to i32*
  %VR96 = load i32* %VR95
  %VR97 = inttoptr i32 %VR96 to i32 (i32)*
  %VR98 = call i32 (i32)* %VR97(i32 %VR87)
;; <- dispatch: linia 31
  %VR99 = add i32 %VR84, %VR98
;; <- plus: linia 31
;- plus -- plus -- dispatch -
;; -> dispatch: linia 31
;;generez codul pentru apelul metodei doh
;- plus -- plus -- dispatch -- object -
;; -> object: linia 31
;; <- object: linia 31
  %VR100 = icmp eq i32* %VR0,  null
  br i1 %VR100, label %false_dispatch3, label %dispatch_not_void_Razz_3
;#######################################; <- dispatch_not_void_Razz_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__8 to i32))
  ret void
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Razz_3
dispatch_not_void_Razz_3:
  %VR101 = ptrtoint i32* %VR0 to i32 
  %VR102 = add i32 %VR101, 8
  %VR103 = inttoptr i32 %VR102 to i32*
  %VR104 = load i32* %VR103
  %VR105 = add i32 %VR104, 32
  %VR106 = inttoptr i32 %VR105 to i32*
  %VR107 = load i32* %VR106
  %VR108 = inttoptr i32 %VR107 to i32 (i32)*
  %VR109 = call i32 (i32)* %VR108(i32 %ARG)
;; <- dispatch: linia 31
  %VR110 = add i32 %VR99, %VR109
;; <- plus: linia 31
;- plus -- dispatch -
;; -> dispatch: linia 31
;;generez codul pentru apelul metodei printh
;- plus -- dispatch -- object -
;; -> object: linia 31
;; <- object: linia 31
  %VR111 = icmp eq i32* %VR0,  null
  br i1 %VR111, label %false_dispatch4, label %dispatch_not_void_Razz_4
;#######################################; <- dispatch_not_void_Razz_3


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__8 to i32))
  ret void
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Razz_4
dispatch_not_void_Razz_4:
  %VR112 = ptrtoint i32* %VR0 to i32 
  %VR113 = add i32 %VR112, 8
  %VR114 = inttoptr i32 %VR113 to i32*
  %VR115 = load i32* %VR114
  %VR116 = add i32 %VR115, 28
  %VR117 = inttoptr i32 %VR116 to i32*
  %VR118 = load i32* %VR117
  %VR119 = inttoptr i32 %VR118 to i32 (i32)*
  %VR120 = call i32 (i32)* %VR119(i32 %ARG)
;; <- dispatch: linia 31
  %VR121 = add i32 %VR110, %VR120
;; <- plus: linia 31
  %VR122 = add i32 %ARG, 36
  %VR123 = inttoptr i32 %VR122 to i32*
  store i32 %VR121, i32* %VR123
  ret void
;#######################################; <- dispatch_not_void_Razz_4


}
define void @Bazz_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- int_const -
;; -> int_const: linia 37
  %VR1 = add i32 1, 0
;; <- int_const: linia 37
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
;- typcase -
;; -> typcase: linia 39
;- typcase -- object -
;; -> object: linia 39
;; <- object: linia 39
  %VR4 = icmp eq i32* %VR0,  null
  br i1 %VR4, label %false_typcase00, label %case_not_void_Bazz_0
;#######################################; <- entry


;#######################################; -> false_typcase00
false_typcase00:
  call void @_case_abort2(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__9 to i32))
  ret void
;#######################################; <- false_typcase00


;#######################################; -> case_not_void_Bazz_0
case_not_void_Bazz_0:
;;rezerv %VR5 pentru rezultatul case-ului
  %VR6 = ptrtoint i32* %VR0 to i32 
  %VR7 = add i32 %VR6, 0
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = icmp eq i32 %VR9,  0
  br i1 %VR10, label %case_0_noAlternativeBazz_0, label %next0_case_0_noAlternativeBazz_0
;#######################################; <- case_not_void_Bazz_0


;#######################################; -> next0_case_0_noAlternativeBazz_0
next0_case_0_noAlternativeBazz_0:
  %VR11 = icmp eq i32 %VR9,  1
  br i1 %VR11, label %case_0_noAlternativeBazz_0, label %next1_case_0_noAlternativeBazz_0
;#######################################; <- next0_case_0_noAlternativeBazz_0


;#######################################; -> next1_case_0_noAlternativeBazz_0
next1_case_0_noAlternativeBazz_0:
  %VR12 = icmp eq i32 %VR9,  2
  br i1 %VR12, label %case_0_noAlternativeBazz_0, label %next2_case_0_noAlternativeBazz_0
;#######################################; <- next1_case_0_noAlternativeBazz_0


;#######################################; -> next2_case_0_noAlternativeBazz_0
next2_case_0_noAlternativeBazz_0:
  %VR13 = icmp eq i32 %VR9,  3
  br i1 %VR13, label %case_0_noAlternativeBazz_0, label %next3_case_0_noAlternativeBazz_0
;#######################################; <- next2_case_0_noAlternativeBazz_0


;#######################################; -> next3_case_0_noAlternativeBazz_0
next3_case_0_noAlternativeBazz_0:
  %VR14 = icmp eq i32 %VR9,  4
  br i1 %VR14, label %case_0_noAlternativeBazz_0, label %next4_case_0_noAlternativeBazz_0
;#######################################; <- next3_case_0_noAlternativeBazz_0


;#######################################; -> next4_case_0_noAlternativeBazz_0
next4_case_0_noAlternativeBazz_0:
  %VR15 = icmp eq i32 %VR9,  5
  br i1 %VR15, label %case_Foo__Bazz_0, label %next5_case_Foo__Bazz_0
;#######################################; <- next4_case_0_noAlternativeBazz_0


;#######################################; -> next5_case_Foo__Bazz_0
next5_case_Foo__Bazz_0:
  %VR16 = icmp eq i32 %VR9,  6
  br i1 %VR16, label %case_Bar__Bazz_0, label %next6_case_Bar__Bazz_0
;#######################################; <- next5_case_Foo__Bazz_0


;#######################################; -> next6_case_Bar__Bazz_0
next6_case_Bar__Bazz_0:
  %VR17 = icmp eq i32 %VR9,  7
  br i1 %VR17, label %case_Razz__Bazz_0, label %next7_case_Razz__Bazz_0
;#######################################; <- next6_case_Bar__Bazz_0


;#######################################; -> next7_case_Razz__Bazz_0
next7_case_Razz__Bazz_0:
  %VR18 = icmp eq i32 %VR9,  8
  br i1 %VR18, label %case_Bazz__Bazz_0, label %next8_case_Bazz__Bazz_0
;#######################################; <- next7_case_Razz__Bazz_0


;#######################################; -> next8_case_Bazz__Bazz_0
next8_case_Bazz__Bazz_0:
  %VR19 = icmp eq i32 %VR9,  9
  br i1 %VR19, label %case_0_noAlternativeBazz_0, label %next9_case_0_noAlternativeBazz_0
;#######################################; <- next8_case_Bazz__Bazz_0


;#######################################; -> next9_case_0_noAlternativeBazz_0
next9_case_0_noAlternativeBazz_0:
  br label %case_Bazz__Bazz_0
;#######################################; <- next9_case_0_noAlternativeBazz_0


;#######################################; -> case_Bazz__Bazz_0
case_Bazz__Bazz_0:
  %VR20 = call i32  @Object__copy(i32 %VR6)
  %VR21 = add i32 8, 0
  %VR22 = ptrtoint %struct.Bazz_protObj_t* @Bazz_protObj to i32 
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
  br i1 %VR33, label %typcase_ok_Bazz_01, label %unboxing_0_Bazz_0
;#######################################; <- case_Bazz__Bazz_0


;#######################################; -> typcase_ok_Bazz_01
typcase_ok_Bazz_01:
  %VR34 = icmp eq i32 %VR32,  2
  br i1 %VR34, label %typcase_ok_Bazz_02, label %unboxing_0_Bazz_0
;#######################################; <- typcase_ok_Bazz_01


;#######################################; -> typcase_ok_Bazz_02
typcase_ok_Bazz_02:
  br label %after_unbox_0_Bazz_0
;#######################################; <- typcase_ok_Bazz_02


;#######################################; -> unboxing_0_Bazz_0
unboxing_0_Bazz_0:
  %VR35 = add i32 %VR20, 12
  %VR36 = inttoptr i32 %VR35 to i32*
  %VR37 = load i32* %VR36
  br label %after_unbox_0_Bazz_0
;#######################################; <- unboxing_0_Bazz_0


;#######################################; -> after_unbox_0_Bazz_0
after_unbox_0_Bazz_0:
;- typcase -- new -
;; -> new: linia 40
  %VR38 = call i32  @Object__copy(i32 ptrtoint (%struct.Foo_protObj_t* @Foo_protObj to i32))
  call void @Foo_init(i32 %VR38)
;; <- new: linia 40
  %VR5.0 = add i32 %VR38, 0
  br label %phi_0_sfarsit_case_Bazz_0
;#######################################; <- after_unbox_0_Bazz_0


;#######################################; -> phi_0_sfarsit_case_Bazz_0
phi_0_sfarsit_case_Bazz_0:
  br label %sfarsit_case_Bazz_0
;#######################################; <- phi_0_sfarsit_case_Bazz_0


;#######################################; -> case_Razz__Bazz_0
case_Razz__Bazz_0:
  %VR39 = call i32  @Object__copy(i32 %VR6)
  %VR40 = add i32 7, 0
  %VR41 = ptrtoint %struct.Razz_protObj_t* @Razz_protObj to i32 
  %VR42 = add i32 %VR41, 8
  %VR43 = inttoptr i32 %VR42 to i32*
  %VR44 = load i32* %VR43
  %VR45 = add i32 %VR39, 0
  %VR46 = inttoptr i32 %VR45 to i32*
  store i32 %VR40, i32* %VR46
  %VR47 = add i32 %VR39, 0
  %VR48 = inttoptr i32 %VR47 to i32*
  store i32 %VR44, i32* %VR48
  %VR49 = add i32 %VR39, 0
  %VR50 = inttoptr i32 %VR49 to i32*
  %VR51 = load i32* %VR50
  %VR52 = icmp eq i32 %VR51,  1
  br i1 %VR52, label %typcase_ok_Bazz_03, label %unboxing_1_Bazz_0
;#######################################; <- case_Razz__Bazz_0


;#######################################; -> typcase_ok_Bazz_03
typcase_ok_Bazz_03:
  %VR53 = icmp eq i32 %VR51,  2
  br i1 %VR53, label %typcase_ok_Bazz_04, label %unboxing_1_Bazz_0
;#######################################; <- typcase_ok_Bazz_03


;#######################################; -> typcase_ok_Bazz_04
typcase_ok_Bazz_04:
  br label %after_unbox_1_Bazz_0
;#######################################; <- typcase_ok_Bazz_04


;#######################################; -> unboxing_1_Bazz_0
unboxing_1_Bazz_0:
  %VR54 = add i32 %VR39, 12
  %VR55 = inttoptr i32 %VR54 to i32*
  %VR56 = load i32* %VR55
  br label %after_unbox_1_Bazz_0
;#######################################; <- unboxing_1_Bazz_0


;#######################################; -> after_unbox_1_Bazz_0
after_unbox_1_Bazz_0:
;- typcase -- new -
;; -> new: linia 41
  %VR57 = call i32  @Object__copy(i32 ptrtoint (%struct.Bar_protObj_t* @Bar_protObj to i32))
  call void @Bar_init(i32 %VR57)
;; <- new: linia 41
  %VR5.1 = add i32 %VR57, 0
  br label %phi_1_sfarsit_case_Bazz_0
;#######################################; <- after_unbox_1_Bazz_0


;#######################################; -> phi_1_sfarsit_case_Bazz_0
phi_1_sfarsit_case_Bazz_0:
  br label %sfarsit_case_Bazz_0
;#######################################; <- phi_1_sfarsit_case_Bazz_0


;#######################################; -> case_Foo__Bazz_0
case_Foo__Bazz_0:
  %VR58 = call i32  @Object__copy(i32 %VR6)
  %VR59 = add i32 5, 0
  %VR60 = ptrtoint %struct.Foo_protObj_t* @Foo_protObj to i32 
  %VR61 = add i32 %VR60, 8
  %VR62 = inttoptr i32 %VR61 to i32*
  %VR63 = load i32* %VR62
  %VR64 = add i32 %VR58, 0
  %VR65 = inttoptr i32 %VR64 to i32*
  store i32 %VR59, i32* %VR65
  %VR66 = add i32 %VR58, 0
  %VR67 = inttoptr i32 %VR66 to i32*
  store i32 %VR63, i32* %VR67
  %VR68 = add i32 %VR58, 0
  %VR69 = inttoptr i32 %VR68 to i32*
  %VR70 = load i32* %VR69
  %VR71 = icmp eq i32 %VR70,  1
  br i1 %VR71, label %typcase_ok_Bazz_05, label %unboxing_2_Bazz_0
;#######################################; <- case_Foo__Bazz_0


;#######################################; -> typcase_ok_Bazz_05
typcase_ok_Bazz_05:
  %VR72 = icmp eq i32 %VR70,  2
  br i1 %VR72, label %typcase_ok_Bazz_06, label %unboxing_2_Bazz_0
;#######################################; <- typcase_ok_Bazz_05


;#######################################; -> typcase_ok_Bazz_06
typcase_ok_Bazz_06:
  br label %after_unbox_2_Bazz_0
;#######################################; <- typcase_ok_Bazz_06


;#######################################; -> unboxing_2_Bazz_0
unboxing_2_Bazz_0:
  %VR73 = add i32 %VR58, 12
  %VR74 = inttoptr i32 %VR73 to i32*
  %VR75 = load i32* %VR74
  br label %after_unbox_2_Bazz_0
;#######################################; <- unboxing_2_Bazz_0


;#######################################; -> after_unbox_2_Bazz_0
after_unbox_2_Bazz_0:
;- typcase -- new -
;; -> new: linia 42
  %VR76 = call i32  @Object__copy(i32 ptrtoint (%struct.Razz_protObj_t* @Razz_protObj to i32))
  call void @Razz_init(i32 %VR76)
;; <- new: linia 42
  %VR5.2 = add i32 %VR76, 0
  br label %phi_2_sfarsit_case_Bazz_0
;#######################################; <- after_unbox_2_Bazz_0


;#######################################; -> phi_2_sfarsit_case_Bazz_0
phi_2_sfarsit_case_Bazz_0:
  br label %sfarsit_case_Bazz_0
;#######################################; <- phi_2_sfarsit_case_Bazz_0


;#######################################; -> case_Bar__Bazz_0
case_Bar__Bazz_0:
  %VR77 = call i32  @Object__copy(i32 %VR6)
  %VR78 = add i32 6, 0
  %VR79 = ptrtoint %struct.Bar_protObj_t* @Bar_protObj to i32 
  %VR80 = add i32 %VR79, 8
  %VR81 = inttoptr i32 %VR80 to i32*
  %VR82 = load i32* %VR81
  %VR83 = add i32 %VR77, 0
  %VR84 = inttoptr i32 %VR83 to i32*
  store i32 %VR78, i32* %VR84
  %VR85 = add i32 %VR77, 0
  %VR86 = inttoptr i32 %VR85 to i32*
  store i32 %VR82, i32* %VR86
  %VR87 = add i32 %VR77, 0
  %VR88 = inttoptr i32 %VR87 to i32*
  %VR89 = load i32* %VR88
  %VR90 = icmp eq i32 %VR89,  1
  br i1 %VR90, label %typcase_ok_Bazz_07, label %unboxing_3_Bazz_0
;#######################################; <- case_Bar__Bazz_0


;#######################################; -> typcase_ok_Bazz_07
typcase_ok_Bazz_07:
  %VR91 = icmp eq i32 %VR89,  2
  br i1 %VR91, label %typcase_ok_Bazz_08, label %unboxing_3_Bazz_0
;#######################################; <- typcase_ok_Bazz_07


;#######################################; -> typcase_ok_Bazz_08
typcase_ok_Bazz_08:
  br label %after_unbox_3_Bazz_0
;#######################################; <- typcase_ok_Bazz_08


;#######################################; -> unboxing_3_Bazz_0
unboxing_3_Bazz_0:
  %VR92 = add i32 %VR77, 12
  %VR93 = inttoptr i32 %VR92 to i32*
  %VR94 = load i32* %VR93
  br label %after_unbox_3_Bazz_0
;#######################################; <- unboxing_3_Bazz_0


;#######################################; -> after_unbox_3_Bazz_0
after_unbox_3_Bazz_0:
;- typcase -- object -
;; -> object: linia 43
;; <- object: linia 43
  %VR5.3 = add i32 %VR6, 0
  br label %phi_3_sfarsit_case_Bazz_0
;#######################################; <- after_unbox_3_Bazz_0


;#######################################; -> phi_3_sfarsit_case_Bazz_0
phi_3_sfarsit_case_Bazz_0:
  br label %sfarsit_case_Bazz_0
;#######################################; <- phi_3_sfarsit_case_Bazz_0


;#######################################; -> case_0_noAlternativeBazz_0
case_0_noAlternativeBazz_0:
  call void @_case_abort(i32 %VR6)
  ret void
;#######################################; <- case_0_noAlternativeBazz_0


;#######################################; -> sfarsit_case_Bazz_0
sfarsit_case_Bazz_0:
  %VR5 = phi i32 [ %VR5.0, %phi_0_sfarsit_case_Bazz_0] , [ %VR5.1, %phi_1_sfarsit_case_Bazz_0] , [ %VR5.2, %phi_2_sfarsit_case_Bazz_0] , [ %VR5.3, %phi_3_sfarsit_case_Bazz_0]
;; <- typcase: linia 39
  %VR95 = add i32 %ARG, 16
  %VR96 = inttoptr i32 %VR95 to i32*
  store i32 %VR5, i32* %VR96
;- dispatch -
;; -> dispatch: linia 46
;;generez codul pentru apelul metodei printh
;- dispatch -- object -
;; -> object: linia 46
;; <- object: linia 46
  %VR97 = icmp eq i32* %VR0,  null
  br i1 %VR97, label %false_dispatch0, label %dispatch_not_void_Bazz_0
;#######################################; <- sfarsit_case_Bazz_0


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__10 to i32))
  ret void
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Bazz_0
dispatch_not_void_Bazz_0:
  %VR98 = ptrtoint i32* %VR0 to i32 
  %VR99 = add i32 %VR98, 8
  %VR100 = inttoptr i32 %VR99 to i32*
  %VR101 = load i32* %VR100
  %VR102 = add i32 %VR101, 28
  %VR103 = inttoptr i32 %VR102 to i32*
  %VR104 = load i32* %VR103
  %VR105 = inttoptr i32 %VR104 to i32 (i32)*
  %VR106 = call i32 (i32)* %VR105(i32 %ARG)
;; <- dispatch: linia 46
;boxing to int
  %VR107 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR108 = add i32 %VR107, 12
  %VR109 = inttoptr i32 %VR108 to i32*
  store i32 %VR106, i32* %VR109
  %VR110 = add i32 %ARG, 20
  %VR111 = inttoptr i32 %VR110 to i32*
  store i32 %VR107, i32* %VR111
  ret void
;#######################################; <- dispatch_not_void_Bazz_0


}
define i32 @Bazz__printh(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Bazz_protObj_t*
;- block -
;; -> block: linia 48
;- block -- dispatch -
;; -> dispatch: linia 48
;;generez codul pentru apelul metodei out_int
;- block -- dispatch -- object -
;; -> object: linia 48
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 48
;- block -- dispatch -- object -
;; -> object: linia 48
;; <- object: linia 48
  %VR4 = icmp eq %struct.Bazz_protObj_t* %VR0,  null
  br i1 %VR4, label %false_dispatch1, label %dispatch_not_void_Bazz_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__11 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Bazz_1
dispatch_not_void_Bazz_1:
  %VR5 = ptrtoint %struct.Bazz_protObj_t* %VR0 to i32 
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
;; <- dispatch: linia 48
;- block -- int_const -
;; -> int_const: linia 48
  %VR17 = add i32 0, 0
;; <- int_const: linia 48
;; <- block: linia 48
  ret i32 %VR17
;#######################################; <- dispatch_not_void_Bazz_1


}
define i32 @Bazz__doh(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Bazz_protObj_t*
;- let -
;; -> let: linia 50
;- let -- object -
;; -> object: linia 50
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 50
;- let -- block -
;; -> block: linia 50
;- let -- block -- assign -
;; -> assign: linia 50
;- let -- block -- assign -- plus -
;; -> plus: linia 50
;- let -- block -- assign -- plus -- object -
;; -> object: linia 50
  %VR4 = add i32 %ARG, 12
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
;; <- object: linia 50
;- let -- block -- assign -- plus -- int_const -
;; -> int_const: linia 50
  %VR7 = add i32 1, 0
;; <- int_const: linia 50
  %VR8 = add i32 %VR6, %VR7
;; <- plus: linia 50
  %VR9 = add i32 %ARG, 12
  %VR10 = inttoptr i32 %VR9 to i32*
  store i32 %VR8, i32* %VR10
;; <- assign: linia 50
;- let -- block -- object -
;; -> object: linia 50
;; <- object: linia 50
;; <- block: linia 50
;; <- let: linia 50
  ret i32 %VR3
;#######################################; <- entry


}
define void @Main_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Object_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- new -
;; -> new: linia 55
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.Bazz_protObj_t* @Bazz_protObj to i32))
  call void @Bazz_init(i32 %VR1)
;; <- new: linia 55
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
;- new -
;; -> new: linia 56
  %VR4 = call i32  @Object__copy(i32 ptrtoint (%struct.Foo_protObj_t* @Foo_protObj to i32))
  call void @Foo_init(i32 %VR4)
;; <- new: linia 56
  %VR5 = add i32 %ARG, 16
  %VR6 = inttoptr i32 %VR5 to i32*
  store i32 %VR4, i32* %VR6
;- new -
;; -> new: linia 57
  %VR7 = call i32  @Object__copy(i32 ptrtoint (%struct.Razz_protObj_t* @Razz_protObj to i32))
  call void @Razz_init(i32 %VR7)
;; <- new: linia 57
  %VR8 = add i32 %ARG, 20
  %VR9 = inttoptr i32 %VR8 to i32*
  store i32 %VR7, i32* %VR9
;- new -
;; -> new: linia 58
  %VR10 = call i32  @Object__copy(i32 ptrtoint (%struct.Bar_protObj_t* @Bar_protObj to i32))
  call void @Bar_init(i32 %VR10)
;; <- new: linia 58
  %VR11 = add i32 %ARG, 24
  %VR12 = inttoptr i32 %VR11 to i32*
  store i32 %VR10, i32* %VR12
  ret void
;#######################################; <- entry


}
define i32 @Main__main(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- string_const -
;; -> string_const: linia 60
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 60
  ret i32 %VR1
;#######################################; <- entry


}
@s16 = internal constant [1 x i8] c"\00"
@str_const__16 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([1 x i8]* @s16, i32 0, i32 0)}
@s15 = internal constant [5 x i8] c"Main\00"
@str_const__15 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([5 x i8]* @s15, i32 0, i32 0)}
@s14 = internal constant [5 x i8] c"Bazz\00"
@str_const__14 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([5 x i8]* @s14, i32 0, i32 0)}
@s13 = internal constant [5 x i8] c"Razz\00"
@str_const__13 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([5 x i8]* @s13, i32 0, i32 0)}
@s12 = internal constant [4 x i8] c"Bar\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__12, i8* getelementptr ([4 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [4 x i8] c"Foo\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__12, i8* getelementptr ([4 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [3 x i8] c"IO\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([3 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [7 x i8] c"String\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([7 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [5 x i8] c"Bool\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([5 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [4 x i8] c"Int\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__12, i8* getelementptr ([4 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [7 x i8] c"Object\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([7 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([11 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__14, i8* getelementptr ([10 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [10 x i8] c"_no_class\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__14, i8* getelementptr ([10 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [14 x i8] c"<basic class>\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__15, i8* getelementptr ([14 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [11 x i8] c"do nothing\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([11 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [23 x i8] c"advanced/hairyscary.cl\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__16, i8* getelementptr ([23 x i8]* @s0, i32 0, i32 0)}
@int_const__16 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 22}
@int_const__15 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__14 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__13 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__12 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 48}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 46}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 39}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 31}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 26}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 20}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 18}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
%struct.Foo_protObj_t = type { i32, i32, %struct.Foo_dispTab_t*, i32, i32, i32, i32, i32 }
@Foo_protObj = global %struct.Foo_protObj_t {i32 5, i32 8, %struct.Foo_dispTab_t* @Foo_dispTab, i32 0, i32 0, i32 0, i32 0, i32 0}
%struct.Bar_protObj_t = type { i32, i32, %struct.Bar_dispTab_t*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
@Bar_protObj = global %struct.Bar_protObj_t {i32 6, i32 12, %struct.Bar_dispTab_t* @Bar_dispTab, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
%struct.Razz_protObj_t = type { i32, i32, %struct.Razz_dispTab_t*, i32, i32, i32, i32, i32, i32, i32 }
@Razz_protObj = global %struct.Razz_protObj_t {i32 7, i32 10, %struct.Razz_dispTab_t* @Razz_dispTab, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
%struct.Bazz_protObj_t = type { i32, i32, %struct.Bazz_dispTab_t*, i32, i32, i32 }
@Bazz_protObj = global %struct.Bazz_protObj_t {i32 8, i32 6, %struct.Bazz_dispTab_t* @Bazz_dispTab, i32 0, i32 0, i32 0}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t*, i32, i32, i32, i32 }
@Main_protObj = global %struct.Main_protObj_t {i32 9, i32 7, %struct.Main_dispTab_t* @Main_dispTab, i32 0, i32 0, i32 0, i32 0}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__6, %struct.String_protObj_t* @str_const__7, %struct.String_protObj_t* @str_const__8, %struct.String_protObj_t* @str_const__9, %struct.String_protObj_t* @str_const__10, %struct.String_protObj_t* @str_const__11, %struct.String_protObj_t* @str_const__12, %struct.String_protObj_t* @str_const__13, %struct.String_protObj_t* @str_const__14, %struct.String_protObj_t* @str_const__15 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @Foo_init to i8*), i8* bitcast (void (i32)* @Bar_init to i8*), i8* bitcast (void (i32)* @Razz_init to i8*), i8* bitcast (void (i32)* @Bazz_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.Foo_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Foo_dispTab = global %struct.Foo_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Bazz__printh to i8*), i8* bitcast (i32 (i32)* @Foo__doh to i8*)}

%struct.Bar_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Bar_dispTab = global %struct.Bar_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Bazz__printh to i8*), i8* bitcast (i32 (i32)* @Foo__doh to i8*)}

%struct.Razz_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Razz_dispTab = global %struct.Razz_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Bazz__printh to i8*), i8* bitcast (i32 (i32)* @Foo__doh to i8*)}

%struct.Bazz_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Bazz_dispTab = global %struct.Bazz_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Bazz__printh to i8*), i8* bitcast (i32 (i32)* @Bazz__doh to i8*)}

%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}


