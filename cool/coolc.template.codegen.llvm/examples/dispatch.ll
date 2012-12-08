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
define i32 @P__method1(i32 %ARG, i32 %ARG0, i32 %ARG1, i32 %ARG2)
{

;#######################################; -> entry
entry:
  %VR4a = alloca i32 
  store i32 0, i32* %VR4a
  %VR0 = inttoptr i32 %ARG to %struct.P_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
  %VR3 = add i32 %ARG2, 0
;- block -
;; -> block: linia 7
;- block -- let -
;; -> let: linia 8
  %VR4.a = add i32 0, 0
  store i32 %VR4.a, i32* %VR4a
;- block -- let -- block -
;; -> block: linia 9
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 10
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 10
  %VR5 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 10
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 10
  %VR6 = add i32 %ARG, 12
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
;; <- object: linia 10
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = icmp eq i32* %VR9,  null
  br i1 %VR10, label %false_dispatch0, label %dispatch_not_void_P_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__3 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_P_0
dispatch_not_void_P_0:
  %VR11 = ptrtoint i32* %VR9 to i32 
  %VR12 = add i32 %VR11, 8
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
  %VR15 = add i32 %VR14, 16
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
  %VR18 = inttoptr i32 %VR17 to i32 (i32, i32)*
  %VR19 = call i32 (i32, i32)* %VR18(i32 %VR8, i32 %VR5)
;; <- dispatch: linia 10
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 11
;;generez codul pentru apelul metodei out_int
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 11
;; <- object: linia 11
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 11
  %VR20 = add i32 %ARG, 12
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
;; <- object: linia 11
  %VR23 = inttoptr i32 %VR22 to i32*
  %VR24 = icmp eq i32* %VR23,  null
  br i1 %VR24, label %false_dispatch1, label %dispatch_not_void_P_1
;#######################################; <- dispatch_not_void_P_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_P_1
dispatch_not_void_P_1:
  %VR25 = ptrtoint i32* %VR23 to i32 
  %VR26 = add i32 %VR25, 8
  %VR27 = inttoptr i32 %VR26 to i32*
  %VR28 = load i32* %VR27
  %VR29 = add i32 %VR28, 12
  %VR30 = inttoptr i32 %VR29 to i32*
  %VR31 = load i32* %VR30
;boxing to int
  %VR32 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR33 = add i32 %VR32, 12
  %VR34 = inttoptr i32 %VR33 to i32*
  store i32 %VR1, i32* %VR34
  %VR35 = inttoptr i32 %VR31 to i32 (i32, i32)*
  %VR36 = call i32 (i32, i32)* %VR35(i32 %VR22, i32 %VR32)
;; <- dispatch: linia 11
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 12
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 12
  %VR37 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 12
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 12
  %VR38 = add i32 %ARG, 12
  %VR39 = inttoptr i32 %VR38 to i32*
  %VR40 = load i32* %VR39
;; <- object: linia 12
  %VR41 = inttoptr i32 %VR40 to i32*
  %VR42 = icmp eq i32* %VR41,  null
  br i1 %VR42, label %false_dispatch2, label %dispatch_not_void_P_2
;#######################################; <- dispatch_not_void_P_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__5 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_P_2
dispatch_not_void_P_2:
  %VR43 = ptrtoint i32* %VR41 to i32 
  %VR44 = add i32 %VR43, 8
  %VR45 = inttoptr i32 %VR44 to i32*
  %VR46 = load i32* %VR45
  %VR47 = add i32 %VR46, 16
  %VR48 = inttoptr i32 %VR47 to i32*
  %VR49 = load i32* %VR48
  %VR50 = inttoptr i32 %VR49 to i32 (i32, i32)*
  %VR51 = call i32 (i32, i32)* %VR50(i32 %VR40, i32 %VR37)
;; <- dispatch: linia 12
;- block -- let -- block -- assign -
;; -> assign: linia 14
;- block -- let -- block -- assign -- cond -
;; -> cond: linia 15
;;if: linia 15 (expresia pentru predicat)
;;%VR52 rezervat pentru rezultatul if-ului
;- block -- let -- block -- assign -- cond -- object -
;; -> object: linia 15
;; <- object: linia 15
  %VR53 = icmp eq i32 %VR2,  0
  br i1 %VR53, label %false_P_0, label %false_false_P_0
;#######################################; <- dispatch_not_void_P_2


;#######################################; -> false_false_P_0
false_false_P_0:
;;if: linia 15 (expresia pentru then)
;- block -- let -- block -- assign -- cond -- block -
;; -> block: linia 16
;- block -- let -- block -- assign -- cond -- block -- dispatch -
;; -> dispatch: linia 16
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- assign -- cond -- block -- dispatch -- string_const -
;; -> string_const: linia 16
  %VR54 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 16
;- block -- let -- block -- assign -- cond -- block -- dispatch -- object -
;; -> object: linia 16
  %VR55 = add i32 %ARG, 12
  %VR56 = inttoptr i32 %VR55 to i32*
  %VR57 = load i32* %VR56
;; <- object: linia 16
  %VR58 = inttoptr i32 %VR57 to i32*
  %VR59 = icmp eq i32* %VR58,  null
  br i1 %VR59, label %false_dispatch3, label %dispatch_not_void_P_3
;#######################################; <- false_false_P_0


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_P_3
dispatch_not_void_P_3:
  %VR60 = ptrtoint i32* %VR58 to i32 
  %VR61 = add i32 %VR60, 8
  %VR62 = inttoptr i32 %VR61 to i32*
  %VR63 = load i32* %VR62
  %VR64 = add i32 %VR63, 16
  %VR65 = inttoptr i32 %VR64 to i32*
  %VR66 = load i32* %VR65
  %VR67 = inttoptr i32 %VR66 to i32 (i32, i32)*
  %VR68 = call i32 (i32, i32)* %VR67(i32 %VR57, i32 %VR54)
;; <- dispatch: linia 16
;- block -- let -- block -- assign -- cond -- block -- int_const -
;; -> int_const: linia 16
  %VR69 = add i32 1, 0
;; <- int_const: linia 16
;; <- block: linia 16
  br label %join_if_P_0_true
;#######################################; <- dispatch_not_void_P_3


;#######################################; -> join_if_P_0_true
join_if_P_0_true:
  %VR52.0 = add i32 %VR69, 0
  br label %join_if_P_0
;#######################################; <- join_if_P_0_true


;#######################################; -> false_P_0
false_P_0:
;;if: linia 15 (expresia pentru else)
;- block -- let -- block -- assign -- cond -- block -
;; -> block: linia 17
;- block -- let -- block -- assign -- cond -- block -- dispatch -
;; -> dispatch: linia 17
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- assign -- cond -- block -- dispatch -- string_const -
;; -> string_const: linia 17
  %VR70 = ptrtoint %struct.String_protObj_t* @str_const__4 to i32 
;; <- string_const: linia 17
;- block -- let -- block -- assign -- cond -- block -- dispatch -- object -
;; -> object: linia 17
  %VR71 = add i32 %ARG, 12
  %VR72 = inttoptr i32 %VR71 to i32*
  %VR73 = load i32* %VR72
;; <- object: linia 17
  %VR74 = inttoptr i32 %VR73 to i32*
  %VR75 = icmp eq i32* %VR74,  null
  br i1 %VR75, label %false_dispatch4, label %dispatch_not_void_P_4
;#######################################; <- false_P_0


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__7 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_P_4
dispatch_not_void_P_4:
  %VR76 = ptrtoint i32* %VR74 to i32 
  %VR77 = add i32 %VR76, 8
  %VR78 = inttoptr i32 %VR77 to i32*
  %VR79 = load i32* %VR78
  %VR80 = add i32 %VR79, 16
  %VR81 = inttoptr i32 %VR80 to i32*
  %VR82 = load i32* %VR81
  %VR83 = inttoptr i32 %VR82 to i32 (i32, i32)*
  %VR84 = call i32 (i32, i32)* %VR83(i32 %VR73, i32 %VR70)
;; <- dispatch: linia 17
;- block -- let -- block -- assign -- cond -- block -- int_const -
;; -> int_const: linia 17
  %VR85 = add i32 0, 0
;; <- int_const: linia 17
;; <- block: linia 17
  br label %join_if_P_0_false
;#######################################; <- dispatch_not_void_P_4


;#######################################; -> join_if_P_0_false
join_if_P_0_false:
  %VR52.1 = add i32 %VR85, 0
  br label %join_if_P_0
;#######################################; <- join_if_P_0_false


;#######################################; -> join_if_P_0
join_if_P_0:
  %VR52 = phi i32  [ %VR52.0 , %join_if_P_0_true ] , [ %VR52.1 , %join_if_P_0_false ] 
;; <- cond: linia 15
  store i32 %VR52, i32* %VR4a
;; <- assign: linia 14
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 20
;;generez codul pentru apelul metodei out_int
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 20
;; <- object: linia 20
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 20
  %VR86 = add i32 %ARG, 12
  %VR87 = inttoptr i32 %VR86 to i32*
  %VR88 = load i32* %VR87
;; <- object: linia 20
  %VR89 = inttoptr i32 %VR88 to i32*
  %VR90 = icmp eq i32* %VR89,  null
  br i1 %VR90, label %false_dispatch5, label %dispatch_not_void_P_5
;#######################################; <- join_if_P_0


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__2 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_P_5
dispatch_not_void_P_5:
  %VR91 = ptrtoint i32* %VR89 to i32 
  %VR92 = add i32 %VR91, 8
  %VR93 = inttoptr i32 %VR92 to i32*
  %VR94 = load i32* %VR93
  %VR95 = add i32 %VR94, 12
  %VR96 = inttoptr i32 %VR95 to i32*
  %VR97 = load i32* %VR96
;boxing to int
  %VR98 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR99 = add i32 %VR98, 12
  %VR100 = inttoptr i32 %VR99 to i32*
  store i32 %VR52, i32* %VR100
  %VR101 = inttoptr i32 %VR97 to i32 (i32, i32)*
  %VR102 = call i32 (i32, i32)* %VR101(i32 %VR88, i32 %VR98)
;; <- dispatch: linia 20
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 21
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 21
  %VR103 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 21
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 21
  %VR104 = add i32 %ARG, 12
  %VR105 = inttoptr i32 %VR104 to i32*
  %VR106 = load i32* %VR105
;; <- object: linia 21
  %VR107 = inttoptr i32 %VR106 to i32*
  %VR108 = icmp eq i32* %VR107,  null
  br i1 %VR108, label %false_dispatch6, label %dispatch_not_void_P_6
;#######################################; <- dispatch_not_void_P_5


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__8 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_P_6
dispatch_not_void_P_6:
  %VR109 = ptrtoint i32* %VR107 to i32 
  %VR110 = add i32 %VR109, 8
  %VR111 = inttoptr i32 %VR110 to i32*
  %VR112 = load i32* %VR111
  %VR113 = add i32 %VR112, 16
  %VR114 = inttoptr i32 %VR113 to i32*
  %VR115 = load i32* %VR114
  %VR116 = inttoptr i32 %VR115 to i32 (i32, i32)*
  %VR117 = call i32 (i32, i32)* %VR116(i32 %VR106, i32 %VR103)
;; <- dispatch: linia 21
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 22
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 22
;; <- object: linia 22
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 22
  %VR118 = add i32 %ARG, 12
  %VR119 = inttoptr i32 %VR118 to i32*
  %VR120 = load i32* %VR119
;; <- object: linia 22
  %VR121 = inttoptr i32 %VR120 to i32*
  %VR122 = icmp eq i32* %VR121,  null
  br i1 %VR122, label %false_dispatch7, label %dispatch_not_void_P_7
;#######################################; <- dispatch_not_void_P_6


;#######################################; -> false_dispatch7
false_dispatch7:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__9 to i32))
  ret i32 0
;#######################################; <- false_dispatch7


;#######################################; -> dispatch_not_void_P_7
dispatch_not_void_P_7:
  %VR123 = ptrtoint i32* %VR121 to i32 
  %VR124 = add i32 %VR123, 8
  %VR125 = inttoptr i32 %VR124 to i32*
  %VR126 = load i32* %VR125
  %VR127 = add i32 %VR126, 16
  %VR128 = inttoptr i32 %VR127 to i32*
  %VR129 = load i32* %VR128
  %VR130 = inttoptr i32 %VR129 to i32 (i32, i32)*
  %VR131 = call i32 (i32, i32)* %VR130(i32 %VR120, i32 %VR3)
;; <- dispatch: linia 22
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 23
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 23
  %VR132 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 23
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 23
  %VR133 = add i32 %ARG, 12
  %VR134 = inttoptr i32 %VR133 to i32*
  %VR135 = load i32* %VR134
;; <- object: linia 23
  %VR136 = inttoptr i32 %VR135 to i32*
  %VR137 = icmp eq i32* %VR136,  null
  br i1 %VR137, label %false_dispatch8, label %dispatch_not_void_P_8
;#######################################; <- dispatch_not_void_P_7


;#######################################; -> false_dispatch8
false_dispatch8:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__10 to i32))
  ret i32 0
;#######################################; <- false_dispatch8


;#######################################; -> dispatch_not_void_P_8
dispatch_not_void_P_8:
  %VR138 = ptrtoint i32* %VR136 to i32 
  %VR139 = add i32 %VR138, 8
  %VR140 = inttoptr i32 %VR139 to i32*
  %VR141 = load i32* %VR140
  %VR142 = add i32 %VR141, 16
  %VR143 = inttoptr i32 %VR142 to i32*
  %VR144 = load i32* %VR143
  %VR145 = inttoptr i32 %VR144 to i32 (i32, i32)*
  %VR146 = call i32 (i32, i32)* %VR145(i32 %VR135, i32 %VR132)
;; <- dispatch: linia 23
;; <- block: linia 9
;; <- let: linia 8
;- block -- int_const -
;; -> int_const: linia 26
  %VR147 = add i32 20, 0
;; <- int_const: linia 26
;; <- block: linia 7
  ret i32 %VR147
;#######################################; <- dispatch_not_void_P_8


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
define i32 @C__method2(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.C_protObj_t*
;- string_const -
;; -> string_const: linia 33
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__5 to i32 
;; <- string_const: linia 33
  ret i32 %VR1
;#######################################; <- entry


}
define void @Main_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Object_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- new -
;; -> new: linia 38
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.C_protObj_t* @C_protObj to i32))
  call void @C_init(i32 %VR1)
;; <- new: linia 38
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
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- block -
;; -> block: linia 41
;- block -- dispatch -
;; -> dispatch: linia 42
;;generez codul pentru apelul metodei method1
;- block -- dispatch -- int_const -
;; -> int_const: linia 42
  %VR1 = add i32 10, 0
;; <- int_const: linia 42
;- block -- dispatch -- bool_const -
;; -> bool_const: linia 42
  %VR2 = add i32 1, 0
;; <- bool_const: linia 42
;- block -- dispatch -- string_const -
;; -> string_const: linia 42
  %VR3 = ptrtoint %struct.String_protObj_t* @str_const__6 to i32 
;; <- string_const: linia 42
;- block -- dispatch -- object -
;; -> object: linia 42
  %VR4 = add i32 %ARG, 12
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
;; <- object: linia 42
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = icmp eq i32* %VR7,  null
  br i1 %VR8, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__11 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR9 = ptrtoint i32* %VR7 to i32 
  %VR10 = add i32 %VR9, 8
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = add i32 %VR12, 12
  %VR14 = inttoptr i32 %VR13 to i32*
  %VR15 = load i32* %VR14
  %VR16 = inttoptr i32 %VR15 to i32 (i32, i32, i32, i32)*
  %VR17 = call i32 (i32, i32, i32, i32)* %VR16(i32 %VR6, i32 %VR1, i32 %VR2, i32 %VR3)
;; <- dispatch: linia 42
;- block -- dispatch -
;; -> dispatch: linia 43
;;generez codul pentru apelul metodei method1
;- block -- dispatch -- int_const -
;; -> int_const: linia 43
  %VR18 = add i32 20, 0
;; <- int_const: linia 43
;- block -- dispatch -- bool_const -
;; -> bool_const: linia 43
  %VR19 = add i32 0, 0
;; <- bool_const: linia 43
;- block -- dispatch -- string_const -
;; -> string_const: linia 43
  %VR20 = ptrtoint %struct.String_protObj_t* @str_const__7 to i32 
;; <- string_const: linia 43
;- block -- dispatch -- object -
;; -> object: linia 43
  %VR21 = add i32 %ARG, 12
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = load i32* %VR22
;; <- object: linia 43
  %VR24 = inttoptr i32 %VR23 to i32*
  %VR25 = icmp eq i32* %VR24,  null
  br i1 %VR25, label %false_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- dispatch_not_void_Main_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__12 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Main_1
dispatch_not_void_Main_1:
  %VR26 = ptrtoint i32* %VR24 to i32 
  %VR27 = add i32 %VR26, 8
  %VR28 = inttoptr i32 %VR27 to i32*
  %VR29 = load i32* %VR28
  %VR30 = add i32 %VR29, 12
  %VR31 = inttoptr i32 %VR30 to i32*
  %VR32 = load i32* %VR31
  %VR33 = inttoptr i32 %VR32 to i32 (i32, i32, i32, i32)*
  %VR34 = call i32 (i32, i32, i32, i32)* %VR33(i32 %VR23, i32 %VR18, i32 %VR19, i32 %VR20)
;; <- dispatch: linia 43
;; <- block: linia 41
  ret i32 %VR34
;#######################################; <- dispatch_not_void_Main_1


}
@s19 = internal constant [5 x i8] c"Main\00"
@str_const__19 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([5 x i8]* @s19, i32 0, i32 0)}
@s18 = internal constant [2 x i8] c"C\00"
@str_const__18 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s18, i32 0, i32 0)}
@s17 = internal constant [2 x i8] c"P\00"
@str_const__17 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s17, i32 0, i32 0)}
@s16 = internal constant [3 x i8] c"IO\00"
@str_const__16 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__14, i8* getelementptr ([3 x i8]* @s16, i32 0, i32 0)}
@s15 = internal constant [7 x i8] c"String\00"
@str_const__15 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__15, i8* getelementptr ([7 x i8]* @s15, i32 0, i32 0)}
@s14 = internal constant [5 x i8] c"Bool\00"
@str_const__14 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([5 x i8]* @s14, i32 0, i32 0)}
@s13 = internal constant [4 x i8] c"Int\00"
@str_const__13 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__16, i8* getelementptr ([4 x i8]* @s13, i32 0, i32 0)}
@s12 = internal constant [7 x i8] c"Object\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__15, i8* getelementptr ([7 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([11 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__17, i8* getelementptr ([10 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [10 x i8] c"_no_class\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__17, i8* getelementptr ([10 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [14 x i8] c"<basic class>\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__18, i8* getelementptr ([14 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [6 x i8] c"FALSE\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__19, i8* getelementptr ([6 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [5 x i8] c"TRUE\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([5 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [13 x i8] c"C.method2()\0A\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__5, i8* getelementptr ([13 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [7 x i8] c"false\0A\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__15, i8* getelementptr ([7 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [6 x i8] c"true\0A\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__19, i8* getelementptr ([6 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [2 x i8] c"\0A\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [1 x i8] c"\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([1 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [19 x i8] c"simple/dispatch.cl\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__20, i8* getelementptr ([19 x i8]* @s0, i32 0, i32 0)}
@int_const__20 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 18}
@int_const__19 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 5}
@int_const__18 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__17 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__16 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__15 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__14 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__13 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__12 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 43}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 42}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 23}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 22}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 21}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 17}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 16}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 12}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 11}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 20}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
%struct.P_protObj_t = type { i32, i32, %struct.P_dispTab_t*, i32 }
@P_protObj = global %struct.P_protObj_t {i32 5, i32 4, %struct.P_dispTab_t* @P_dispTab, i32 0}
%struct.C_protObj_t = type { i32, i32, %struct.C_dispTab_t*, i32 }
@C_protObj = global %struct.C_protObj_t {i32 6, i32 4, %struct.C_dispTab_t* @C_dispTab, i32 0}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t*, i32 }
@Main_protObj = global %struct.Main_protObj_t {i32 7, i32 4, %struct.Main_dispTab_t* @Main_dispTab, i32 0}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__12, %struct.String_protObj_t* @str_const__13, %struct.String_protObj_t* @str_const__14, %struct.String_protObj_t* @str_const__15, %struct.String_protObj_t* @str_const__16, %struct.String_protObj_t* @str_const__17, %struct.String_protObj_t* @str_const__18, %struct.String_protObj_t* @str_const__19 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @P_init to i8*), i8* bitcast (void (i32)* @C_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.P_dispTab_t = type { i8*, i8*, i8*, i8*}
@P_dispTab = global %struct.P_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32,i32,i32)* @P__method1 to i8*)}

%struct.C_dispTab_t = type { i8*, i8*, i8*, i8*, i8*}
@C_dispTab = global %struct.C_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32,i32,i32)* @P__method1 to i8*), i8* bitcast (i32 (i32)* @C__method2 to i8*)}

%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}


