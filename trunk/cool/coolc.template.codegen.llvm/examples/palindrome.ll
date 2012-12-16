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
define i32 @Main__pal(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 3
;;if: linia 3 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- eq -
;; -> eq: linia 3
;- cond -- eq -- dispatch -
;; -> dispatch: linia 3
;;generez codul pentru apelul metodei length
;- cond -- eq -- dispatch -- object -
;; -> object: linia 3
;; <- object: linia 3
  %VR3 = inttoptr i32 %VR1 to i32*
  %VR4 = icmp eq i32* %VR3,  null
  br i1 %VR4, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__3 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR5 = ptrtoint i32* %VR3 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 16
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32)*
  %VR13 = call i32 (i32)* %VR12(i32 %VR1)
  %VR14 = add i32 %VR13, 12
  %VR15 = inttoptr i32 %VR14 to i32*
  %VR16 = load i32* %VR15
;; <- dispatch: linia 3
;- cond -- eq -- int_const -
;; -> int_const: linia 3
  %VR17 = add i32 0, 0
;; <- int_const: linia 3
;boxing to int
  %VR18 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR19 = add i32 %VR18, 12
  %VR20 = inttoptr i32 %VR19 to i32*
  store i32 %VR16, i32* %VR20
;boxing to int
  %VR21 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR22 = add i32 %VR21, 12
  %VR23 = inttoptr i32 %VR22 to i32*
  store i32 %VR17, i32* %VR23
  br label %eq_test_join_true_Main_0
;#######################################; <- dispatch_not_void_Main_0


;#######################################; -> eq_test_join_true_Main_0
eq_test_join_true_Main_0:
  %VR24.0 = icmp eq i32 %VR18,  %VR21
  br i1 %VR24.0, label %eq_test_join_Main_0, label %eq_test_join_false_Main_0
;#######################################; <- eq_test_join_true_Main_0


;#######################################; -> eq_test_join_false_Main_0
eq_test_join_false_Main_0:
  %VR26 = call i32  @equality_test(i32 1, i32 0, i32 %VR18, i32 %VR21)
  %VR24.1 = icmp eq i32 %VR26,  1
  br label %eq_test_join_Main_0
;#######################################; <- eq_test_join_false_Main_0


;#######################################; -> eq_test_join_Main_0
eq_test_join_Main_0:
  %VR24 = phi i1 [ %VR24.0, %eq_test_join_true_Main_0 ] , [ %VR24.1, %eq_test_join_false_Main_0 ] 
;; <- eq: linia 3
  %VR27 = icmp eq i1 %VR24,  false
  br i1 %VR27, label %false_Main_0, label %false_false_Main_0
;#######################################; <- eq_test_join_Main_0


;#######################################; -> false_false_Main_0
false_false_Main_0:
;;if: linia 3 (expresia pentru then)
;- cond -- bool_const -
;; -> bool_const: linia 4
  %VR28 = add i32 1, 0
;; <- bool_const: linia 4
  br label %join_if_Main_0_true
;#######################################; <- false_false_Main_0


;#######################################; -> join_if_Main_0_true
join_if_Main_0_true:
  %VR2.0 = add i32 %VR28, 0
  br label %join_if_Main_0
;#######################################; <- join_if_Main_0_true


;#######################################; -> false_Main_0
false_Main_0:
;;if: linia 3 (expresia pentru else)
;- cond -- cond -
;; -> cond: linia 5
;;if: linia 5 (expresia pentru predicat)
;;%VR29 rezervat pentru rezultatul if-ului
;- cond -- cond -- eq -
;; -> eq: linia 5
;- cond -- cond -- eq -- dispatch -
;; -> dispatch: linia 5
;;generez codul pentru apelul metodei length
;- cond -- cond -- eq -- dispatch -- object -
;; -> object: linia 5
;; <- object: linia 5
  %VR30 = inttoptr i32 %VR1 to i32*
  %VR31 = icmp eq i32* %VR30,  null
  br i1 %VR31, label %false_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- false_Main_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Main_1
dispatch_not_void_Main_1:
  %VR32 = ptrtoint i32* %VR30 to i32 
  %VR33 = add i32 %VR32, 8
  %VR34 = inttoptr i32 %VR33 to i32*
  %VR35 = load i32* %VR34
  %VR36 = add i32 %VR35, 16
  %VR37 = inttoptr i32 %VR36 to i32*
  %VR38 = load i32* %VR37
  %VR39 = inttoptr i32 %VR38 to i32 (i32)*
  %VR40 = call i32 (i32)* %VR39(i32 %VR1)
  %VR41 = add i32 %VR40, 12
  %VR42 = inttoptr i32 %VR41 to i32*
  %VR43 = load i32* %VR42
;; <- dispatch: linia 5
;- cond -- cond -- eq -- int_const -
;; -> int_const: linia 5
  %VR44 = add i32 1, 0
;; <- int_const: linia 5
;boxing to int
  %VR45 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR46 = add i32 %VR45, 12
  %VR47 = inttoptr i32 %VR46 to i32*
  store i32 %VR43, i32* %VR47
;boxing to int
  %VR48 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR49 = add i32 %VR48, 12
  %VR50 = inttoptr i32 %VR49 to i32*
  store i32 %VR44, i32* %VR50
  br label %eq_test_join_true_Main_1
;#######################################; <- dispatch_not_void_Main_1


;#######################################; -> eq_test_join_true_Main_1
eq_test_join_true_Main_1:
  %VR51.0 = icmp eq i32 %VR45,  %VR48
  br i1 %VR51.0, label %eq_test_join_Main_1, label %eq_test_join_false_Main_1
;#######################################; <- eq_test_join_true_Main_1


;#######################################; -> eq_test_join_false_Main_1
eq_test_join_false_Main_1:
  %VR53 = call i32  @equality_test(i32 1, i32 0, i32 %VR45, i32 %VR48)
  %VR51.1 = icmp eq i32 %VR53,  1
  br label %eq_test_join_Main_1
;#######################################; <- eq_test_join_false_Main_1


;#######################################; -> eq_test_join_Main_1
eq_test_join_Main_1:
  %VR51 = phi i1 [ %VR51.0, %eq_test_join_true_Main_1 ] , [ %VR51.1, %eq_test_join_false_Main_1 ] 
;; <- eq: linia 5
  %VR54 = icmp eq i1 %VR51,  false
  br i1 %VR54, label %false_Main_1, label %false_false_Main_1
;#######################################; <- eq_test_join_Main_1


;#######################################; -> false_false_Main_1
false_false_Main_1:
;;if: linia 5 (expresia pentru then)
;- cond -- cond -- bool_const -
;; -> bool_const: linia 6
  %VR55 = add i32 1, 0
;; <- bool_const: linia 6
  br label %join_if_Main_1_true
;#######################################; <- false_false_Main_1


;#######################################; -> join_if_Main_1_true
join_if_Main_1_true:
  %VR29.0 = add i32 %VR55, 0
  br label %join_if_Main_1
;#######################################; <- join_if_Main_1_true


;#######################################; -> false_Main_1
false_Main_1:
;;if: linia 5 (expresia pentru else)
;- cond -- cond -- cond -
;; -> cond: linia 7
;;if: linia 7 (expresia pentru predicat)
;;%VR56 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- eq -
;; -> eq: linia 7
;- cond -- cond -- cond -- eq -- dispatch -
;; -> dispatch: linia 7
;;generez codul pentru apelul metodei substr
;- cond -- cond -- cond -- eq -- dispatch -- int_const -
;; -> int_const: linia 7
  %VR57 = add i32 0, 0
;; <- int_const: linia 7
;- cond -- cond -- cond -- eq -- dispatch -- int_const -
;; -> int_const: linia 7
  %VR58 = add i32 1, 0
;; <- int_const: linia 7
;- cond -- cond -- cond -- eq -- dispatch -- object -
;; -> object: linia 7
;; <- object: linia 7
  %VR59 = inttoptr i32 %VR1 to i32*
  %VR60 = icmp eq i32* %VR59,  null
  br i1 %VR60, label %false_dispatch2, label %dispatch_not_void_Main_2
;#######################################; <- false_Main_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__5 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Main_2
dispatch_not_void_Main_2:
  %VR61 = ptrtoint i32* %VR59 to i32 
  %VR62 = add i32 %VR61, 8
  %VR63 = inttoptr i32 %VR62 to i32*
  %VR64 = load i32* %VR63
  %VR65 = add i32 %VR64, 20
  %VR66 = inttoptr i32 %VR65 to i32*
  %VR67 = load i32* %VR66
;boxing to int
  %VR68 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR69 = add i32 %VR68, 12
  %VR70 = inttoptr i32 %VR69 to i32*
  store i32 %VR57, i32* %VR70
;boxing to int
  %VR71 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR72 = add i32 %VR71, 12
  %VR73 = inttoptr i32 %VR72 to i32*
  store i32 %VR58, i32* %VR73
  %VR74 = inttoptr i32 %VR67 to i32 (i32, i32, i32)*
  %VR75 = call i32 (i32, i32, i32)* %VR74(i32 %VR1, i32 %VR68, i32 %VR71)
;; <- dispatch: linia 7
;- cond -- cond -- cond -- eq -- dispatch -
;; -> dispatch: linia 7
;;generez codul pentru apelul metodei substr
;- cond -- cond -- cond -- eq -- dispatch -- sub -
;; -> sub: linia 7
;- cond -- cond -- cond -- eq -- dispatch -- sub -- dispatch -
;; -> dispatch: linia 7
;;generez codul pentru apelul metodei length
;- cond -- cond -- cond -- eq -- dispatch -- sub -- dispatch -- object -
;; -> object: linia 7
;; <- object: linia 7
  %VR76 = inttoptr i32 %VR1 to i32*
  %VR77 = icmp eq i32* %VR76,  null
  br i1 %VR77, label %false_dispatch3, label %dispatch_not_void_Main_3
;#######################################; <- dispatch_not_void_Main_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__5 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Main_3
dispatch_not_void_Main_3:
  %VR78 = ptrtoint i32* %VR76 to i32 
  %VR79 = add i32 %VR78, 8
  %VR80 = inttoptr i32 %VR79 to i32*
  %VR81 = load i32* %VR80
  %VR82 = add i32 %VR81, 16
  %VR83 = inttoptr i32 %VR82 to i32*
  %VR84 = load i32* %VR83
  %VR85 = inttoptr i32 %VR84 to i32 (i32)*
  %VR86 = call i32 (i32)* %VR85(i32 %VR1)
  %VR87 = add i32 %VR86, 12
  %VR88 = inttoptr i32 %VR87 to i32*
  %VR89 = load i32* %VR88
;; <- dispatch: linia 7
;- cond -- cond -- cond -- eq -- dispatch -- sub -- int_const -
;; -> int_const: linia 7
  %VR90 = add i32 1, 0
;; <- int_const: linia 7
  %VR91 = sub i32 %VR89, %VR90
;; <- sub: linia 7
;- cond -- cond -- cond -- eq -- dispatch -- int_const -
;; -> int_const: linia 7
  %VR92 = add i32 1, 0
;; <- int_const: linia 7
;- cond -- cond -- cond -- eq -- dispatch -- object -
;; -> object: linia 7
;; <- object: linia 7
  %VR93 = inttoptr i32 %VR1 to i32*
  %VR94 = icmp eq i32* %VR93,  null
  br i1 %VR94, label %false_dispatch4, label %dispatch_not_void_Main_4
;#######################################; <- dispatch_not_void_Main_3


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__5 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Main_4
dispatch_not_void_Main_4:
  %VR95 = ptrtoint i32* %VR93 to i32 
  %VR96 = add i32 %VR95, 8
  %VR97 = inttoptr i32 %VR96 to i32*
  %VR98 = load i32* %VR97
  %VR99 = add i32 %VR98, 20
  %VR100 = inttoptr i32 %VR99 to i32*
  %VR101 = load i32* %VR100
;boxing to int
  %VR102 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR103 = add i32 %VR102, 12
  %VR104 = inttoptr i32 %VR103 to i32*
  store i32 %VR91, i32* %VR104
;boxing to int
  %VR105 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR106 = add i32 %VR105, 12
  %VR107 = inttoptr i32 %VR106 to i32*
  store i32 %VR92, i32* %VR107
  %VR108 = inttoptr i32 %VR101 to i32 (i32, i32, i32)*
  %VR109 = call i32 (i32, i32, i32)* %VR108(i32 %VR1, i32 %VR102, i32 %VR105)
;; <- dispatch: linia 7
  br label %eq_test_join_true_Main_2
;#######################################; <- dispatch_not_void_Main_4


;#######################################; -> eq_test_join_true_Main_2
eq_test_join_true_Main_2:
  %VR110.0 = icmp eq i32 %VR75,  %VR109
  br i1 %VR110.0, label %eq_test_join_Main_2, label %eq_test_join_false_Main_2
;#######################################; <- eq_test_join_true_Main_2


;#######################################; -> eq_test_join_false_Main_2
eq_test_join_false_Main_2:
  %VR112 = call i32  @equality_test(i32 1, i32 0, i32 %VR75, i32 %VR109)
  %VR110.1 = icmp eq i32 %VR112,  1
  br label %eq_test_join_Main_2
;#######################################; <- eq_test_join_false_Main_2


;#######################################; -> eq_test_join_Main_2
eq_test_join_Main_2:
  %VR110 = phi i1 [ %VR110.0, %eq_test_join_true_Main_2 ] , [ %VR110.1, %eq_test_join_false_Main_2 ] 
;; <- eq: linia 7
  %VR113 = icmp eq i1 %VR110,  false
  br i1 %VR113, label %false_Main_2, label %false_false_Main_2
;#######################################; <- eq_test_join_Main_2


;#######################################; -> false_false_Main_2
false_false_Main_2:
;;if: linia 7 (expresia pentru then)
;- cond -- cond -- cond -- dispatch -
;; -> dispatch: linia 8
;;generez codul pentru apelul metodei pal
;- cond -- cond -- cond -- dispatch -- dispatch -
;; -> dispatch: linia 8
;;generez codul pentru apelul metodei substr
;- cond -- cond -- cond -- dispatch -- dispatch -- int_const -
;; -> int_const: linia 8
  %VR114 = add i32 1, 0
;; <- int_const: linia 8
;- cond -- cond -- cond -- dispatch -- dispatch -- sub -
;; -> sub: linia 8
;- cond -- cond -- cond -- dispatch -- dispatch -- sub -- dispatch -
;; -> dispatch: linia 8
;;generez codul pentru apelul metodei length
;- cond -- cond -- cond -- dispatch -- dispatch -- sub -- dispatch -- object -
;; -> object: linia 8
;; <- object: linia 8
  %VR115 = inttoptr i32 %VR1 to i32*
  %VR116 = icmp eq i32* %VR115,  null
  br i1 %VR116, label %false_dispatch5, label %dispatch_not_void_Main_5
;#######################################; <- false_false_Main_2


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_Main_5
dispatch_not_void_Main_5:
  %VR117 = ptrtoint i32* %VR115 to i32 
  %VR118 = add i32 %VR117, 8
  %VR119 = inttoptr i32 %VR118 to i32*
  %VR120 = load i32* %VR119
  %VR121 = add i32 %VR120, 16
  %VR122 = inttoptr i32 %VR121 to i32*
  %VR123 = load i32* %VR122
  %VR124 = inttoptr i32 %VR123 to i32 (i32)*
  %VR125 = call i32 (i32)* %VR124(i32 %VR1)
  %VR126 = add i32 %VR125, 12
  %VR127 = inttoptr i32 %VR126 to i32*
  %VR128 = load i32* %VR127
;; <- dispatch: linia 8
;- cond -- cond -- cond -- dispatch -- dispatch -- sub -- int_const -
;; -> int_const: linia 8
  %VR129 = add i32 2, 0
;; <- int_const: linia 8
  %VR130 = sub i32 %VR128, %VR129
;; <- sub: linia 8
;- cond -- cond -- cond -- dispatch -- dispatch -- object -
;; -> object: linia 8
;; <- object: linia 8
  %VR131 = inttoptr i32 %VR1 to i32*
  %VR132 = icmp eq i32* %VR131,  null
  br i1 %VR132, label %false_dispatch6, label %dispatch_not_void_Main_6
;#######################################; <- dispatch_not_void_Main_5


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_Main_6
dispatch_not_void_Main_6:
  %VR133 = ptrtoint i32* %VR131 to i32 
  %VR134 = add i32 %VR133, 8
  %VR135 = inttoptr i32 %VR134 to i32*
  %VR136 = load i32* %VR135
  %VR137 = add i32 %VR136, 20
  %VR138 = inttoptr i32 %VR137 to i32*
  %VR139 = load i32* %VR138
;boxing to int
  %VR140 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR141 = add i32 %VR140, 12
  %VR142 = inttoptr i32 %VR141 to i32*
  store i32 %VR114, i32* %VR142
;boxing to int
  %VR143 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR144 = add i32 %VR143, 12
  %VR145 = inttoptr i32 %VR144 to i32*
  store i32 %VR130, i32* %VR145
  %VR146 = inttoptr i32 %VR139 to i32 (i32, i32, i32)*
  %VR147 = call i32 (i32, i32, i32)* %VR146(i32 %VR1, i32 %VR140, i32 %VR143)
;; <- dispatch: linia 8
;- cond -- cond -- cond -- dispatch -- object -
;; -> object: linia 8
;; <- object: linia 8
  %VR148 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR148, label %false_dispatch7, label %dispatch_not_void_Main_7
;#######################################; <- dispatch_not_void_Main_6


;#######################################; -> false_dispatch7
false_dispatch7:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch7


;#######################################; -> dispatch_not_void_Main_7
dispatch_not_void_Main_7:
  %VR149 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR150 = add i32 %VR149, 8
  %VR151 = inttoptr i32 %VR150 to i32*
  %VR152 = load i32* %VR151
  %VR153 = add i32 %VR152, 28
  %VR154 = inttoptr i32 %VR153 to i32*
  %VR155 = load i32* %VR154
  %VR156 = inttoptr i32 %VR155 to i32 (i32, i32)*
  %VR157 = call i32 (i32, i32)* %VR156(i32 %ARG, i32 %VR147)
;; <- dispatch: linia 8
  br label %join_if_Main_2_true
;#######################################; <- dispatch_not_void_Main_7


;#######################################; -> join_if_Main_2_true
join_if_Main_2_true:
  %VR56.0 = add i32 %VR157, 0
  br label %join_if_Main_2
;#######################################; <- join_if_Main_2_true


;#######################################; -> false_Main_2
false_Main_2:
;;if: linia 7 (expresia pentru else)
;- cond -- cond -- cond -- bool_const -
;; -> bool_const: linia 9
  %VR158 = add i32 0, 0
;; <- bool_const: linia 9
  br label %join_if_Main_2_false
;#######################################; <- false_Main_2


;#######################################; -> join_if_Main_2_false
join_if_Main_2_false:
  %VR56.1 = add i32 %VR158, 0
  br label %join_if_Main_2
;#######################################; <- join_if_Main_2_false


;#######################################; -> join_if_Main_2
join_if_Main_2:
  %VR56 = phi i32 [ %VR56.0, %join_if_Main_2_true ], [ %VR56.1, %join_if_Main_2_false ]
;; <- cond: linia 7
  br label %join_if_Main_1_false
;#######################################; <- join_if_Main_2


;#######################################; -> join_if_Main_1_false
join_if_Main_1_false:
  %VR29.1 = add i32 %VR56, 0
  br label %join_if_Main_1
;#######################################; <- join_if_Main_1_false


;#######################################; -> join_if_Main_1
join_if_Main_1:
  %VR29 = phi i32 [ %VR29.0, %join_if_Main_1_true ], [ %VR29.1, %join_if_Main_1_false ]
;; <- cond: linia 5
  br label %join_if_Main_0_false
;#######################################; <- join_if_Main_1


;#######################################; -> join_if_Main_0_false
join_if_Main_0_false:
  %VR2.1 = add i32 %VR29, 0
  br label %join_if_Main_0
;#######################################; <- join_if_Main_0_false


;#######################################; -> join_if_Main_0
join_if_Main_0:
  %VR2 = phi i32 [ %VR2.0, %join_if_Main_0_true ], [ %VR2.1, %join_if_Main_0_false ]
;; <- cond: linia 3
  ret i32 %VR2
;#######################################; <- join_if_Main_0


}
define i32 @Main__main(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- block -
;; -> block: linia 16
;- block -- assign -
;; -> assign: linia 17
;- block -- assign -- neg -
;; -> neg: linia 17
;- block -- assign -- neg -- int_const -
;; -> int_const: linia 17
  %VR1 = add i32 1, 0
;; <- int_const: linia 17
  %VR2 = xor i32 4294967295, %VR1
;; <- neg: linia 17
  %VR3 = add i32 %ARG, 12
  %VR4 = inttoptr i32 %VR3 to i32*
  store i32 %VR2, i32* %VR4
;; <- assign: linia 17
;- block -- dispatch -
;; -> dispatch: linia 18
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 18
  %VR5 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 18
;- block -- dispatch -- object -
;; -> object: linia 18
;; <- object: linia 18
  %VR6 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR6, label %false_dispatch8, label %dispatch_not_void_Main_8
;#######################################; <- entry


;#######################################; -> false_dispatch8
false_dispatch8:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__7 to i32))
  ret i32 0
;#######################################; <- false_dispatch8


;#######################################; -> dispatch_not_void_Main_8
dispatch_not_void_Main_8:
  %VR7 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR8 = add i32 %VR7, 8
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = add i32 %VR10, 16
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
  %VR14 = inttoptr i32 %VR13 to i32 (i32, i32)*
  %VR15 = call i32 (i32, i32)* %VR14(i32 %ARG, i32 %VR5)
;; <- dispatch: linia 18
;- block -- cond -
;; -> cond: linia 19
;;if: linia 19 (expresia pentru predicat)
;;%VR16 rezervat pentru rezultatul if-ului
;- block -- cond -- dispatch -
;; -> dispatch: linia 19
;;generez codul pentru apelul metodei pal
;- block -- cond -- dispatch -- dispatch -
;; -> dispatch: linia 19
;;generez codul pentru apelul metodei in_string
;- block -- cond -- dispatch -- dispatch -- object -
;; -> object: linia 19
;; <- object: linia 19
  %VR17 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR17, label %false_dispatch9, label %dispatch_not_void_Main_9
;#######################################; <- dispatch_not_void_Main_8


;#######################################; -> false_dispatch9
false_dispatch9:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__8 to i32))
  ret i32 0
;#######################################; <- false_dispatch9


;#######################################; -> dispatch_not_void_Main_9
dispatch_not_void_Main_9:
  %VR18 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR19 = add i32 %VR18, 8
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = load i32* %VR20
  %VR22 = add i32 %VR21, 24
  %VR23 = inttoptr i32 %VR22 to i32*
  %VR24 = load i32* %VR23
  %VR25 = inttoptr i32 %VR24 to i32 (i32)*
  %VR26 = call i32 (i32)* %VR25(i32 %ARG)
;; <- dispatch: linia 19
;- block -- cond -- dispatch -- object -
;; -> object: linia 19
;; <- object: linia 19
  %VR27 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR27, label %false_dispatch10, label %dispatch_not_void_Main_10
;#######################################; <- dispatch_not_void_Main_9


;#######################################; -> false_dispatch10
false_dispatch10:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__8 to i32))
  ret i32 0
;#######################################; <- false_dispatch10


;#######################################; -> dispatch_not_void_Main_10
dispatch_not_void_Main_10:
  %VR28 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR29 = add i32 %VR28, 8
  %VR30 = inttoptr i32 %VR29 to i32*
  %VR31 = load i32* %VR30
  %VR32 = add i32 %VR31, 28
  %VR33 = inttoptr i32 %VR32 to i32*
  %VR34 = load i32* %VR33
  %VR35 = inttoptr i32 %VR34 to i32 (i32, i32)*
  %VR36 = call i32 (i32, i32)* %VR35(i32 %ARG, i32 %VR26)
;; <- dispatch: linia 19
  %VR37 = icmp eq i32 %VR36,  0
  br i1 %VR37, label %false_Main_3, label %false_false_Main_3
;#######################################; <- dispatch_not_void_Main_10


;#######################################; -> false_false_Main_3
false_false_Main_3:
;;if: linia 19 (expresia pentru then)
;- block -- cond -- dispatch -
;; -> dispatch: linia 20
;;generez codul pentru apelul metodei out_string
;- block -- cond -- dispatch -- string_const -
;; -> string_const: linia 20
  %VR38 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 20
;- block -- cond -- dispatch -- object -
;; -> object: linia 20
;; <- object: linia 20
  %VR39 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR39, label %false_dispatch11, label %dispatch_not_void_Main_11
;#######################################; <- false_false_Main_3


;#######################################; -> false_dispatch11
false_dispatch11:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__9 to i32))
  ret i32 0
;#######################################; <- false_dispatch11


;#######################################; -> dispatch_not_void_Main_11
dispatch_not_void_Main_11:
  %VR40 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR41 = add i32 %VR40, 8
  %VR42 = inttoptr i32 %VR41 to i32*
  %VR43 = load i32* %VR42
  %VR44 = add i32 %VR43, 16
  %VR45 = inttoptr i32 %VR44 to i32*
  %VR46 = load i32* %VR45
  %VR47 = inttoptr i32 %VR46 to i32 (i32, i32)*
  %VR48 = call i32 (i32, i32)* %VR47(i32 %ARG, i32 %VR38)
;; <- dispatch: linia 20
  br label %join_if_Main_3_true
;#######################################; <- dispatch_not_void_Main_11


;#######################################; -> join_if_Main_3_true
join_if_Main_3_true:
  %VR16.0 = add i32 %VR48, 0
  br label %join_if_Main_3
;#######################################; <- join_if_Main_3_true


;#######################################; -> false_Main_3
false_Main_3:
;;if: linia 19 (expresia pentru else)
;- block -- cond -- dispatch -
;; -> dispatch: linia 21
;;generez codul pentru apelul metodei out_string
;- block -- cond -- dispatch -- string_const -
;; -> string_const: linia 21
  %VR49 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 21
;- block -- cond -- dispatch -- object -
;; -> object: linia 21
;; <- object: linia 21
  %VR50 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR50, label %false_dispatch12, label %dispatch_not_void_Main_12
;#######################################; <- false_Main_3


;#######################################; -> false_dispatch12
false_dispatch12:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__10 to i32))
  ret i32 0
;#######################################; <- false_dispatch12


;#######################################; -> dispatch_not_void_Main_12
dispatch_not_void_Main_12:
  %VR51 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR52 = add i32 %VR51, 8
  %VR53 = inttoptr i32 %VR52 to i32*
  %VR54 = load i32* %VR53
  %VR55 = add i32 %VR54, 16
  %VR56 = inttoptr i32 %VR55 to i32*
  %VR57 = load i32* %VR56
  %VR58 = inttoptr i32 %VR57 to i32 (i32, i32)*
  %VR59 = call i32 (i32, i32)* %VR58(i32 %ARG, i32 %VR49)
;; <- dispatch: linia 21
  br label %join_if_Main_3_false
;#######################################; <- dispatch_not_void_Main_12


;#######################################; -> join_if_Main_3_false
join_if_Main_3_false:
  %VR16.1 = add i32 %VR59, 0
  br label %join_if_Main_3
;#######################################; <- join_if_Main_3_false


;#######################################; -> join_if_Main_3
join_if_Main_3:
  %VR16 = phi i32 [ %VR16.0, %join_if_Main_3_true ], [ %VR16.1, %join_if_Main_3_false ]
;; <- cond: linia 19
;; <- block: linia 16
  ret i32 %VR16
;#######################################; <- join_if_Main_3


}
@s14 = internal constant [1 x i8] c"\00"
@str_const__14 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([1 x i8]* @s14, i32 0, i32 0)}
@s13 = internal constant [5 x i8] c"Main\00"
@str_const__13 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([5 x i8]* @s13, i32 0, i32 0)}
@s12 = internal constant [3 x i8] c"IO\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([3 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [7 x i8] c"String\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__12, i8* getelementptr ([7 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [5 x i8] c"Bool\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([5 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [4 x i8] c"Int\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([4 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [7 x i8] c"Object\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__12, i8* getelementptr ([7 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([11 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__14, i8* getelementptr ([10 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [10 x i8] c"_no_class\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__14, i8* getelementptr ([10 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [14 x i8] c"<basic class>\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__15, i8* getelementptr ([14 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [27 x i8] c"that was not a palindrome\0A\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__16, i8* getelementptr ([27 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [23 x i8] c"that was a palindrome\0A\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__17, i8* getelementptr ([23 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [16 x i8] c"enter a string\0A\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__18, i8* getelementptr ([16 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [15 x i8] c"/tmp/cplKZmqui\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__19, i8* getelementptr ([15 x i8]* @s0, i32 0, i32 0)}
@int_const__19 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 14}
@int_const__18 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 15}
@int_const__17 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 22}
@int_const__16 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 26}
@int_const__15 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__14 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__13 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__12 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 21}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 20}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 19}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 18}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 8}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 7}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 5}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t*, i32 }
@Main_protObj = global %struct.Main_protObj_t {i32 5, i32 4, %struct.Main_dispTab_t* @Main_dispTab, i32 0}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__8, %struct.String_protObj_t* @str_const__9, %struct.String_protObj_t* @str_const__10, %struct.String_protObj_t* @str_const__11, %struct.String_protObj_t* @str_const__12, %struct.String_protObj_t* @str_const__13 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32,i32)* @Main__pal to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}

