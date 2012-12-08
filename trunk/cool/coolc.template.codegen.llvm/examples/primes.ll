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
define void @Main_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- block -
;; -> block: linia 34
;- block -- dispatch -
;; -> dispatch: linia 35
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 35
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 35
;- block -- dispatch -- object -
;; -> object: linia 35
;; <- object: linia 35
  %VR2 = icmp eq i32* %VR0,  null
  br i1 %VR2, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret void
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR3 = ptrtoint i32* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 16
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 35
;- block -- int_const -
;; -> int_const: linia 36
  %VR12 = add i32 2, 0
;; <- int_const: linia 36
;; <- block: linia 34
  %VR13 = add i32 %ARG, 12
  %VR14 = inttoptr i32 %VR13 to i32*
  store i32 %VR12, i32* %VR14
;- object -
;; -> object: linia 39
  %VR15 = add i32 %ARG, 12
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
;; <- object: linia 39
  %VR18 = add i32 %ARG, 16
  %VR19 = inttoptr i32 %VR18 to i32*
  store i32 %VR17, i32* %VR19
;- int_const -
;; -> int_const: linia 43
  %VR20 = add i32 500, 0
;; <- int_const: linia 43
  %VR21 = add i32 %ARG, 24
  %VR22 = inttoptr i32 %VR21 to i32*
  store i32 %VR20, i32* %VR22
;- loop -
;; -> loop: linia 46
;; conditie
  br label %start_loop_Main_0
;#######################################; <- dispatch_not_void_Main_0


;#######################################; -> start_loop_Main_0
start_loop_Main_0:
;- loop -- bool_const -
;; -> bool_const: linia 46
  %VR23 = add i32 1, 0
;; <- bool_const: linia 46
  %VR24 = icmp eq i32 %VR23,  0
  br i1 %VR24, label %sfarsit_loop_Main_0, label %label_next_loop_Main_0
;#######################################; <- start_loop_Main_0


;#######################################; -> label_next_loop_Main_0
label_next_loop_Main_0:
;; corp loop
;- loop -- block -
;; -> block: linia 47
;- loop -- block -- assign -
;; -> assign: linia 49
;- loop -- block -- assign -- plus -
;; -> plus: linia 49
;- loop -- block -- assign -- plus -- object -
;; -> object: linia 49
  %VR25 = add i32 %ARG, 16
  %VR26 = inttoptr i32 %VR25 to i32*
  %VR27 = load i32* %VR26
;; <- object: linia 49
;- loop -- block -- assign -- plus -- int_const -
;; -> int_const: linia 49
  %VR28 = add i32 1, 0
;; <- int_const: linia 49
  %VR29 = add i32 %VR27, %VR28
;; <- plus: linia 49
  %VR30 = add i32 %ARG, 16
  %VR31 = inttoptr i32 %VR30 to i32*
  store i32 %VR29, i32* %VR31
;; <- assign: linia 49
;- loop -- block -- assign -
;; -> assign: linia 50
;- loop -- block -- assign -- int_const -
;; -> int_const: linia 50
  %VR32 = add i32 2, 0
;; <- int_const: linia 50
  %VR33 = add i32 %ARG, 20
  %VR34 = inttoptr i32 %VR33 to i32*
  store i32 %VR32, i32* %VR34
;; <- assign: linia 50
;- loop -- block -- loop -
;; -> loop: linia 52
;; conditie
  br label %start_loop_Main_1
;#######################################; <- label_next_loop_Main_0


;#######################################; -> start_loop_Main_1
start_loop_Main_1:
;- loop -- block -- loop -- cond -
;; -> cond: linia 53
;;if: linia 53 (expresia pentru predicat)
;;%VR35 rezervat pentru rezultatul if-ului
;- loop -- block -- loop -- cond -- lt -
;; -> lt: linia 53
;- loop -- block -- loop -- cond -- lt -- object -
;; -> object: linia 53
  %VR36 = add i32 %ARG, 16
  %VR37 = inttoptr i32 %VR36 to i32*
  %VR38 = load i32* %VR37
;; <- object: linia 53
;- loop -- block -- loop -- cond -- lt -- mul -
;; -> mul: linia 53
;- loop -- block -- loop -- cond -- lt -- mul -- object -
;; -> object: linia 53
  %VR39 = add i32 %ARG, 20
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = load i32* %VR40
;; <- object: linia 53
;- loop -- block -- loop -- cond -- lt -- mul -- object -
;; -> object: linia 53
  %VR42 = add i32 %ARG, 20
  %VR43 = inttoptr i32 %VR42 to i32*
  %VR44 = load i32* %VR43
;; <- object: linia 53
  %VR45 = mul i32 %VR41, %VR44
;; <- mul: linia 53
  %VR46 = icmp slt i32 %VR38,  %VR45
;; <- lt: linia 53
  %VR47 = icmp eq i1 %VR46,  false
  br i1 %VR47, label %false_Main_0, label %false_false_Main_0
;#######################################; <- start_loop_Main_1


;#######################################; -> false_false_Main_0
false_false_Main_0:
;;if: linia 53 (expresia pentru then)
;- loop -- block -- loop -- cond -- bool_const -
;; -> bool_const: linia 54
  %VR48 = add i32 0, 0
;; <- bool_const: linia 54
  br label %join_if_Main_0_true
;#######################################; <- false_false_Main_0


;#######################################; -> join_if_Main_0_true
join_if_Main_0_true:
  %VR35.0 = add i32 %VR48, 0
  br label %join_if_Main_0
;#######################################; <- join_if_Main_0_true


;#######################################; -> false_Main_0
false_Main_0:
;;if: linia 53 (expresia pentru else)
;- loop -- block -- loop -- cond -- cond -
;; -> cond: linia 55
;;if: linia 55 (expresia pentru predicat)
;;%VR49 rezervat pentru rezultatul if-ului
;- loop -- block -- loop -- cond -- cond -- eq -
;; -> eq: linia 55
;- loop -- block -- loop -- cond -- cond -- eq -- sub -
;; -> sub: linia 55
;- loop -- block -- loop -- cond -- cond -- eq -- sub -- object -
;; -> object: linia 55
  %VR50 = add i32 %ARG, 16
  %VR51 = inttoptr i32 %VR50 to i32*
  %VR52 = load i32* %VR51
;; <- object: linia 55
;- loop -- block -- loop -- cond -- cond -- eq -- sub -- mul -
;; -> mul: linia 55
;- loop -- block -- loop -- cond -- cond -- eq -- sub -- mul -- object -
;; -> object: linia 55
  %VR53 = add i32 %ARG, 20
  %VR54 = inttoptr i32 %VR53 to i32*
  %VR55 = load i32* %VR54
;; <- object: linia 55
;- loop -- block -- loop -- cond -- cond -- eq -- sub -- mul -- divide -
;; -> divide: linia 55
;- loop -- block -- loop -- cond -- cond -- eq -- sub -- mul -- divide -- object -
;; -> object: linia 55
  %VR56 = add i32 %ARG, 16
  %VR57 = inttoptr i32 %VR56 to i32*
  %VR58 = load i32* %VR57
;; <- object: linia 55
;- loop -- block -- loop -- cond -- cond -- eq -- sub -- mul -- divide -- object -
;; -> object: linia 55
  %VR59 = add i32 %ARG, 20
  %VR60 = inttoptr i32 %VR59 to i32*
  %VR61 = load i32* %VR60
;; <- object: linia 55
  %VR62 = sdiv i32 %VR58, %VR61
;; <- divide: linia 55
  %VR63 = mul i32 %VR55, %VR62
;; <- mul: linia 55
  %VR64 = sub i32 %VR52, %VR63
;; <- sub: linia 55
;- loop -- block -- loop -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 55
  %VR65 = add i32 0, 0
;; <- int_const: linia 55
;boxing to int
  %VR66 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR67 = add i32 %VR66, 12
  %VR68 = inttoptr i32 %VR67 to i32*
  store i32 %VR64, i32* %VR68
;boxing to int
  %VR69 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR70 = add i32 %VR69, 12
  %VR71 = inttoptr i32 %VR70 to i32*
  store i32 %VR65, i32* %VR71
  br label %eq_test_join_true_Main_0
;#######################################; <- false_Main_0


;#######################################; -> eq_test_join_true_Main_0
eq_test_join_true_Main_0:
  %VR72.0 = icmp eq i32 %VR66,  %VR69
  br i1 %VR72.0, label %eq_test_join_Main_0, label %eq_test_join_false_Main_0
;#######################################; <- eq_test_join_true_Main_0


;#######################################; -> eq_test_join_false_Main_0
eq_test_join_false_Main_0:
  %VR74 = call i32  @equality_test(i32 1, i32 0, i32 %VR66, i32 %VR69)
  %VR72.1 = icmp eq i32 %VR74,  1
  br label %eq_test_join_Main_0
;#######################################; <- eq_test_join_false_Main_0


;#######################################; -> eq_test_join_Main_0
eq_test_join_Main_0:
  %VR72 = phi i1 [ %VR72.0, %eq_test_join_true_Main_0 ] , [ %VR72.1, %eq_test_join_false_Main_0 ] 
;; <- eq: linia 55
  %VR75 = icmp eq i1 %VR72,  false
  br i1 %VR75, label %false_Main_1, label %false_false_Main_1
;#######################################; <- eq_test_join_Main_0


;#######################################; -> false_false_Main_1
false_false_Main_1:
;;if: linia 55 (expresia pentru then)
;- loop -- block -- loop -- cond -- cond -- bool_const -
;; -> bool_const: linia 56
  %VR76 = add i32 0, 0
;; <- bool_const: linia 56
  br label %join_if_Main_1_true
;#######################################; <- false_false_Main_1


;#######################################; -> join_if_Main_1_true
join_if_Main_1_true:
  %VR49.0 = add i32 %VR76, 0
  br label %join_if_Main_1
;#######################################; <- join_if_Main_1_true


;#######################################; -> false_Main_1
false_Main_1:
;;if: linia 55 (expresia pentru else)
;- loop -- block -- loop -- cond -- cond -- bool_const -
;; -> bool_const: linia 57
  %VR77 = add i32 1, 0
;; <- bool_const: linia 57
  br label %join_if_Main_1_false
;#######################################; <- false_Main_1


;#######################################; -> join_if_Main_1_false
join_if_Main_1_false:
  %VR49.1 = add i32 %VR77, 0
  br label %join_if_Main_1
;#######################################; <- join_if_Main_1_false


;#######################################; -> join_if_Main_1
join_if_Main_1:
  %VR49 = phi i32 [ %VR49.0, %join_if_Main_1_true ], [ %VR49.1, %join_if_Main_1_false ]
;; <- cond: linia 55
  br label %join_if_Main_0_false
;#######################################; <- join_if_Main_1


;#######################################; -> join_if_Main_0_false
join_if_Main_0_false:
  %VR35.1 = add i32 %VR49, 0
  br label %join_if_Main_0
;#######################################; <- join_if_Main_0_false


;#######################################; -> join_if_Main_0
join_if_Main_0:
  %VR35 = phi i32 [ %VR35.0, %join_if_Main_0_true ], [ %VR35.1, %join_if_Main_0_false ]
;; <- cond: linia 53
  %VR78 = icmp eq i32 %VR35,  0
  br i1 %VR78, label %sfarsit_loop_Main_1, label %label_next_loop_Main_1
;#######################################; <- join_if_Main_0


;#######################################; -> label_next_loop_Main_1
label_next_loop_Main_1:
;; corp loop
;- loop -- block -- loop -- assign -
;; -> assign: linia 60
;- loop -- block -- loop -- assign -- plus -
;; -> plus: linia 60
;- loop -- block -- loop -- assign -- plus -- object -
;; -> object: linia 60
  %VR79 = add i32 %ARG, 20
  %VR80 = inttoptr i32 %VR79 to i32*
  %VR81 = load i32* %VR80
;; <- object: linia 60
;- loop -- block -- loop -- assign -- plus -- int_const -
;; -> int_const: linia 60
  %VR82 = add i32 1, 0
;; <- int_const: linia 60
  %VR83 = add i32 %VR81, %VR82
;; <- plus: linia 60
  %VR84 = add i32 %ARG, 20
  %VR85 = inttoptr i32 %VR84 to i32*
  store i32 %VR83, i32* %VR85
;; <- assign: linia 60
  br label %start_loop_Main_1
;#######################################; <- label_next_loop_Main_1


;#######################################; -> sfarsit_loop_Main_1
sfarsit_loop_Main_1:
;; <- loop: linia 52
;- loop -- block -- cond -
;; -> cond: linia 63
;;if: linia 63 (expresia pentru predicat)
;;%VR86 rezervat pentru rezultatul if-ului
;- loop -- block -- cond -- lt -
;; -> lt: linia 63
;- loop -- block -- cond -- lt -- object -
;; -> object: linia 63
  %VR87 = add i32 %ARG, 16
  %VR88 = inttoptr i32 %VR87 to i32*
  %VR89 = load i32* %VR88
;; <- object: linia 63
;- loop -- block -- cond -- lt -- mul -
;; -> mul: linia 63
;- loop -- block -- cond -- lt -- mul -- object -
;; -> object: linia 63
  %VR90 = add i32 %ARG, 20
  %VR91 = inttoptr i32 %VR90 to i32*
  %VR92 = load i32* %VR91
;; <- object: linia 63
;- loop -- block -- cond -- lt -- mul -- object -
;; -> object: linia 63
  %VR93 = add i32 %ARG, 20
  %VR94 = inttoptr i32 %VR93 to i32*
  %VR95 = load i32* %VR94
;; <- object: linia 63
  %VR96 = mul i32 %VR92, %VR95
;; <- mul: linia 63
  %VR97 = icmp slt i32 %VR89,  %VR96
;; <- lt: linia 63
  %VR98 = icmp eq i1 %VR97,  false
  br i1 %VR98, label %false_Main_2, label %false_false_Main_2
;#######################################; <- sfarsit_loop_Main_1


;#######################################; -> false_false_Main_2
false_false_Main_2:
;;if: linia 63 (expresia pentru then)
;- loop -- block -- cond -- block -
;; -> block: linia 65
;- loop -- block -- cond -- block -- assign -
;; -> assign: linia 66
;- loop -- block -- cond -- block -- assign -- object -
;; -> object: linia 66
  %VR99 = add i32 %ARG, 16
  %VR100 = inttoptr i32 %VR99 to i32*
  %VR101 = load i32* %VR100
;; <- object: linia 66
  %VR102 = add i32 %ARG, 12
  %VR103 = inttoptr i32 %VR102 to i32*
  store i32 %VR101, i32* %VR103
;; <- assign: linia 66
;- loop -- block -- cond -- block -- dispatch -
;; -> dispatch: linia 67
;;generez codul pentru apelul metodei out_int
;- loop -- block -- cond -- block -- dispatch -- object -
;; -> object: linia 67
  %VR104 = add i32 %ARG, 12
  %VR105 = inttoptr i32 %VR104 to i32*
  %VR106 = load i32* %VR105
;; <- object: linia 67
;- loop -- block -- cond -- block -- dispatch -- object -
;; -> object: linia 67
;; <- object: linia 67
  %VR107 = icmp eq i32* %VR0,  null
  br i1 %VR107, label %false_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- false_false_Main_2


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__5 to i32))
  ret void
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Main_1
dispatch_not_void_Main_1:
  %VR108 = ptrtoint i32* %VR0 to i32 
  %VR109 = add i32 %VR108, 8
  %VR110 = inttoptr i32 %VR109 to i32*
  %VR111 = load i32* %VR110
  %VR112 = add i32 %VR111, 12
  %VR113 = inttoptr i32 %VR112 to i32*
  %VR114 = load i32* %VR113
;boxing to int
  %VR115 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR116 = add i32 %VR115, 12
  %VR117 = inttoptr i32 %VR116 to i32*
  store i32 %VR106, i32* %VR117
  %VR118 = inttoptr i32 %VR114 to i32 (i32, i32)*
  %VR119 = call i32 (i32, i32)* %VR118(i32 %ARG, i32 %VR115)
;; <- dispatch: linia 67
;- loop -- block -- cond -- block -- dispatch -
;; -> dispatch: linia 68
;;generez codul pentru apelul metodei out_string
;- loop -- block -- cond -- block -- dispatch -- string_const -
;; -> string_const: linia 68
  %VR120 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 68
;- loop -- block -- cond -- block -- dispatch -- object -
;; -> object: linia 68
;; <- object: linia 68
  %VR121 = icmp eq i32* %VR0,  null
  br i1 %VR121, label %false_dispatch2, label %dispatch_not_void_Main_2
;#######################################; <- dispatch_not_void_Main_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret void
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Main_2
dispatch_not_void_Main_2:
  %VR122 = ptrtoint i32* %VR0 to i32 
  %VR123 = add i32 %VR122, 8
  %VR124 = inttoptr i32 %VR123 to i32*
  %VR125 = load i32* %VR124
  %VR126 = add i32 %VR125, 16
  %VR127 = inttoptr i32 %VR126 to i32*
  %VR128 = load i32* %VR127
  %VR129 = inttoptr i32 %VR128 to i32 (i32, i32)*
  %VR130 = call i32 (i32, i32)* %VR129(i32 %ARG, i32 %VR120)
;; <- dispatch: linia 68
;; <- block: linia 65
  br label %join_if_Main_2_true
;#######################################; <- dispatch_not_void_Main_2


;#######################################; -> join_if_Main_2_true
join_if_Main_2_true:
  %VR86.0 = add i32 %VR130, 0
  br label %join_if_Main_2
;#######################################; <- join_if_Main_2_true


;#######################################; -> false_Main_2
false_Main_2:
;;if: linia 63 (expresia pentru else)
;- loop -- block -- cond -- int_const -
;; -> int_const: linia 71
  %VR131 = add i32 0, 0
;; <- int_const: linia 71
  br label %join_if_Main_2_false
;#######################################; <- false_Main_2


;#######################################; -> join_if_Main_2_false
join_if_Main_2_false:
  %VR86.1 = add i32 %VR131, 0
  br label %join_if_Main_2
;#######################################; <- join_if_Main_2_false


;#######################################; -> join_if_Main_2
join_if_Main_2:
  %VR86 = phi i32 [ %VR86.0, %join_if_Main_2_true ], [ %VR86.1, %join_if_Main_2_false ]
;; <- cond: linia 63
;- loop -- block -- cond -
;; -> cond: linia 74
;;if: linia 74 (expresia pentru predicat)
;;%VR132 rezervat pentru rezultatul if-ului
;- loop -- block -- cond -- leq -
;; -> leq: linia 74
;- loop -- block -- cond -- leq -- object -
;; -> object: linia 74
  %VR133 = add i32 %ARG, 24
  %VR134 = inttoptr i32 %VR133 to i32*
  %VR135 = load i32* %VR134
;; <- object: linia 74
;- loop -- block -- cond -- leq -- object -
;; -> object: linia 74
  %VR136 = add i32 %ARG, 16
  %VR137 = inttoptr i32 %VR136 to i32*
  %VR138 = load i32* %VR137
;; <- object: linia 74
  %VR139 = icmp sle i32 %VR135,  %VR138
;; <- leq: linia 74
  %VR140 = icmp eq i1 %VR139,  false
  br i1 %VR140, label %false_Main_3, label %false_false_Main_3
;#######################################; <- join_if_Main_2


;#######################################; -> false_false_Main_3
false_false_Main_3:
;;if: linia 74 (expresia pentru then)
;- loop -- block -- cond -- dispatch -
;; -> dispatch: linia 75
;;generez codul pentru apelul metodei abort
;- loop -- block -- cond -- dispatch -- string_const -
;; -> string_const: linia 75
  %VR141 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 75
  %VR142 = inttoptr i32 %VR141 to i32*
  %VR143 = icmp eq i32* %VR142,  null
  br i1 %VR143, label %false_dispatch3, label %dispatch_not_void_Main_3
;#######################################; <- false_false_Main_3


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__7 to i32))
  ret void
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Main_3
dispatch_not_void_Main_3:
  %VR144 = ptrtoint i32* %VR142 to i32 
  %VR145 = add i32 %VR144, 8
  %VR146 = inttoptr i32 %VR145 to i32*
  %VR147 = load i32* %VR146
  %VR148 = add i32 %VR147, 0
  %VR149 = inttoptr i32 %VR148 to i32*
  %VR150 = load i32* %VR149
  %VR151 = inttoptr i32 %VR150 to i32 (i32)*
  %VR152 = call i32 (i32)* %VR151(i32 %VR141)
;; <- dispatch: linia 75
  br label %join_if_Main_3_true
;#######################################; <- dispatch_not_void_Main_3


;#######################################; -> join_if_Main_3_true
join_if_Main_3_true:
  %VR132.0 = add i32 %VR152, 0
  br label %join_if_Main_3
;#######################################; <- join_if_Main_3_true


;#######################################; -> false_Main_3
false_Main_3:
;;if: linia 74 (expresia pentru else)
;- loop -- block -- cond -- string_const -
;; -> string_const: linia 77
  %VR153 = ptrtoint %struct.String_protObj_t* @str_const__4 to i32 
;; <- string_const: linia 77
  br label %join_if_Main_3_false
;#######################################; <- false_Main_3


;#######################################; -> join_if_Main_3_false
join_if_Main_3_false:
  %VR132.1 = add i32 %VR153, 0
  br label %join_if_Main_3
;#######################################; <- join_if_Main_3_false


;#######################################; -> join_if_Main_3
join_if_Main_3:
  %VR132 = phi i32 [ %VR132.0, %join_if_Main_3_true ], [ %VR132.1, %join_if_Main_3_false ]
;; <- cond: linia 74
;; <- block: linia 47
  br label %start_loop_Main_0
;#######################################; <- join_if_Main_3


;#######################################; -> sfarsit_loop_Main_0
sfarsit_loop_Main_0:
;; <- loop: linia 46
  %VR154 = add i32 %ARG, 28
  %VR155 = inttoptr i32 %VR154 to i32*
  store i32 %ARG, i32* %VR155
  ret void
;#######################################; <- sfarsit_loop_Main_0


}
define i32 @Main__main(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- int_const -
;; -> int_const: linia 30
  %VR1 = add i32 0, 0
;; <- int_const: linia 30
  ret i32 %VR1
;#######################################; <- entry


}
@s15 = internal constant [1 x i8] c"\00"
@str_const__15 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([1 x i8]* @s15, i32 0, i32 0)}
@s14 = internal constant [5 x i8] c"Main\00"
@str_const__14 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([5 x i8]* @s14, i32 0, i32 0)}
@s13 = internal constant [3 x i8] c"IO\00"
@str_const__13 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([3 x i8]* @s13, i32 0, i32 0)}
@s12 = internal constant [7 x i8] c"String\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([7 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [5 x i8] c"Bool\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([5 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [4 x i8] c"Int\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([4 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [7 x i8] c"Object\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([7 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([11 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__12, i8* getelementptr ([10 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [10 x i8] c"_no_class\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__12, i8* getelementptr ([10 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [14 x i8] c"<basic class>\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([14 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [9 x i8] c"continue\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__14, i8* getelementptr ([9 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [5 x i8] c"halt\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([5 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [12 x i8] c" is prime.\0A\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__15, i8* getelementptr ([12 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [23 x i8] c"2 is trivially prime.\0A\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__16, i8* getelementptr ([23 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [19 x i8] c"advanced/primes.cl\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__17, i8* getelementptr ([19 x i8]* @s0, i32 0, i32 0)}
@int_const__17 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 18}
@int_const__16 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 22}
@int_const__15 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 11}
@int_const__14 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 8}
@int_const__13 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__12 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 75}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 68}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 67}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 35}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 500}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t*, i32, i32, i32, i32, i32 }
@Main_protObj = global %struct.Main_protObj_t {i32 5, i32 8, %struct.Main_dispTab_t* @Main_dispTab, i32 0, i32 0, i32 0, i32 0, i32 0}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__9, %struct.String_protObj_t* @str_const__10, %struct.String_protObj_t* @str_const__11, %struct.String_protObj_t* @str_const__12, %struct.String_protObj_t* @str_const__13, %struct.String_protObj_t* @str_const__14 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}


