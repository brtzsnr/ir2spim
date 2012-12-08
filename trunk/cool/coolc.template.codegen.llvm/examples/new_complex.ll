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
;- let -- dispatch -
;; -> dispatch: linia 3
;;generez codul pentru apelul metodei init
;- let -- dispatch -- int_const -
;; -> int_const: linia 3
  %VR1 = add i32 1, 0
;; <- int_const: linia 3
;- let -- dispatch -- int_const -
;; -> int_const: linia 3
  %VR2 = add i32 1, 0
;; <- int_const: linia 3
;- let -- dispatch -- new -
;; -> new: linia 3
  %VR3 = call i32  @Object__copy(i32 ptrtoint (%struct.Complex_protObj_t* @Complex_protObj to i32))
  call void @Complex_init(i32 %VR3)
;; <- new: linia 3
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__2 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR6 = ptrtoint i32* %VR4 to i32 
  %VR7 = add i32 %VR6, 8
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = add i32 %VR9, 28
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = inttoptr i32 %VR12 to i32 (i32, i32, i32)*
  %VR14 = call i32 (i32, i32, i32)* %VR13(i32 %VR3, i32 %VR1, i32 %VR2)
;; <- dispatch: linia 3
;- let -- block -
;; -> block: linia 4
;- let -- block -- cond -
;; -> cond: linia 6
;;if: linia 6 (expresia pentru predicat)
;;%VR15 rezervat pentru rezultatul if-ului
;- let -- block -- cond -- eq -
;; -> eq: linia 6
;- let -- block -- cond -- eq -- dispatch -
;; -> dispatch: linia 6
;;generez codul pentru apelul metodei reflect_X
;- let -- block -- cond -- eq -- dispatch -- object -
;; -> object: linia 6
;; <- object: linia 6
  %VR16 = inttoptr i32 %VR14 to i32*
  %VR17 = icmp eq i32* %VR16,  null
  br i1 %VR17, label %false_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- dispatch_not_void_Main_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__3 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Main_1
dispatch_not_void_Main_1:
  %VR18 = ptrtoint i32* %VR16 to i32 
  %VR19 = add i32 %VR18, 8
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = load i32* %VR20
  %VR22 = add i32 %VR21, 40
  %VR23 = inttoptr i32 %VR22 to i32*
  %VR24 = load i32* %VR23
  %VR25 = inttoptr i32 %VR24 to i32 (i32)*
  %VR26 = call i32 (i32)* %VR25(i32 %VR14)
;; <- dispatch: linia 6
;- let -- block -- cond -- eq -- dispatch -
;; -> dispatch: linia 6
;;generez codul pentru apelul metodei reflect_0
;- let -- block -- cond -- eq -- dispatch -- object -
;; -> object: linia 6
;; <- object: linia 6
  %VR27 = inttoptr i32 %VR14 to i32*
  %VR28 = icmp eq i32* %VR27,  null
  br i1 %VR28, label %false_dispatch2, label %dispatch_not_void_Main_2
;#######################################; <- dispatch_not_void_Main_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__3 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Main_2
dispatch_not_void_Main_2:
  %VR29 = ptrtoint i32* %VR27 to i32 
  %VR30 = add i32 %VR29, 8
  %VR31 = inttoptr i32 %VR30 to i32*
  %VR32 = load i32* %VR31
  %VR33 = add i32 %VR32, 36
  %VR34 = inttoptr i32 %VR33 to i32*
  %VR35 = load i32* %VR34
  %VR36 = inttoptr i32 %VR35 to i32 (i32)*
  %VR37 = call i32 (i32)* %VR36(i32 %VR14)
;; <- dispatch: linia 6
  br label %eq_test_join_true_Main_0
;#######################################; <- dispatch_not_void_Main_2


;#######################################; -> eq_test_join_true_Main_0
eq_test_join_true_Main_0:
  %VR38.0 = icmp eq i32 %VR26,  %VR37
  br i1 %VR38.0, label %eq_test_join_Main_0, label %eq_test_join_false_Main_0
;#######################################; <- eq_test_join_true_Main_0


;#######################################; -> eq_test_join_false_Main_0
eq_test_join_false_Main_0:
  %VR40 = call i32  @equality_test(i32 1, i32 0, i32 %VR26, i32 %VR37)
  %VR38.1 = icmp eq i32 %VR40,  1
  br label %eq_test_join_Main_0
;#######################################; <- eq_test_join_false_Main_0


;#######################################; -> eq_test_join_Main_0
eq_test_join_Main_0:
  %VR38 = phi i1 [ %VR38.0, %eq_test_join_true_Main_0 ] , [ %VR38.1, %eq_test_join_false_Main_0 ] 
;; <- eq: linia 6
  %VR41 = icmp eq i1 %VR38,  false
  br i1 %VR41, label %false_Main_0, label %false_false_Main_0
;#######################################; <- eq_test_join_Main_0


;#######################################; -> false_false_Main_0
false_false_Main_0:
;;if: linia 6 (expresia pentru then)
;- let -- block -- cond -- dispatch -
;; -> dispatch: linia 7
;;generez codul pentru apelul metodei out_string
;- let -- block -- cond -- dispatch -- string_const -
;; -> string_const: linia 7
  %VR42 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 7
;- let -- block -- cond -- dispatch -- object -
;; -> object: linia 7
;; <- object: linia 7
  %VR43 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR43, label %false_dispatch3, label %dispatch_not_void_Main_3
;#######################################; <- false_false_Main_0


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Main_3
dispatch_not_void_Main_3:
  %VR44 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR45 = add i32 %VR44, 8
  %VR46 = inttoptr i32 %VR45 to i32*
  %VR47 = load i32* %VR46
  %VR48 = add i32 %VR47, 16
  %VR49 = inttoptr i32 %VR48 to i32*
  %VR50 = load i32* %VR49
  %VR51 = inttoptr i32 %VR50 to i32 (i32, i32)*
  %VR52 = call i32 (i32, i32)* %VR51(i32 %ARG, i32 %VR42)
;; <- dispatch: linia 7
  br label %join_if_Main_0_true
;#######################################; <- dispatch_not_void_Main_3


;#######################################; -> join_if_Main_0_true
join_if_Main_0_true:
  %VR15.0 = add i32 %VR52, 0
  br label %join_if_Main_0
;#######################################; <- join_if_Main_0_true


;#######################################; -> false_Main_0
false_Main_0:
;;if: linia 6 (expresia pentru else)
;- let -- block -- cond -- dispatch -
;; -> dispatch: linia 8
;;generez codul pentru apelul metodei out_string
;- let -- block -- cond -- dispatch -- string_const -
;; -> string_const: linia 8
  %VR53 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 8
;- let -- block -- cond -- dispatch -- object -
;; -> object: linia 8
;; <- object: linia 8
  %VR54 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR54, label %false_dispatch4, label %dispatch_not_void_Main_4
;#######################################; <- false_Main_0


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__5 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Main_4
dispatch_not_void_Main_4:
  %VR55 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR56 = add i32 %VR55, 8
  %VR57 = inttoptr i32 %VR56 to i32*
  %VR58 = load i32* %VR57
  %VR59 = add i32 %VR58, 16
  %VR60 = inttoptr i32 %VR59 to i32*
  %VR61 = load i32* %VR60
  %VR62 = inttoptr i32 %VR61 to i32 (i32, i32)*
  %VR63 = call i32 (i32, i32)* %VR62(i32 %ARG, i32 %VR53)
;; <- dispatch: linia 8
  br label %join_if_Main_0_false
;#######################################; <- dispatch_not_void_Main_4


;#######################################; -> join_if_Main_0_false
join_if_Main_0_false:
  %VR15.1 = add i32 %VR63, 0
  br label %join_if_Main_0
;#######################################; <- join_if_Main_0_false


;#######################################; -> join_if_Main_0
join_if_Main_0:
  %VR15 = phi i32 [ %VR15.0, %join_if_Main_0_true ], [ %VR15.1, %join_if_Main_0_false ]
;; <- cond: linia 6
;- let -- block -- cond -
;; -> cond: linia 11
;;if: linia 11 (expresia pentru predicat)
;;%VR64 rezervat pentru rezultatul if-ului
;- let -- block -- cond -- dispatch -
;; -> dispatch: linia 11
;;generez codul pentru apelul metodei equal
;- let -- block -- cond -- dispatch -- dispatch -
;; -> dispatch: linia 11
;;generez codul pentru apelul metodei reflect_0
;- let -- block -- cond -- dispatch -- dispatch -- object -
;; -> object: linia 11
;; <- object: linia 11
  %VR65 = inttoptr i32 %VR14 to i32*
  %VR66 = icmp eq i32* %VR65,  null
  br i1 %VR66, label %false_dispatch5, label %dispatch_not_void_Main_5
;#######################################; <- join_if_Main_0


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_Main_5
dispatch_not_void_Main_5:
  %VR67 = ptrtoint i32* %VR65 to i32 
  %VR68 = add i32 %VR67, 8
  %VR69 = inttoptr i32 %VR68 to i32*
  %VR70 = load i32* %VR69
  %VR71 = add i32 %VR70, 36
  %VR72 = inttoptr i32 %VR71 to i32*
  %VR73 = load i32* %VR72
  %VR74 = inttoptr i32 %VR73 to i32 (i32)*
  %VR75 = call i32 (i32)* %VR74(i32 %VR14)
;; <- dispatch: linia 11
;- let -- block -- cond -- dispatch -- dispatch -
;; -> dispatch: linia 11
;;generez codul pentru apelul metodei reflect_Y
;- let -- block -- cond -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 11
;;generez codul pentru apelul metodei reflect_X
;- let -- block -- cond -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 11
;; <- object: linia 11
  %VR76 = inttoptr i32 %VR14 to i32*
  %VR77 = icmp eq i32* %VR76,  null
  br i1 %VR77, label %false_dispatch6, label %dispatch_not_void_Main_6
;#######################################; <- dispatch_not_void_Main_5


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_Main_6
dispatch_not_void_Main_6:
  %VR78 = ptrtoint i32* %VR76 to i32 
  %VR79 = add i32 %VR78, 8
  %VR80 = inttoptr i32 %VR79 to i32*
  %VR81 = load i32* %VR80
  %VR82 = add i32 %VR81, 40
  %VR83 = inttoptr i32 %VR82 to i32*
  %VR84 = load i32* %VR83
  %VR85 = inttoptr i32 %VR84 to i32 (i32)*
  %VR86 = call i32 (i32)* %VR85(i32 %VR14)
;; <- dispatch: linia 11
  %VR87 = inttoptr i32 %VR86 to i32*
  %VR88 = icmp eq i32* %VR87,  null
  br i1 %VR88, label %false_dispatch7, label %dispatch_not_void_Main_7
;#######################################; <- dispatch_not_void_Main_6


;#######################################; -> false_dispatch7
false_dispatch7:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch7


;#######################################; -> dispatch_not_void_Main_7
dispatch_not_void_Main_7:
  %VR89 = ptrtoint i32* %VR87 to i32 
  %VR90 = add i32 %VR89, 8
  %VR91 = inttoptr i32 %VR90 to i32*
  %VR92 = load i32* %VR91
  %VR93 = add i32 %VR92, 44
  %VR94 = inttoptr i32 %VR93 to i32*
  %VR95 = load i32* %VR94
  %VR96 = inttoptr i32 %VR95 to i32 (i32)*
  %VR97 = call i32 (i32)* %VR96(i32 %VR86)
;; <- dispatch: linia 11
  %VR98 = inttoptr i32 %VR97 to i32*
  %VR99 = icmp eq i32* %VR98,  null
  br i1 %VR99, label %false_dispatch8, label %dispatch_not_void_Main_8
;#######################################; <- dispatch_not_void_Main_7


;#######################################; -> false_dispatch8
false_dispatch8:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch8


;#######################################; -> dispatch_not_void_Main_8
dispatch_not_void_Main_8:
  %VR100 = ptrtoint i32* %VR98 to i32 
  %VR101 = add i32 %VR100, 8
  %VR102 = inttoptr i32 %VR101 to i32*
  %VR103 = load i32* %VR102
  %VR104 = add i32 %VR103, 48
  %VR105 = inttoptr i32 %VR104 to i32*
  %VR106 = load i32* %VR105
  %VR107 = inttoptr i32 %VR106 to i32 (i32, i32)*
  %VR108 = call i32 (i32, i32)* %VR107(i32 %VR97, i32 %VR75)
;; <- dispatch: linia 11
  %VR109 = icmp eq i32 %VR108,  0
  br i1 %VR109, label %false_Main_1, label %false_false_Main_1
;#######################################; <- dispatch_not_void_Main_8


;#######################################; -> false_false_Main_1
false_false_Main_1:
;;if: linia 11 (expresia pentru then)
;- let -- block -- cond -- dispatch -
;; -> dispatch: linia 12
;;generez codul pentru apelul metodei out_string
;- let -- block -- cond -- dispatch -- string_const -
;; -> string_const: linia 12
  %VR110 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 12
;- let -- block -- cond -- dispatch -- object -
;; -> object: linia 12
;; <- object: linia 12
  %VR111 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR111, label %false_dispatch9, label %dispatch_not_void_Main_9
;#######################################; <- false_false_Main_1


;#######################################; -> false_dispatch9
false_dispatch9:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__7 to i32))
  ret i32 0
;#######################################; <- false_dispatch9


;#######################################; -> dispatch_not_void_Main_9
dispatch_not_void_Main_9:
  %VR112 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR113 = add i32 %VR112, 8
  %VR114 = inttoptr i32 %VR113 to i32*
  %VR115 = load i32* %VR114
  %VR116 = add i32 %VR115, 16
  %VR117 = inttoptr i32 %VR116 to i32*
  %VR118 = load i32* %VR117
  %VR119 = inttoptr i32 %VR118 to i32 (i32, i32)*
  %VR120 = call i32 (i32, i32)* %VR119(i32 %ARG, i32 %VR110)
;; <- dispatch: linia 12
  br label %join_if_Main_1_true
;#######################################; <- dispatch_not_void_Main_9


;#######################################; -> join_if_Main_1_true
join_if_Main_1_true:
  %VR64.0 = add i32 %VR120, 0
  br label %join_if_Main_1
;#######################################; <- join_if_Main_1_true


;#######################################; -> false_Main_1
false_Main_1:
;;if: linia 11 (expresia pentru else)
;- let -- block -- cond -- dispatch -
;; -> dispatch: linia 13
;;generez codul pentru apelul metodei out_string
;- let -- block -- cond -- dispatch -- string_const -
;; -> string_const: linia 13
  %VR121 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 13
;- let -- block -- cond -- dispatch -- object -
;; -> object: linia 13
;; <- object: linia 13
  %VR122 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR122, label %false_dispatch10, label %dispatch_not_void_Main_10
;#######################################; <- false_Main_1


;#######################################; -> false_dispatch10
false_dispatch10:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__8 to i32))
  ret i32 0
;#######################################; <- false_dispatch10


;#######################################; -> dispatch_not_void_Main_10
dispatch_not_void_Main_10:
  %VR123 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR124 = add i32 %VR123, 8
  %VR125 = inttoptr i32 %VR124 to i32*
  %VR126 = load i32* %VR125
  %VR127 = add i32 %VR126, 16
  %VR128 = inttoptr i32 %VR127 to i32*
  %VR129 = load i32* %VR128
  %VR130 = inttoptr i32 %VR129 to i32 (i32, i32)*
  %VR131 = call i32 (i32, i32)* %VR130(i32 %ARG, i32 %VR121)
;; <- dispatch: linia 13
  br label %join_if_Main_1_false
;#######################################; <- dispatch_not_void_Main_10


;#######################################; -> join_if_Main_1_false
join_if_Main_1_false:
  %VR64.1 = add i32 %VR131, 0
  br label %join_if_Main_1
;#######################################; <- join_if_Main_1_false


;#######################################; -> join_if_Main_1
join_if_Main_1:
  %VR64 = phi i32 [ %VR64.0, %join_if_Main_1_true ], [ %VR64.1, %join_if_Main_1_false ]
;; <- cond: linia 11
;; <- block: linia 4
;; <- let: linia 3
  ret i32 %VR64
;#######################################; <- join_if_Main_1


}
define void @Complex_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @Complex__init(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Complex_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- block -
;; -> block: linia 25
;- block -- eq -
;; -> eq: linia 26
;- block -- eq -- object -
;; -> object: linia 26
  %VR3 = add i32 %ARG, 12
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
;; <- object: linia 26
;- block -- eq -- object -
;; -> object: linia 26
;; <- object: linia 26
;boxing to int
  %VR6 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR7 = add i32 %VR6, 12
  %VR8 = inttoptr i32 %VR7 to i32*
  store i32 %VR5, i32* %VR8
;boxing to int
  %VR9 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR10 = add i32 %VR9, 12
  %VR11 = inttoptr i32 %VR10 to i32*
  store i32 %VR1, i32* %VR11
  br label %eq_test_join_true_Complex_0
;#######################################; <- entry


;#######################################; -> eq_test_join_true_Complex_0
eq_test_join_true_Complex_0:
  %VR12.0 = icmp eq i32 %VR6,  %VR9
  br i1 %VR12.0, label %eq_test_join_Complex_0, label %eq_test_join_false_Complex_0
;#######################################; <- eq_test_join_true_Complex_0


;#######################################; -> eq_test_join_false_Complex_0
eq_test_join_false_Complex_0:
  %VR14 = call i32  @equality_test(i32 1, i32 0, i32 %VR6, i32 %VR9)
  %VR12.1 = icmp eq i32 %VR14,  1
  br label %eq_test_join_Complex_0
;#######################################; <- eq_test_join_false_Complex_0


;#######################################; -> eq_test_join_Complex_0
eq_test_join_Complex_0:
  %VR12 = phi i1 [ %VR12.0, %eq_test_join_true_Complex_0 ] , [ %VR12.1, %eq_test_join_false_Complex_0 ] 
;; <- eq: linia 26
;- block -- eq -
;; -> eq: linia 27
;- block -- eq -- object -
;; -> object: linia 27
  %VR15 = add i32 %ARG, 16
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
;; <- object: linia 27
;- block -- eq -- object -
;; -> object: linia 27
;; <- object: linia 27
;boxing to int
  %VR18 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR19 = add i32 %VR18, 12
  %VR20 = inttoptr i32 %VR19 to i32*
  store i32 %VR17, i32* %VR20
;boxing to int
  %VR21 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR22 = add i32 %VR21, 12
  %VR23 = inttoptr i32 %VR22 to i32*
  store i32 %VR2, i32* %VR23
  br label %eq_test_join_true_Complex_1
;#######################################; <- eq_test_join_Complex_0


;#######################################; -> eq_test_join_true_Complex_1
eq_test_join_true_Complex_1:
  %VR24.0 = icmp eq i32 %VR18,  %VR21
  br i1 %VR24.0, label %eq_test_join_Complex_1, label %eq_test_join_false_Complex_1
;#######################################; <- eq_test_join_true_Complex_1


;#######################################; -> eq_test_join_false_Complex_1
eq_test_join_false_Complex_1:
  %VR26 = call i32  @equality_test(i32 1, i32 0, i32 %VR18, i32 %VR21)
  %VR24.1 = icmp eq i32 %VR26,  1
  br label %eq_test_join_Complex_1
;#######################################; <- eq_test_join_false_Complex_1


;#######################################; -> eq_test_join_Complex_1
eq_test_join_Complex_1:
  %VR24 = phi i1 [ %VR24.0, %eq_test_join_true_Complex_1 ] , [ %VR24.1, %eq_test_join_false_Complex_1 ] 
;; <- eq: linia 27
;- block -- object -
;; -> object: linia 28
;; <- object: linia 28
;; <- block: linia 25
  ret i32 %ARG
;#######################################; <- eq_test_join_Complex_1


}
define i32 @Complex__print(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Complex_protObj_t*
;- cond -
;; -> cond: linia 33
;;if: linia 33 (expresia pentru predicat)
;;%VR1 rezervat pentru rezultatul if-ului
;- cond -- eq -
;; -> eq: linia 33
;- cond -- eq -- object -
;; -> object: linia 33
  %VR2 = add i32 %ARG, 16
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = load i32* %VR3
;; <- object: linia 33
;- cond -- eq -- int_const -
;; -> int_const: linia 33
  %VR5 = add i32 0, 0
;; <- int_const: linia 33
;boxing to int
  %VR6 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR7 = add i32 %VR6, 12
  %VR8 = inttoptr i32 %VR7 to i32*
  store i32 %VR4, i32* %VR8
;boxing to int
  %VR9 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR10 = add i32 %VR9, 12
  %VR11 = inttoptr i32 %VR10 to i32*
  store i32 %VR5, i32* %VR11
  br label %eq_test_join_true_Complex_2
;#######################################; <- entry


;#######################################; -> eq_test_join_true_Complex_2
eq_test_join_true_Complex_2:
  %VR12.0 = icmp eq i32 %VR6,  %VR9
  br i1 %VR12.0, label %eq_test_join_Complex_2, label %eq_test_join_false_Complex_2
;#######################################; <- eq_test_join_true_Complex_2


;#######################################; -> eq_test_join_false_Complex_2
eq_test_join_false_Complex_2:
  %VR14 = call i32  @equality_test(i32 1, i32 0, i32 %VR6, i32 %VR9)
  %VR12.1 = icmp eq i32 %VR14,  1
  br label %eq_test_join_Complex_2
;#######################################; <- eq_test_join_false_Complex_2


;#######################################; -> eq_test_join_Complex_2
eq_test_join_Complex_2:
  %VR12 = phi i1 [ %VR12.0, %eq_test_join_true_Complex_2 ] , [ %VR12.1, %eq_test_join_false_Complex_2 ] 
;; <- eq: linia 33
  %VR15 = icmp eq i1 %VR12,  false
  br i1 %VR15, label %false_Complex_0, label %false_false_Complex_0
;#######################################; <- eq_test_join_Complex_2


;#######################################; -> false_false_Complex_0
false_false_Complex_0:
;;if: linia 33 (expresia pentru then)
;- cond -- dispatch -
;; -> dispatch: linia 34
;;generez codul pentru apelul metodei out_int
;- cond -- dispatch -- object -
;; -> object: linia 34
  %VR16 = add i32 %ARG, 12
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = load i32* %VR17
;; <- object: linia 34
;- cond -- dispatch -- object -
;; -> object: linia 34
;; <- object: linia 34
  %VR19 = icmp eq %struct.Complex_protObj_t* %VR0,  null
  br i1 %VR19, label %false_dispatch0, label %dispatch_not_void_Complex_0
;#######################################; <- false_false_Complex_0


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__9 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Complex_0
dispatch_not_void_Complex_0:
  %VR20 = ptrtoint %struct.Complex_protObj_t* %VR0 to i32 
  %VR21 = add i32 %VR20, 8
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = load i32* %VR22
  %VR24 = add i32 %VR23, 12
  %VR25 = inttoptr i32 %VR24 to i32*
  %VR26 = load i32* %VR25
;boxing to int
  %VR27 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR28 = add i32 %VR27, 12
  %VR29 = inttoptr i32 %VR28 to i32*
  store i32 %VR18, i32* %VR29
  %VR30 = inttoptr i32 %VR26 to i32 (i32, i32)*
  %VR31 = call i32 (i32, i32)* %VR30(i32 %ARG, i32 %VR27)
;; <- dispatch: linia 34
  br label %join_if_Complex_0_true
;#######################################; <- dispatch_not_void_Complex_0


;#######################################; -> join_if_Complex_0_true
join_if_Complex_0_true:
  %VR1.0 = add i32 %VR31, 0
  br label %join_if_Complex_0
;#######################################; <- join_if_Complex_0_true


;#######################################; -> false_Complex_0
false_Complex_0:
;;if: linia 33 (expresia pentru else)
;- cond -- dispatch -
;; -> dispatch: linia 35
;;generez codul pentru apelul metodei out_string
;- cond -- dispatch -- string_const -
;; -> string_const: linia 35
  %VR32 = ptrtoint %struct.String_protObj_t* @str_const__4 to i32 
;; <- string_const: linia 35
;- cond -- dispatch -- dispatch -
;; -> dispatch: linia 35
;;generez codul pentru apelul metodei out_int
;- cond -- dispatch -- dispatch -- object -
;; -> object: linia 35
  %VR33 = add i32 %ARG, 16
  %VR34 = inttoptr i32 %VR33 to i32*
  %VR35 = load i32* %VR34
;; <- object: linia 35
;- cond -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 35
;;generez codul pentru apelul metodei out_string
;- cond -- dispatch -- dispatch -- dispatch -- string_const -
;; -> string_const: linia 35
  %VR36 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 35
;- cond -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 35
;;generez codul pentru apelul metodei out_int
;- cond -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 35
  %VR37 = add i32 %ARG, 12
  %VR38 = inttoptr i32 %VR37 to i32*
  %VR39 = load i32* %VR38
;; <- object: linia 35
;- cond -- dispatch -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 35
;; <- object: linia 35
  %VR40 = icmp eq %struct.Complex_protObj_t* %VR0,  null
  br i1 %VR40, label %false_dispatch1, label %dispatch_not_void_Complex_1
;#######################################; <- false_Complex_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__10 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Complex_1
dispatch_not_void_Complex_1:
  %VR41 = ptrtoint %struct.Complex_protObj_t* %VR0 to i32 
  %VR42 = add i32 %VR41, 8
  %VR43 = inttoptr i32 %VR42 to i32*
  %VR44 = load i32* %VR43
  %VR45 = add i32 %VR44, 12
  %VR46 = inttoptr i32 %VR45 to i32*
  %VR47 = load i32* %VR46
;boxing to int
  %VR48 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR49 = add i32 %VR48, 12
  %VR50 = inttoptr i32 %VR49 to i32*
  store i32 %VR39, i32* %VR50
  %VR51 = inttoptr i32 %VR47 to i32 (i32, i32)*
  %VR52 = call i32 (i32, i32)* %VR51(i32 %ARG, i32 %VR48)
;; <- dispatch: linia 35
  %VR53 = inttoptr i32 %VR52 to i32*
  %VR54 = icmp eq i32* %VR53,  null
  br i1 %VR54, label %false_dispatch2, label %dispatch_not_void_Complex_2
;#######################################; <- dispatch_not_void_Complex_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__10 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Complex_2
dispatch_not_void_Complex_2:
  %VR55 = ptrtoint i32* %VR53 to i32 
  %VR56 = add i32 %VR55, 8
  %VR57 = inttoptr i32 %VR56 to i32*
  %VR58 = load i32* %VR57
  %VR59 = add i32 %VR58, 16
  %VR60 = inttoptr i32 %VR59 to i32*
  %VR61 = load i32* %VR60
  %VR62 = inttoptr i32 %VR61 to i32 (i32, i32)*
  %VR63 = call i32 (i32, i32)* %VR62(i32 %VR52, i32 %VR36)
;; <- dispatch: linia 35
  %VR64 = inttoptr i32 %VR63 to i32*
  %VR65 = icmp eq i32* %VR64,  null
  br i1 %VR65, label %false_dispatch3, label %dispatch_not_void_Complex_3
;#######################################; <- dispatch_not_void_Complex_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__10 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Complex_3
dispatch_not_void_Complex_3:
  %VR66 = ptrtoint i32* %VR64 to i32 
  %VR67 = add i32 %VR66, 8
  %VR68 = inttoptr i32 %VR67 to i32*
  %VR69 = load i32* %VR68
  %VR70 = add i32 %VR69, 12
  %VR71 = inttoptr i32 %VR70 to i32*
  %VR72 = load i32* %VR71
;boxing to int
  %VR73 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR74 = add i32 %VR73, 12
  %VR75 = inttoptr i32 %VR74 to i32*
  store i32 %VR35, i32* %VR75
  %VR76 = inttoptr i32 %VR72 to i32 (i32, i32)*
  %VR77 = call i32 (i32, i32)* %VR76(i32 %VR63, i32 %VR73)
;; <- dispatch: linia 35
  %VR78 = inttoptr i32 %VR77 to i32*
  %VR79 = icmp eq i32* %VR78,  null
  br i1 %VR79, label %false_dispatch4, label %dispatch_not_void_Complex_4
;#######################################; <- dispatch_not_void_Complex_3


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__10 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Complex_4
dispatch_not_void_Complex_4:
  %VR80 = ptrtoint i32* %VR78 to i32 
  %VR81 = add i32 %VR80, 8
  %VR82 = inttoptr i32 %VR81 to i32*
  %VR83 = load i32* %VR82
  %VR84 = add i32 %VR83, 16
  %VR85 = inttoptr i32 %VR84 to i32*
  %VR86 = load i32* %VR85
  %VR87 = inttoptr i32 %VR86 to i32 (i32, i32)*
  %VR88 = call i32 (i32, i32)* %VR87(i32 %VR77, i32 %VR32)
;; <- dispatch: linia 35
  br label %join_if_Complex_0_false
;#######################################; <- dispatch_not_void_Complex_4


;#######################################; -> join_if_Complex_0_false
join_if_Complex_0_false:
  %VR1.1 = add i32 %VR88, 0
  br label %join_if_Complex_0
;#######################################; <- join_if_Complex_0_false


;#######################################; -> join_if_Complex_0
join_if_Complex_0:
  %VR1 = phi i32 [ %VR1.0, %join_if_Complex_0_true ], [ %VR1.1, %join_if_Complex_0_false ]
;; <- cond: linia 33
  ret i32 %VR1
;#######################################; <- join_if_Complex_0


}
define i32 @Complex__reflect_0(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Complex_protObj_t*
;- block -
;; -> block: linia 40
;- block -- eq -
;; -> eq: linia 41
;- block -- eq -- object -
;; -> object: linia 41
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 41
;- block -- eq -- neg -
;; -> neg: linia 41
;- block -- eq -- neg -- object -
;; -> object: linia 41
  %VR4 = add i32 %ARG, 12
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
;; <- object: linia 41
  %VR7 = xor i32 1, %VR6
;; <- neg: linia 41
;boxing to int
  %VR8 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR9 = add i32 %VR8, 12
  %VR10 = inttoptr i32 %VR9 to i32*
  store i32 %VR3, i32* %VR10
;boxing to int
  %VR11 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR12 = add i32 %VR11, 12
  %VR13 = inttoptr i32 %VR12 to i32*
  store i32 %VR7, i32* %VR13
  br label %eq_test_join_true_Complex_3
;#######################################; <- entry


;#######################################; -> eq_test_join_true_Complex_3
eq_test_join_true_Complex_3:
  %VR14.0 = icmp eq i32 %VR8,  %VR11
  br i1 %VR14.0, label %eq_test_join_Complex_3, label %eq_test_join_false_Complex_3
;#######################################; <- eq_test_join_true_Complex_3


;#######################################; -> eq_test_join_false_Complex_3
eq_test_join_false_Complex_3:
  %VR16 = call i32  @equality_test(i32 1, i32 0, i32 %VR8, i32 %VR11)
  %VR14.1 = icmp eq i32 %VR16,  1
  br label %eq_test_join_Complex_3
;#######################################; <- eq_test_join_false_Complex_3


;#######################################; -> eq_test_join_Complex_3
eq_test_join_Complex_3:
  %VR14 = phi i1 [ %VR14.0, %eq_test_join_true_Complex_3 ] , [ %VR14.1, %eq_test_join_false_Complex_3 ] 
;; <- eq: linia 41
;- block -- eq -
;; -> eq: linia 42
;- block -- eq -- object -
;; -> object: linia 42
  %VR17 = add i32 %ARG, 16
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
;; <- object: linia 42
;- block -- eq -- neg -
;; -> neg: linia 42
;- block -- eq -- neg -- object -
;; -> object: linia 42
  %VR20 = add i32 %ARG, 16
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
;; <- object: linia 42
  %VR23 = xor i32 1, %VR22
;; <- neg: linia 42
;boxing to int
  %VR24 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR25 = add i32 %VR24, 12
  %VR26 = inttoptr i32 %VR25 to i32*
  store i32 %VR19, i32* %VR26
;boxing to int
  %VR27 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR28 = add i32 %VR27, 12
  %VR29 = inttoptr i32 %VR28 to i32*
  store i32 %VR23, i32* %VR29
  br label %eq_test_join_true_Complex_4
;#######################################; <- eq_test_join_Complex_3


;#######################################; -> eq_test_join_true_Complex_4
eq_test_join_true_Complex_4:
  %VR30.0 = icmp eq i32 %VR24,  %VR27
  br i1 %VR30.0, label %eq_test_join_Complex_4, label %eq_test_join_false_Complex_4
;#######################################; <- eq_test_join_true_Complex_4


;#######################################; -> eq_test_join_false_Complex_4
eq_test_join_false_Complex_4:
  %VR32 = call i32  @equality_test(i32 1, i32 0, i32 %VR24, i32 %VR27)
  %VR30.1 = icmp eq i32 %VR32,  1
  br label %eq_test_join_Complex_4
;#######################################; <- eq_test_join_false_Complex_4


;#######################################; -> eq_test_join_Complex_4
eq_test_join_Complex_4:
  %VR30 = phi i1 [ %VR30.0, %eq_test_join_true_Complex_4 ] , [ %VR30.1, %eq_test_join_false_Complex_4 ] 
;; <- eq: linia 42
;- block -- object -
;; -> object: linia 43
;; <- object: linia 43
;; <- block: linia 40
  ret i32 %ARG
;#######################################; <- eq_test_join_Complex_4


}
define i32 @Complex__reflect_X(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Complex_protObj_t*
;- block -
;; -> block: linia 48
;- block -- eq -
;; -> eq: linia 49
;- block -- eq -- object -
;; -> object: linia 49
  %VR1 = add i32 %ARG, 16
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 49
;- block -- eq -- neg -
;; -> neg: linia 49
;- block -- eq -- neg -- object -
;; -> object: linia 49
  %VR4 = add i32 %ARG, 16
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
;; <- object: linia 49
  %VR7 = xor i32 1, %VR6
;; <- neg: linia 49
;boxing to int
  %VR8 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR9 = add i32 %VR8, 12
  %VR10 = inttoptr i32 %VR9 to i32*
  store i32 %VR3, i32* %VR10
;boxing to int
  %VR11 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR12 = add i32 %VR11, 12
  %VR13 = inttoptr i32 %VR12 to i32*
  store i32 %VR7, i32* %VR13
  br label %eq_test_join_true_Complex_5
;#######################################; <- entry


;#######################################; -> eq_test_join_true_Complex_5
eq_test_join_true_Complex_5:
  %VR14.0 = icmp eq i32 %VR8,  %VR11
  br i1 %VR14.0, label %eq_test_join_Complex_5, label %eq_test_join_false_Complex_5
;#######################################; <- eq_test_join_true_Complex_5


;#######################################; -> eq_test_join_false_Complex_5
eq_test_join_false_Complex_5:
  %VR16 = call i32  @equality_test(i32 1, i32 0, i32 %VR8, i32 %VR11)
  %VR14.1 = icmp eq i32 %VR16,  1
  br label %eq_test_join_Complex_5
;#######################################; <- eq_test_join_false_Complex_5


;#######################################; -> eq_test_join_Complex_5
eq_test_join_Complex_5:
  %VR14 = phi i1 [ %VR14.0, %eq_test_join_true_Complex_5 ] , [ %VR14.1, %eq_test_join_false_Complex_5 ] 
;; <- eq: linia 49
;- block -- object -
;; -> object: linia 50
;; <- object: linia 50
;; <- block: linia 48
  ret i32 %ARG
;#######################################; <- eq_test_join_Complex_5


}
define i32 @Complex__reflect_Y(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Complex_protObj_t*
;- block -
;; -> block: linia 55
;- block -- eq -
;; -> eq: linia 56
;- block -- eq -- object -
;; -> object: linia 56
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 56
;- block -- eq -- neg -
;; -> neg: linia 56
;- block -- eq -- neg -- object -
;; -> object: linia 56
  %VR4 = add i32 %ARG, 12
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
;; <- object: linia 56
  %VR7 = xor i32 1, %VR6
;; <- neg: linia 56
;boxing to int
  %VR8 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR9 = add i32 %VR8, 12
  %VR10 = inttoptr i32 %VR9 to i32*
  store i32 %VR3, i32* %VR10
;boxing to int
  %VR11 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR12 = add i32 %VR11, 12
  %VR13 = inttoptr i32 %VR12 to i32*
  store i32 %VR7, i32* %VR13
  br label %eq_test_join_true_Complex_6
;#######################################; <- entry


;#######################################; -> eq_test_join_true_Complex_6
eq_test_join_true_Complex_6:
  %VR14.0 = icmp eq i32 %VR8,  %VR11
  br i1 %VR14.0, label %eq_test_join_Complex_6, label %eq_test_join_false_Complex_6
;#######################################; <- eq_test_join_true_Complex_6


;#######################################; -> eq_test_join_false_Complex_6
eq_test_join_false_Complex_6:
  %VR16 = call i32  @equality_test(i32 1, i32 0, i32 %VR8, i32 %VR11)
  %VR14.1 = icmp eq i32 %VR16,  1
  br label %eq_test_join_Complex_6
;#######################################; <- eq_test_join_false_Complex_6


;#######################################; -> eq_test_join_Complex_6
eq_test_join_Complex_6:
  %VR14 = phi i1 [ %VR14.0, %eq_test_join_true_Complex_6 ] , [ %VR14.1, %eq_test_join_false_Complex_6 ] 
;; <- eq: linia 56
;- block -- object -
;; -> object: linia 57
;; <- object: linia 57
;; <- block: linia 55
  ret i32 %ARG
;#######################################; <- eq_test_join_Complex_6


}
define i32 @Complex__equal(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Complex_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 62
;;if: linia 62 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- eq -
;; -> eq: linia 62
;- cond -- eq -- object -
;; -> object: linia 62
  %VR3 = add i32 %ARG, 12
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
;; <- object: linia 62
;- cond -- eq -- dispatch -
;; -> dispatch: linia 62
;;generez codul pentru apelul metodei x_value
;- cond -- eq -- dispatch -- object -
;; -> object: linia 62
;; <- object: linia 62
  %VR6 = inttoptr i32 %VR1 to i32*
  %VR7 = icmp eq i32* %VR6,  null
  br i1 %VR7, label %false_dispatch5, label %dispatch_not_void_Complex_5
;#######################################; <- entry


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__11 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_Complex_5
dispatch_not_void_Complex_5:
  %VR8 = ptrtoint i32* %VR6 to i32 
  %VR9 = add i32 %VR8, 8
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = add i32 %VR11, 52
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
  %VR15 = inttoptr i32 %VR14 to i32 (i32)*
  %VR16 = call i32 (i32)* %VR15(i32 %VR1)
;; <- dispatch: linia 62
;boxing to int
  %VR17 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR18 = add i32 %VR17, 12
  %VR19 = inttoptr i32 %VR18 to i32*
  store i32 %VR5, i32* %VR19
;boxing to int
  %VR20 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR21 = add i32 %VR20, 12
  %VR22 = inttoptr i32 %VR21 to i32*
  store i32 %VR16, i32* %VR22
  br label %eq_test_join_true_Complex_7
;#######################################; <- dispatch_not_void_Complex_5


;#######################################; -> eq_test_join_true_Complex_7
eq_test_join_true_Complex_7:
  %VR23.0 = icmp eq i32 %VR17,  %VR20
  br i1 %VR23.0, label %eq_test_join_Complex_7, label %eq_test_join_false_Complex_7
;#######################################; <- eq_test_join_true_Complex_7


;#######################################; -> eq_test_join_false_Complex_7
eq_test_join_false_Complex_7:
  %VR25 = call i32  @equality_test(i32 1, i32 0, i32 %VR17, i32 %VR20)
  %VR23.1 = icmp eq i32 %VR25,  1
  br label %eq_test_join_Complex_7
;#######################################; <- eq_test_join_false_Complex_7


;#######################################; -> eq_test_join_Complex_7
eq_test_join_Complex_7:
  %VR23 = phi i1 [ %VR23.0, %eq_test_join_true_Complex_7 ] , [ %VR23.1, %eq_test_join_false_Complex_7 ] 
;; <- eq: linia 62
  %VR26 = icmp eq i1 %VR23,  false
  br i1 %VR26, label %false_Complex_1, label %false_false_Complex_1
;#######################################; <- eq_test_join_Complex_7


;#######################################; -> false_false_Complex_1
false_false_Complex_1:
;;if: linia 62 (expresia pentru then)
;- cond -- cond -
;; -> cond: linia 64
;;if: linia 64 (expresia pentru predicat)
;;%VR27 rezervat pentru rezultatul if-ului
;- cond -- cond -- eq -
;; -> eq: linia 64
;- cond -- cond -- eq -- object -
;; -> object: linia 64
  %VR28 = add i32 %ARG, 16
  %VR29 = inttoptr i32 %VR28 to i32*
  %VR30 = load i32* %VR29
;; <- object: linia 64
;- cond -- cond -- eq -- dispatch -
;; -> dispatch: linia 64
;;generez codul pentru apelul metodei y_value
;- cond -- cond -- eq -- dispatch -- object -
;; -> object: linia 64
;; <- object: linia 64
  %VR31 = inttoptr i32 %VR1 to i32*
  %VR32 = icmp eq i32* %VR31,  null
  br i1 %VR32, label %false_dispatch6, label %dispatch_not_void_Complex_6
;#######################################; <- false_false_Complex_1


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__12 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_Complex_6
dispatch_not_void_Complex_6:
  %VR33 = ptrtoint i32* %VR31 to i32 
  %VR34 = add i32 %VR33, 8
  %VR35 = inttoptr i32 %VR34 to i32*
  %VR36 = load i32* %VR35
  %VR37 = add i32 %VR36, 56
  %VR38 = inttoptr i32 %VR37 to i32*
  %VR39 = load i32* %VR38
  %VR40 = inttoptr i32 %VR39 to i32 (i32)*
  %VR41 = call i32 (i32)* %VR40(i32 %VR1)
;; <- dispatch: linia 64
;boxing to int
  %VR42 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR43 = add i32 %VR42, 12
  %VR44 = inttoptr i32 %VR43 to i32*
  store i32 %VR30, i32* %VR44
;boxing to int
  %VR45 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR46 = add i32 %VR45, 12
  %VR47 = inttoptr i32 %VR46 to i32*
  store i32 %VR41, i32* %VR47
  br label %eq_test_join_true_Complex_8
;#######################################; <- dispatch_not_void_Complex_6


;#######################################; -> eq_test_join_true_Complex_8
eq_test_join_true_Complex_8:
  %VR48.0 = icmp eq i32 %VR42,  %VR45
  br i1 %VR48.0, label %eq_test_join_Complex_8, label %eq_test_join_false_Complex_8
;#######################################; <- eq_test_join_true_Complex_8


;#######################################; -> eq_test_join_false_Complex_8
eq_test_join_false_Complex_8:
  %VR50 = call i32  @equality_test(i32 1, i32 0, i32 %VR42, i32 %VR45)
  %VR48.1 = icmp eq i32 %VR50,  1
  br label %eq_test_join_Complex_8
;#######################################; <- eq_test_join_false_Complex_8


;#######################################; -> eq_test_join_Complex_8
eq_test_join_Complex_8:
  %VR48 = phi i1 [ %VR48.0, %eq_test_join_true_Complex_8 ] , [ %VR48.1, %eq_test_join_false_Complex_8 ] 
;; <- eq: linia 64
  %VR51 = icmp eq i1 %VR48,  false
  br i1 %VR51, label %false_Complex_2, label %false_false_Complex_2
;#######################################; <- eq_test_join_Complex_8


;#######################################; -> false_false_Complex_2
false_false_Complex_2:
;;if: linia 64 (expresia pentru then)
;- cond -- cond -- bool_const -
;; -> bool_const: linia 65
  %VR52 = add i32 1, 0
;; <- bool_const: linia 65
  br label %join_if_Complex_2_true
;#######################################; <- false_false_Complex_2


;#######################################; -> join_if_Complex_2_true
join_if_Complex_2_true:
  %VR27.0 = add i32 %VR52, 0
  br label %join_if_Complex_2
;#######################################; <- join_if_Complex_2_true


;#######################################; -> false_Complex_2
false_Complex_2:
;;if: linia 64 (expresia pentru else)
;- cond -- cond -- bool_const -
;; -> bool_const: linia 66
  %VR53 = add i32 0, 0
;; <- bool_const: linia 66
  br label %join_if_Complex_2_false
;#######################################; <- false_Complex_2


;#######################################; -> join_if_Complex_2_false
join_if_Complex_2_false:
  %VR27.1 = add i32 %VR53, 0
  br label %join_if_Complex_2
;#######################################; <- join_if_Complex_2_false


;#######################################; -> join_if_Complex_2
join_if_Complex_2:
  %VR27 = phi i32 [ %VR27.0, %join_if_Complex_2_true ], [ %VR27.1, %join_if_Complex_2_false ]
;; <- cond: linia 64
  br label %join_if_Complex_1_true
;#######################################; <- join_if_Complex_2


;#######################################; -> join_if_Complex_1_true
join_if_Complex_1_true:
  %VR2.0 = add i32 %VR27, 0
  br label %join_if_Complex_1
;#######################################; <- join_if_Complex_1_true


;#######################################; -> false_Complex_1
false_Complex_1:
;;if: linia 62 (expresia pentru else)
;- cond -- bool_const -
;; -> bool_const: linia 68
  %VR54 = add i32 0, 0
;; <- bool_const: linia 68
  br label %join_if_Complex_1_false
;#######################################; <- false_Complex_1


;#######################################; -> join_if_Complex_1_false
join_if_Complex_1_false:
  %VR2.1 = add i32 %VR54, 0
  br label %join_if_Complex_1
;#######################################; <- join_if_Complex_1_false


;#######################################; -> join_if_Complex_1
join_if_Complex_1:
  %VR2 = phi i32 [ %VR2.0, %join_if_Complex_1_true ], [ %VR2.1, %join_if_Complex_1_false ]
;; <- cond: linia 62
  ret i32 %VR2
;#######################################; <- join_if_Complex_1


}
define i32 @Complex__x_value(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Complex_protObj_t*
;- object -
;; -> object: linia 73
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 73
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @Complex__y_value(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Complex_protObj_t*
;- object -
;; -> object: linia 77
  %VR1 = add i32 %ARG, 16
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 77
  ret i32 %VR3
;#######################################; <- entry


}
@s16 = internal constant [1 x i8] c"\00"
@str_const__16 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([1 x i8]* @s16, i32 0, i32 0)}
@s15 = internal constant [8 x i8] c"Complex\00"
@str_const__15 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([8 x i8]* @s15, i32 0, i32 0)}
@s14 = internal constant [5 x i8] c"Main\00"
@str_const__14 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([5 x i8]* @s14, i32 0, i32 0)}
@s13 = internal constant [3 x i8] c"IO\00"
@str_const__13 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__14, i8* getelementptr ([3 x i8]* @s13, i32 0, i32 0)}
@s12 = internal constant [7 x i8] c"String\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([7 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [5 x i8] c"Bool\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([5 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [4 x i8] c"Int\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([4 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [7 x i8] c"Object\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([7 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__15, i8* getelementptr ([11 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__16, i8* getelementptr ([10 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [10 x i8] c"_no_class\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__16, i8* getelementptr ([10 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [14 x i8] c"<basic class>\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([14 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [2 x i8] c"I\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [2 x i8] c"+\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [4 x i8] c"=(\0A\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([4 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [4 x i8] c"=)\0A\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([4 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [15 x i8] c"/tmp/cplNs1bLm\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__17, i8* getelementptr ([15 x i8]* @s0, i32 0, i32 0)}
@int_const__17 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 14}
@int_const__16 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__15 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__14 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__13 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__12 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 64}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 62}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 35}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 34}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 12}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 11}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 8}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 7}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t* }
@Main_protObj = global %struct.Main_protObj_t {i32 5, i32 3, %struct.Main_dispTab_t* @Main_dispTab}
%struct.Complex_protObj_t = type { i32, i32, %struct.Complex_dispTab_t*, i32, i32 }
@Complex_protObj = global %struct.Complex_protObj_t {i32 6, i32 5, %struct.Complex_dispTab_t* @Complex_dispTab, i32 0, i32 0}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__9, %struct.String_protObj_t* @str_const__10, %struct.String_protObj_t* @str_const__11, %struct.String_protObj_t* @str_const__12, %struct.String_protObj_t* @str_const__13, %struct.String_protObj_t* @str_const__14, %struct.String_protObj_t* @str_const__15 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*), i8* bitcast (void (i32)* @Complex_init to i8*) }
%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}

%struct.Complex_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Complex_dispTab = global %struct.Complex_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32,i32,i32)* @Complex__init to i8*), i8* bitcast (i32 (i32)* @Complex__print to i8*), i8* bitcast (i32 (i32)* @Complex__reflect_0 to i8*), i8* bitcast (i32 (i32)* @Complex__reflect_X to i8*), i8* bitcast (i32 (i32)* @Complex__reflect_Y to i8*), i8* bitcast (i32 (i32,i32)* @Complex__equal to i8*), i8* bitcast (i32 (i32)* @Complex__x_value to i8*), i8* bitcast (i32 (i32)* @Complex__y_value to i8*)}


