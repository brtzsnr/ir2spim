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
define void @Board_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @Board__size_of_board(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Board_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- dispatch -
;; -> dispatch: linia 52
;;generez codul pentru apelul metodei length
;- dispatch -- object -
;; -> object: linia 52
;; <- object: linia 52
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = icmp eq i32* %VR2,  null
  br i1 %VR3, label %false_dispatch0, label %dispatch_not_void_Board_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__24 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Board_0
dispatch_not_void_Board_0:
  %VR4 = ptrtoint i32* %VR2 to i32 
  %VR5 = add i32 %VR4, 8
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = load i32* %VR6
  %VR8 = add i32 %VR7, 16
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = inttoptr i32 %VR10 to i32 (i32)*
  %VR12 = call i32 (i32)* %VR11(i32 %VR1)
  %VR13 = add i32 %VR12, 12
  %VR14 = inttoptr i32 %VR13 to i32*
  %VR15 = load i32* %VR14
;; <- dispatch: linia 52
  ret i32 %VR15
;#######################################; <- dispatch_not_void_Board_0


}
define i32 @Board__board_init(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Board_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- let -
;; -> let: linia 56
;- let -- dispatch -
;; -> dispatch: linia 56
;;generez codul pentru apelul metodei size_of_board
;- let -- dispatch -- object -
;; -> object: linia 56
;; <- object: linia 56
;- let -- dispatch -- object -
;; -> object: linia 56
;; <- object: linia 56
  %VR2 = icmp eq %struct.Board_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch1, label %dispatch_not_void_Board_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__25 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Board_1
dispatch_not_void_Board_1:
  %VR3 = ptrtoint %struct.Board_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 28
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 56
;- let -- block -
;; -> block: linia 57
;- let -- block -- cond -
;; -> cond: linia 58
;;if: linia 58 (expresia pentru predicat)
;;%VR12 rezervat pentru rezultatul if-ului
;- let -- block -- cond -- eq -
;; -> eq: linia 58
;- let -- block -- cond -- eq -- object -
;; -> object: linia 58
;; <- object: linia 58
;- let -- block -- cond -- eq -- int_const -
;; -> int_const: linia 58
  %VR13 = add i32 15, 0
;; <- int_const: linia 58
;boxing to int
  %VR14 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR15 = add i32 %VR14, 12
  %VR16 = inttoptr i32 %VR15 to i32*
  store i32 %VR11, i32* %VR16
;boxing to int
  %VR17 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR18 = add i32 %VR17, 12
  %VR19 = inttoptr i32 %VR18 to i32*
  store i32 %VR13, i32* %VR19
  br label %eq_test_join_true_Board_0
;#######################################; <- dispatch_not_void_Board_1


;#######################################; -> eq_test_join_true_Board_0
eq_test_join_true_Board_0:
  %VR20.0 = icmp eq i32 %VR14,  %VR17
  br i1 %VR20.0, label %eq_test_join_Board_0, label %eq_test_join_false_Board_0
;#######################################; <- eq_test_join_true_Board_0


;#######################################; -> eq_test_join_false_Board_0
eq_test_join_false_Board_0:
  %VR22 = call i32  @equality_test(i32 1, i32 0, i32 %VR14, i32 %VR17)
  %VR20.1 = icmp eq i32 %VR22,  1
  br label %eq_test_join_Board_0
;#######################################; <- eq_test_join_false_Board_0


;#######################################; -> eq_test_join_Board_0
eq_test_join_Board_0:
  %VR20 = phi i1 [ %VR20.0, %eq_test_join_true_Board_0 ] , [ %VR20.1, %eq_test_join_false_Board_0 ] 
;; <- eq: linia 58
  %VR23 = icmp eq i1 %VR20,  false
  br i1 %VR23, label %false_Board_0, label %false_false_Board_0
;#######################################; <- eq_test_join_Board_0


;#######################################; -> false_false_Board_0
false_false_Board_0:
;;if: linia 58 (expresia pentru then)
;- let -- block -- cond -- block -
;; -> block: linia 59
;- let -- block -- cond -- block -- assign -
;; -> assign: linia 60
;- let -- block -- cond -- block -- assign -- int_const -
;; -> int_const: linia 60
  %VR24 = add i32 3, 0
;; <- int_const: linia 60
  %VR25 = add i32 %ARG, 12
  %VR26 = inttoptr i32 %VR25 to i32*
  store i32 %VR24, i32* %VR26
;; <- assign: linia 60
;- let -- block -- cond -- block -- assign -
;; -> assign: linia 61
;- let -- block -- cond -- block -- assign -- int_const -
;; -> int_const: linia 61
  %VR27 = add i32 5, 0
;; <- int_const: linia 61
  %VR28 = add i32 %ARG, 16
  %VR29 = inttoptr i32 %VR28 to i32*
  store i32 %VR27, i32* %VR29
;; <- assign: linia 61
;- let -- block -- cond -- block -- assign -
;; -> assign: linia 62
;- let -- block -- cond -- block -- assign -- object -
;; -> object: linia 62
;; <- object: linia 62
  %VR30 = add i32 %ARG, 20
  %VR31 = inttoptr i32 %VR30 to i32*
  store i32 %VR11, i32* %VR31
;; <- assign: linia 62
;; <- block: linia 59
  br label %join_if_Board_0_true
;#######################################; <- false_false_Board_0


;#######################################; -> join_if_Board_0_true
join_if_Board_0_true:
  %VR12.0 = add i32 %VR11, 0
  br label %join_if_Board_0
;#######################################; <- join_if_Board_0_true


;#######################################; -> false_Board_0
false_Board_0:
;;if: linia 58 (expresia pentru else)
;- let -- block -- cond -- cond -
;; -> cond: linia 64
;;if: linia 64 (expresia pentru predicat)
;;%VR32 rezervat pentru rezultatul if-ului
;- let -- block -- cond -- cond -- eq -
;; -> eq: linia 64
;- let -- block -- cond -- cond -- eq -- object -
;; -> object: linia 64
;; <- object: linia 64
;- let -- block -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 64
  %VR33 = add i32 16, 0
;; <- int_const: linia 64
;boxing to int
  %VR34 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR35 = add i32 %VR34, 12
  %VR36 = inttoptr i32 %VR35 to i32*
  store i32 %VR11, i32* %VR36
;boxing to int
  %VR37 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR38 = add i32 %VR37, 12
  %VR39 = inttoptr i32 %VR38 to i32*
  store i32 %VR33, i32* %VR39
  br label %eq_test_join_true_Board_1
;#######################################; <- false_Board_0


;#######################################; -> eq_test_join_true_Board_1
eq_test_join_true_Board_1:
  %VR40.0 = icmp eq i32 %VR34,  %VR37
  br i1 %VR40.0, label %eq_test_join_Board_1, label %eq_test_join_false_Board_1
;#######################################; <- eq_test_join_true_Board_1


;#######################################; -> eq_test_join_false_Board_1
eq_test_join_false_Board_1:
  %VR42 = call i32  @equality_test(i32 1, i32 0, i32 %VR34, i32 %VR37)
  %VR40.1 = icmp eq i32 %VR42,  1
  br label %eq_test_join_Board_1
;#######################################; <- eq_test_join_false_Board_1


;#######################################; -> eq_test_join_Board_1
eq_test_join_Board_1:
  %VR40 = phi i1 [ %VR40.0, %eq_test_join_true_Board_1 ] , [ %VR40.1, %eq_test_join_false_Board_1 ] 
;; <- eq: linia 64
  %VR43 = icmp eq i1 %VR40,  false
  br i1 %VR43, label %false_Board_1, label %false_false_Board_1
;#######################################; <- eq_test_join_Board_1


;#######################################; -> false_false_Board_1
false_false_Board_1:
;;if: linia 64 (expresia pentru then)
;- let -- block -- cond -- cond -- block -
;; -> block: linia 65
;- let -- block -- cond -- cond -- block -- assign -
;; -> assign: linia 66
;- let -- block -- cond -- cond -- block -- assign -- int_const -
;; -> int_const: linia 66
  %VR44 = add i32 4, 0
;; <- int_const: linia 66
  %VR45 = add i32 %ARG, 12
  %VR46 = inttoptr i32 %VR45 to i32*
  store i32 %VR44, i32* %VR46
;; <- assign: linia 66
;- let -- block -- cond -- cond -- block -- assign -
;; -> assign: linia 67
;- let -- block -- cond -- cond -- block -- assign -- int_const -
;; -> int_const: linia 67
  %VR47 = add i32 4, 0
;; <- int_const: linia 67
  %VR48 = add i32 %ARG, 16
  %VR49 = inttoptr i32 %VR48 to i32*
  store i32 %VR47, i32* %VR49
;; <- assign: linia 67
;- let -- block -- cond -- cond -- block -- assign -
;; -> assign: linia 68
;- let -- block -- cond -- cond -- block -- assign -- object -
;; -> object: linia 68
;; <- object: linia 68
  %VR50 = add i32 %ARG, 20
  %VR51 = inttoptr i32 %VR50 to i32*
  store i32 %VR11, i32* %VR51
;; <- assign: linia 68
;; <- block: linia 65
  br label %join_if_Board_1_true
;#######################################; <- false_false_Board_1


;#######################################; -> join_if_Board_1_true
join_if_Board_1_true:
  %VR32.0 = add i32 %VR11, 0
  br label %join_if_Board_1
;#######################################; <- join_if_Board_1_true


;#######################################; -> false_Board_1
false_Board_1:
;;if: linia 64 (expresia pentru else)
;- let -- block -- cond -- cond -- cond -
;; -> cond: linia 70
;;if: linia 70 (expresia pentru predicat)
;;%VR52 rezervat pentru rezultatul if-ului
;- let -- block -- cond -- cond -- cond -- eq -
;; -> eq: linia 70
;- let -- block -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 70
;; <- object: linia 70
;- let -- block -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 70
  %VR53 = add i32 20, 0
;; <- int_const: linia 70
;boxing to int
  %VR54 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR55 = add i32 %VR54, 12
  %VR56 = inttoptr i32 %VR55 to i32*
  store i32 %VR11, i32* %VR56
;boxing to int
  %VR57 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR58 = add i32 %VR57, 12
  %VR59 = inttoptr i32 %VR58 to i32*
  store i32 %VR53, i32* %VR59
  br label %eq_test_join_true_Board_2
;#######################################; <- false_Board_1


;#######################################; -> eq_test_join_true_Board_2
eq_test_join_true_Board_2:
  %VR60.0 = icmp eq i32 %VR54,  %VR57
  br i1 %VR60.0, label %eq_test_join_Board_2, label %eq_test_join_false_Board_2
;#######################################; <- eq_test_join_true_Board_2


;#######################################; -> eq_test_join_false_Board_2
eq_test_join_false_Board_2:
  %VR62 = call i32  @equality_test(i32 1, i32 0, i32 %VR54, i32 %VR57)
  %VR60.1 = icmp eq i32 %VR62,  1
  br label %eq_test_join_Board_2
;#######################################; <- eq_test_join_false_Board_2


;#######################################; -> eq_test_join_Board_2
eq_test_join_Board_2:
  %VR60 = phi i1 [ %VR60.0, %eq_test_join_true_Board_2 ] , [ %VR60.1, %eq_test_join_false_Board_2 ] 
;; <- eq: linia 70
  %VR63 = icmp eq i1 %VR60,  false
  br i1 %VR63, label %false_Board_2, label %false_false_Board_2
;#######################################; <- eq_test_join_Board_2


;#######################################; -> false_false_Board_2
false_false_Board_2:
;;if: linia 70 (expresia pentru then)
;- let -- block -- cond -- cond -- cond -- block -
;; -> block: linia 71
;- let -- block -- cond -- cond -- cond -- block -- assign -
;; -> assign: linia 72
;- let -- block -- cond -- cond -- cond -- block -- assign -- int_const -
;; -> int_const: linia 72
  %VR64 = add i32 4, 0
;; <- int_const: linia 72
  %VR65 = add i32 %ARG, 12
  %VR66 = inttoptr i32 %VR65 to i32*
  store i32 %VR64, i32* %VR66
;; <- assign: linia 72
;- let -- block -- cond -- cond -- cond -- block -- assign -
;; -> assign: linia 73
;- let -- block -- cond -- cond -- cond -- block -- assign -- int_const -
;; -> int_const: linia 73
  %VR67 = add i32 5, 0
;; <- int_const: linia 73
  %VR68 = add i32 %ARG, 16
  %VR69 = inttoptr i32 %VR68 to i32*
  store i32 %VR67, i32* %VR69
;; <- assign: linia 73
;- let -- block -- cond -- cond -- cond -- block -- assign -
;; -> assign: linia 74
;- let -- block -- cond -- cond -- cond -- block -- assign -- object -
;; -> object: linia 74
;; <- object: linia 74
  %VR70 = add i32 %ARG, 20
  %VR71 = inttoptr i32 %VR70 to i32*
  store i32 %VR11, i32* %VR71
;; <- assign: linia 74
;; <- block: linia 71
  br label %join_if_Board_2_true
;#######################################; <- false_false_Board_2


;#######################################; -> join_if_Board_2_true
join_if_Board_2_true:
  %VR52.0 = add i32 %VR11, 0
  br label %join_if_Board_2
;#######################################; <- join_if_Board_2_true


;#######################################; -> false_Board_2
false_Board_2:
;;if: linia 70 (expresia pentru else)
;- let -- block -- cond -- cond -- cond -- cond -
;; -> cond: linia 76
;;if: linia 76 (expresia pentru predicat)
;;%VR72 rezervat pentru rezultatul if-ului
;- let -- block -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 76
;- let -- block -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 76
;; <- object: linia 76
;- let -- block -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 76
  %VR73 = add i32 21, 0
;; <- int_const: linia 76
;boxing to int
  %VR74 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR75 = add i32 %VR74, 12
  %VR76 = inttoptr i32 %VR75 to i32*
  store i32 %VR11, i32* %VR76
;boxing to int
  %VR77 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR78 = add i32 %VR77, 12
  %VR79 = inttoptr i32 %VR78 to i32*
  store i32 %VR73, i32* %VR79
  br label %eq_test_join_true_Board_3
;#######################################; <- false_Board_2


;#######################################; -> eq_test_join_true_Board_3
eq_test_join_true_Board_3:
  %VR80.0 = icmp eq i32 %VR74,  %VR77
  br i1 %VR80.0, label %eq_test_join_Board_3, label %eq_test_join_false_Board_3
;#######################################; <- eq_test_join_true_Board_3


;#######################################; -> eq_test_join_false_Board_3
eq_test_join_false_Board_3:
  %VR82 = call i32  @equality_test(i32 1, i32 0, i32 %VR74, i32 %VR77)
  %VR80.1 = icmp eq i32 %VR82,  1
  br label %eq_test_join_Board_3
;#######################################; <- eq_test_join_false_Board_3


;#######################################; -> eq_test_join_Board_3
eq_test_join_Board_3:
  %VR80 = phi i1 [ %VR80.0, %eq_test_join_true_Board_3 ] , [ %VR80.1, %eq_test_join_false_Board_3 ] 
;; <- eq: linia 76
  %VR83 = icmp eq i1 %VR80,  false
  br i1 %VR83, label %false_Board_3, label %false_false_Board_3
;#######################################; <- eq_test_join_Board_3


;#######################################; -> false_false_Board_3
false_false_Board_3:
;;if: linia 76 (expresia pentru then)
;- let -- block -- cond -- cond -- cond -- cond -- block -
;; -> block: linia 77
;- let -- block -- cond -- cond -- cond -- cond -- block -- assign -
;; -> assign: linia 78
;- let -- block -- cond -- cond -- cond -- cond -- block -- assign -- int_const -
;; -> int_const: linia 78
  %VR84 = add i32 3, 0
;; <- int_const: linia 78
  %VR85 = add i32 %ARG, 12
  %VR86 = inttoptr i32 %VR85 to i32*
  store i32 %VR84, i32* %VR86
;; <- assign: linia 78
;- let -- block -- cond -- cond -- cond -- cond -- block -- assign -
;; -> assign: linia 79
;- let -- block -- cond -- cond -- cond -- cond -- block -- assign -- int_const -
;; -> int_const: linia 79
  %VR87 = add i32 7, 0
;; <- int_const: linia 79
  %VR88 = add i32 %ARG, 16
  %VR89 = inttoptr i32 %VR88 to i32*
  store i32 %VR87, i32* %VR89
;; <- assign: linia 79
;- let -- block -- cond -- cond -- cond -- cond -- block -- assign -
;; -> assign: linia 80
;- let -- block -- cond -- cond -- cond -- cond -- block -- assign -- object -
;; -> object: linia 80
;; <- object: linia 80
  %VR90 = add i32 %ARG, 20
  %VR91 = inttoptr i32 %VR90 to i32*
  store i32 %VR11, i32* %VR91
;; <- assign: linia 80
;; <- block: linia 77
  br label %join_if_Board_3_true
;#######################################; <- false_false_Board_3


;#######################################; -> join_if_Board_3_true
join_if_Board_3_true:
  %VR72.0 = add i32 %VR11, 0
  br label %join_if_Board_3
;#######################################; <- join_if_Board_3_true


;#######################################; -> false_Board_3
false_Board_3:
;;if: linia 76 (expresia pentru else)
;- let -- block -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 82
;;if: linia 82 (expresia pentru predicat)
;;%VR92 rezervat pentru rezultatul if-ului
;- let -- block -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 82
;- let -- block -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 82
;; <- object: linia 82
;- let -- block -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 82
  %VR93 = add i32 25, 0
;; <- int_const: linia 82
;boxing to int
  %VR94 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR95 = add i32 %VR94, 12
  %VR96 = inttoptr i32 %VR95 to i32*
  store i32 %VR11, i32* %VR96
;boxing to int
  %VR97 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR98 = add i32 %VR97, 12
  %VR99 = inttoptr i32 %VR98 to i32*
  store i32 %VR93, i32* %VR99
  br label %eq_test_join_true_Board_4
;#######################################; <- false_Board_3


;#######################################; -> eq_test_join_true_Board_4
eq_test_join_true_Board_4:
  %VR100.0 = icmp eq i32 %VR94,  %VR97
  br i1 %VR100.0, label %eq_test_join_Board_4, label %eq_test_join_false_Board_4
;#######################################; <- eq_test_join_true_Board_4


;#######################################; -> eq_test_join_false_Board_4
eq_test_join_false_Board_4:
  %VR102 = call i32  @equality_test(i32 1, i32 0, i32 %VR94, i32 %VR97)
  %VR100.1 = icmp eq i32 %VR102,  1
  br label %eq_test_join_Board_4
;#######################################; <- eq_test_join_false_Board_4


;#######################################; -> eq_test_join_Board_4
eq_test_join_Board_4:
  %VR100 = phi i1 [ %VR100.0, %eq_test_join_true_Board_4 ] , [ %VR100.1, %eq_test_join_false_Board_4 ] 
;; <- eq: linia 82
  %VR103 = icmp eq i1 %VR100,  false
  br i1 %VR103, label %false_Board_4, label %false_false_Board_4
;#######################################; <- eq_test_join_Board_4


;#######################################; -> false_false_Board_4
false_false_Board_4:
;;if: linia 82 (expresia pentru then)
;- let -- block -- cond -- cond -- cond -- cond -- cond -- block -
;; -> block: linia 83
;- let -- block -- cond -- cond -- cond -- cond -- cond -- block -- assign -
;; -> assign: linia 84
;- let -- block -- cond -- cond -- cond -- cond -- cond -- block -- assign -- int_const -
;; -> int_const: linia 84
  %VR104 = add i32 5, 0
;; <- int_const: linia 84
  %VR105 = add i32 %ARG, 12
  %VR106 = inttoptr i32 %VR105 to i32*
  store i32 %VR104, i32* %VR106
;; <- assign: linia 84
;- let -- block -- cond -- cond -- cond -- cond -- cond -- block -- assign -
;; -> assign: linia 85
;- let -- block -- cond -- cond -- cond -- cond -- cond -- block -- assign -- int_const -
;; -> int_const: linia 85
  %VR107 = add i32 5, 0
;; <- int_const: linia 85
  %VR108 = add i32 %ARG, 16
  %VR109 = inttoptr i32 %VR108 to i32*
  store i32 %VR107, i32* %VR109
;; <- assign: linia 85
;- let -- block -- cond -- cond -- cond -- cond -- cond -- block -- assign -
;; -> assign: linia 86
;- let -- block -- cond -- cond -- cond -- cond -- cond -- block -- assign -- object -
;; -> object: linia 86
;; <- object: linia 86
  %VR110 = add i32 %ARG, 20
  %VR111 = inttoptr i32 %VR110 to i32*
  store i32 %VR11, i32* %VR111
;; <- assign: linia 86
;; <- block: linia 83
  br label %join_if_Board_4_true
;#######################################; <- false_false_Board_4


;#######################################; -> join_if_Board_4_true
join_if_Board_4_true:
  %VR92.0 = add i32 %VR11, 0
  br label %join_if_Board_4
;#######################################; <- join_if_Board_4_true


;#######################################; -> false_Board_4
false_Board_4:
;;if: linia 82 (expresia pentru else)
;- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 88
;;if: linia 88 (expresia pentru predicat)
;;%VR112 rezervat pentru rezultatul if-ului
;- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 88
;- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 88
;; <- object: linia 88
;- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 88
  %VR113 = add i32 28, 0
;; <- int_const: linia 88
;boxing to int
  %VR114 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR115 = add i32 %VR114, 12
  %VR116 = inttoptr i32 %VR115 to i32*
  store i32 %VR11, i32* %VR116
;boxing to int
  %VR117 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR118 = add i32 %VR117, 12
  %VR119 = inttoptr i32 %VR118 to i32*
  store i32 %VR113, i32* %VR119
  br label %eq_test_join_true_Board_5
;#######################################; <- false_Board_4


;#######################################; -> eq_test_join_true_Board_5
eq_test_join_true_Board_5:
  %VR120.0 = icmp eq i32 %VR114,  %VR117
  br i1 %VR120.0, label %eq_test_join_Board_5, label %eq_test_join_false_Board_5
;#######################################; <- eq_test_join_true_Board_5


;#######################################; -> eq_test_join_false_Board_5
eq_test_join_false_Board_5:
  %VR122 = call i32  @equality_test(i32 1, i32 0, i32 %VR114, i32 %VR117)
  %VR120.1 = icmp eq i32 %VR122,  1
  br label %eq_test_join_Board_5
;#######################################; <- eq_test_join_false_Board_5


;#######################################; -> eq_test_join_Board_5
eq_test_join_Board_5:
  %VR120 = phi i1 [ %VR120.0, %eq_test_join_true_Board_5 ] , [ %VR120.1, %eq_test_join_false_Board_5 ] 
;; <- eq: linia 88
  %VR123 = icmp eq i1 %VR120,  false
  br i1 %VR123, label %false_Board_5, label %false_false_Board_5
;#######################################; <- eq_test_join_Board_5


;#######################################; -> false_false_Board_5
false_false_Board_5:
;;if: linia 88 (expresia pentru then)
;- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- block -
;; -> block: linia 89
;- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- block -- assign -
;; -> assign: linia 90
;- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- block -- assign -- int_const -
;; -> int_const: linia 90
  %VR124 = add i32 7, 0
;; <- int_const: linia 90
  %VR125 = add i32 %ARG, 12
  %VR126 = inttoptr i32 %VR125 to i32*
  store i32 %VR124, i32* %VR126
;; <- assign: linia 90
;- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- block -- assign -
;; -> assign: linia 91
;- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- block -- assign -- int_const -
;; -> int_const: linia 91
  %VR127 = add i32 4, 0
;; <- int_const: linia 91
  %VR128 = add i32 %ARG, 16
  %VR129 = inttoptr i32 %VR128 to i32*
  store i32 %VR127, i32* %VR129
;; <- assign: linia 91
;- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- block -- assign -
;; -> assign: linia 92
;- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- block -- assign -- object -
;; -> object: linia 92
;; <- object: linia 92
  %VR130 = add i32 %ARG, 20
  %VR131 = inttoptr i32 %VR130 to i32*
  store i32 %VR11, i32* %VR131
;; <- assign: linia 92
;; <- block: linia 89
  br label %join_if_Board_5_true
;#######################################; <- false_false_Board_5


;#######################################; -> join_if_Board_5_true
join_if_Board_5_true:
  %VR112.0 = add i32 %VR11, 0
  br label %join_if_Board_5
;#######################################; <- join_if_Board_5_true


;#######################################; -> false_Board_5
false_Board_5:
;;if: linia 88 (expresia pentru else)
;- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- block -
;; -> block: linia 95
;- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- block -- assign -
;; -> assign: linia 96
;- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- block -- assign -- int_const -
;; -> int_const: linia 96
  %VR132 = add i32 5, 0
;; <- int_const: linia 96
  %VR133 = add i32 %ARG, 12
  %VR134 = inttoptr i32 %VR133 to i32*
  store i32 %VR132, i32* %VR134
;; <- assign: linia 96
;- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- block -- assign -
;; -> assign: linia 97
;- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- block -- assign -- int_const -
;; -> int_const: linia 97
  %VR135 = add i32 5, 0
;; <- int_const: linia 97
  %VR136 = add i32 %ARG, 16
  %VR137 = inttoptr i32 %VR136 to i32*
  store i32 %VR135, i32* %VR137
;; <- assign: linia 97
;- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- block -- assign -
;; -> assign: linia 98
;- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- block -- assign -- object -
;; -> object: linia 98
;; <- object: linia 98
  %VR138 = add i32 %ARG, 20
  %VR139 = inttoptr i32 %VR138 to i32*
  store i32 %VR11, i32* %VR139
;; <- assign: linia 98
;; <- block: linia 95
  br label %join_if_Board_5_false
;#######################################; <- false_Board_5


;#######################################; -> join_if_Board_5_false
join_if_Board_5_false:
  %VR112.1 = add i32 %VR11, 0
  br label %join_if_Board_5
;#######################################; <- join_if_Board_5_false


;#######################################; -> join_if_Board_5
join_if_Board_5:
  %VR112 = phi i32 [ %VR112.0, %join_if_Board_5_true ], [ %VR112.1, %join_if_Board_5_false ]
;; <- cond: linia 88
  br label %join_if_Board_4_false
;#######################################; <- join_if_Board_5


;#######################################; -> join_if_Board_4_false
join_if_Board_4_false:
  %VR92.1 = add i32 %VR112, 0
  br label %join_if_Board_4
;#######################################; <- join_if_Board_4_false


;#######################################; -> join_if_Board_4
join_if_Board_4:
  %VR92 = phi i32 [ %VR92.0, %join_if_Board_4_true ], [ %VR92.1, %join_if_Board_4_false ]
;; <- cond: linia 82
  br label %join_if_Board_3_false
;#######################################; <- join_if_Board_4


;#######################################; -> join_if_Board_3_false
join_if_Board_3_false:
  %VR72.1 = add i32 %VR92, 0
  br label %join_if_Board_3
;#######################################; <- join_if_Board_3_false


;#######################################; -> join_if_Board_3
join_if_Board_3:
  %VR72 = phi i32 [ %VR72.0, %join_if_Board_3_true ], [ %VR72.1, %join_if_Board_3_false ]
;; <- cond: linia 76
  br label %join_if_Board_2_false
;#######################################; <- join_if_Board_3


;#######################################; -> join_if_Board_2_false
join_if_Board_2_false:
  %VR52.1 = add i32 %VR72, 0
  br label %join_if_Board_2
;#######################################; <- join_if_Board_2_false


;#######################################; -> join_if_Board_2
join_if_Board_2:
  %VR52 = phi i32 [ %VR52.0, %join_if_Board_2_true ], [ %VR52.1, %join_if_Board_2_false ]
;; <- cond: linia 70
  br label %join_if_Board_1_false
;#######################################; <- join_if_Board_2


;#######################################; -> join_if_Board_1_false
join_if_Board_1_false:
  %VR32.1 = add i32 %VR52, 0
  br label %join_if_Board_1
;#######################################; <- join_if_Board_1_false


;#######################################; -> join_if_Board_1
join_if_Board_1:
  %VR32 = phi i32 [ %VR32.0, %join_if_Board_1_true ], [ %VR32.1, %join_if_Board_1_false ]
;; <- cond: linia 64
  br label %join_if_Board_0_false
;#######################################; <- join_if_Board_1


;#######################################; -> join_if_Board_0_false
join_if_Board_0_false:
  %VR12.1 = add i32 %VR32, 0
  br label %join_if_Board_0
;#######################################; <- join_if_Board_0_false


;#######################################; -> join_if_Board_0
join_if_Board_0:
  %VR12 = phi i32 [ %VR12.0, %join_if_Board_0_true ], [ %VR12.1, %join_if_Board_0_false ]
;; <- cond: linia 58
;- let -- block -- object -
;; -> object: linia 101
;; <- object: linia 101
;; <- block: linia 57
;; <- let: linia 56
  ret i32 %ARG
;#######################################; <- join_if_Board_0


}
define void @CellularAutomaton_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Board_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.String_protObj_t* @String_protObj to i32))
  %VR2 = add i32 %ARG, 24
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
  ret void
;#######################################; <- entry


}
define i32 @CellularAutomaton__init(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- block -
;; -> block: linia 114
;- block -- assign -
;; -> assign: linia 115
;- block -- assign -- object -
;; -> object: linia 115
;; <- object: linia 115
  %VR2 = add i32 %ARG, 24
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
;; <- assign: linia 115
;- block -- dispatch -
;; -> dispatch: linia 116
;;generez codul pentru apelul metodei board_init
;- block -- dispatch -- object -
;; -> object: linia 116
;; <- object: linia 116
;- block -- dispatch -- object -
;; -> object: linia 116
;; <- object: linia 116
  %VR4 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR4, label %false_dispatch0, label %dispatch_not_void_CellularAutomaton_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__26 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_CellularAutomaton_0
dispatch_not_void_CellularAutomaton_0:
  %VR5 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 32
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32, i32)*
  %VR13 = call i32 (i32, i32)* %VR12(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 116
;- block -- object -
;; -> object: linia 117
;; <- object: linia 117
;; <- block: linia 114
  ret i32 %ARG
;#######################################; <- dispatch_not_void_CellularAutomaton_0


}
define i32 @CellularAutomaton__print(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR1a = alloca i32 
  store i32 0, i32* %VR1a
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
;- let -
;; -> let: linia 126
;- let -- int_const -
;; -> int_const: linia 126
  %VR1.a = add i32 0, 0
  store i32 %VR1.a, i32* %VR1a
;; <- int_const: linia 126
;- let -- let -
;; -> let: linia 127
;- let -- let -- object -
;; -> object: linia 127
  %VR2 = add i32 %ARG, 20
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = load i32* %VR3
;; <- object: linia 127
;- let -- let -- block -
;; -> block: linia 128
;- let -- let -- block -- dispatch -
;; -> dispatch: linia 129
;;generez codul pentru apelul metodei out_string
;- let -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 129
  %VR5 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 129
;- let -- let -- block -- dispatch -- object -
;; -> object: linia 129
;; <- object: linia 129
  %VR6 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR6, label %false_dispatch1, label %dispatch_not_void_CellularAutomaton_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__27 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_CellularAutomaton_1
dispatch_not_void_CellularAutomaton_1:
  %VR7 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR8 = add i32 %VR7, 8
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = add i32 %VR10, 16
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
  %VR14 = inttoptr i32 %VR13 to i32 (i32, i32)*
  %VR15 = call i32 (i32, i32)* %VR14(i32 %ARG, i32 %VR5)
;; <- dispatch: linia 129
;- let -- let -- block -- loop -
;; -> loop: linia 130
;; conditie
  br label %start_loop_CellularAutomaton_0
;#######################################; <- dispatch_not_void_CellularAutomaton_1


;#######################################; -> start_loop_CellularAutomaton_0
start_loop_CellularAutomaton_0:
  %VR1_tmp0 = load i32* %VR1a
;- let -- let -- block -- loop -- lt -
;; -> lt: linia 130
;- let -- let -- block -- loop -- lt -- object -
;; -> object: linia 130
;; <- object: linia 130
;- let -- let -- block -- loop -- lt -- object -
;; -> object: linia 130
;; <- object: linia 130
  %VR16 = icmp slt i32 %VR1_tmp0,  %VR4
;; <- lt: linia 130
  %VR17 = icmp eq i1 %VR16,  false
  br i1 %VR17, label %sfarsit_loop_CellularAutomaton_0, label %label_next_loop_CellularAutomaton_0
;#######################################; <- start_loop_CellularAutomaton_0


;#######################################; -> label_next_loop_CellularAutomaton_0
label_next_loop_CellularAutomaton_0:
;; corp loop
;- let -- let -- block -- loop -- block -
;; -> block: linia 131
;- let -- let -- block -- loop -- block -- dispatch -
;; -> dispatch: linia 132
;;generez codul pentru apelul metodei out_string
;- let -- let -- block -- loop -- block -- dispatch -- dispatch -
;; -> dispatch: linia 132
;;generez codul pentru apelul metodei substr
;- let -- let -- block -- loop -- block -- dispatch -- dispatch -- object -
;; -> object: linia 132
;; <- object: linia 132
;- let -- let -- block -- loop -- block -- dispatch -- dispatch -- object -
;; -> object: linia 132
  %VR18 = add i32 %ARG, 16
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
;; <- object: linia 132
;- let -- let -- block -- loop -- block -- dispatch -- dispatch -- object -
;; -> object: linia 132
  %VR21 = add i32 %ARG, 24
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = load i32* %VR22
;; <- object: linia 132
  %VR24 = inttoptr i32 %VR23 to i32*
  %VR25 = icmp eq i32* %VR24,  null
  br i1 %VR25, label %false_dispatch2, label %dispatch_not_void_CellularAutomaton_2
;#######################################; <- label_next_loop_CellularAutomaton_0


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__28 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_CellularAutomaton_2
dispatch_not_void_CellularAutomaton_2:
  %VR1_tmp1 = load i32* %VR1a
  %VR26 = ptrtoint i32* %VR24 to i32 
  %VR27 = add i32 %VR26, 8
  %VR28 = inttoptr i32 %VR27 to i32*
  %VR29 = load i32* %VR28
  %VR30 = add i32 %VR29, 20
  %VR31 = inttoptr i32 %VR30 to i32*
  %VR32 = load i32* %VR31
;boxing to int
  %VR33 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR34 = add i32 %VR33, 12
  %VR35 = inttoptr i32 %VR34 to i32*
  store i32 %VR1_tmp1, i32* %VR35
;boxing to int
  %VR36 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR37 = add i32 %VR36, 12
  %VR38 = inttoptr i32 %VR37 to i32*
  store i32 %VR20, i32* %VR38
  %VR39 = inttoptr i32 %VR32 to i32 (i32, i32, i32)*
  %VR40 = call i32 (i32, i32, i32)* %VR39(i32 %VR23, i32 %VR33, i32 %VR36)
;; <- dispatch: linia 132
;- let -- let -- block -- loop -- block -- dispatch -- object -
;; -> object: linia 132
;; <- object: linia 132
  %VR41 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR41, label %false_dispatch3, label %dispatch_not_void_CellularAutomaton_3
;#######################################; <- dispatch_not_void_CellularAutomaton_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__28 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_CellularAutomaton_3
dispatch_not_void_CellularAutomaton_3:
  %VR42 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR43 = add i32 %VR42, 8
  %VR44 = inttoptr i32 %VR43 to i32*
  %VR45 = load i32* %VR44
  %VR46 = add i32 %VR45, 16
  %VR47 = inttoptr i32 %VR46 to i32*
  %VR48 = load i32* %VR47
  %VR49 = inttoptr i32 %VR48 to i32 (i32, i32)*
  %VR50 = call i32 (i32, i32)* %VR49(i32 %ARG, i32 %VR40)
;; <- dispatch: linia 132
;- let -- let -- block -- loop -- block -- dispatch -
;; -> dispatch: linia 133
;;generez codul pentru apelul metodei out_string
;- let -- let -- block -- loop -- block -- dispatch -- string_const -
;; -> string_const: linia 133
  %VR51 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 133
;- let -- let -- block -- loop -- block -- dispatch -- object -
;; -> object: linia 133
;; <- object: linia 133
  %VR52 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR52, label %false_dispatch4, label %dispatch_not_void_CellularAutomaton_4
;#######################################; <- dispatch_not_void_CellularAutomaton_3


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__29 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_CellularAutomaton_4
dispatch_not_void_CellularAutomaton_4:
  %VR1_tmp2 = load i32* %VR1a
  %VR53 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR54 = add i32 %VR53, 8
  %VR55 = inttoptr i32 %VR54 to i32*
  %VR56 = load i32* %VR55
  %VR57 = add i32 %VR56, 16
  %VR58 = inttoptr i32 %VR57 to i32*
  %VR59 = load i32* %VR58
  %VR60 = inttoptr i32 %VR59 to i32 (i32, i32)*
  %VR61 = call i32 (i32, i32)* %VR60(i32 %ARG, i32 %VR51)
;; <- dispatch: linia 133
;- let -- let -- block -- loop -- block -- assign -
;; -> assign: linia 134
;- let -- let -- block -- loop -- block -- assign -- plus -
;; -> plus: linia 134
;- let -- let -- block -- loop -- block -- assign -- plus -- object -
;; -> object: linia 134
;; <- object: linia 134
;- let -- let -- block -- loop -- block -- assign -- plus -- object -
;; -> object: linia 134
  %VR62 = add i32 %ARG, 16
  %VR63 = inttoptr i32 %VR62 to i32*
  %VR64 = load i32* %VR63
;; <- object: linia 134
  %VR65 = add i32 %VR1_tmp2, %VR64
;; <- plus: linia 134
  store i32 %VR65, i32* %VR1a
;; <- assign: linia 134
;; <- block: linia 131
  br label %start_loop_CellularAutomaton_0
;#######################################; <- dispatch_not_void_CellularAutomaton_4


;#######################################; -> sfarsit_loop_CellularAutomaton_0
sfarsit_loop_CellularAutomaton_0:
;; <- loop: linia 130
;- let -- let -- block -- dispatch -
;; -> dispatch: linia 137
;;generez codul pentru apelul metodei out_string
;- let -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 137
  %VR66 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 137
;- let -- let -- block -- dispatch -- object -
;; -> object: linia 137
;; <- object: linia 137
  %VR67 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR67, label %false_dispatch5, label %dispatch_not_void_CellularAutomaton_5
;#######################################; <- sfarsit_loop_CellularAutomaton_0


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__30 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_CellularAutomaton_5
dispatch_not_void_CellularAutomaton_5:
  %VR68 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR69 = add i32 %VR68, 8
  %VR70 = inttoptr i32 %VR69 to i32*
  %VR71 = load i32* %VR70
  %VR72 = add i32 %VR71, 16
  %VR73 = inttoptr i32 %VR72 to i32*
  %VR74 = load i32* %VR73
  %VR75 = inttoptr i32 %VR74 to i32 (i32, i32)*
  %VR76 = call i32 (i32, i32)* %VR75(i32 %ARG, i32 %VR66)
;; <- dispatch: linia 137
;- let -- let -- block -- object -
;; -> object: linia 138
;; <- object: linia 138
;; <- block: linia 128
;; <- let: linia 127
;; <- let: linia 126
  ret i32 %ARG
;#######################################; <- dispatch_not_void_CellularAutomaton_5


}
define i32 @CellularAutomaton__num_cells(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
;- dispatch -
;; -> dispatch: linia 144
;;generez codul pentru apelul metodei length
;- dispatch -- object -
;; -> object: linia 144
  %VR1 = add i32 %ARG, 24
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 144
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_dispatch6, label %dispatch_not_void_CellularAutomaton_6
;#######################################; <- entry


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__31 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_CellularAutomaton_6
dispatch_not_void_CellularAutomaton_6:
  %VR6 = ptrtoint i32* %VR4 to i32 
  %VR7 = add i32 %VR6, 8
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = add i32 %VR9, 16
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = inttoptr i32 %VR12 to i32 (i32)*
  %VR14 = call i32 (i32)* %VR13(i32 %VR3)
  %VR15 = add i32 %VR14, 12
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
;; <- dispatch: linia 144
  ret i32 %VR17
;#######################################; <- dispatch_not_void_CellularAutomaton_6


}
define i32 @CellularAutomaton__cell(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 148
;;if: linia 148 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- lt -
;; -> lt: linia 148
;- cond -- lt -- sub -
;; -> sub: linia 148
;- cond -- lt -- sub -- object -
;; -> object: linia 148
  %VR3 = add i32 %ARG, 20
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
;; <- object: linia 148
;- cond -- lt -- sub -- int_const -
;; -> int_const: linia 148
  %VR6 = add i32 1, 0
;; <- int_const: linia 148
  %VR7 = sub i32 %VR5, %VR6
;; <- sub: linia 148
;- cond -- lt -- object -
;; -> object: linia 148
;; <- object: linia 148
  %VR8 = icmp slt i32 %VR7,  %VR1
;; <- lt: linia 148
  %VR9 = icmp eq i1 %VR8,  false
  br i1 %VR9, label %false_CellularAutomaton_0, label %false_false_CellularAutomaton_0
;#######################################; <- entry


;#######################################; -> false_false_CellularAutomaton_0
false_false_CellularAutomaton_0:
;;if: linia 148 (expresia pentru then)
;- cond -- string_const -
;; -> string_const: linia 149
  %VR10 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 149
  br label %join_if_CellularAutomaton_0_true
;#######################################; <- false_false_CellularAutomaton_0


;#######################################; -> join_if_CellularAutomaton_0_true
join_if_CellularAutomaton_0_true:
  %VR2.0 = add i32 %VR10, 0
  br label %join_if_CellularAutomaton_0
;#######################################; <- join_if_CellularAutomaton_0_true


;#######################################; -> false_CellularAutomaton_0
false_CellularAutomaton_0:
;;if: linia 148 (expresia pentru else)
;- cond -- dispatch -
;; -> dispatch: linia 151
;;generez codul pentru apelul metodei substr
;- cond -- dispatch -- object -
;; -> object: linia 151
;; <- object: linia 151
;- cond -- dispatch -- int_const -
;; -> int_const: linia 151
  %VR11 = add i32 1, 0
;; <- int_const: linia 151
;- cond -- dispatch -- object -
;; -> object: linia 151
  %VR12 = add i32 %ARG, 24
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
;; <- object: linia 151
  %VR15 = inttoptr i32 %VR14 to i32*
  %VR16 = icmp eq i32* %VR15,  null
  br i1 %VR16, label %false_dispatch7, label %dispatch_not_void_CellularAutomaton_7
;#######################################; <- false_CellularAutomaton_0


;#######################################; -> false_dispatch7
false_dispatch7:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__32 to i32))
  ret i32 0
;#######################################; <- false_dispatch7


;#######################################; -> dispatch_not_void_CellularAutomaton_7
dispatch_not_void_CellularAutomaton_7:
  %VR17 = ptrtoint i32* %VR15 to i32 
  %VR18 = add i32 %VR17, 8
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
  %VR21 = add i32 %VR20, 20
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = load i32* %VR22
;boxing to int
  %VR24 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR25 = add i32 %VR24, 12
  %VR26 = inttoptr i32 %VR25 to i32*
  store i32 %VR1, i32* %VR26
;boxing to int
  %VR27 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR28 = add i32 %VR27, 12
  %VR29 = inttoptr i32 %VR28 to i32*
  store i32 %VR11, i32* %VR29
  %VR30 = inttoptr i32 %VR23 to i32 (i32, i32, i32)*
  %VR31 = call i32 (i32, i32, i32)* %VR30(i32 %VR14, i32 %VR24, i32 %VR27)
;; <- dispatch: linia 151
  br label %join_if_CellularAutomaton_0_false
;#######################################; <- dispatch_not_void_CellularAutomaton_7


;#######################################; -> join_if_CellularAutomaton_0_false
join_if_CellularAutomaton_0_false:
  %VR2.1 = add i32 %VR31, 0
  br label %join_if_CellularAutomaton_0
;#######################################; <- join_if_CellularAutomaton_0_false


;#######################################; -> join_if_CellularAutomaton_0
join_if_CellularAutomaton_0:
  %VR2 = phi i32 [ %VR2.0, %join_if_CellularAutomaton_0_true ], [ %VR2.1, %join_if_CellularAutomaton_0_false ]
;; <- cond: linia 148
  ret i32 %VR2
;#######################################; <- join_if_CellularAutomaton_0


}
define i32 @CellularAutomaton__north(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 156
;;if: linia 156 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- lt -
;; -> lt: linia 156
;- cond -- lt -- sub -
;; -> sub: linia 156
;- cond -- lt -- sub -- object -
;; -> object: linia 156
;; <- object: linia 156
;- cond -- lt -- sub -- object -
;; -> object: linia 156
  %VR3 = add i32 %ARG, 16
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
;; <- object: linia 156
  %VR6 = sub i32 %VR1, %VR5
;; <- sub: linia 156
;- cond -- lt -- int_const -
;; -> int_const: linia 156
  %VR7 = add i32 0, 0
;; <- int_const: linia 156
  %VR8 = icmp slt i32 %VR6,  %VR7
;; <- lt: linia 156
  %VR9 = icmp eq i1 %VR8,  false
  br i1 %VR9, label %false_CellularAutomaton_1, label %false_false_CellularAutomaton_1
;#######################################; <- entry


;#######################################; -> false_false_CellularAutomaton_1
false_false_CellularAutomaton_1:
;;if: linia 156 (expresia pentru then)
;- cond -- string_const -
;; -> string_const: linia 157
  %VR10 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 157
  br label %join_if_CellularAutomaton_1_true
;#######################################; <- false_false_CellularAutomaton_1


;#######################################; -> join_if_CellularAutomaton_1_true
join_if_CellularAutomaton_1_true:
  %VR2.0 = add i32 %VR10, 0
  br label %join_if_CellularAutomaton_1
;#######################################; <- join_if_CellularAutomaton_1_true


;#######################################; -> false_CellularAutomaton_1
false_CellularAutomaton_1:
;;if: linia 156 (expresia pentru else)
;- cond -- dispatch -
;; -> dispatch: linia 159
;;generez codul pentru apelul metodei cell
;- cond -- dispatch -- sub -
;; -> sub: linia 159
;- cond -- dispatch -- sub -- object -
;; -> object: linia 159
;; <- object: linia 159
;- cond -- dispatch -- sub -- object -
;; -> object: linia 159
  %VR11 = add i32 %ARG, 16
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
;; <- object: linia 159
  %VR14 = sub i32 %VR1, %VR13
;; <- sub: linia 159
;- cond -- dispatch -- object -
;; -> object: linia 159
;; <- object: linia 159
  %VR15 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR15, label %false_dispatch8, label %dispatch_not_void_CellularAutomaton_8
;#######################################; <- false_CellularAutomaton_1


;#######################################; -> false_dispatch8
false_dispatch8:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__33 to i32))
  ret i32 0
;#######################################; <- false_dispatch8


;#######################################; -> dispatch_not_void_CellularAutomaton_8
dispatch_not_void_CellularAutomaton_8:
  %VR16 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR17 = add i32 %VR16, 8
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
  %VR20 = add i32 %VR19, 48
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
  %VR23 = inttoptr i32 %VR22 to i32 (i32, i32)*
  %VR24 = call i32 (i32, i32)* %VR23(i32 %ARG, i32 %VR14)
;; <- dispatch: linia 159
  br label %join_if_CellularAutomaton_1_false
;#######################################; <- dispatch_not_void_CellularAutomaton_8


;#######################################; -> join_if_CellularAutomaton_1_false
join_if_CellularAutomaton_1_false:
  %VR2.1 = add i32 %VR24, 0
  br label %join_if_CellularAutomaton_1
;#######################################; <- join_if_CellularAutomaton_1_false


;#######################################; -> join_if_CellularAutomaton_1
join_if_CellularAutomaton_1:
  %VR2 = phi i32 [ %VR2.0, %join_if_CellularAutomaton_1_true ], [ %VR2.1, %join_if_CellularAutomaton_1_false ]
;; <- cond: linia 156
  ret i32 %VR2
;#######################################; <- join_if_CellularAutomaton_1


}
define i32 @CellularAutomaton__south(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 164
;;if: linia 164 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- lt -
;; -> lt: linia 164
;- cond -- lt -- object -
;; -> object: linia 164
  %VR3 = add i32 %ARG, 20
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
;; <- object: linia 164
;- cond -- lt -- plus -
;; -> plus: linia 164
;- cond -- lt -- plus -- object -
;; -> object: linia 164
;; <- object: linia 164
;- cond -- lt -- plus -- object -
;; -> object: linia 164
  %VR6 = add i32 %ARG, 16
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
;; <- object: linia 164
  %VR9 = add i32 %VR1, %VR8
;; <- plus: linia 164
  %VR10 = icmp slt i32 %VR5,  %VR9
;; <- lt: linia 164
  %VR11 = icmp eq i1 %VR10,  false
  br i1 %VR11, label %false_CellularAutomaton_2, label %false_false_CellularAutomaton_2
;#######################################; <- entry


;#######################################; -> false_false_CellularAutomaton_2
false_false_CellularAutomaton_2:
;;if: linia 164 (expresia pentru then)
;- cond -- string_const -
;; -> string_const: linia 165
  %VR12 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 165
  br label %join_if_CellularAutomaton_2_true
;#######################################; <- false_false_CellularAutomaton_2


;#######################################; -> join_if_CellularAutomaton_2_true
join_if_CellularAutomaton_2_true:
  %VR2.0 = add i32 %VR12, 0
  br label %join_if_CellularAutomaton_2
;#######################################; <- join_if_CellularAutomaton_2_true


;#######################################; -> false_CellularAutomaton_2
false_CellularAutomaton_2:
;;if: linia 164 (expresia pentru else)
;- cond -- dispatch -
;; -> dispatch: linia 167
;;generez codul pentru apelul metodei cell
;- cond -- dispatch -- plus -
;; -> plus: linia 167
;- cond -- dispatch -- plus -- object -
;; -> object: linia 167
;; <- object: linia 167
;- cond -- dispatch -- plus -- object -
;; -> object: linia 167
  %VR13 = add i32 %ARG, 16
  %VR14 = inttoptr i32 %VR13 to i32*
  %VR15 = load i32* %VR14
;; <- object: linia 167
  %VR16 = add i32 %VR1, %VR15
;; <- plus: linia 167
;- cond -- dispatch -- object -
;; -> object: linia 167
;; <- object: linia 167
  %VR17 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR17, label %false_dispatch9, label %dispatch_not_void_CellularAutomaton_9
;#######################################; <- false_CellularAutomaton_2


;#######################################; -> false_dispatch9
false_dispatch9:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__34 to i32))
  ret i32 0
;#######################################; <- false_dispatch9


;#######################################; -> dispatch_not_void_CellularAutomaton_9
dispatch_not_void_CellularAutomaton_9:
  %VR18 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR19 = add i32 %VR18, 8
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = load i32* %VR20
  %VR22 = add i32 %VR21, 48
  %VR23 = inttoptr i32 %VR22 to i32*
  %VR24 = load i32* %VR23
  %VR25 = inttoptr i32 %VR24 to i32 (i32, i32)*
  %VR26 = call i32 (i32, i32)* %VR25(i32 %ARG, i32 %VR16)
;; <- dispatch: linia 167
  br label %join_if_CellularAutomaton_2_false
;#######################################; <- dispatch_not_void_CellularAutomaton_9


;#######################################; -> join_if_CellularAutomaton_2_false
join_if_CellularAutomaton_2_false:
  %VR2.1 = add i32 %VR26, 0
  br label %join_if_CellularAutomaton_2
;#######################################; <- join_if_CellularAutomaton_2_false


;#######################################; -> join_if_CellularAutomaton_2
join_if_CellularAutomaton_2:
  %VR2 = phi i32 [ %VR2.0, %join_if_CellularAutomaton_2_true ], [ %VR2.1, %join_if_CellularAutomaton_2_false ]
;; <- cond: linia 164
  ret i32 %VR2
;#######################################; <- join_if_CellularAutomaton_2


}
define i32 @CellularAutomaton__east(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 172
;;if: linia 172 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- eq -
;; -> eq: linia 172
;- cond -- eq -- mul -
;; -> mul: linia 172
;- cond -- eq -- mul -- divide -
;; -> divide: linia 172
;- cond -- eq -- mul -- divide -- plus -
;; -> plus: linia 172
;- cond -- eq -- mul -- divide -- plus -- object -
;; -> object: linia 172
;; <- object: linia 172
;- cond -- eq -- mul -- divide -- plus -- int_const -
;; -> int_const: linia 172
  %VR3 = add i32 1, 0
;; <- int_const: linia 172
  %VR4 = add i32 %VR1, %VR3
;; <- plus: linia 172
;- cond -- eq -- mul -- divide -- object -
;; -> object: linia 172
  %VR5 = add i32 %ARG, 16
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = load i32* %VR6
;; <- object: linia 172
  %VR8 = sdiv i32 %VR4, %VR7
;; <- divide: linia 172
;- cond -- eq -- mul -- object -
;; -> object: linia 172
  %VR9 = add i32 %ARG, 16
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
;; <- object: linia 172
  %VR12 = mul i32 %VR8, %VR11
;; <- mul: linia 172
;- cond -- eq -- plus -
;; -> plus: linia 172
;- cond -- eq -- plus -- object -
;; -> object: linia 172
;; <- object: linia 172
;- cond -- eq -- plus -- int_const -
;; -> int_const: linia 172
  %VR13 = add i32 1, 0
;; <- int_const: linia 172
  %VR14 = add i32 %VR1, %VR13
;; <- plus: linia 172
;boxing to int
  %VR15 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR16 = add i32 %VR15, 12
  %VR17 = inttoptr i32 %VR16 to i32*
  store i32 %VR12, i32* %VR17
;boxing to int
  %VR18 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR19 = add i32 %VR18, 12
  %VR20 = inttoptr i32 %VR19 to i32*
  store i32 %VR14, i32* %VR20
  br label %eq_test_join_true_CellularAutomaton_0
;#######################################; <- entry


;#######################################; -> eq_test_join_true_CellularAutomaton_0
eq_test_join_true_CellularAutomaton_0:
  %VR21.0 = icmp eq i32 %VR15,  %VR18
  br i1 %VR21.0, label %eq_test_join_CellularAutomaton_0, label %eq_test_join_false_CellularAutomaton_0
;#######################################; <- eq_test_join_true_CellularAutomaton_0


;#######################################; -> eq_test_join_false_CellularAutomaton_0
eq_test_join_false_CellularAutomaton_0:
  %VR23 = call i32  @equality_test(i32 1, i32 0, i32 %VR15, i32 %VR18)
  %VR21.1 = icmp eq i32 %VR23,  1
  br label %eq_test_join_CellularAutomaton_0
;#######################################; <- eq_test_join_false_CellularAutomaton_0


;#######################################; -> eq_test_join_CellularAutomaton_0
eq_test_join_CellularAutomaton_0:
  %VR21 = phi i1 [ %VR21.0, %eq_test_join_true_CellularAutomaton_0 ] , [ %VR21.1, %eq_test_join_false_CellularAutomaton_0 ] 
;; <- eq: linia 172
  %VR24 = icmp eq i1 %VR21,  false
  br i1 %VR24, label %false_CellularAutomaton_3, label %false_false_CellularAutomaton_3
;#######################################; <- eq_test_join_CellularAutomaton_0


;#######################################; -> false_false_CellularAutomaton_3
false_false_CellularAutomaton_3:
;;if: linia 172 (expresia pentru then)
;- cond -- string_const -
;; -> string_const: linia 173
  %VR25 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 173
  br label %join_if_CellularAutomaton_3_true
;#######################################; <- false_false_CellularAutomaton_3


;#######################################; -> join_if_CellularAutomaton_3_true
join_if_CellularAutomaton_3_true:
  %VR2.0 = add i32 %VR25, 0
  br label %join_if_CellularAutomaton_3
;#######################################; <- join_if_CellularAutomaton_3_true


;#######################################; -> false_CellularAutomaton_3
false_CellularAutomaton_3:
;;if: linia 172 (expresia pentru else)
;- cond -- dispatch -
;; -> dispatch: linia 175
;;generez codul pentru apelul metodei cell
;- cond -- dispatch -- plus -
;; -> plus: linia 175
;- cond -- dispatch -- plus -- object -
;; -> object: linia 175
;; <- object: linia 175
;- cond -- dispatch -- plus -- int_const -
;; -> int_const: linia 175
  %VR26 = add i32 1, 0
;; <- int_const: linia 175
  %VR27 = add i32 %VR1, %VR26
;; <- plus: linia 175
;- cond -- dispatch -- object -
;; -> object: linia 175
;; <- object: linia 175
  %VR28 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR28, label %false_dispatch10, label %dispatch_not_void_CellularAutomaton_10
;#######################################; <- false_CellularAutomaton_3


;#######################################; -> false_dispatch10
false_dispatch10:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__35 to i32))
  ret i32 0
;#######################################; <- false_dispatch10


;#######################################; -> dispatch_not_void_CellularAutomaton_10
dispatch_not_void_CellularAutomaton_10:
  %VR29 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR30 = add i32 %VR29, 8
  %VR31 = inttoptr i32 %VR30 to i32*
  %VR32 = load i32* %VR31
  %VR33 = add i32 %VR32, 48
  %VR34 = inttoptr i32 %VR33 to i32*
  %VR35 = load i32* %VR34
  %VR36 = inttoptr i32 %VR35 to i32 (i32, i32)*
  %VR37 = call i32 (i32, i32)* %VR36(i32 %ARG, i32 %VR27)
;; <- dispatch: linia 175
  br label %join_if_CellularAutomaton_3_false
;#######################################; <- dispatch_not_void_CellularAutomaton_10


;#######################################; -> join_if_CellularAutomaton_3_false
join_if_CellularAutomaton_3_false:
  %VR2.1 = add i32 %VR37, 0
  br label %join_if_CellularAutomaton_3
;#######################################; <- join_if_CellularAutomaton_3_false


;#######################################; -> join_if_CellularAutomaton_3
join_if_CellularAutomaton_3:
  %VR2 = phi i32 [ %VR2.0, %join_if_CellularAutomaton_3_true ], [ %VR2.1, %join_if_CellularAutomaton_3_false ]
;; <- cond: linia 172
  ret i32 %VR2
;#######################################; <- join_if_CellularAutomaton_3


}
define i32 @CellularAutomaton__west(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 180
;;if: linia 180 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- eq -
;; -> eq: linia 180
;- cond -- eq -- object -
;; -> object: linia 180
;; <- object: linia 180
;- cond -- eq -- int_const -
;; -> int_const: linia 180
  %VR3 = add i32 0, 0
;; <- int_const: linia 180
;boxing to int
  %VR4 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR5 = add i32 %VR4, 12
  %VR6 = inttoptr i32 %VR5 to i32*
  store i32 %VR1, i32* %VR6
;boxing to int
  %VR7 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR8 = add i32 %VR7, 12
  %VR9 = inttoptr i32 %VR8 to i32*
  store i32 %VR3, i32* %VR9
  br label %eq_test_join_true_CellularAutomaton_1
;#######################################; <- entry


;#######################################; -> eq_test_join_true_CellularAutomaton_1
eq_test_join_true_CellularAutomaton_1:
  %VR10.0 = icmp eq i32 %VR4,  %VR7
  br i1 %VR10.0, label %eq_test_join_CellularAutomaton_1, label %eq_test_join_false_CellularAutomaton_1
;#######################################; <- eq_test_join_true_CellularAutomaton_1


;#######################################; -> eq_test_join_false_CellularAutomaton_1
eq_test_join_false_CellularAutomaton_1:
  %VR12 = call i32  @equality_test(i32 1, i32 0, i32 %VR4, i32 %VR7)
  %VR10.1 = icmp eq i32 %VR12,  1
  br label %eq_test_join_CellularAutomaton_1
;#######################################; <- eq_test_join_false_CellularAutomaton_1


;#######################################; -> eq_test_join_CellularAutomaton_1
eq_test_join_CellularAutomaton_1:
  %VR10 = phi i1 [ %VR10.0, %eq_test_join_true_CellularAutomaton_1 ] , [ %VR10.1, %eq_test_join_false_CellularAutomaton_1 ] 
;; <- eq: linia 180
  %VR13 = icmp eq i1 %VR10,  false
  br i1 %VR13, label %false_CellularAutomaton_4, label %false_false_CellularAutomaton_4
;#######################################; <- eq_test_join_CellularAutomaton_1


;#######################################; -> false_false_CellularAutomaton_4
false_false_CellularAutomaton_4:
;;if: linia 180 (expresia pentru then)
;- cond -- string_const -
;; -> string_const: linia 181
  %VR14 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 181
  br label %join_if_CellularAutomaton_4_true
;#######################################; <- false_false_CellularAutomaton_4


;#######################################; -> join_if_CellularAutomaton_4_true
join_if_CellularAutomaton_4_true:
  %VR2.0 = add i32 %VR14, 0
  br label %join_if_CellularAutomaton_4
;#######################################; <- join_if_CellularAutomaton_4_true


;#######################################; -> false_CellularAutomaton_4
false_CellularAutomaton_4:
;;if: linia 180 (expresia pentru else)
;- cond -- cond -
;; -> cond: linia 183
;;if: linia 183 (expresia pentru predicat)
;;%VR15 rezervat pentru rezultatul if-ului
;- cond -- cond -- eq -
;; -> eq: linia 183
;- cond -- cond -- eq -- mul -
;; -> mul: linia 183
;- cond -- cond -- eq -- mul -- divide -
;; -> divide: linia 183
;- cond -- cond -- eq -- mul -- divide -- object -
;; -> object: linia 183
;; <- object: linia 183
;- cond -- cond -- eq -- mul -- divide -- object -
;; -> object: linia 183
  %VR16 = add i32 %ARG, 16
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = load i32* %VR17
;; <- object: linia 183
  %VR19 = sdiv i32 %VR1, %VR18
;; <- divide: linia 183
;- cond -- cond -- eq -- mul -- object -
;; -> object: linia 183
  %VR20 = add i32 %ARG, 16
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
;; <- object: linia 183
  %VR23 = mul i32 %VR19, %VR22
;; <- mul: linia 183
;- cond -- cond -- eq -- object -
;; -> object: linia 183
;; <- object: linia 183
;boxing to int
  %VR24 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR25 = add i32 %VR24, 12
  %VR26 = inttoptr i32 %VR25 to i32*
  store i32 %VR23, i32* %VR26
;boxing to int
  %VR27 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR28 = add i32 %VR27, 12
  %VR29 = inttoptr i32 %VR28 to i32*
  store i32 %VR1, i32* %VR29
  br label %eq_test_join_true_CellularAutomaton_2
;#######################################; <- false_CellularAutomaton_4


;#######################################; -> eq_test_join_true_CellularAutomaton_2
eq_test_join_true_CellularAutomaton_2:
  %VR30.0 = icmp eq i32 %VR24,  %VR27
  br i1 %VR30.0, label %eq_test_join_CellularAutomaton_2, label %eq_test_join_false_CellularAutomaton_2
;#######################################; <- eq_test_join_true_CellularAutomaton_2


;#######################################; -> eq_test_join_false_CellularAutomaton_2
eq_test_join_false_CellularAutomaton_2:
  %VR32 = call i32  @equality_test(i32 1, i32 0, i32 %VR24, i32 %VR27)
  %VR30.1 = icmp eq i32 %VR32,  1
  br label %eq_test_join_CellularAutomaton_2
;#######################################; <- eq_test_join_false_CellularAutomaton_2


;#######################################; -> eq_test_join_CellularAutomaton_2
eq_test_join_CellularAutomaton_2:
  %VR30 = phi i1 [ %VR30.0, %eq_test_join_true_CellularAutomaton_2 ] , [ %VR30.1, %eq_test_join_false_CellularAutomaton_2 ] 
;; <- eq: linia 183
  %VR33 = icmp eq i1 %VR30,  false
  br i1 %VR33, label %false_CellularAutomaton_5, label %false_false_CellularAutomaton_5
;#######################################; <- eq_test_join_CellularAutomaton_2


;#######################################; -> false_false_CellularAutomaton_5
false_false_CellularAutomaton_5:
;;if: linia 183 (expresia pentru then)
;- cond -- cond -- string_const -
;; -> string_const: linia 184
  %VR34 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 184
  br label %join_if_CellularAutomaton_5_true
;#######################################; <- false_false_CellularAutomaton_5


;#######################################; -> join_if_CellularAutomaton_5_true
join_if_CellularAutomaton_5_true:
  %VR15.0 = add i32 %VR34, 0
  br label %join_if_CellularAutomaton_5
;#######################################; <- join_if_CellularAutomaton_5_true


;#######################################; -> false_CellularAutomaton_5
false_CellularAutomaton_5:
;;if: linia 183 (expresia pentru else)
;- cond -- cond -- dispatch -
;; -> dispatch: linia 186
;;generez codul pentru apelul metodei cell
;- cond -- cond -- dispatch -- sub -
;; -> sub: linia 186
;- cond -- cond -- dispatch -- sub -- object -
;; -> object: linia 186
;; <- object: linia 186
;- cond -- cond -- dispatch -- sub -- int_const -
;; -> int_const: linia 186
  %VR35 = add i32 1, 0
;; <- int_const: linia 186
  %VR36 = sub i32 %VR1, %VR35
;; <- sub: linia 186
;- cond -- cond -- dispatch -- object -
;; -> object: linia 186
;; <- object: linia 186
  %VR37 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR37, label %false_dispatch11, label %dispatch_not_void_CellularAutomaton_11
;#######################################; <- false_CellularAutomaton_5


;#######################################; -> false_dispatch11
false_dispatch11:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__36 to i32))
  ret i32 0
;#######################################; <- false_dispatch11


;#######################################; -> dispatch_not_void_CellularAutomaton_11
dispatch_not_void_CellularAutomaton_11:
  %VR38 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR39 = add i32 %VR38, 8
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = load i32* %VR40
  %VR42 = add i32 %VR41, 48
  %VR43 = inttoptr i32 %VR42 to i32*
  %VR44 = load i32* %VR43
  %VR45 = inttoptr i32 %VR44 to i32 (i32, i32)*
  %VR46 = call i32 (i32, i32)* %VR45(i32 %ARG, i32 %VR36)
;; <- dispatch: linia 186
  br label %join_if_CellularAutomaton_5_false
;#######################################; <- dispatch_not_void_CellularAutomaton_11


;#######################################; -> join_if_CellularAutomaton_5_false
join_if_CellularAutomaton_5_false:
  %VR15.1 = add i32 %VR46, 0
  br label %join_if_CellularAutomaton_5
;#######################################; <- join_if_CellularAutomaton_5_false


;#######################################; -> join_if_CellularAutomaton_5
join_if_CellularAutomaton_5:
  %VR15 = phi i32 [ %VR15.0, %join_if_CellularAutomaton_5_true ], [ %VR15.1, %join_if_CellularAutomaton_5_false ]
;; <- cond: linia 183
  br label %join_if_CellularAutomaton_4_false
;#######################################; <- join_if_CellularAutomaton_5


;#######################################; -> join_if_CellularAutomaton_4_false
join_if_CellularAutomaton_4_false:
  %VR2.1 = add i32 %VR15, 0
  br label %join_if_CellularAutomaton_4
;#######################################; <- join_if_CellularAutomaton_4_false


;#######################################; -> join_if_CellularAutomaton_4
join_if_CellularAutomaton_4:
  %VR2 = phi i32 [ %VR2.0, %join_if_CellularAutomaton_4_true ], [ %VR2.1, %join_if_CellularAutomaton_4_false ]
;; <- cond: linia 180
  ret i32 %VR2
;#######################################; <- join_if_CellularAutomaton_4


}
define i32 @CellularAutomaton__northwest(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 191
;;if: linia 191 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- lt -
;; -> lt: linia 191
;- cond -- lt -- sub -
;; -> sub: linia 191
;- cond -- lt -- sub -- object -
;; -> object: linia 191
;; <- object: linia 191
;- cond -- lt -- sub -- object -
;; -> object: linia 191
  %VR3 = add i32 %ARG, 16
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
;; <- object: linia 191
  %VR6 = sub i32 %VR1, %VR5
;; <- sub: linia 191
;- cond -- lt -- int_const -
;; -> int_const: linia 191
  %VR7 = add i32 0, 0
;; <- int_const: linia 191
  %VR8 = icmp slt i32 %VR6,  %VR7
;; <- lt: linia 191
  %VR9 = icmp eq i1 %VR8,  false
  br i1 %VR9, label %false_CellularAutomaton_6, label %false_false_CellularAutomaton_6
;#######################################; <- entry


;#######################################; -> false_false_CellularAutomaton_6
false_false_CellularAutomaton_6:
;;if: linia 191 (expresia pentru then)
;- cond -- string_const -
;; -> string_const: linia 192
  %VR10 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 192
  br label %join_if_CellularAutomaton_6_true
;#######################################; <- false_false_CellularAutomaton_6


;#######################################; -> join_if_CellularAutomaton_6_true
join_if_CellularAutomaton_6_true:
  %VR2.0 = add i32 %VR10, 0
  br label %join_if_CellularAutomaton_6
;#######################################; <- join_if_CellularAutomaton_6_true


;#######################################; -> false_CellularAutomaton_6
false_CellularAutomaton_6:
;;if: linia 191 (expresia pentru else)
;- cond -- cond -
;; -> cond: linia 193
;;if: linia 193 (expresia pentru predicat)
;;%VR11 rezervat pentru rezultatul if-ului
;- cond -- cond -- eq -
;; -> eq: linia 193
;- cond -- cond -- eq -- mul -
;; -> mul: linia 193
;- cond -- cond -- eq -- mul -- divide -
;; -> divide: linia 193
;- cond -- cond -- eq -- mul -- divide -- object -
;; -> object: linia 193
;; <- object: linia 193
;- cond -- cond -- eq -- mul -- divide -- object -
;; -> object: linia 193
  %VR12 = add i32 %ARG, 16
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
;; <- object: linia 193
  %VR15 = sdiv i32 %VR1, %VR14
;; <- divide: linia 193
;- cond -- cond -- eq -- mul -- object -
;; -> object: linia 193
  %VR16 = add i32 %ARG, 16
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = load i32* %VR17
;; <- object: linia 193
  %VR19 = mul i32 %VR15, %VR18
;; <- mul: linia 193
;- cond -- cond -- eq -- object -
;; -> object: linia 193
;; <- object: linia 193
;boxing to int
  %VR20 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR21 = add i32 %VR20, 12
  %VR22 = inttoptr i32 %VR21 to i32*
  store i32 %VR19, i32* %VR22
;boxing to int
  %VR23 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR24 = add i32 %VR23, 12
  %VR25 = inttoptr i32 %VR24 to i32*
  store i32 %VR1, i32* %VR25
  br label %eq_test_join_true_CellularAutomaton_3
;#######################################; <- false_CellularAutomaton_6


;#######################################; -> eq_test_join_true_CellularAutomaton_3
eq_test_join_true_CellularAutomaton_3:
  %VR26.0 = icmp eq i32 %VR20,  %VR23
  br i1 %VR26.0, label %eq_test_join_CellularAutomaton_3, label %eq_test_join_false_CellularAutomaton_3
;#######################################; <- eq_test_join_true_CellularAutomaton_3


;#######################################; -> eq_test_join_false_CellularAutomaton_3
eq_test_join_false_CellularAutomaton_3:
  %VR28 = call i32  @equality_test(i32 1, i32 0, i32 %VR20, i32 %VR23)
  %VR26.1 = icmp eq i32 %VR28,  1
  br label %eq_test_join_CellularAutomaton_3
;#######################################; <- eq_test_join_false_CellularAutomaton_3


;#######################################; -> eq_test_join_CellularAutomaton_3
eq_test_join_CellularAutomaton_3:
  %VR26 = phi i1 [ %VR26.0, %eq_test_join_true_CellularAutomaton_3 ] , [ %VR26.1, %eq_test_join_false_CellularAutomaton_3 ] 
;; <- eq: linia 193
  %VR29 = icmp eq i1 %VR26,  false
  br i1 %VR29, label %false_CellularAutomaton_7, label %false_false_CellularAutomaton_7
;#######################################; <- eq_test_join_CellularAutomaton_3


;#######################################; -> false_false_CellularAutomaton_7
false_false_CellularAutomaton_7:
;;if: linia 193 (expresia pentru then)
;- cond -- cond -- string_const -
;; -> string_const: linia 194
  %VR30 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 194
  br label %join_if_CellularAutomaton_7_true
;#######################################; <- false_false_CellularAutomaton_7


;#######################################; -> join_if_CellularAutomaton_7_true
join_if_CellularAutomaton_7_true:
  %VR11.0 = add i32 %VR30, 0
  br label %join_if_CellularAutomaton_7
;#######################################; <- join_if_CellularAutomaton_7_true


;#######################################; -> false_CellularAutomaton_7
false_CellularAutomaton_7:
;;if: linia 193 (expresia pentru else)
;- cond -- cond -- dispatch -
;; -> dispatch: linia 196
;;generez codul pentru apelul metodei north
;- cond -- cond -- dispatch -- sub -
;; -> sub: linia 196
;- cond -- cond -- dispatch -- sub -- object -
;; -> object: linia 196
;; <- object: linia 196
;- cond -- cond -- dispatch -- sub -- int_const -
;; -> int_const: linia 196
  %VR31 = add i32 1, 0
;; <- int_const: linia 196
  %VR32 = sub i32 %VR1, %VR31
;; <- sub: linia 196
;- cond -- cond -- dispatch -- object -
;; -> object: linia 196
;; <- object: linia 196
  %VR33 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR33, label %false_dispatch12, label %dispatch_not_void_CellularAutomaton_12
;#######################################; <- false_CellularAutomaton_7


;#######################################; -> false_dispatch12
false_dispatch12:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__37 to i32))
  ret i32 0
;#######################################; <- false_dispatch12


;#######################################; -> dispatch_not_void_CellularAutomaton_12
dispatch_not_void_CellularAutomaton_12:
  %VR34 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR35 = add i32 %VR34, 8
  %VR36 = inttoptr i32 %VR35 to i32*
  %VR37 = load i32* %VR36
  %VR38 = add i32 %VR37, 52
  %VR39 = inttoptr i32 %VR38 to i32*
  %VR40 = load i32* %VR39
  %VR41 = inttoptr i32 %VR40 to i32 (i32, i32)*
  %VR42 = call i32 (i32, i32)* %VR41(i32 %ARG, i32 %VR32)
;; <- dispatch: linia 196
  br label %join_if_CellularAutomaton_7_false
;#######################################; <- dispatch_not_void_CellularAutomaton_12


;#######################################; -> join_if_CellularAutomaton_7_false
join_if_CellularAutomaton_7_false:
  %VR11.1 = add i32 %VR42, 0
  br label %join_if_CellularAutomaton_7
;#######################################; <- join_if_CellularAutomaton_7_false


;#######################################; -> join_if_CellularAutomaton_7
join_if_CellularAutomaton_7:
  %VR11 = phi i32 [ %VR11.0, %join_if_CellularAutomaton_7_true ], [ %VR11.1, %join_if_CellularAutomaton_7_false ]
;; <- cond: linia 193
  br label %join_if_CellularAutomaton_6_false
;#######################################; <- join_if_CellularAutomaton_7


;#######################################; -> join_if_CellularAutomaton_6_false
join_if_CellularAutomaton_6_false:
  %VR2.1 = add i32 %VR11, 0
  br label %join_if_CellularAutomaton_6
;#######################################; <- join_if_CellularAutomaton_6_false


;#######################################; -> join_if_CellularAutomaton_6
join_if_CellularAutomaton_6:
  %VR2 = phi i32 [ %VR2.0, %join_if_CellularAutomaton_6_true ], [ %VR2.1, %join_if_CellularAutomaton_6_false ]
;; <- cond: linia 191
  ret i32 %VR2
;#######################################; <- join_if_CellularAutomaton_6


}
define i32 @CellularAutomaton__northeast(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 201
;;if: linia 201 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- lt -
;; -> lt: linia 201
;- cond -- lt -- sub -
;; -> sub: linia 201
;- cond -- lt -- sub -- object -
;; -> object: linia 201
;; <- object: linia 201
;- cond -- lt -- sub -- object -
;; -> object: linia 201
  %VR3 = add i32 %ARG, 16
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
;; <- object: linia 201
  %VR6 = sub i32 %VR1, %VR5
;; <- sub: linia 201
;- cond -- lt -- int_const -
;; -> int_const: linia 201
  %VR7 = add i32 0, 0
;; <- int_const: linia 201
  %VR8 = icmp slt i32 %VR6,  %VR7
;; <- lt: linia 201
  %VR9 = icmp eq i1 %VR8,  false
  br i1 %VR9, label %false_CellularAutomaton_8, label %false_false_CellularAutomaton_8
;#######################################; <- entry


;#######################################; -> false_false_CellularAutomaton_8
false_false_CellularAutomaton_8:
;;if: linia 201 (expresia pentru then)
;- cond -- string_const -
;; -> string_const: linia 202
  %VR10 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 202
  br label %join_if_CellularAutomaton_8_true
;#######################################; <- false_false_CellularAutomaton_8


;#######################################; -> join_if_CellularAutomaton_8_true
join_if_CellularAutomaton_8_true:
  %VR2.0 = add i32 %VR10, 0
  br label %join_if_CellularAutomaton_8
;#######################################; <- join_if_CellularAutomaton_8_true


;#######################################; -> false_CellularAutomaton_8
false_CellularAutomaton_8:
;;if: linia 201 (expresia pentru else)
;- cond -- cond -
;; -> cond: linia 203
;;if: linia 203 (expresia pentru predicat)
;;%VR11 rezervat pentru rezultatul if-ului
;- cond -- cond -- eq -
;; -> eq: linia 203
;- cond -- cond -- eq -- mul -
;; -> mul: linia 203
;- cond -- cond -- eq -- mul -- divide -
;; -> divide: linia 203
;- cond -- cond -- eq -- mul -- divide -- plus -
;; -> plus: linia 203
;- cond -- cond -- eq -- mul -- divide -- plus -- object -
;; -> object: linia 203
;; <- object: linia 203
;- cond -- cond -- eq -- mul -- divide -- plus -- int_const -
;; -> int_const: linia 203
  %VR12 = add i32 1, 0
;; <- int_const: linia 203
  %VR13 = add i32 %VR1, %VR12
;; <- plus: linia 203
;- cond -- cond -- eq -- mul -- divide -- object -
;; -> object: linia 203
  %VR14 = add i32 %ARG, 16
  %VR15 = inttoptr i32 %VR14 to i32*
  %VR16 = load i32* %VR15
;; <- object: linia 203
  %VR17 = sdiv i32 %VR13, %VR16
;; <- divide: linia 203
;- cond -- cond -- eq -- mul -- object -
;; -> object: linia 203
  %VR18 = add i32 %ARG, 16
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
;; <- object: linia 203
  %VR21 = mul i32 %VR17, %VR20
;; <- mul: linia 203
;- cond -- cond -- eq -- plus -
;; -> plus: linia 203
;- cond -- cond -- eq -- plus -- object -
;; -> object: linia 203
;; <- object: linia 203
;- cond -- cond -- eq -- plus -- int_const -
;; -> int_const: linia 203
  %VR22 = add i32 1, 0
;; <- int_const: linia 203
  %VR23 = add i32 %VR1, %VR22
;; <- plus: linia 203
;boxing to int
  %VR24 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR25 = add i32 %VR24, 12
  %VR26 = inttoptr i32 %VR25 to i32*
  store i32 %VR21, i32* %VR26
;boxing to int
  %VR27 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR28 = add i32 %VR27, 12
  %VR29 = inttoptr i32 %VR28 to i32*
  store i32 %VR23, i32* %VR29
  br label %eq_test_join_true_CellularAutomaton_4
;#######################################; <- false_CellularAutomaton_8


;#######################################; -> eq_test_join_true_CellularAutomaton_4
eq_test_join_true_CellularAutomaton_4:
  %VR30.0 = icmp eq i32 %VR24,  %VR27
  br i1 %VR30.0, label %eq_test_join_CellularAutomaton_4, label %eq_test_join_false_CellularAutomaton_4
;#######################################; <- eq_test_join_true_CellularAutomaton_4


;#######################################; -> eq_test_join_false_CellularAutomaton_4
eq_test_join_false_CellularAutomaton_4:
  %VR32 = call i32  @equality_test(i32 1, i32 0, i32 %VR24, i32 %VR27)
  %VR30.1 = icmp eq i32 %VR32,  1
  br label %eq_test_join_CellularAutomaton_4
;#######################################; <- eq_test_join_false_CellularAutomaton_4


;#######################################; -> eq_test_join_CellularAutomaton_4
eq_test_join_CellularAutomaton_4:
  %VR30 = phi i1 [ %VR30.0, %eq_test_join_true_CellularAutomaton_4 ] , [ %VR30.1, %eq_test_join_false_CellularAutomaton_4 ] 
;; <- eq: linia 203
  %VR33 = icmp eq i1 %VR30,  false
  br i1 %VR33, label %false_CellularAutomaton_9, label %false_false_CellularAutomaton_9
;#######################################; <- eq_test_join_CellularAutomaton_4


;#######################################; -> false_false_CellularAutomaton_9
false_false_CellularAutomaton_9:
;;if: linia 203 (expresia pentru then)
;- cond -- cond -- string_const -
;; -> string_const: linia 204
  %VR34 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 204
  br label %join_if_CellularAutomaton_9_true
;#######################################; <- false_false_CellularAutomaton_9


;#######################################; -> join_if_CellularAutomaton_9_true
join_if_CellularAutomaton_9_true:
  %VR11.0 = add i32 %VR34, 0
  br label %join_if_CellularAutomaton_9
;#######################################; <- join_if_CellularAutomaton_9_true


;#######################################; -> false_CellularAutomaton_9
false_CellularAutomaton_9:
;;if: linia 203 (expresia pentru else)
;- cond -- cond -- dispatch -
;; -> dispatch: linia 206
;;generez codul pentru apelul metodei north
;- cond -- cond -- dispatch -- plus -
;; -> plus: linia 206
;- cond -- cond -- dispatch -- plus -- object -
;; -> object: linia 206
;; <- object: linia 206
;- cond -- cond -- dispatch -- plus -- int_const -
;; -> int_const: linia 206
  %VR35 = add i32 1, 0
;; <- int_const: linia 206
  %VR36 = add i32 %VR1, %VR35
;; <- plus: linia 206
;- cond -- cond -- dispatch -- object -
;; -> object: linia 206
;; <- object: linia 206
  %VR37 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR37, label %false_dispatch13, label %dispatch_not_void_CellularAutomaton_13
;#######################################; <- false_CellularAutomaton_9


;#######################################; -> false_dispatch13
false_dispatch13:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__38 to i32))
  ret i32 0
;#######################################; <- false_dispatch13


;#######################################; -> dispatch_not_void_CellularAutomaton_13
dispatch_not_void_CellularAutomaton_13:
  %VR38 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR39 = add i32 %VR38, 8
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = load i32* %VR40
  %VR42 = add i32 %VR41, 52
  %VR43 = inttoptr i32 %VR42 to i32*
  %VR44 = load i32* %VR43
  %VR45 = inttoptr i32 %VR44 to i32 (i32, i32)*
  %VR46 = call i32 (i32, i32)* %VR45(i32 %ARG, i32 %VR36)
;; <- dispatch: linia 206
  br label %join_if_CellularAutomaton_9_false
;#######################################; <- dispatch_not_void_CellularAutomaton_13


;#######################################; -> join_if_CellularAutomaton_9_false
join_if_CellularAutomaton_9_false:
  %VR11.1 = add i32 %VR46, 0
  br label %join_if_CellularAutomaton_9
;#######################################; <- join_if_CellularAutomaton_9_false


;#######################################; -> join_if_CellularAutomaton_9
join_if_CellularAutomaton_9:
  %VR11 = phi i32 [ %VR11.0, %join_if_CellularAutomaton_9_true ], [ %VR11.1, %join_if_CellularAutomaton_9_false ]
;; <- cond: linia 203
  br label %join_if_CellularAutomaton_8_false
;#######################################; <- join_if_CellularAutomaton_9


;#######################################; -> join_if_CellularAutomaton_8_false
join_if_CellularAutomaton_8_false:
  %VR2.1 = add i32 %VR11, 0
  br label %join_if_CellularAutomaton_8
;#######################################; <- join_if_CellularAutomaton_8_false


;#######################################; -> join_if_CellularAutomaton_8
join_if_CellularAutomaton_8:
  %VR2 = phi i32 [ %VR2.0, %join_if_CellularAutomaton_8_true ], [ %VR2.1, %join_if_CellularAutomaton_8_false ]
;; <- cond: linia 201
  ret i32 %VR2
;#######################################; <- join_if_CellularAutomaton_8


}
define i32 @CellularAutomaton__southeast(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 211
;;if: linia 211 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- lt -
;; -> lt: linia 211
;- cond -- lt -- object -
;; -> object: linia 211
  %VR3 = add i32 %ARG, 20
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
;; <- object: linia 211
;- cond -- lt -- plus -
;; -> plus: linia 211
;- cond -- lt -- plus -- object -
;; -> object: linia 211
;; <- object: linia 211
;- cond -- lt -- plus -- object -
;; -> object: linia 211
  %VR6 = add i32 %ARG, 16
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
;; <- object: linia 211
  %VR9 = add i32 %VR1, %VR8
;; <- plus: linia 211
  %VR10 = icmp slt i32 %VR5,  %VR9
;; <- lt: linia 211
  %VR11 = icmp eq i1 %VR10,  false
  br i1 %VR11, label %false_CellularAutomaton_10, label %false_false_CellularAutomaton_10
;#######################################; <- entry


;#######################################; -> false_false_CellularAutomaton_10
false_false_CellularAutomaton_10:
;;if: linia 211 (expresia pentru then)
;- cond -- string_const -
;; -> string_const: linia 212
  %VR12 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 212
  br label %join_if_CellularAutomaton_10_true
;#######################################; <- false_false_CellularAutomaton_10


;#######################################; -> join_if_CellularAutomaton_10_true
join_if_CellularAutomaton_10_true:
  %VR2.0 = add i32 %VR12, 0
  br label %join_if_CellularAutomaton_10
;#######################################; <- join_if_CellularAutomaton_10_true


;#######################################; -> false_CellularAutomaton_10
false_CellularAutomaton_10:
;;if: linia 211 (expresia pentru else)
;- cond -- cond -
;; -> cond: linia 213
;;if: linia 213 (expresia pentru predicat)
;;%VR13 rezervat pentru rezultatul if-ului
;- cond -- cond -- eq -
;; -> eq: linia 213
;- cond -- cond -- eq -- mul -
;; -> mul: linia 213
;- cond -- cond -- eq -- mul -- divide -
;; -> divide: linia 213
;- cond -- cond -- eq -- mul -- divide -- plus -
;; -> plus: linia 213
;- cond -- cond -- eq -- mul -- divide -- plus -- object -
;; -> object: linia 213
;; <- object: linia 213
;- cond -- cond -- eq -- mul -- divide -- plus -- int_const -
;; -> int_const: linia 213
  %VR14 = add i32 1, 0
;; <- int_const: linia 213
  %VR15 = add i32 %VR1, %VR14
;; <- plus: linia 213
;- cond -- cond -- eq -- mul -- divide -- object -
;; -> object: linia 213
  %VR16 = add i32 %ARG, 16
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = load i32* %VR17
;; <- object: linia 213
  %VR19 = sdiv i32 %VR15, %VR18
;; <- divide: linia 213
;- cond -- cond -- eq -- mul -- object -
;; -> object: linia 213
  %VR20 = add i32 %ARG, 16
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
;; <- object: linia 213
  %VR23 = mul i32 %VR19, %VR22
;; <- mul: linia 213
;- cond -- cond -- eq -- plus -
;; -> plus: linia 213
;- cond -- cond -- eq -- plus -- object -
;; -> object: linia 213
;; <- object: linia 213
;- cond -- cond -- eq -- plus -- int_const -
;; -> int_const: linia 213
  %VR24 = add i32 1, 0
;; <- int_const: linia 213
  %VR25 = add i32 %VR1, %VR24
;; <- plus: linia 213
;boxing to int
  %VR26 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR27 = add i32 %VR26, 12
  %VR28 = inttoptr i32 %VR27 to i32*
  store i32 %VR23, i32* %VR28
;boxing to int
  %VR29 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR30 = add i32 %VR29, 12
  %VR31 = inttoptr i32 %VR30 to i32*
  store i32 %VR25, i32* %VR31
  br label %eq_test_join_true_CellularAutomaton_5
;#######################################; <- false_CellularAutomaton_10


;#######################################; -> eq_test_join_true_CellularAutomaton_5
eq_test_join_true_CellularAutomaton_5:
  %VR32.0 = icmp eq i32 %VR26,  %VR29
  br i1 %VR32.0, label %eq_test_join_CellularAutomaton_5, label %eq_test_join_false_CellularAutomaton_5
;#######################################; <- eq_test_join_true_CellularAutomaton_5


;#######################################; -> eq_test_join_false_CellularAutomaton_5
eq_test_join_false_CellularAutomaton_5:
  %VR34 = call i32  @equality_test(i32 1, i32 0, i32 %VR26, i32 %VR29)
  %VR32.1 = icmp eq i32 %VR34,  1
  br label %eq_test_join_CellularAutomaton_5
;#######################################; <- eq_test_join_false_CellularAutomaton_5


;#######################################; -> eq_test_join_CellularAutomaton_5
eq_test_join_CellularAutomaton_5:
  %VR32 = phi i1 [ %VR32.0, %eq_test_join_true_CellularAutomaton_5 ] , [ %VR32.1, %eq_test_join_false_CellularAutomaton_5 ] 
;; <- eq: linia 213
  %VR35 = icmp eq i1 %VR32,  false
  br i1 %VR35, label %false_CellularAutomaton_11, label %false_false_CellularAutomaton_11
;#######################################; <- eq_test_join_CellularAutomaton_5


;#######################################; -> false_false_CellularAutomaton_11
false_false_CellularAutomaton_11:
;;if: linia 213 (expresia pentru then)
;- cond -- cond -- string_const -
;; -> string_const: linia 214
  %VR36 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 214
  br label %join_if_CellularAutomaton_11_true
;#######################################; <- false_false_CellularAutomaton_11


;#######################################; -> join_if_CellularAutomaton_11_true
join_if_CellularAutomaton_11_true:
  %VR13.0 = add i32 %VR36, 0
  br label %join_if_CellularAutomaton_11
;#######################################; <- join_if_CellularAutomaton_11_true


;#######################################; -> false_CellularAutomaton_11
false_CellularAutomaton_11:
;;if: linia 213 (expresia pentru else)
;- cond -- cond -- dispatch -
;; -> dispatch: linia 216
;;generez codul pentru apelul metodei south
;- cond -- cond -- dispatch -- plus -
;; -> plus: linia 216
;- cond -- cond -- dispatch -- plus -- object -
;; -> object: linia 216
;; <- object: linia 216
;- cond -- cond -- dispatch -- plus -- int_const -
;; -> int_const: linia 216
  %VR37 = add i32 1, 0
;; <- int_const: linia 216
  %VR38 = add i32 %VR1, %VR37
;; <- plus: linia 216
;- cond -- cond -- dispatch -- object -
;; -> object: linia 216
;; <- object: linia 216
  %VR39 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR39, label %false_dispatch14, label %dispatch_not_void_CellularAutomaton_14
;#######################################; <- false_CellularAutomaton_11


;#######################################; -> false_dispatch14
false_dispatch14:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__39 to i32))
  ret i32 0
;#######################################; <- false_dispatch14


;#######################################; -> dispatch_not_void_CellularAutomaton_14
dispatch_not_void_CellularAutomaton_14:
  %VR40 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR41 = add i32 %VR40, 8
  %VR42 = inttoptr i32 %VR41 to i32*
  %VR43 = load i32* %VR42
  %VR44 = add i32 %VR43, 56
  %VR45 = inttoptr i32 %VR44 to i32*
  %VR46 = load i32* %VR45
  %VR47 = inttoptr i32 %VR46 to i32 (i32, i32)*
  %VR48 = call i32 (i32, i32)* %VR47(i32 %ARG, i32 %VR38)
;; <- dispatch: linia 216
  br label %join_if_CellularAutomaton_11_false
;#######################################; <- dispatch_not_void_CellularAutomaton_14


;#######################################; -> join_if_CellularAutomaton_11_false
join_if_CellularAutomaton_11_false:
  %VR13.1 = add i32 %VR48, 0
  br label %join_if_CellularAutomaton_11
;#######################################; <- join_if_CellularAutomaton_11_false


;#######################################; -> join_if_CellularAutomaton_11
join_if_CellularAutomaton_11:
  %VR13 = phi i32 [ %VR13.0, %join_if_CellularAutomaton_11_true ], [ %VR13.1, %join_if_CellularAutomaton_11_false ]
;; <- cond: linia 213
  br label %join_if_CellularAutomaton_10_false
;#######################################; <- join_if_CellularAutomaton_11


;#######################################; -> join_if_CellularAutomaton_10_false
join_if_CellularAutomaton_10_false:
  %VR2.1 = add i32 %VR13, 0
  br label %join_if_CellularAutomaton_10
;#######################################; <- join_if_CellularAutomaton_10_false


;#######################################; -> join_if_CellularAutomaton_10
join_if_CellularAutomaton_10:
  %VR2 = phi i32 [ %VR2.0, %join_if_CellularAutomaton_10_true ], [ %VR2.1, %join_if_CellularAutomaton_10_false ]
;; <- cond: linia 211
  ret i32 %VR2
;#######################################; <- join_if_CellularAutomaton_10


}
define i32 @CellularAutomaton__southwest(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 221
;;if: linia 221 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- lt -
;; -> lt: linia 221
;- cond -- lt -- object -
;; -> object: linia 221
  %VR3 = add i32 %ARG, 20
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
;; <- object: linia 221
;- cond -- lt -- plus -
;; -> plus: linia 221
;- cond -- lt -- plus -- object -
;; -> object: linia 221
;; <- object: linia 221
;- cond -- lt -- plus -- object -
;; -> object: linia 221
  %VR6 = add i32 %ARG, 16
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
;; <- object: linia 221
  %VR9 = add i32 %VR1, %VR8
;; <- plus: linia 221
  %VR10 = icmp slt i32 %VR5,  %VR9
;; <- lt: linia 221
  %VR11 = icmp eq i1 %VR10,  false
  br i1 %VR11, label %false_CellularAutomaton_12, label %false_false_CellularAutomaton_12
;#######################################; <- entry


;#######################################; -> false_false_CellularAutomaton_12
false_false_CellularAutomaton_12:
;;if: linia 221 (expresia pentru then)
;- cond -- string_const -
;; -> string_const: linia 222
  %VR12 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 222
  br label %join_if_CellularAutomaton_12_true
;#######################################; <- false_false_CellularAutomaton_12


;#######################################; -> join_if_CellularAutomaton_12_true
join_if_CellularAutomaton_12_true:
  %VR2.0 = add i32 %VR12, 0
  br label %join_if_CellularAutomaton_12
;#######################################; <- join_if_CellularAutomaton_12_true


;#######################################; -> false_CellularAutomaton_12
false_CellularAutomaton_12:
;;if: linia 221 (expresia pentru else)
;- cond -- cond -
;; -> cond: linia 223
;;if: linia 223 (expresia pentru predicat)
;;%VR13 rezervat pentru rezultatul if-ului
;- cond -- cond -- eq -
;; -> eq: linia 223
;- cond -- cond -- eq -- mul -
;; -> mul: linia 223
;- cond -- cond -- eq -- mul -- divide -
;; -> divide: linia 223
;- cond -- cond -- eq -- mul -- divide -- object -
;; -> object: linia 223
;; <- object: linia 223
;- cond -- cond -- eq -- mul -- divide -- object -
;; -> object: linia 223
  %VR14 = add i32 %ARG, 16
  %VR15 = inttoptr i32 %VR14 to i32*
  %VR16 = load i32* %VR15
;; <- object: linia 223
  %VR17 = sdiv i32 %VR1, %VR16
;; <- divide: linia 223
;- cond -- cond -- eq -- mul -- object -
;; -> object: linia 223
  %VR18 = add i32 %ARG, 16
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
;; <- object: linia 223
  %VR21 = mul i32 %VR17, %VR20
;; <- mul: linia 223
;- cond -- cond -- eq -- object -
;; -> object: linia 223
;; <- object: linia 223
;boxing to int
  %VR22 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR23 = add i32 %VR22, 12
  %VR24 = inttoptr i32 %VR23 to i32*
  store i32 %VR21, i32* %VR24
;boxing to int
  %VR25 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR26 = add i32 %VR25, 12
  %VR27 = inttoptr i32 %VR26 to i32*
  store i32 %VR1, i32* %VR27
  br label %eq_test_join_true_CellularAutomaton_6
;#######################################; <- false_CellularAutomaton_12


;#######################################; -> eq_test_join_true_CellularAutomaton_6
eq_test_join_true_CellularAutomaton_6:
  %VR28.0 = icmp eq i32 %VR22,  %VR25
  br i1 %VR28.0, label %eq_test_join_CellularAutomaton_6, label %eq_test_join_false_CellularAutomaton_6
;#######################################; <- eq_test_join_true_CellularAutomaton_6


;#######################################; -> eq_test_join_false_CellularAutomaton_6
eq_test_join_false_CellularAutomaton_6:
  %VR30 = call i32  @equality_test(i32 1, i32 0, i32 %VR22, i32 %VR25)
  %VR28.1 = icmp eq i32 %VR30,  1
  br label %eq_test_join_CellularAutomaton_6
;#######################################; <- eq_test_join_false_CellularAutomaton_6


;#######################################; -> eq_test_join_CellularAutomaton_6
eq_test_join_CellularAutomaton_6:
  %VR28 = phi i1 [ %VR28.0, %eq_test_join_true_CellularAutomaton_6 ] , [ %VR28.1, %eq_test_join_false_CellularAutomaton_6 ] 
;; <- eq: linia 223
  %VR31 = icmp eq i1 %VR28,  false
  br i1 %VR31, label %false_CellularAutomaton_13, label %false_false_CellularAutomaton_13
;#######################################; <- eq_test_join_CellularAutomaton_6


;#######################################; -> false_false_CellularAutomaton_13
false_false_CellularAutomaton_13:
;;if: linia 223 (expresia pentru then)
;- cond -- cond -- string_const -
;; -> string_const: linia 224
  %VR32 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 224
  br label %join_if_CellularAutomaton_13_true
;#######################################; <- false_false_CellularAutomaton_13


;#######################################; -> join_if_CellularAutomaton_13_true
join_if_CellularAutomaton_13_true:
  %VR13.0 = add i32 %VR32, 0
  br label %join_if_CellularAutomaton_13
;#######################################; <- join_if_CellularAutomaton_13_true


;#######################################; -> false_CellularAutomaton_13
false_CellularAutomaton_13:
;;if: linia 223 (expresia pentru else)
;- cond -- cond -- dispatch -
;; -> dispatch: linia 226
;;generez codul pentru apelul metodei south
;- cond -- cond -- dispatch -- sub -
;; -> sub: linia 226
;- cond -- cond -- dispatch -- sub -- object -
;; -> object: linia 226
;; <- object: linia 226
;- cond -- cond -- dispatch -- sub -- int_const -
;; -> int_const: linia 226
  %VR33 = add i32 1, 0
;; <- int_const: linia 226
  %VR34 = sub i32 %VR1, %VR33
;; <- sub: linia 226
;- cond -- cond -- dispatch -- object -
;; -> object: linia 226
;; <- object: linia 226
  %VR35 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR35, label %false_dispatch15, label %dispatch_not_void_CellularAutomaton_15
;#######################################; <- false_CellularAutomaton_13


;#######################################; -> false_dispatch15
false_dispatch15:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__40 to i32))
  ret i32 0
;#######################################; <- false_dispatch15


;#######################################; -> dispatch_not_void_CellularAutomaton_15
dispatch_not_void_CellularAutomaton_15:
  %VR36 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR37 = add i32 %VR36, 8
  %VR38 = inttoptr i32 %VR37 to i32*
  %VR39 = load i32* %VR38
  %VR40 = add i32 %VR39, 56
  %VR41 = inttoptr i32 %VR40 to i32*
  %VR42 = load i32* %VR41
  %VR43 = inttoptr i32 %VR42 to i32 (i32, i32)*
  %VR44 = call i32 (i32, i32)* %VR43(i32 %ARG, i32 %VR34)
;; <- dispatch: linia 226
  br label %join_if_CellularAutomaton_13_false
;#######################################; <- dispatch_not_void_CellularAutomaton_15


;#######################################; -> join_if_CellularAutomaton_13_false
join_if_CellularAutomaton_13_false:
  %VR13.1 = add i32 %VR44, 0
  br label %join_if_CellularAutomaton_13
;#######################################; <- join_if_CellularAutomaton_13_false


;#######################################; -> join_if_CellularAutomaton_13
join_if_CellularAutomaton_13:
  %VR13 = phi i32 [ %VR13.0, %join_if_CellularAutomaton_13_true ], [ %VR13.1, %join_if_CellularAutomaton_13_false ]
;; <- cond: linia 223
  br label %join_if_CellularAutomaton_12_false
;#######################################; <- join_if_CellularAutomaton_13


;#######################################; -> join_if_CellularAutomaton_12_false
join_if_CellularAutomaton_12_false:
  %VR2.1 = add i32 %VR13, 0
  br label %join_if_CellularAutomaton_12
;#######################################; <- join_if_CellularAutomaton_12_false


;#######################################; -> join_if_CellularAutomaton_12
join_if_CellularAutomaton_12:
  %VR2 = phi i32 [ %VR2.0, %join_if_CellularAutomaton_12_true ], [ %VR2.1, %join_if_CellularAutomaton_12_false ]
;; <- cond: linia 221
  ret i32 %VR2
;#######################################; <- join_if_CellularAutomaton_12


}
define i32 @CellularAutomaton__neighbors(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- block -
;; -> block: linia 231
;- block -- plus -
;; -> plus: linia 239
;- block -- plus -- plus -
;; -> plus: linia 238
;- block -- plus -- plus -- plus -
;; -> plus: linia 237
;- block -- plus -- plus -- plus -- plus -
;; -> plus: linia 236
;- block -- plus -- plus -- plus -- plus -- plus -
;; -> plus: linia 235
;- block -- plus -- plus -- plus -- plus -- plus -- plus -
;; -> plus: linia 234
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- plus -
;; -> plus: linia 233
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- plus -- cond -
;; -> cond: linia 232
;;if: linia 232 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- eq -
;; -> eq: linia 232
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- eq -- dispatch -
;; -> dispatch: linia 232
;;generez codul pentru apelul metodei north
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 232
;; <- object: linia 232
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 232
;; <- object: linia 232
  %VR3 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR3, label %false_dispatch16, label %dispatch_not_void_CellularAutomaton_16
;#######################################; <- entry


;#######################################; -> false_dispatch16
false_dispatch16:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__41 to i32))
  ret i32 0
;#######################################; <- false_dispatch16


;#######################################; -> dispatch_not_void_CellularAutomaton_16
dispatch_not_void_CellularAutomaton_16:
  %VR4 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR5 = add i32 %VR4, 8
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = load i32* %VR6
  %VR8 = add i32 %VR7, 52
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = inttoptr i32 %VR10 to i32 (i32, i32)*
  %VR12 = call i32 (i32, i32)* %VR11(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 232
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- eq -- string_const -
;; -> string_const: linia 232
  %VR13 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 232
  br label %eq_test_join_true_CellularAutomaton_7
;#######################################; <- dispatch_not_void_CellularAutomaton_16


;#######################################; -> eq_test_join_true_CellularAutomaton_7
eq_test_join_true_CellularAutomaton_7:
  %VR14.0 = icmp eq i32 %VR12,  %VR13
  br i1 %VR14.0, label %eq_test_join_CellularAutomaton_7, label %eq_test_join_false_CellularAutomaton_7
;#######################################; <- eq_test_join_true_CellularAutomaton_7


;#######################################; -> eq_test_join_false_CellularAutomaton_7
eq_test_join_false_CellularAutomaton_7:
  %VR16 = call i32  @equality_test(i32 1, i32 0, i32 %VR12, i32 %VR13)
  %VR14.1 = icmp eq i32 %VR16,  1
  br label %eq_test_join_CellularAutomaton_7
;#######################################; <- eq_test_join_false_CellularAutomaton_7


;#######################################; -> eq_test_join_CellularAutomaton_7
eq_test_join_CellularAutomaton_7:
  %VR14 = phi i1 [ %VR14.0, %eq_test_join_true_CellularAutomaton_7 ] , [ %VR14.1, %eq_test_join_false_CellularAutomaton_7 ] 
;; <- eq: linia 232
  %VR17 = icmp eq i1 %VR14,  false
  br i1 %VR17, label %false_CellularAutomaton_14, label %false_false_CellularAutomaton_14
;#######################################; <- eq_test_join_CellularAutomaton_7


;#######################################; -> false_false_CellularAutomaton_14
false_false_CellularAutomaton_14:
;;if: linia 232 (expresia pentru then)
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- int_const -
;; -> int_const: linia 232
  %VR18 = add i32 1, 0
;; <- int_const: linia 232
  br label %join_if_CellularAutomaton_14_true
;#######################################; <- false_false_CellularAutomaton_14


;#######################################; -> join_if_CellularAutomaton_14_true
join_if_CellularAutomaton_14_true:
  %VR2.0 = add i32 %VR18, 0
  br label %join_if_CellularAutomaton_14
;#######################################; <- join_if_CellularAutomaton_14_true


;#######################################; -> false_CellularAutomaton_14
false_CellularAutomaton_14:
;;if: linia 232 (expresia pentru else)
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- int_const -
;; -> int_const: linia 232
  %VR19 = add i32 0, 0
;; <- int_const: linia 232
  br label %join_if_CellularAutomaton_14_false
;#######################################; <- false_CellularAutomaton_14


;#######################################; -> join_if_CellularAutomaton_14_false
join_if_CellularAutomaton_14_false:
  %VR2.1 = add i32 %VR19, 0
  br label %join_if_CellularAutomaton_14
;#######################################; <- join_if_CellularAutomaton_14_false


;#######################################; -> join_if_CellularAutomaton_14
join_if_CellularAutomaton_14:
  %VR2 = phi i32 [ %VR2.0, %join_if_CellularAutomaton_14_true ], [ %VR2.1, %join_if_CellularAutomaton_14_false ]
;; <- cond: linia 232
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- plus -- cond -
;; -> cond: linia 233
;;if: linia 233 (expresia pentru predicat)
;;%VR20 rezervat pentru rezultatul if-ului
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- eq -
;; -> eq: linia 233
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- eq -- dispatch -
;; -> dispatch: linia 233
;;generez codul pentru apelul metodei south
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 233
;; <- object: linia 233
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 233
;; <- object: linia 233
  %VR21 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR21, label %false_dispatch17, label %dispatch_not_void_CellularAutomaton_17
;#######################################; <- join_if_CellularAutomaton_14


;#######################################; -> false_dispatch17
false_dispatch17:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__42 to i32))
  ret i32 0
;#######################################; <- false_dispatch17


;#######################################; -> dispatch_not_void_CellularAutomaton_17
dispatch_not_void_CellularAutomaton_17:
  %VR22 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR23 = add i32 %VR22, 8
  %VR24 = inttoptr i32 %VR23 to i32*
  %VR25 = load i32* %VR24
  %VR26 = add i32 %VR25, 56
  %VR27 = inttoptr i32 %VR26 to i32*
  %VR28 = load i32* %VR27
  %VR29 = inttoptr i32 %VR28 to i32 (i32, i32)*
  %VR30 = call i32 (i32, i32)* %VR29(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 233
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- eq -- string_const -
;; -> string_const: linia 233
  %VR31 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 233
  br label %eq_test_join_true_CellularAutomaton_8
;#######################################; <- dispatch_not_void_CellularAutomaton_17


;#######################################; -> eq_test_join_true_CellularAutomaton_8
eq_test_join_true_CellularAutomaton_8:
  %VR32.0 = icmp eq i32 %VR30,  %VR31
  br i1 %VR32.0, label %eq_test_join_CellularAutomaton_8, label %eq_test_join_false_CellularAutomaton_8
;#######################################; <- eq_test_join_true_CellularAutomaton_8


;#######################################; -> eq_test_join_false_CellularAutomaton_8
eq_test_join_false_CellularAutomaton_8:
  %VR34 = call i32  @equality_test(i32 1, i32 0, i32 %VR30, i32 %VR31)
  %VR32.1 = icmp eq i32 %VR34,  1
  br label %eq_test_join_CellularAutomaton_8
;#######################################; <- eq_test_join_false_CellularAutomaton_8


;#######################################; -> eq_test_join_CellularAutomaton_8
eq_test_join_CellularAutomaton_8:
  %VR32 = phi i1 [ %VR32.0, %eq_test_join_true_CellularAutomaton_8 ] , [ %VR32.1, %eq_test_join_false_CellularAutomaton_8 ] 
;; <- eq: linia 233
  %VR35 = icmp eq i1 %VR32,  false
  br i1 %VR35, label %false_CellularAutomaton_15, label %false_false_CellularAutomaton_15
;#######################################; <- eq_test_join_CellularAutomaton_8


;#######################################; -> false_false_CellularAutomaton_15
false_false_CellularAutomaton_15:
;;if: linia 233 (expresia pentru then)
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- int_const -
;; -> int_const: linia 233
  %VR36 = add i32 1, 0
;; <- int_const: linia 233
  br label %join_if_CellularAutomaton_15_true
;#######################################; <- false_false_CellularAutomaton_15


;#######################################; -> join_if_CellularAutomaton_15_true
join_if_CellularAutomaton_15_true:
  %VR20.0 = add i32 %VR36, 0
  br label %join_if_CellularAutomaton_15
;#######################################; <- join_if_CellularAutomaton_15_true


;#######################################; -> false_CellularAutomaton_15
false_CellularAutomaton_15:
;;if: linia 233 (expresia pentru else)
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- int_const -
;; -> int_const: linia 233
  %VR37 = add i32 0, 0
;; <- int_const: linia 233
  br label %join_if_CellularAutomaton_15_false
;#######################################; <- false_CellularAutomaton_15


;#######################################; -> join_if_CellularAutomaton_15_false
join_if_CellularAutomaton_15_false:
  %VR20.1 = add i32 %VR37, 0
  br label %join_if_CellularAutomaton_15
;#######################################; <- join_if_CellularAutomaton_15_false


;#######################################; -> join_if_CellularAutomaton_15
join_if_CellularAutomaton_15:
  %VR20 = phi i32 [ %VR20.0, %join_if_CellularAutomaton_15_true ], [ %VR20.1, %join_if_CellularAutomaton_15_false ]
;; <- cond: linia 233
  %VR38 = add i32 %VR2, %VR20
;; <- plus: linia 233
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- cond -
;; -> cond: linia 234
;;if: linia 234 (expresia pentru predicat)
;;%VR39 rezervat pentru rezultatul if-ului
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- eq -
;; -> eq: linia 234
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- eq -- dispatch -
;; -> dispatch: linia 234
;;generez codul pentru apelul metodei east
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 234
;; <- object: linia 234
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 234
;; <- object: linia 234
  %VR40 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR40, label %false_dispatch18, label %dispatch_not_void_CellularAutomaton_18
;#######################################; <- join_if_CellularAutomaton_15


;#######################################; -> false_dispatch18
false_dispatch18:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__43 to i32))
  ret i32 0
;#######################################; <- false_dispatch18


;#######################################; -> dispatch_not_void_CellularAutomaton_18
dispatch_not_void_CellularAutomaton_18:
  %VR41 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR42 = add i32 %VR41, 8
  %VR43 = inttoptr i32 %VR42 to i32*
  %VR44 = load i32* %VR43
  %VR45 = add i32 %VR44, 60
  %VR46 = inttoptr i32 %VR45 to i32*
  %VR47 = load i32* %VR46
  %VR48 = inttoptr i32 %VR47 to i32 (i32, i32)*
  %VR49 = call i32 (i32, i32)* %VR48(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 234
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- eq -- string_const -
;; -> string_const: linia 234
  %VR50 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 234
  br label %eq_test_join_true_CellularAutomaton_9
;#######################################; <- dispatch_not_void_CellularAutomaton_18


;#######################################; -> eq_test_join_true_CellularAutomaton_9
eq_test_join_true_CellularAutomaton_9:
  %VR51.0 = icmp eq i32 %VR49,  %VR50
  br i1 %VR51.0, label %eq_test_join_CellularAutomaton_9, label %eq_test_join_false_CellularAutomaton_9
;#######################################; <- eq_test_join_true_CellularAutomaton_9


;#######################################; -> eq_test_join_false_CellularAutomaton_9
eq_test_join_false_CellularAutomaton_9:
  %VR53 = call i32  @equality_test(i32 1, i32 0, i32 %VR49, i32 %VR50)
  %VR51.1 = icmp eq i32 %VR53,  1
  br label %eq_test_join_CellularAutomaton_9
;#######################################; <- eq_test_join_false_CellularAutomaton_9


;#######################################; -> eq_test_join_CellularAutomaton_9
eq_test_join_CellularAutomaton_9:
  %VR51 = phi i1 [ %VR51.0, %eq_test_join_true_CellularAutomaton_9 ] , [ %VR51.1, %eq_test_join_false_CellularAutomaton_9 ] 
;; <- eq: linia 234
  %VR54 = icmp eq i1 %VR51,  false
  br i1 %VR54, label %false_CellularAutomaton_16, label %false_false_CellularAutomaton_16
;#######################################; <- eq_test_join_CellularAutomaton_9


;#######################################; -> false_false_CellularAutomaton_16
false_false_CellularAutomaton_16:
;;if: linia 234 (expresia pentru then)
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- int_const -
;; -> int_const: linia 234
  %VR55 = add i32 1, 0
;; <- int_const: linia 234
  br label %join_if_CellularAutomaton_16_true
;#######################################; <- false_false_CellularAutomaton_16


;#######################################; -> join_if_CellularAutomaton_16_true
join_if_CellularAutomaton_16_true:
  %VR39.0 = add i32 %VR55, 0
  br label %join_if_CellularAutomaton_16
;#######################################; <- join_if_CellularAutomaton_16_true


;#######################################; -> false_CellularAutomaton_16
false_CellularAutomaton_16:
;;if: linia 234 (expresia pentru else)
;- block -- plus -- plus -- plus -- plus -- plus -- plus -- cond -- int_const -
;; -> int_const: linia 234
  %VR56 = add i32 0, 0
;; <- int_const: linia 234
  br label %join_if_CellularAutomaton_16_false
;#######################################; <- false_CellularAutomaton_16


;#######################################; -> join_if_CellularAutomaton_16_false
join_if_CellularAutomaton_16_false:
  %VR39.1 = add i32 %VR56, 0
  br label %join_if_CellularAutomaton_16
;#######################################; <- join_if_CellularAutomaton_16_false


;#######################################; -> join_if_CellularAutomaton_16
join_if_CellularAutomaton_16:
  %VR39 = phi i32 [ %VR39.0, %join_if_CellularAutomaton_16_true ], [ %VR39.1, %join_if_CellularAutomaton_16_false ]
;; <- cond: linia 234
  %VR57 = add i32 %VR38, %VR39
;; <- plus: linia 234
;- block -- plus -- plus -- plus -- plus -- plus -- cond -
;; -> cond: linia 235
;;if: linia 235 (expresia pentru predicat)
;;%VR58 rezervat pentru rezultatul if-ului
;- block -- plus -- plus -- plus -- plus -- plus -- cond -- eq -
;; -> eq: linia 235
;- block -- plus -- plus -- plus -- plus -- plus -- cond -- eq -- dispatch -
;; -> dispatch: linia 235
;;generez codul pentru apelul metodei west
;- block -- plus -- plus -- plus -- plus -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 235
;; <- object: linia 235
;- block -- plus -- plus -- plus -- plus -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 235
;; <- object: linia 235
  %VR59 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR59, label %false_dispatch19, label %dispatch_not_void_CellularAutomaton_19
;#######################################; <- join_if_CellularAutomaton_16


;#######################################; -> false_dispatch19
false_dispatch19:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__44 to i32))
  ret i32 0
;#######################################; <- false_dispatch19


;#######################################; -> dispatch_not_void_CellularAutomaton_19
dispatch_not_void_CellularAutomaton_19:
  %VR60 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR61 = add i32 %VR60, 8
  %VR62 = inttoptr i32 %VR61 to i32*
  %VR63 = load i32* %VR62
  %VR64 = add i32 %VR63, 64
  %VR65 = inttoptr i32 %VR64 to i32*
  %VR66 = load i32* %VR65
  %VR67 = inttoptr i32 %VR66 to i32 (i32, i32)*
  %VR68 = call i32 (i32, i32)* %VR67(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 235
;- block -- plus -- plus -- plus -- plus -- plus -- cond -- eq -- string_const -
;; -> string_const: linia 235
  %VR69 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 235
  br label %eq_test_join_true_CellularAutomaton_10
;#######################################; <- dispatch_not_void_CellularAutomaton_19


;#######################################; -> eq_test_join_true_CellularAutomaton_10
eq_test_join_true_CellularAutomaton_10:
  %VR70.0 = icmp eq i32 %VR68,  %VR69
  br i1 %VR70.0, label %eq_test_join_CellularAutomaton_10, label %eq_test_join_false_CellularAutomaton_10
;#######################################; <- eq_test_join_true_CellularAutomaton_10


;#######################################; -> eq_test_join_false_CellularAutomaton_10
eq_test_join_false_CellularAutomaton_10:
  %VR72 = call i32  @equality_test(i32 1, i32 0, i32 %VR68, i32 %VR69)
  %VR70.1 = icmp eq i32 %VR72,  1
  br label %eq_test_join_CellularAutomaton_10
;#######################################; <- eq_test_join_false_CellularAutomaton_10


;#######################################; -> eq_test_join_CellularAutomaton_10
eq_test_join_CellularAutomaton_10:
  %VR70 = phi i1 [ %VR70.0, %eq_test_join_true_CellularAutomaton_10 ] , [ %VR70.1, %eq_test_join_false_CellularAutomaton_10 ] 
;; <- eq: linia 235
  %VR73 = icmp eq i1 %VR70,  false
  br i1 %VR73, label %false_CellularAutomaton_17, label %false_false_CellularAutomaton_17
;#######################################; <- eq_test_join_CellularAutomaton_10


;#######################################; -> false_false_CellularAutomaton_17
false_false_CellularAutomaton_17:
;;if: linia 235 (expresia pentru then)
;- block -- plus -- plus -- plus -- plus -- plus -- cond -- int_const -
;; -> int_const: linia 235
  %VR74 = add i32 1, 0
;; <- int_const: linia 235
  br label %join_if_CellularAutomaton_17_true
;#######################################; <- false_false_CellularAutomaton_17


;#######################################; -> join_if_CellularAutomaton_17_true
join_if_CellularAutomaton_17_true:
  %VR58.0 = add i32 %VR74, 0
  br label %join_if_CellularAutomaton_17
;#######################################; <- join_if_CellularAutomaton_17_true


;#######################################; -> false_CellularAutomaton_17
false_CellularAutomaton_17:
;;if: linia 235 (expresia pentru else)
;- block -- plus -- plus -- plus -- plus -- plus -- cond -- int_const -
;; -> int_const: linia 235
  %VR75 = add i32 0, 0
;; <- int_const: linia 235
  br label %join_if_CellularAutomaton_17_false
;#######################################; <- false_CellularAutomaton_17


;#######################################; -> join_if_CellularAutomaton_17_false
join_if_CellularAutomaton_17_false:
  %VR58.1 = add i32 %VR75, 0
  br label %join_if_CellularAutomaton_17
;#######################################; <- join_if_CellularAutomaton_17_false


;#######################################; -> join_if_CellularAutomaton_17
join_if_CellularAutomaton_17:
  %VR58 = phi i32 [ %VR58.0, %join_if_CellularAutomaton_17_true ], [ %VR58.1, %join_if_CellularAutomaton_17_false ]
;; <- cond: linia 235
  %VR76 = add i32 %VR57, %VR58
;; <- plus: linia 235
;- block -- plus -- plus -- plus -- plus -- cond -
;; -> cond: linia 236
;;if: linia 236 (expresia pentru predicat)
;;%VR77 rezervat pentru rezultatul if-ului
;- block -- plus -- plus -- plus -- plus -- cond -- eq -
;; -> eq: linia 236
;- block -- plus -- plus -- plus -- plus -- cond -- eq -- dispatch -
;; -> dispatch: linia 236
;;generez codul pentru apelul metodei northeast
;- block -- plus -- plus -- plus -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 236
;; <- object: linia 236
;- block -- plus -- plus -- plus -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 236
;; <- object: linia 236
  %VR78 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR78, label %false_dispatch20, label %dispatch_not_void_CellularAutomaton_20
;#######################################; <- join_if_CellularAutomaton_17


;#######################################; -> false_dispatch20
false_dispatch20:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__45 to i32))
  ret i32 0
;#######################################; <- false_dispatch20


;#######################################; -> dispatch_not_void_CellularAutomaton_20
dispatch_not_void_CellularAutomaton_20:
  %VR79 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR80 = add i32 %VR79, 8
  %VR81 = inttoptr i32 %VR80 to i32*
  %VR82 = load i32* %VR81
  %VR83 = add i32 %VR82, 72
  %VR84 = inttoptr i32 %VR83 to i32*
  %VR85 = load i32* %VR84
  %VR86 = inttoptr i32 %VR85 to i32 (i32, i32)*
  %VR87 = call i32 (i32, i32)* %VR86(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 236
;- block -- plus -- plus -- plus -- plus -- cond -- eq -- string_const -
;; -> string_const: linia 236
  %VR88 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 236
  br label %eq_test_join_true_CellularAutomaton_11
;#######################################; <- dispatch_not_void_CellularAutomaton_20


;#######################################; -> eq_test_join_true_CellularAutomaton_11
eq_test_join_true_CellularAutomaton_11:
  %VR89.0 = icmp eq i32 %VR87,  %VR88
  br i1 %VR89.0, label %eq_test_join_CellularAutomaton_11, label %eq_test_join_false_CellularAutomaton_11
;#######################################; <- eq_test_join_true_CellularAutomaton_11


;#######################################; -> eq_test_join_false_CellularAutomaton_11
eq_test_join_false_CellularAutomaton_11:
  %VR91 = call i32  @equality_test(i32 1, i32 0, i32 %VR87, i32 %VR88)
  %VR89.1 = icmp eq i32 %VR91,  1
  br label %eq_test_join_CellularAutomaton_11
;#######################################; <- eq_test_join_false_CellularAutomaton_11


;#######################################; -> eq_test_join_CellularAutomaton_11
eq_test_join_CellularAutomaton_11:
  %VR89 = phi i1 [ %VR89.0, %eq_test_join_true_CellularAutomaton_11 ] , [ %VR89.1, %eq_test_join_false_CellularAutomaton_11 ] 
;; <- eq: linia 236
  %VR92 = icmp eq i1 %VR89,  false
  br i1 %VR92, label %false_CellularAutomaton_18, label %false_false_CellularAutomaton_18
;#######################################; <- eq_test_join_CellularAutomaton_11


;#######################################; -> false_false_CellularAutomaton_18
false_false_CellularAutomaton_18:
;;if: linia 236 (expresia pentru then)
;- block -- plus -- plus -- plus -- plus -- cond -- int_const -
;; -> int_const: linia 236
  %VR93 = add i32 1, 0
;; <- int_const: linia 236
  br label %join_if_CellularAutomaton_18_true
;#######################################; <- false_false_CellularAutomaton_18


;#######################################; -> join_if_CellularAutomaton_18_true
join_if_CellularAutomaton_18_true:
  %VR77.0 = add i32 %VR93, 0
  br label %join_if_CellularAutomaton_18
;#######################################; <- join_if_CellularAutomaton_18_true


;#######################################; -> false_CellularAutomaton_18
false_CellularAutomaton_18:
;;if: linia 236 (expresia pentru else)
;- block -- plus -- plus -- plus -- plus -- cond -- int_const -
;; -> int_const: linia 236
  %VR94 = add i32 0, 0
;; <- int_const: linia 236
  br label %join_if_CellularAutomaton_18_false
;#######################################; <- false_CellularAutomaton_18


;#######################################; -> join_if_CellularAutomaton_18_false
join_if_CellularAutomaton_18_false:
  %VR77.1 = add i32 %VR94, 0
  br label %join_if_CellularAutomaton_18
;#######################################; <- join_if_CellularAutomaton_18_false


;#######################################; -> join_if_CellularAutomaton_18
join_if_CellularAutomaton_18:
  %VR77 = phi i32 [ %VR77.0, %join_if_CellularAutomaton_18_true ], [ %VR77.1, %join_if_CellularAutomaton_18_false ]
;; <- cond: linia 236
  %VR95 = add i32 %VR76, %VR77
;; <- plus: linia 236
;- block -- plus -- plus -- plus -- cond -
;; -> cond: linia 237
;;if: linia 237 (expresia pentru predicat)
;;%VR96 rezervat pentru rezultatul if-ului
;- block -- plus -- plus -- plus -- cond -- eq -
;; -> eq: linia 237
;- block -- plus -- plus -- plus -- cond -- eq -- dispatch -
;; -> dispatch: linia 237
;;generez codul pentru apelul metodei northwest
;- block -- plus -- plus -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 237
;; <- object: linia 237
;- block -- plus -- plus -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 237
;; <- object: linia 237
  %VR97 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR97, label %false_dispatch21, label %dispatch_not_void_CellularAutomaton_21
;#######################################; <- join_if_CellularAutomaton_18


;#######################################; -> false_dispatch21
false_dispatch21:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__46 to i32))
  ret i32 0
;#######################################; <- false_dispatch21


;#######################################; -> dispatch_not_void_CellularAutomaton_21
dispatch_not_void_CellularAutomaton_21:
  %VR98 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR99 = add i32 %VR98, 8
  %VR100 = inttoptr i32 %VR99 to i32*
  %VR101 = load i32* %VR100
  %VR102 = add i32 %VR101, 68
  %VR103 = inttoptr i32 %VR102 to i32*
  %VR104 = load i32* %VR103
  %VR105 = inttoptr i32 %VR104 to i32 (i32, i32)*
  %VR106 = call i32 (i32, i32)* %VR105(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 237
;- block -- plus -- plus -- plus -- cond -- eq -- string_const -
;; -> string_const: linia 237
  %VR107 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 237
  br label %eq_test_join_true_CellularAutomaton_12
;#######################################; <- dispatch_not_void_CellularAutomaton_21


;#######################################; -> eq_test_join_true_CellularAutomaton_12
eq_test_join_true_CellularAutomaton_12:
  %VR108.0 = icmp eq i32 %VR106,  %VR107
  br i1 %VR108.0, label %eq_test_join_CellularAutomaton_12, label %eq_test_join_false_CellularAutomaton_12
;#######################################; <- eq_test_join_true_CellularAutomaton_12


;#######################################; -> eq_test_join_false_CellularAutomaton_12
eq_test_join_false_CellularAutomaton_12:
  %VR110 = call i32  @equality_test(i32 1, i32 0, i32 %VR106, i32 %VR107)
  %VR108.1 = icmp eq i32 %VR110,  1
  br label %eq_test_join_CellularAutomaton_12
;#######################################; <- eq_test_join_false_CellularAutomaton_12


;#######################################; -> eq_test_join_CellularAutomaton_12
eq_test_join_CellularAutomaton_12:
  %VR108 = phi i1 [ %VR108.0, %eq_test_join_true_CellularAutomaton_12 ] , [ %VR108.1, %eq_test_join_false_CellularAutomaton_12 ] 
;; <- eq: linia 237
  %VR111 = icmp eq i1 %VR108,  false
  br i1 %VR111, label %false_CellularAutomaton_19, label %false_false_CellularAutomaton_19
;#######################################; <- eq_test_join_CellularAutomaton_12


;#######################################; -> false_false_CellularAutomaton_19
false_false_CellularAutomaton_19:
;;if: linia 237 (expresia pentru then)
;- block -- plus -- plus -- plus -- cond -- int_const -
;; -> int_const: linia 237
  %VR112 = add i32 1, 0
;; <- int_const: linia 237
  br label %join_if_CellularAutomaton_19_true
;#######################################; <- false_false_CellularAutomaton_19


;#######################################; -> join_if_CellularAutomaton_19_true
join_if_CellularAutomaton_19_true:
  %VR96.0 = add i32 %VR112, 0
  br label %join_if_CellularAutomaton_19
;#######################################; <- join_if_CellularAutomaton_19_true


;#######################################; -> false_CellularAutomaton_19
false_CellularAutomaton_19:
;;if: linia 237 (expresia pentru else)
;- block -- plus -- plus -- plus -- cond -- int_const -
;; -> int_const: linia 237
  %VR113 = add i32 0, 0
;; <- int_const: linia 237
  br label %join_if_CellularAutomaton_19_false
;#######################################; <- false_CellularAutomaton_19


;#######################################; -> join_if_CellularAutomaton_19_false
join_if_CellularAutomaton_19_false:
  %VR96.1 = add i32 %VR113, 0
  br label %join_if_CellularAutomaton_19
;#######################################; <- join_if_CellularAutomaton_19_false


;#######################################; -> join_if_CellularAutomaton_19
join_if_CellularAutomaton_19:
  %VR96 = phi i32 [ %VR96.0, %join_if_CellularAutomaton_19_true ], [ %VR96.1, %join_if_CellularAutomaton_19_false ]
;; <- cond: linia 237
  %VR114 = add i32 %VR95, %VR96
;; <- plus: linia 237
;- block -- plus -- plus -- cond -
;; -> cond: linia 238
;;if: linia 238 (expresia pentru predicat)
;;%VR115 rezervat pentru rezultatul if-ului
;- block -- plus -- plus -- cond -- eq -
;; -> eq: linia 238
;- block -- plus -- plus -- cond -- eq -- dispatch -
;; -> dispatch: linia 238
;;generez codul pentru apelul metodei southeast
;- block -- plus -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 238
;; <- object: linia 238
;- block -- plus -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 238
;; <- object: linia 238
  %VR116 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR116, label %false_dispatch22, label %dispatch_not_void_CellularAutomaton_22
;#######################################; <- join_if_CellularAutomaton_19


;#######################################; -> false_dispatch22
false_dispatch22:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__47 to i32))
  ret i32 0
;#######################################; <- false_dispatch22


;#######################################; -> dispatch_not_void_CellularAutomaton_22
dispatch_not_void_CellularAutomaton_22:
  %VR117 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR118 = add i32 %VR117, 8
  %VR119 = inttoptr i32 %VR118 to i32*
  %VR120 = load i32* %VR119
  %VR121 = add i32 %VR120, 76
  %VR122 = inttoptr i32 %VR121 to i32*
  %VR123 = load i32* %VR122
  %VR124 = inttoptr i32 %VR123 to i32 (i32, i32)*
  %VR125 = call i32 (i32, i32)* %VR124(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 238
;- block -- plus -- plus -- cond -- eq -- string_const -
;; -> string_const: linia 238
  %VR126 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 238
  br label %eq_test_join_true_CellularAutomaton_13
;#######################################; <- dispatch_not_void_CellularAutomaton_22


;#######################################; -> eq_test_join_true_CellularAutomaton_13
eq_test_join_true_CellularAutomaton_13:
  %VR127.0 = icmp eq i32 %VR125,  %VR126
  br i1 %VR127.0, label %eq_test_join_CellularAutomaton_13, label %eq_test_join_false_CellularAutomaton_13
;#######################################; <- eq_test_join_true_CellularAutomaton_13


;#######################################; -> eq_test_join_false_CellularAutomaton_13
eq_test_join_false_CellularAutomaton_13:
  %VR129 = call i32  @equality_test(i32 1, i32 0, i32 %VR125, i32 %VR126)
  %VR127.1 = icmp eq i32 %VR129,  1
  br label %eq_test_join_CellularAutomaton_13
;#######################################; <- eq_test_join_false_CellularAutomaton_13


;#######################################; -> eq_test_join_CellularAutomaton_13
eq_test_join_CellularAutomaton_13:
  %VR127 = phi i1 [ %VR127.0, %eq_test_join_true_CellularAutomaton_13 ] , [ %VR127.1, %eq_test_join_false_CellularAutomaton_13 ] 
;; <- eq: linia 238
  %VR130 = icmp eq i1 %VR127,  false
  br i1 %VR130, label %false_CellularAutomaton_20, label %false_false_CellularAutomaton_20
;#######################################; <- eq_test_join_CellularAutomaton_13


;#######################################; -> false_false_CellularAutomaton_20
false_false_CellularAutomaton_20:
;;if: linia 238 (expresia pentru then)
;- block -- plus -- plus -- cond -- int_const -
;; -> int_const: linia 238
  %VR131 = add i32 1, 0
;; <- int_const: linia 238
  br label %join_if_CellularAutomaton_20_true
;#######################################; <- false_false_CellularAutomaton_20


;#######################################; -> join_if_CellularAutomaton_20_true
join_if_CellularAutomaton_20_true:
  %VR115.0 = add i32 %VR131, 0
  br label %join_if_CellularAutomaton_20
;#######################################; <- join_if_CellularAutomaton_20_true


;#######################################; -> false_CellularAutomaton_20
false_CellularAutomaton_20:
;;if: linia 238 (expresia pentru else)
;- block -- plus -- plus -- cond -- int_const -
;; -> int_const: linia 238
  %VR132 = add i32 0, 0
;; <- int_const: linia 238
  br label %join_if_CellularAutomaton_20_false
;#######################################; <- false_CellularAutomaton_20


;#######################################; -> join_if_CellularAutomaton_20_false
join_if_CellularAutomaton_20_false:
  %VR115.1 = add i32 %VR132, 0
  br label %join_if_CellularAutomaton_20
;#######################################; <- join_if_CellularAutomaton_20_false


;#######################################; -> join_if_CellularAutomaton_20
join_if_CellularAutomaton_20:
  %VR115 = phi i32 [ %VR115.0, %join_if_CellularAutomaton_20_true ], [ %VR115.1, %join_if_CellularAutomaton_20_false ]
;; <- cond: linia 238
  %VR133 = add i32 %VR114, %VR115
;; <- plus: linia 238
;- block -- plus -- cond -
;; -> cond: linia 239
;;if: linia 239 (expresia pentru predicat)
;;%VR134 rezervat pentru rezultatul if-ului
;- block -- plus -- cond -- eq -
;; -> eq: linia 239
;- block -- plus -- cond -- eq -- dispatch -
;; -> dispatch: linia 239
;;generez codul pentru apelul metodei southwest
;- block -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 239
;; <- object: linia 239
;- block -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 239
;; <- object: linia 239
  %VR135 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR135, label %false_dispatch23, label %dispatch_not_void_CellularAutomaton_23
;#######################################; <- join_if_CellularAutomaton_20


;#######################################; -> false_dispatch23
false_dispatch23:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__48 to i32))
  ret i32 0
;#######################################; <- false_dispatch23


;#######################################; -> dispatch_not_void_CellularAutomaton_23
dispatch_not_void_CellularAutomaton_23:
  %VR136 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR137 = add i32 %VR136, 8
  %VR138 = inttoptr i32 %VR137 to i32*
  %VR139 = load i32* %VR138
  %VR140 = add i32 %VR139, 80
  %VR141 = inttoptr i32 %VR140 to i32*
  %VR142 = load i32* %VR141
  %VR143 = inttoptr i32 %VR142 to i32 (i32, i32)*
  %VR144 = call i32 (i32, i32)* %VR143(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 239
;- block -- plus -- cond -- eq -- string_const -
;; -> string_const: linia 239
  %VR145 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 239
  br label %eq_test_join_true_CellularAutomaton_14
;#######################################; <- dispatch_not_void_CellularAutomaton_23


;#######################################; -> eq_test_join_true_CellularAutomaton_14
eq_test_join_true_CellularAutomaton_14:
  %VR146.0 = icmp eq i32 %VR144,  %VR145
  br i1 %VR146.0, label %eq_test_join_CellularAutomaton_14, label %eq_test_join_false_CellularAutomaton_14
;#######################################; <- eq_test_join_true_CellularAutomaton_14


;#######################################; -> eq_test_join_false_CellularAutomaton_14
eq_test_join_false_CellularAutomaton_14:
  %VR148 = call i32  @equality_test(i32 1, i32 0, i32 %VR144, i32 %VR145)
  %VR146.1 = icmp eq i32 %VR148,  1
  br label %eq_test_join_CellularAutomaton_14
;#######################################; <- eq_test_join_false_CellularAutomaton_14


;#######################################; -> eq_test_join_CellularAutomaton_14
eq_test_join_CellularAutomaton_14:
  %VR146 = phi i1 [ %VR146.0, %eq_test_join_true_CellularAutomaton_14 ] , [ %VR146.1, %eq_test_join_false_CellularAutomaton_14 ] 
;; <- eq: linia 239
  %VR149 = icmp eq i1 %VR146,  false
  br i1 %VR149, label %false_CellularAutomaton_21, label %false_false_CellularAutomaton_21
;#######################################; <- eq_test_join_CellularAutomaton_14


;#######################################; -> false_false_CellularAutomaton_21
false_false_CellularAutomaton_21:
;;if: linia 239 (expresia pentru then)
;- block -- plus -- cond -- int_const -
;; -> int_const: linia 239
  %VR150 = add i32 1, 0
;; <- int_const: linia 239
  br label %join_if_CellularAutomaton_21_true
;#######################################; <- false_false_CellularAutomaton_21


;#######################################; -> join_if_CellularAutomaton_21_true
join_if_CellularAutomaton_21_true:
  %VR134.0 = add i32 %VR150, 0
  br label %join_if_CellularAutomaton_21
;#######################################; <- join_if_CellularAutomaton_21_true


;#######################################; -> false_CellularAutomaton_21
false_CellularAutomaton_21:
;;if: linia 239 (expresia pentru else)
;- block -- plus -- cond -- int_const -
;; -> int_const: linia 239
  %VR151 = add i32 0, 0
;; <- int_const: linia 239
  br label %join_if_CellularAutomaton_21_false
;#######################################; <- false_CellularAutomaton_21


;#######################################; -> join_if_CellularAutomaton_21_false
join_if_CellularAutomaton_21_false:
  %VR134.1 = add i32 %VR151, 0
  br label %join_if_CellularAutomaton_21
;#######################################; <- join_if_CellularAutomaton_21_false


;#######################################; -> join_if_CellularAutomaton_21
join_if_CellularAutomaton_21:
  %VR134 = phi i32 [ %VR134.0, %join_if_CellularAutomaton_21_true ], [ %VR134.1, %join_if_CellularAutomaton_21_false ]
;; <- cond: linia 239
  %VR152 = add i32 %VR133, %VR134
;; <- plus: linia 239
;; <- block: linia 231
  ret i32 %VR152
;#######################################; <- join_if_CellularAutomaton_21


}
define i32 @CellularAutomaton__cell_at_next_evolution(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 249
;;if: linia 249 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- eq -
;; -> eq: linia 249
;- cond -- eq -- dispatch -
;; -> dispatch: linia 249
;;generez codul pentru apelul metodei neighbors
;- cond -- eq -- dispatch -- object -
;; -> object: linia 249
;; <- object: linia 249
;- cond -- eq -- dispatch -- object -
;; -> object: linia 249
;; <- object: linia 249
  %VR3 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR3, label %false_dispatch24, label %dispatch_not_void_CellularAutomaton_24
;#######################################; <- entry


;#######################################; -> false_dispatch24
false_dispatch24:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__49 to i32))
  ret i32 0
;#######################################; <- false_dispatch24


;#######################################; -> dispatch_not_void_CellularAutomaton_24
dispatch_not_void_CellularAutomaton_24:
  %VR4 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR5 = add i32 %VR4, 8
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = load i32* %VR6
  %VR8 = add i32 %VR7, 84
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = inttoptr i32 %VR10 to i32 (i32, i32)*
  %VR12 = call i32 (i32, i32)* %VR11(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 249
;- cond -- eq -- int_const -
;; -> int_const: linia 249
  %VR13 = add i32 3, 0
;; <- int_const: linia 249
;boxing to int
  %VR14 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR15 = add i32 %VR14, 12
  %VR16 = inttoptr i32 %VR15 to i32*
  store i32 %VR12, i32* %VR16
;boxing to int
  %VR17 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR18 = add i32 %VR17, 12
  %VR19 = inttoptr i32 %VR18 to i32*
  store i32 %VR13, i32* %VR19
  br label %eq_test_join_true_CellularAutomaton_15
;#######################################; <- dispatch_not_void_CellularAutomaton_24


;#######################################; -> eq_test_join_true_CellularAutomaton_15
eq_test_join_true_CellularAutomaton_15:
  %VR20.0 = icmp eq i32 %VR14,  %VR17
  br i1 %VR20.0, label %eq_test_join_CellularAutomaton_15, label %eq_test_join_false_CellularAutomaton_15
;#######################################; <- eq_test_join_true_CellularAutomaton_15


;#######################################; -> eq_test_join_false_CellularAutomaton_15
eq_test_join_false_CellularAutomaton_15:
  %VR22 = call i32  @equality_test(i32 1, i32 0, i32 %VR14, i32 %VR17)
  %VR20.1 = icmp eq i32 %VR22,  1
  br label %eq_test_join_CellularAutomaton_15
;#######################################; <- eq_test_join_false_CellularAutomaton_15


;#######################################; -> eq_test_join_CellularAutomaton_15
eq_test_join_CellularAutomaton_15:
  %VR20 = phi i1 [ %VR20.0, %eq_test_join_true_CellularAutomaton_15 ] , [ %VR20.1, %eq_test_join_false_CellularAutomaton_15 ] 
;; <- eq: linia 249
  %VR23 = icmp eq i1 %VR20,  false
  br i1 %VR23, label %false_CellularAutomaton_22, label %false_false_CellularAutomaton_22
;#######################################; <- eq_test_join_CellularAutomaton_15


;#######################################; -> false_false_CellularAutomaton_22
false_false_CellularAutomaton_22:
;;if: linia 249 (expresia pentru then)
;- cond -- string_const -
;; -> string_const: linia 250
  %VR24 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 250
  br label %join_if_CellularAutomaton_22_true
;#######################################; <- false_false_CellularAutomaton_22


;#######################################; -> join_if_CellularAutomaton_22_true
join_if_CellularAutomaton_22_true:
  %VR2.0 = add i32 %VR24, 0
  br label %join_if_CellularAutomaton_22
;#######################################; <- join_if_CellularAutomaton_22_true


;#######################################; -> false_CellularAutomaton_22
false_CellularAutomaton_22:
;;if: linia 249 (expresia pentru else)
;- cond -- cond -
;; -> cond: linia 252
;;if: linia 252 (expresia pentru predicat)
;;%VR25 rezervat pentru rezultatul if-ului
;- cond -- cond -- eq -
;; -> eq: linia 252
;- cond -- cond -- eq -- dispatch -
;; -> dispatch: linia 252
;;generez codul pentru apelul metodei neighbors
;- cond -- cond -- eq -- dispatch -- object -
;; -> object: linia 252
;; <- object: linia 252
;- cond -- cond -- eq -- dispatch -- object -
;; -> object: linia 252
;; <- object: linia 252
  %VR26 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR26, label %false_dispatch25, label %dispatch_not_void_CellularAutomaton_25
;#######################################; <- false_CellularAutomaton_22


;#######################################; -> false_dispatch25
false_dispatch25:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__50 to i32))
  ret i32 0
;#######################################; <- false_dispatch25


;#######################################; -> dispatch_not_void_CellularAutomaton_25
dispatch_not_void_CellularAutomaton_25:
  %VR27 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR28 = add i32 %VR27, 8
  %VR29 = inttoptr i32 %VR28 to i32*
  %VR30 = load i32* %VR29
  %VR31 = add i32 %VR30, 84
  %VR32 = inttoptr i32 %VR31 to i32*
  %VR33 = load i32* %VR32
  %VR34 = inttoptr i32 %VR33 to i32 (i32, i32)*
  %VR35 = call i32 (i32, i32)* %VR34(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 252
;- cond -- cond -- eq -- int_const -
;; -> int_const: linia 252
  %VR36 = add i32 2, 0
;; <- int_const: linia 252
;boxing to int
  %VR37 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR38 = add i32 %VR37, 12
  %VR39 = inttoptr i32 %VR38 to i32*
  store i32 %VR35, i32* %VR39
;boxing to int
  %VR40 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR41 = add i32 %VR40, 12
  %VR42 = inttoptr i32 %VR41 to i32*
  store i32 %VR36, i32* %VR42
  br label %eq_test_join_true_CellularAutomaton_16
;#######################################; <- dispatch_not_void_CellularAutomaton_25


;#######################################; -> eq_test_join_true_CellularAutomaton_16
eq_test_join_true_CellularAutomaton_16:
  %VR43.0 = icmp eq i32 %VR37,  %VR40
  br i1 %VR43.0, label %eq_test_join_CellularAutomaton_16, label %eq_test_join_false_CellularAutomaton_16
;#######################################; <- eq_test_join_true_CellularAutomaton_16


;#######################################; -> eq_test_join_false_CellularAutomaton_16
eq_test_join_false_CellularAutomaton_16:
  %VR45 = call i32  @equality_test(i32 1, i32 0, i32 %VR37, i32 %VR40)
  %VR43.1 = icmp eq i32 %VR45,  1
  br label %eq_test_join_CellularAutomaton_16
;#######################################; <- eq_test_join_false_CellularAutomaton_16


;#######################################; -> eq_test_join_CellularAutomaton_16
eq_test_join_CellularAutomaton_16:
  %VR43 = phi i1 [ %VR43.0, %eq_test_join_true_CellularAutomaton_16 ] , [ %VR43.1, %eq_test_join_false_CellularAutomaton_16 ] 
;; <- eq: linia 252
  %VR46 = icmp eq i1 %VR43,  false
  br i1 %VR46, label %false_CellularAutomaton_23, label %false_false_CellularAutomaton_23
;#######################################; <- eq_test_join_CellularAutomaton_16


;#######################################; -> false_false_CellularAutomaton_23
false_false_CellularAutomaton_23:
;;if: linia 252 (expresia pentru then)
;- cond -- cond -- cond -
;; -> cond: linia 253
;;if: linia 253 (expresia pentru predicat)
;;%VR47 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- eq -
;; -> eq: linia 253
;- cond -- cond -- cond -- eq -- dispatch -
;; -> dispatch: linia 253
;;generez codul pentru apelul metodei cell
;- cond -- cond -- cond -- eq -- dispatch -- object -
;; -> object: linia 253
;; <- object: linia 253
;- cond -- cond -- cond -- eq -- dispatch -- object -
;; -> object: linia 253
;; <- object: linia 253
  %VR48 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR48, label %false_dispatch26, label %dispatch_not_void_CellularAutomaton_26
;#######################################; <- false_false_CellularAutomaton_23


;#######################################; -> false_dispatch26
false_dispatch26:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__51 to i32))
  ret i32 0
;#######################################; <- false_dispatch26


;#######################################; -> dispatch_not_void_CellularAutomaton_26
dispatch_not_void_CellularAutomaton_26:
  %VR49 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR50 = add i32 %VR49, 8
  %VR51 = inttoptr i32 %VR50 to i32*
  %VR52 = load i32* %VR51
  %VR53 = add i32 %VR52, 48
  %VR54 = inttoptr i32 %VR53 to i32*
  %VR55 = load i32* %VR54
  %VR56 = inttoptr i32 %VR55 to i32 (i32, i32)*
  %VR57 = call i32 (i32, i32)* %VR56(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 253
;- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 253
  %VR58 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 253
  br label %eq_test_join_true_CellularAutomaton_17
;#######################################; <- dispatch_not_void_CellularAutomaton_26


;#######################################; -> eq_test_join_true_CellularAutomaton_17
eq_test_join_true_CellularAutomaton_17:
  %VR59.0 = icmp eq i32 %VR57,  %VR58
  br i1 %VR59.0, label %eq_test_join_CellularAutomaton_17, label %eq_test_join_false_CellularAutomaton_17
;#######################################; <- eq_test_join_true_CellularAutomaton_17


;#######################################; -> eq_test_join_false_CellularAutomaton_17
eq_test_join_false_CellularAutomaton_17:
  %VR61 = call i32  @equality_test(i32 1, i32 0, i32 %VR57, i32 %VR58)
  %VR59.1 = icmp eq i32 %VR61,  1
  br label %eq_test_join_CellularAutomaton_17
;#######################################; <- eq_test_join_false_CellularAutomaton_17


;#######################################; -> eq_test_join_CellularAutomaton_17
eq_test_join_CellularAutomaton_17:
  %VR59 = phi i1 [ %VR59.0, %eq_test_join_true_CellularAutomaton_17 ] , [ %VR59.1, %eq_test_join_false_CellularAutomaton_17 ] 
;; <- eq: linia 253
  %VR62 = icmp eq i1 %VR59,  false
  br i1 %VR62, label %false_CellularAutomaton_24, label %false_false_CellularAutomaton_24
;#######################################; <- eq_test_join_CellularAutomaton_17


;#######################################; -> false_false_CellularAutomaton_24
false_false_CellularAutomaton_24:
;;if: linia 253 (expresia pentru then)
;- cond -- cond -- cond -- string_const -
;; -> string_const: linia 254
  %VR63 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 254
  br label %join_if_CellularAutomaton_24_true
;#######################################; <- false_false_CellularAutomaton_24


;#######################################; -> join_if_CellularAutomaton_24_true
join_if_CellularAutomaton_24_true:
  %VR47.0 = add i32 %VR63, 0
  br label %join_if_CellularAutomaton_24
;#######################################; <- join_if_CellularAutomaton_24_true


;#######################################; -> false_CellularAutomaton_24
false_CellularAutomaton_24:
;;if: linia 253 (expresia pentru else)
;- cond -- cond -- cond -- string_const -
;; -> string_const: linia 256
  %VR64 = ptrtoint %struct.String_protObj_t* @str_const__4 to i32 
;; <- string_const: linia 256
  br label %join_if_CellularAutomaton_24_false
;#######################################; <- false_CellularAutomaton_24


;#######################################; -> join_if_CellularAutomaton_24_false
join_if_CellularAutomaton_24_false:
  %VR47.1 = add i32 %VR64, 0
  br label %join_if_CellularAutomaton_24
;#######################################; <- join_if_CellularAutomaton_24_false


;#######################################; -> join_if_CellularAutomaton_24
join_if_CellularAutomaton_24:
  %VR47 = phi i32 [ %VR47.0, %join_if_CellularAutomaton_24_true ], [ %VR47.1, %join_if_CellularAutomaton_24_false ]
;; <- cond: linia 253
  br label %join_if_CellularAutomaton_23_true
;#######################################; <- join_if_CellularAutomaton_24


;#######################################; -> join_if_CellularAutomaton_23_true
join_if_CellularAutomaton_23_true:
  %VR25.0 = add i32 %VR47, 0
  br label %join_if_CellularAutomaton_23
;#######################################; <- join_if_CellularAutomaton_23_true


;#######################################; -> false_CellularAutomaton_23
false_CellularAutomaton_23:
;;if: linia 252 (expresia pentru else)
;- cond -- cond -- string_const -
;; -> string_const: linia 259
  %VR65 = ptrtoint %struct.String_protObj_t* @str_const__4 to i32 
;; <- string_const: linia 259
  br label %join_if_CellularAutomaton_23_false
;#######################################; <- false_CellularAutomaton_23


;#######################################; -> join_if_CellularAutomaton_23_false
join_if_CellularAutomaton_23_false:
  %VR25.1 = add i32 %VR65, 0
  br label %join_if_CellularAutomaton_23
;#######################################; <- join_if_CellularAutomaton_23_false


;#######################################; -> join_if_CellularAutomaton_23
join_if_CellularAutomaton_23:
  %VR25 = phi i32 [ %VR25.0, %join_if_CellularAutomaton_23_true ], [ %VR25.1, %join_if_CellularAutomaton_23_false ]
;; <- cond: linia 252
  br label %join_if_CellularAutomaton_22_false
;#######################################; <- join_if_CellularAutomaton_23


;#######################################; -> join_if_CellularAutomaton_22_false
join_if_CellularAutomaton_22_false:
  %VR2.1 = add i32 %VR25, 0
  br label %join_if_CellularAutomaton_22
;#######################################; <- join_if_CellularAutomaton_22_false


;#######################################; -> join_if_CellularAutomaton_22
join_if_CellularAutomaton_22:
  %VR2 = phi i32 [ %VR2.0, %join_if_CellularAutomaton_22_true ], [ %VR2.1, %join_if_CellularAutomaton_22_false ]
;; <- cond: linia 249
  ret i32 %VR2
;#######################################; <- join_if_CellularAutomaton_22


}
define i32 @CellularAutomaton__evolve(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR12a = alloca i32 
  store i32 0, i32* %VR12a
  %VR1a = alloca i32 
  store i32 0, i32* %VR1a
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
;- let -
;; -> let: linia 265
;- let -- int_const -
;; -> int_const: linia 265
  %VR1.a = add i32 0, 0
  store i32 %VR1.a, i32* %VR1a
;; <- int_const: linia 265
;- let -- let -
;; -> let: linia 266
;- let -- let -- dispatch -
;; -> dispatch: linia 266
;;generez codul pentru apelul metodei num_cells
;- let -- let -- dispatch -- object -
;; -> object: linia 266
;; <- object: linia 266
  %VR2 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch27, label %dispatch_not_void_CellularAutomaton_27
;#######################################; <- entry


;#######################################; -> false_dispatch27
false_dispatch27:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__52 to i32))
  ret i32 0
;#######################################; <- false_dispatch27


;#######################################; -> dispatch_not_void_CellularAutomaton_27
dispatch_not_void_CellularAutomaton_27:
  %VR3 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 44
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32)*
  %VR11 = call i32 (i32)* %VR10(i32 %ARG)
;; <- dispatch: linia 266
;- let -- let -- let -
;; -> let: linia 267
  %VR12.a = call i32  @Object__copy(i32 ptrtoint (%struct.String_protObj_t* @String_protObj to i32))
  store i32 %VR12.a, i32* %VR12a
;- let -- let -- let -- block -
;; -> block: linia 268
;- let -- let -- let -- block -- loop -
;; -> loop: linia 269
;; conditie
  br label %start_loop_CellularAutomaton_1
;#######################################; <- dispatch_not_void_CellularAutomaton_27


;#######################################; -> start_loop_CellularAutomaton_1
start_loop_CellularAutomaton_1:
  %VR1_tmp0 = load i32* %VR1a
;- let -- let -- let -- block -- loop -- lt -
;; -> lt: linia 269
;- let -- let -- let -- block -- loop -- lt -- object -
;; -> object: linia 269
;; <- object: linia 269
;- let -- let -- let -- block -- loop -- lt -- object -
;; -> object: linia 269
;; <- object: linia 269
  %VR13 = icmp slt i32 %VR1_tmp0,  %VR11
;; <- lt: linia 269
  %VR14 = icmp eq i1 %VR13,  false
  br i1 %VR14, label %sfarsit_loop_CellularAutomaton_1, label %label_next_loop_CellularAutomaton_1
;#######################################; <- start_loop_CellularAutomaton_1


;#######################################; -> label_next_loop_CellularAutomaton_1
label_next_loop_CellularAutomaton_1:
;; corp loop
;- let -- let -- let -- block -- loop -- block -
;; -> block: linia 270
;- let -- let -- let -- block -- loop -- block -- assign -
;; -> assign: linia 271
;- let -- let -- let -- block -- loop -- block -- assign -- dispatch -
;; -> dispatch: linia 271
;;generez codul pentru apelul metodei concat
;- let -- let -- let -- block -- loop -- block -- assign -- dispatch -- dispatch -
;; -> dispatch: linia 271
;;generez codul pentru apelul metodei cell_at_next_evolution
;- let -- let -- let -- block -- loop -- block -- assign -- dispatch -- dispatch -- object -
;; -> object: linia 271
;; <- object: linia 271
;- let -- let -- let -- block -- loop -- block -- assign -- dispatch -- dispatch -- object -
;; -> object: linia 271
;; <- object: linia 271
  %VR15 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR15, label %false_dispatch28, label %dispatch_not_void_CellularAutomaton_28
;#######################################; <- label_next_loop_CellularAutomaton_1


;#######################################; -> false_dispatch28
false_dispatch28:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__53 to i32))
  ret i32 0
;#######################################; <- false_dispatch28


;#######################################; -> dispatch_not_void_CellularAutomaton_28
dispatch_not_void_CellularAutomaton_28:
  %VR12_tmp3 = load i32* %VR12a
  %VR1_tmp1 = load i32* %VR1a
  %VR16 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR17 = add i32 %VR16, 8
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
  %VR20 = add i32 %VR19, 88
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
  %VR23 = inttoptr i32 %VR22 to i32 (i32, i32)*
  %VR24 = call i32 (i32, i32)* %VR23(i32 %ARG, i32 %VR1_tmp1)
;; <- dispatch: linia 271
;- let -- let -- let -- block -- loop -- block -- assign -- dispatch -- object -
;; -> object: linia 271
;; <- object: linia 271
  %VR25 = inttoptr i32 %VR12_tmp3 to i32*
  %VR26 = icmp eq i32* %VR25,  null
  br i1 %VR26, label %false_dispatch29, label %dispatch_not_void_CellularAutomaton_29
;#######################################; <- dispatch_not_void_CellularAutomaton_28


;#######################################; -> false_dispatch29
false_dispatch29:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__53 to i32))
  ret i32 0
;#######################################; <- false_dispatch29


;#######################################; -> dispatch_not_void_CellularAutomaton_29
dispatch_not_void_CellularAutomaton_29:
  %VR12_tmp4 = load i32* %VR12a
  %VR1_tmp2 = load i32* %VR1a
  %VR27 = ptrtoint i32* %VR25 to i32 
  %VR28 = add i32 %VR27, 8
  %VR29 = inttoptr i32 %VR28 to i32*
  %VR30 = load i32* %VR29
  %VR31 = add i32 %VR30, 12
  %VR32 = inttoptr i32 %VR31 to i32*
  %VR33 = load i32* %VR32
  %VR34 = inttoptr i32 %VR33 to i32 (i32, i32)*
  %VR35 = call i32 (i32, i32)* %VR34( i32 %VR12_tmp4, i32 %VR24)
;; <- dispatch: linia 271
  store i32 %VR35, i32* %VR12a
;; <- assign: linia 271
;- let -- let -- let -- block -- loop -- block -- assign -
;; -> assign: linia 272
;- let -- let -- let -- block -- loop -- block -- assign -- plus -
;; -> plus: linia 272
;- let -- let -- let -- block -- loop -- block -- assign -- plus -- object -
;; -> object: linia 272
;; <- object: linia 272
;- let -- let -- let -- block -- loop -- block -- assign -- plus -- int_const -
;; -> int_const: linia 272
  %VR36 = add i32 1, 0
;; <- int_const: linia 272
  %VR37 = add i32 %VR1_tmp2, %VR36
;; <- plus: linia 272
  store i32 %VR37, i32* %VR1a
;; <- assign: linia 272
;; <- block: linia 270
  br label %start_loop_CellularAutomaton_1
;#######################################; <- dispatch_not_void_CellularAutomaton_29


;#######################################; -> sfarsit_loop_CellularAutomaton_1
sfarsit_loop_CellularAutomaton_1:
  %VR12_tmp5 = load i32* %VR12a
;; <- loop: linia 269
;- let -- let -- let -- block -- assign -
;; -> assign: linia 275
;- let -- let -- let -- block -- assign -- object -
;; -> object: linia 275
;; <- object: linia 275
  %VR38 = add i32 %ARG, 24
  %VR39 = inttoptr i32 %VR38 to i32*
  store i32 %VR12_tmp5, i32* %VR39
;; <- assign: linia 275
;- let -- let -- let -- block -- object -
;; -> object: linia 276
;; <- object: linia 276
;; <- block: linia 268
;; <- let: linia 267
;; <- let: linia 266
;; <- let: linia 265
  ret i32 %ARG
;#######################################; <- sfarsit_loop_CellularAutomaton_1


}
define i32 @CellularAutomaton__option(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR1a = alloca i32 
  store i32 0, i32* %VR1a
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
;- block -
;; -> block: linia 285
;- block -- let -
;; -> let: linia 286
  %VR1.a = add i32 0, 0
  store i32 %VR1.a, i32* %VR1a
;- block -- let -- block -
;; -> block: linia 287
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 288
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 288
  %VR2 = ptrtoint %struct.String_protObj_t* @str_const__5 to i32 
;; <- string_const: linia 288
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 288
;; <- object: linia 288
  %VR3 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR3, label %false_dispatch30, label %dispatch_not_void_CellularAutomaton_30
;#######################################; <- entry


;#######################################; -> false_dispatch30
false_dispatch30:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__54 to i32))
  ret i32 0
;#######################################; <- false_dispatch30


;#######################################; -> dispatch_not_void_CellularAutomaton_30
dispatch_not_void_CellularAutomaton_30:
  %VR4 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR5 = add i32 %VR4, 8
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = load i32* %VR6
  %VR8 = add i32 %VR7, 16
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = inttoptr i32 %VR10 to i32 (i32, i32)*
  %VR12 = call i32 (i32, i32)* %VR11(i32 %ARG, i32 %VR2)
;; <- dispatch: linia 288
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 289
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 289
  %VR13 = ptrtoint %struct.String_protObj_t* @str_const__6 to i32 
;; <- string_const: linia 289
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 289
;; <- object: linia 289
  %VR14 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR14, label %false_dispatch31, label %dispatch_not_void_CellularAutomaton_31
;#######################################; <- dispatch_not_void_CellularAutomaton_30


;#######################################; -> false_dispatch31
false_dispatch31:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__55 to i32))
  ret i32 0
;#######################################; <- false_dispatch31


;#######################################; -> dispatch_not_void_CellularAutomaton_31
dispatch_not_void_CellularAutomaton_31:
  %VR15 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR16 = add i32 %VR15, 8
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = load i32* %VR17
  %VR19 = add i32 %VR18, 16
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = load i32* %VR20
  %VR22 = inttoptr i32 %VR21 to i32 (i32, i32)*
  %VR23 = call i32 (i32, i32)* %VR22(i32 %ARG, i32 %VR13)
;; <- dispatch: linia 289
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 290
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 290
  %VR24 = ptrtoint %struct.String_protObj_t* @str_const__7 to i32 
;; <- string_const: linia 290
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 290
;; <- object: linia 290
  %VR25 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR25, label %false_dispatch32, label %dispatch_not_void_CellularAutomaton_32
;#######################################; <- dispatch_not_void_CellularAutomaton_31


;#######################################; -> false_dispatch32
false_dispatch32:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__56 to i32))
  ret i32 0
;#######################################; <- false_dispatch32


;#######################################; -> dispatch_not_void_CellularAutomaton_32
dispatch_not_void_CellularAutomaton_32:
  %VR26 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR27 = add i32 %VR26, 8
  %VR28 = inttoptr i32 %VR27 to i32*
  %VR29 = load i32* %VR28
  %VR30 = add i32 %VR29, 16
  %VR31 = inttoptr i32 %VR30 to i32*
  %VR32 = load i32* %VR31
  %VR33 = inttoptr i32 %VR32 to i32 (i32, i32)*
  %VR34 = call i32 (i32, i32)* %VR33(i32 %ARG, i32 %VR24)
;; <- dispatch: linia 290
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 291
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 291
  %VR35 = ptrtoint %struct.String_protObj_t* @str_const__8 to i32 
;; <- string_const: linia 291
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 291
;; <- object: linia 291
  %VR36 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR36, label %false_dispatch33, label %dispatch_not_void_CellularAutomaton_33
;#######################################; <- dispatch_not_void_CellularAutomaton_32


;#######################################; -> false_dispatch33
false_dispatch33:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__57 to i32))
  ret i32 0
;#######################################; <- false_dispatch33


;#######################################; -> dispatch_not_void_CellularAutomaton_33
dispatch_not_void_CellularAutomaton_33:
  %VR37 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR38 = add i32 %VR37, 8
  %VR39 = inttoptr i32 %VR38 to i32*
  %VR40 = load i32* %VR39
  %VR41 = add i32 %VR40, 16
  %VR42 = inttoptr i32 %VR41 to i32*
  %VR43 = load i32* %VR42
  %VR44 = inttoptr i32 %VR43 to i32 (i32, i32)*
  %VR45 = call i32 (i32, i32)* %VR44(i32 %ARG, i32 %VR35)
;; <- dispatch: linia 291
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 292
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 292
  %VR46 = ptrtoint %struct.String_protObj_t* @str_const__9 to i32 
;; <- string_const: linia 292
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 292
;; <- object: linia 292
  %VR47 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR47, label %false_dispatch34, label %dispatch_not_void_CellularAutomaton_34
;#######################################; <- dispatch_not_void_CellularAutomaton_33


;#######################################; -> false_dispatch34
false_dispatch34:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__58 to i32))
  ret i32 0
;#######################################; <- false_dispatch34


;#######################################; -> dispatch_not_void_CellularAutomaton_34
dispatch_not_void_CellularAutomaton_34:
  %VR48 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR49 = add i32 %VR48, 8
  %VR50 = inttoptr i32 %VR49 to i32*
  %VR51 = load i32* %VR50
  %VR52 = add i32 %VR51, 16
  %VR53 = inttoptr i32 %VR52 to i32*
  %VR54 = load i32* %VR53
  %VR55 = inttoptr i32 %VR54 to i32 (i32, i32)*
  %VR56 = call i32 (i32, i32)* %VR55(i32 %ARG, i32 %VR46)
;; <- dispatch: linia 292
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 293
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 293
  %VR57 = ptrtoint %struct.String_protObj_t* @str_const__10 to i32 
;; <- string_const: linia 293
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 293
;; <- object: linia 293
  %VR58 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR58, label %false_dispatch35, label %dispatch_not_void_CellularAutomaton_35
;#######################################; <- dispatch_not_void_CellularAutomaton_34


;#######################################; -> false_dispatch35
false_dispatch35:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__59 to i32))
  ret i32 0
;#######################################; <- false_dispatch35


;#######################################; -> dispatch_not_void_CellularAutomaton_35
dispatch_not_void_CellularAutomaton_35:
  %VR59 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR60 = add i32 %VR59, 8
  %VR61 = inttoptr i32 %VR60 to i32*
  %VR62 = load i32* %VR61
  %VR63 = add i32 %VR62, 16
  %VR64 = inttoptr i32 %VR63 to i32*
  %VR65 = load i32* %VR64
  %VR66 = inttoptr i32 %VR65 to i32 (i32, i32)*
  %VR67 = call i32 (i32, i32)* %VR66(i32 %ARG, i32 %VR57)
;; <- dispatch: linia 293
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 294
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 294
  %VR68 = ptrtoint %struct.String_protObj_t* @str_const__11 to i32 
;; <- string_const: linia 294
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 294
;; <- object: linia 294
  %VR69 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR69, label %false_dispatch36, label %dispatch_not_void_CellularAutomaton_36
;#######################################; <- dispatch_not_void_CellularAutomaton_35


;#######################################; -> false_dispatch36
false_dispatch36:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__60 to i32))
  ret i32 0
;#######################################; <- false_dispatch36


;#######################################; -> dispatch_not_void_CellularAutomaton_36
dispatch_not_void_CellularAutomaton_36:
  %VR70 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR71 = add i32 %VR70, 8
  %VR72 = inttoptr i32 %VR71 to i32*
  %VR73 = load i32* %VR72
  %VR74 = add i32 %VR73, 16
  %VR75 = inttoptr i32 %VR74 to i32*
  %VR76 = load i32* %VR75
  %VR77 = inttoptr i32 %VR76 to i32 (i32, i32)*
  %VR78 = call i32 (i32, i32)* %VR77(i32 %ARG, i32 %VR68)
;; <- dispatch: linia 294
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 295
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 295
  %VR79 = ptrtoint %struct.String_protObj_t* @str_const__12 to i32 
;; <- string_const: linia 295
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 295
;; <- object: linia 295
  %VR80 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR80, label %false_dispatch37, label %dispatch_not_void_CellularAutomaton_37
;#######################################; <- dispatch_not_void_CellularAutomaton_36


;#######################################; -> false_dispatch37
false_dispatch37:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__61 to i32))
  ret i32 0
;#######################################; <- false_dispatch37


;#######################################; -> dispatch_not_void_CellularAutomaton_37
dispatch_not_void_CellularAutomaton_37:
  %VR81 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR82 = add i32 %VR81, 8
  %VR83 = inttoptr i32 %VR82 to i32*
  %VR84 = load i32* %VR83
  %VR85 = add i32 %VR84, 16
  %VR86 = inttoptr i32 %VR85 to i32*
  %VR87 = load i32* %VR86
  %VR88 = inttoptr i32 %VR87 to i32 (i32, i32)*
  %VR89 = call i32 (i32, i32)* %VR88(i32 %ARG, i32 %VR79)
;; <- dispatch: linia 295
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 296
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 296
  %VR90 = ptrtoint %struct.String_protObj_t* @str_const__13 to i32 
;; <- string_const: linia 296
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 296
;; <- object: linia 296
  %VR91 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR91, label %false_dispatch38, label %dispatch_not_void_CellularAutomaton_38
;#######################################; <- dispatch_not_void_CellularAutomaton_37


;#######################################; -> false_dispatch38
false_dispatch38:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__62 to i32))
  ret i32 0
;#######################################; <- false_dispatch38


;#######################################; -> dispatch_not_void_CellularAutomaton_38
dispatch_not_void_CellularAutomaton_38:
  %VR92 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR93 = add i32 %VR92, 8
  %VR94 = inttoptr i32 %VR93 to i32*
  %VR95 = load i32* %VR94
  %VR96 = add i32 %VR95, 16
  %VR97 = inttoptr i32 %VR96 to i32*
  %VR98 = load i32* %VR97
  %VR99 = inttoptr i32 %VR98 to i32 (i32, i32)*
  %VR100 = call i32 (i32, i32)* %VR99(i32 %ARG, i32 %VR90)
;; <- dispatch: linia 296
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 297
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 297
  %VR101 = ptrtoint %struct.String_protObj_t* @str_const__14 to i32 
;; <- string_const: linia 297
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 297
;; <- object: linia 297
  %VR102 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR102, label %false_dispatch39, label %dispatch_not_void_CellularAutomaton_39
;#######################################; <- dispatch_not_void_CellularAutomaton_38


;#######################################; -> false_dispatch39
false_dispatch39:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__63 to i32))
  ret i32 0
;#######################################; <- false_dispatch39


;#######################################; -> dispatch_not_void_CellularAutomaton_39
dispatch_not_void_CellularAutomaton_39:
  %VR103 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR104 = add i32 %VR103, 8
  %VR105 = inttoptr i32 %VR104 to i32*
  %VR106 = load i32* %VR105
  %VR107 = add i32 %VR106, 16
  %VR108 = inttoptr i32 %VR107 to i32*
  %VR109 = load i32* %VR108
  %VR110 = inttoptr i32 %VR109 to i32 (i32, i32)*
  %VR111 = call i32 (i32, i32)* %VR110(i32 %ARG, i32 %VR101)
;; <- dispatch: linia 297
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 298
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 298
  %VR112 = ptrtoint %struct.String_protObj_t* @str_const__15 to i32 
;; <- string_const: linia 298
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 298
;; <- object: linia 298
  %VR113 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR113, label %false_dispatch40, label %dispatch_not_void_CellularAutomaton_40
;#######################################; <- dispatch_not_void_CellularAutomaton_39


;#######################################; -> false_dispatch40
false_dispatch40:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__64 to i32))
  ret i32 0
;#######################################; <- false_dispatch40


;#######################################; -> dispatch_not_void_CellularAutomaton_40
dispatch_not_void_CellularAutomaton_40:
  %VR114 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR115 = add i32 %VR114, 8
  %VR116 = inttoptr i32 %VR115 to i32*
  %VR117 = load i32* %VR116
  %VR118 = add i32 %VR117, 16
  %VR119 = inttoptr i32 %VR118 to i32*
  %VR120 = load i32* %VR119
  %VR121 = inttoptr i32 %VR120 to i32 (i32, i32)*
  %VR122 = call i32 (i32, i32)* %VR121(i32 %ARG, i32 %VR112)
;; <- dispatch: linia 298
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 299
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 299
  %VR123 = ptrtoint %struct.String_protObj_t* @str_const__16 to i32 
;; <- string_const: linia 299
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 299
;; <- object: linia 299
  %VR124 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR124, label %false_dispatch41, label %dispatch_not_void_CellularAutomaton_41
;#######################################; <- dispatch_not_void_CellularAutomaton_40


;#######################################; -> false_dispatch41
false_dispatch41:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__65 to i32))
  ret i32 0
;#######################################; <- false_dispatch41


;#######################################; -> dispatch_not_void_CellularAutomaton_41
dispatch_not_void_CellularAutomaton_41:
  %VR125 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR126 = add i32 %VR125, 8
  %VR127 = inttoptr i32 %VR126 to i32*
  %VR128 = load i32* %VR127
  %VR129 = add i32 %VR128, 16
  %VR130 = inttoptr i32 %VR129 to i32*
  %VR131 = load i32* %VR130
  %VR132 = inttoptr i32 %VR131 to i32 (i32, i32)*
  %VR133 = call i32 (i32, i32)* %VR132(i32 %ARG, i32 %VR123)
;; <- dispatch: linia 299
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 300
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 300
  %VR134 = ptrtoint %struct.String_protObj_t* @str_const__17 to i32 
;; <- string_const: linia 300
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 300
;; <- object: linia 300
  %VR135 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR135, label %false_dispatch42, label %dispatch_not_void_CellularAutomaton_42
;#######################################; <- dispatch_not_void_CellularAutomaton_41


;#######################################; -> false_dispatch42
false_dispatch42:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__66 to i32))
  ret i32 0
;#######################################; <- false_dispatch42


;#######################################; -> dispatch_not_void_CellularAutomaton_42
dispatch_not_void_CellularAutomaton_42:
  %VR136 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR137 = add i32 %VR136, 8
  %VR138 = inttoptr i32 %VR137 to i32*
  %VR139 = load i32* %VR138
  %VR140 = add i32 %VR139, 16
  %VR141 = inttoptr i32 %VR140 to i32*
  %VR142 = load i32* %VR141
  %VR143 = inttoptr i32 %VR142 to i32 (i32, i32)*
  %VR144 = call i32 (i32, i32)* %VR143(i32 %ARG, i32 %VR134)
;; <- dispatch: linia 300
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 301
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 301
  %VR145 = ptrtoint %struct.String_protObj_t* @str_const__18 to i32 
;; <- string_const: linia 301
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 301
;; <- object: linia 301
  %VR146 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR146, label %false_dispatch43, label %dispatch_not_void_CellularAutomaton_43
;#######################################; <- dispatch_not_void_CellularAutomaton_42


;#######################################; -> false_dispatch43
false_dispatch43:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__67 to i32))
  ret i32 0
;#######################################; <- false_dispatch43


;#######################################; -> dispatch_not_void_CellularAutomaton_43
dispatch_not_void_CellularAutomaton_43:
  %VR147 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR148 = add i32 %VR147, 8
  %VR149 = inttoptr i32 %VR148 to i32*
  %VR150 = load i32* %VR149
  %VR151 = add i32 %VR150, 16
  %VR152 = inttoptr i32 %VR151 to i32*
  %VR153 = load i32* %VR152
  %VR154 = inttoptr i32 %VR153 to i32 (i32, i32)*
  %VR155 = call i32 (i32, i32)* %VR154(i32 %ARG, i32 %VR145)
;; <- dispatch: linia 301
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 302
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 302
  %VR156 = ptrtoint %struct.String_protObj_t* @str_const__19 to i32 
;; <- string_const: linia 302
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 302
;; <- object: linia 302
  %VR157 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR157, label %false_dispatch44, label %dispatch_not_void_CellularAutomaton_44
;#######################################; <- dispatch_not_void_CellularAutomaton_43


;#######################################; -> false_dispatch44
false_dispatch44:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__68 to i32))
  ret i32 0
;#######################################; <- false_dispatch44


;#######################################; -> dispatch_not_void_CellularAutomaton_44
dispatch_not_void_CellularAutomaton_44:
  %VR158 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR159 = add i32 %VR158, 8
  %VR160 = inttoptr i32 %VR159 to i32*
  %VR161 = load i32* %VR160
  %VR162 = add i32 %VR161, 16
  %VR163 = inttoptr i32 %VR162 to i32*
  %VR164 = load i32* %VR163
  %VR165 = inttoptr i32 %VR164 to i32 (i32, i32)*
  %VR166 = call i32 (i32, i32)* %VR165(i32 %ARG, i32 %VR156)
;; <- dispatch: linia 302
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 303
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 303
  %VR167 = ptrtoint %struct.String_protObj_t* @str_const__20 to i32 
;; <- string_const: linia 303
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 303
;; <- object: linia 303
  %VR168 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR168, label %false_dispatch45, label %dispatch_not_void_CellularAutomaton_45
;#######################################; <- dispatch_not_void_CellularAutomaton_44


;#######################################; -> false_dispatch45
false_dispatch45:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__69 to i32))
  ret i32 0
;#######################################; <- false_dispatch45


;#######################################; -> dispatch_not_void_CellularAutomaton_45
dispatch_not_void_CellularAutomaton_45:
  %VR169 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR170 = add i32 %VR169, 8
  %VR171 = inttoptr i32 %VR170 to i32*
  %VR172 = load i32* %VR171
  %VR173 = add i32 %VR172, 16
  %VR174 = inttoptr i32 %VR173 to i32*
  %VR175 = load i32* %VR174
  %VR176 = inttoptr i32 %VR175 to i32 (i32, i32)*
  %VR177 = call i32 (i32, i32)* %VR176(i32 %ARG, i32 %VR167)
;; <- dispatch: linia 303
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 304
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 304
  %VR178 = ptrtoint %struct.String_protObj_t* @str_const__21 to i32 
;; <- string_const: linia 304
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 304
;; <- object: linia 304
  %VR179 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR179, label %false_dispatch46, label %dispatch_not_void_CellularAutomaton_46
;#######################################; <- dispatch_not_void_CellularAutomaton_45


;#######################################; -> false_dispatch46
false_dispatch46:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__70 to i32))
  ret i32 0
;#######################################; <- false_dispatch46


;#######################################; -> dispatch_not_void_CellularAutomaton_46
dispatch_not_void_CellularAutomaton_46:
  %VR180 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR181 = add i32 %VR180, 8
  %VR182 = inttoptr i32 %VR181 to i32*
  %VR183 = load i32* %VR182
  %VR184 = add i32 %VR183, 16
  %VR185 = inttoptr i32 %VR184 to i32*
  %VR186 = load i32* %VR185
  %VR187 = inttoptr i32 %VR186 to i32 (i32, i32)*
  %VR188 = call i32 (i32, i32)* %VR187(i32 %ARG, i32 %VR178)
;; <- dispatch: linia 304
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 305
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 305
  %VR189 = ptrtoint %struct.String_protObj_t* @str_const__22 to i32 
;; <- string_const: linia 305
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 305
;; <- object: linia 305
  %VR190 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR190, label %false_dispatch47, label %dispatch_not_void_CellularAutomaton_47
;#######################################; <- dispatch_not_void_CellularAutomaton_46


;#######################################; -> false_dispatch47
false_dispatch47:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__71 to i32))
  ret i32 0
;#######################################; <- false_dispatch47


;#######################################; -> dispatch_not_void_CellularAutomaton_47
dispatch_not_void_CellularAutomaton_47:
  %VR191 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR192 = add i32 %VR191, 8
  %VR193 = inttoptr i32 %VR192 to i32*
  %VR194 = load i32* %VR193
  %VR195 = add i32 %VR194, 16
  %VR196 = inttoptr i32 %VR195 to i32*
  %VR197 = load i32* %VR196
  %VR198 = inttoptr i32 %VR197 to i32 (i32, i32)*
  %VR199 = call i32 (i32, i32)* %VR198(i32 %ARG, i32 %VR189)
;; <- dispatch: linia 305
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 306
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 306
  %VR200 = ptrtoint %struct.String_protObj_t* @str_const__23 to i32 
;; <- string_const: linia 306
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 306
;; <- object: linia 306
  %VR201 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR201, label %false_dispatch48, label %dispatch_not_void_CellularAutomaton_48
;#######################################; <- dispatch_not_void_CellularAutomaton_47


;#######################################; -> false_dispatch48
false_dispatch48:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__72 to i32))
  ret i32 0
;#######################################; <- false_dispatch48


;#######################################; -> dispatch_not_void_CellularAutomaton_48
dispatch_not_void_CellularAutomaton_48:
  %VR202 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR203 = add i32 %VR202, 8
  %VR204 = inttoptr i32 %VR203 to i32*
  %VR205 = load i32* %VR204
  %VR206 = add i32 %VR205, 16
  %VR207 = inttoptr i32 %VR206 to i32*
  %VR208 = load i32* %VR207
  %VR209 = inttoptr i32 %VR208 to i32 (i32, i32)*
  %VR210 = call i32 (i32, i32)* %VR209(i32 %ARG, i32 %VR200)
;; <- dispatch: linia 306
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 307
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 307
  %VR211 = ptrtoint %struct.String_protObj_t* @str_const__24 to i32 
;; <- string_const: linia 307
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 307
;; <- object: linia 307
  %VR212 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR212, label %false_dispatch49, label %dispatch_not_void_CellularAutomaton_49
;#######################################; <- dispatch_not_void_CellularAutomaton_48


;#######################################; -> false_dispatch49
false_dispatch49:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__73 to i32))
  ret i32 0
;#######################################; <- false_dispatch49


;#######################################; -> dispatch_not_void_CellularAutomaton_49
dispatch_not_void_CellularAutomaton_49:
  %VR213 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR214 = add i32 %VR213, 8
  %VR215 = inttoptr i32 %VR214 to i32*
  %VR216 = load i32* %VR215
  %VR217 = add i32 %VR216, 16
  %VR218 = inttoptr i32 %VR217 to i32*
  %VR219 = load i32* %VR218
  %VR220 = inttoptr i32 %VR219 to i32 (i32, i32)*
  %VR221 = call i32 (i32, i32)* %VR220(i32 %ARG, i32 %VR211)
;; <- dispatch: linia 307
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 308
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 308
  %VR222 = ptrtoint %struct.String_protObj_t* @str_const__25 to i32 
;; <- string_const: linia 308
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 308
;; <- object: linia 308
  %VR223 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR223, label %false_dispatch50, label %dispatch_not_void_CellularAutomaton_50
;#######################################; <- dispatch_not_void_CellularAutomaton_49


;#######################################; -> false_dispatch50
false_dispatch50:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__74 to i32))
  ret i32 0
;#######################################; <- false_dispatch50


;#######################################; -> dispatch_not_void_CellularAutomaton_50
dispatch_not_void_CellularAutomaton_50:
  %VR224 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR225 = add i32 %VR224, 8
  %VR226 = inttoptr i32 %VR225 to i32*
  %VR227 = load i32* %VR226
  %VR228 = add i32 %VR227, 16
  %VR229 = inttoptr i32 %VR228 to i32*
  %VR230 = load i32* %VR229
  %VR231 = inttoptr i32 %VR230 to i32 (i32, i32)*
  %VR232 = call i32 (i32, i32)* %VR231(i32 %ARG, i32 %VR222)
;; <- dispatch: linia 308
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 309
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 309
  %VR233 = ptrtoint %struct.String_protObj_t* @str_const__26 to i32 
;; <- string_const: linia 309
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 309
;; <- object: linia 309
  %VR234 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR234, label %false_dispatch51, label %dispatch_not_void_CellularAutomaton_51
;#######################################; <- dispatch_not_void_CellularAutomaton_50


;#######################################; -> false_dispatch51
false_dispatch51:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__75 to i32))
  ret i32 0
;#######################################; <- false_dispatch51


;#######################################; -> dispatch_not_void_CellularAutomaton_51
dispatch_not_void_CellularAutomaton_51:
  %VR235 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR236 = add i32 %VR235, 8
  %VR237 = inttoptr i32 %VR236 to i32*
  %VR238 = load i32* %VR237
  %VR239 = add i32 %VR238, 16
  %VR240 = inttoptr i32 %VR239 to i32*
  %VR241 = load i32* %VR240
  %VR242 = inttoptr i32 %VR241 to i32 (i32, i32)*
  %VR243 = call i32 (i32, i32)* %VR242(i32 %ARG, i32 %VR233)
;; <- dispatch: linia 309
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 310
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 310
  %VR244 = ptrtoint %struct.String_protObj_t* @str_const__27 to i32 
;; <- string_const: linia 310
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 310
;; <- object: linia 310
  %VR245 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR245, label %false_dispatch52, label %dispatch_not_void_CellularAutomaton_52
;#######################################; <- dispatch_not_void_CellularAutomaton_51


;#######################################; -> false_dispatch52
false_dispatch52:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__76 to i32))
  ret i32 0
;#######################################; <- false_dispatch52


;#######################################; -> dispatch_not_void_CellularAutomaton_52
dispatch_not_void_CellularAutomaton_52:
  %VR246 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR247 = add i32 %VR246, 8
  %VR248 = inttoptr i32 %VR247 to i32*
  %VR249 = load i32* %VR248
  %VR250 = add i32 %VR249, 16
  %VR251 = inttoptr i32 %VR250 to i32*
  %VR252 = load i32* %VR251
  %VR253 = inttoptr i32 %VR252 to i32 (i32, i32)*
  %VR254 = call i32 (i32, i32)* %VR253(i32 %ARG, i32 %VR244)
;; <- dispatch: linia 310
;- block -- let -- block -- assign -
;; -> assign: linia 311
;- block -- let -- block -- assign -- dispatch -
;; -> dispatch: linia 311
;;generez codul pentru apelul metodei in_int
;- block -- let -- block -- assign -- dispatch -- object -
;; -> object: linia 311
;; <- object: linia 311
  %VR255 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR255, label %false_dispatch53, label %dispatch_not_void_CellularAutomaton_53
;#######################################; <- dispatch_not_void_CellularAutomaton_52


;#######################################; -> false_dispatch53
false_dispatch53:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__77 to i32))
  ret i32 0
;#######################################; <- false_dispatch53


;#######################################; -> dispatch_not_void_CellularAutomaton_53
dispatch_not_void_CellularAutomaton_53:
  %VR256 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR257 = add i32 %VR256, 8
  %VR258 = inttoptr i32 %VR257 to i32*
  %VR259 = load i32* %VR258
  %VR260 = add i32 %VR259, 20
  %VR261 = inttoptr i32 %VR260 to i32*
  %VR262 = load i32* %VR261
  %VR263 = inttoptr i32 %VR262 to i32 (i32)*
  %VR264 = call i32 (i32)* %VR263(i32 %ARG)
  %VR265 = add i32 %VR264, 12
  %VR266 = inttoptr i32 %VR265 to i32*
  %VR267 = load i32* %VR266
;; <- dispatch: linia 311
  store i32 %VR267, i32* %VR1a
;; <- assign: linia 311
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 312
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 312
  %VR268 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 312
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 312
;; <- object: linia 312
  %VR269 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR269, label %false_dispatch54, label %dispatch_not_void_CellularAutomaton_54
;#######################################; <- dispatch_not_void_CellularAutomaton_53


;#######################################; -> false_dispatch54
false_dispatch54:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__78 to i32))
  ret i32 0
;#######################################; <- false_dispatch54


;#######################################; -> dispatch_not_void_CellularAutomaton_54
dispatch_not_void_CellularAutomaton_54:
  %VR270 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR271 = add i32 %VR270, 8
  %VR272 = inttoptr i32 %VR271 to i32*
  %VR273 = load i32* %VR272
  %VR274 = add i32 %VR273, 16
  %VR275 = inttoptr i32 %VR274 to i32*
  %VR276 = load i32* %VR275
  %VR277 = inttoptr i32 %VR276 to i32 (i32, i32)*
  %VR278 = call i32 (i32, i32)* %VR277(i32 %ARG, i32 %VR268)
;; <- dispatch: linia 312
;- block -- let -- block -- cond -
;; -> cond: linia 313
;;if: linia 313 (expresia pentru predicat)
;;%VR279 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- eq -
;; -> eq: linia 313
;- block -- let -- block -- cond -- eq -- object -
;; -> object: linia 313
;; <- object: linia 313
;- block -- let -- block -- cond -- eq -- int_const -
;; -> int_const: linia 313
  %VR280 = add i32 1, 0
;; <- int_const: linia 313
;boxing to int
  %VR281 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR282 = add i32 %VR281, 12
  %VR283 = inttoptr i32 %VR282 to i32*
  store i32 %VR267, i32* %VR283
;boxing to int
  %VR284 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR285 = add i32 %VR284, 12
  %VR286 = inttoptr i32 %VR285 to i32*
  store i32 %VR280, i32* %VR286
  br label %eq_test_join_true_CellularAutomaton_18
;#######################################; <- dispatch_not_void_CellularAutomaton_54


;#######################################; -> eq_test_join_true_CellularAutomaton_18
eq_test_join_true_CellularAutomaton_18:
  %VR287.0 = icmp eq i32 %VR281,  %VR284
  br i1 %VR287.0, label %eq_test_join_CellularAutomaton_18, label %eq_test_join_false_CellularAutomaton_18
;#######################################; <- eq_test_join_true_CellularAutomaton_18


;#######################################; -> eq_test_join_false_CellularAutomaton_18
eq_test_join_false_CellularAutomaton_18:
  %VR289 = call i32  @equality_test(i32 1, i32 0, i32 %VR281, i32 %VR284)
  %VR287.1 = icmp eq i32 %VR289,  1
  br label %eq_test_join_CellularAutomaton_18
;#######################################; <- eq_test_join_false_CellularAutomaton_18


;#######################################; -> eq_test_join_CellularAutomaton_18
eq_test_join_CellularAutomaton_18:
  %VR287 = phi i1  [ %VR287.0 , %eq_test_join_true_CellularAutomaton_18 ] , [ %VR287.1 , %eq_test_join_false_CellularAutomaton_18 ] 
;; <- eq: linia 313
  %VR290 = icmp eq i1 %VR287,  false
  br i1 %VR290, label %false_CellularAutomaton_25, label %false_false_CellularAutomaton_25
;#######################################; <- eq_test_join_CellularAutomaton_18


;#######################################; -> false_false_CellularAutomaton_25
false_false_CellularAutomaton_25:
;;if: linia 313 (expresia pentru then)
;- block -- let -- block -- cond -- string_const -
;; -> string_const: linia 314
  %VR291 = ptrtoint %struct.String_protObj_t* @str_const__28 to i32 
;; <- string_const: linia 314
  br label %join_if_CellularAutomaton_25_true
;#######################################; <- false_false_CellularAutomaton_25


;#######################################; -> join_if_CellularAutomaton_25_true
join_if_CellularAutomaton_25_true:
  %VR279.0 = add i32 %VR291, 0
  br label %join_if_CellularAutomaton_25
;#######################################; <- join_if_CellularAutomaton_25_true


;#######################################; -> false_CellularAutomaton_25
false_CellularAutomaton_25:
;;if: linia 313 (expresia pentru else)
;- block -- let -- block -- cond -- cond -
;; -> cond: linia 315
;;if: linia 315 (expresia pentru predicat)
;;%VR292 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- cond -- eq -
;; -> eq: linia 315
;- block -- let -- block -- cond -- cond -- eq -- object -
;; -> object: linia 315
;; <- object: linia 315
;- block -- let -- block -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 315
  %VR293 = add i32 2, 0
;; <- int_const: linia 315
;boxing to int
  %VR294 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR295 = add i32 %VR294, 12
  %VR296 = inttoptr i32 %VR295 to i32*
  store i32 %VR267, i32* %VR296
;boxing to int
  %VR297 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR298 = add i32 %VR297, 12
  %VR299 = inttoptr i32 %VR298 to i32*
  store i32 %VR293, i32* %VR299
  br label %eq_test_join_true_CellularAutomaton_19
;#######################################; <- false_CellularAutomaton_25


;#######################################; -> eq_test_join_true_CellularAutomaton_19
eq_test_join_true_CellularAutomaton_19:
  %VR300.0 = icmp eq i32 %VR294,  %VR297
  br i1 %VR300.0, label %eq_test_join_CellularAutomaton_19, label %eq_test_join_false_CellularAutomaton_19
;#######################################; <- eq_test_join_true_CellularAutomaton_19


;#######################################; -> eq_test_join_false_CellularAutomaton_19
eq_test_join_false_CellularAutomaton_19:
  %VR302 = call i32  @equality_test(i32 1, i32 0, i32 %VR294, i32 %VR297)
  %VR300.1 = icmp eq i32 %VR302,  1
  br label %eq_test_join_CellularAutomaton_19
;#######################################; <- eq_test_join_false_CellularAutomaton_19


;#######################################; -> eq_test_join_CellularAutomaton_19
eq_test_join_CellularAutomaton_19:
  %VR300 = phi i1  [ %VR300.0 , %eq_test_join_true_CellularAutomaton_19 ] , [ %VR300.1 , %eq_test_join_false_CellularAutomaton_19 ] 
;; <- eq: linia 315
  %VR303 = icmp eq i1 %VR300,  false
  br i1 %VR303, label %false_CellularAutomaton_26, label %false_false_CellularAutomaton_26
;#######################################; <- eq_test_join_CellularAutomaton_19


;#######################################; -> false_false_CellularAutomaton_26
false_false_CellularAutomaton_26:
;;if: linia 315 (expresia pentru then)
;- block -- let -- block -- cond -- cond -- string_const -
;; -> string_const: linia 316
  %VR304 = ptrtoint %struct.String_protObj_t* @str_const__29 to i32 
;; <- string_const: linia 316
  br label %join_if_CellularAutomaton_26_true
;#######################################; <- false_false_CellularAutomaton_26


;#######################################; -> join_if_CellularAutomaton_26_true
join_if_CellularAutomaton_26_true:
  %VR292.0 = add i32 %VR304, 0
  br label %join_if_CellularAutomaton_26
;#######################################; <- join_if_CellularAutomaton_26_true


;#######################################; -> false_CellularAutomaton_26
false_CellularAutomaton_26:
;;if: linia 315 (expresia pentru else)
;- block -- let -- block -- cond -- cond -- cond -
;; -> cond: linia 317
;;if: linia 317 (expresia pentru predicat)
;;%VR305 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- cond -- cond -- eq -
;; -> eq: linia 317
;- block -- let -- block -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 317
;; <- object: linia 317
;- block -- let -- block -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 317
  %VR306 = add i32 3, 0
;; <- int_const: linia 317
;boxing to int
  %VR307 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR308 = add i32 %VR307, 12
  %VR309 = inttoptr i32 %VR308 to i32*
  store i32 %VR267, i32* %VR309
;boxing to int
  %VR310 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR311 = add i32 %VR310, 12
  %VR312 = inttoptr i32 %VR311 to i32*
  store i32 %VR306, i32* %VR312
  br label %eq_test_join_true_CellularAutomaton_20
;#######################################; <- false_CellularAutomaton_26


;#######################################; -> eq_test_join_true_CellularAutomaton_20
eq_test_join_true_CellularAutomaton_20:
  %VR313.0 = icmp eq i32 %VR307,  %VR310
  br i1 %VR313.0, label %eq_test_join_CellularAutomaton_20, label %eq_test_join_false_CellularAutomaton_20
;#######################################; <- eq_test_join_true_CellularAutomaton_20


;#######################################; -> eq_test_join_false_CellularAutomaton_20
eq_test_join_false_CellularAutomaton_20:
  %VR315 = call i32  @equality_test(i32 1, i32 0, i32 %VR307, i32 %VR310)
  %VR313.1 = icmp eq i32 %VR315,  1
  br label %eq_test_join_CellularAutomaton_20
;#######################################; <- eq_test_join_false_CellularAutomaton_20


;#######################################; -> eq_test_join_CellularAutomaton_20
eq_test_join_CellularAutomaton_20:
  %VR313 = phi i1  [ %VR313.0 , %eq_test_join_true_CellularAutomaton_20 ] , [ %VR313.1 , %eq_test_join_false_CellularAutomaton_20 ] 
;; <- eq: linia 317
  %VR316 = icmp eq i1 %VR313,  false
  br i1 %VR316, label %false_CellularAutomaton_27, label %false_false_CellularAutomaton_27
;#######################################; <- eq_test_join_CellularAutomaton_20


;#######################################; -> false_false_CellularAutomaton_27
false_false_CellularAutomaton_27:
;;if: linia 317 (expresia pentru then)
;- block -- let -- block -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 318
  %VR317 = ptrtoint %struct.String_protObj_t* @str_const__30 to i32 
;; <- string_const: linia 318
  br label %join_if_CellularAutomaton_27_true
;#######################################; <- false_false_CellularAutomaton_27


;#######################################; -> join_if_CellularAutomaton_27_true
join_if_CellularAutomaton_27_true:
  %VR305.0 = add i32 %VR317, 0
  br label %join_if_CellularAutomaton_27
;#######################################; <- join_if_CellularAutomaton_27_true


;#######################################; -> false_CellularAutomaton_27
false_CellularAutomaton_27:
;;if: linia 317 (expresia pentru else)
;- block -- let -- block -- cond -- cond -- cond -- cond -
;; -> cond: linia 319
;;if: linia 319 (expresia pentru predicat)
;;%VR318 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 319
;- block -- let -- block -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 319
;; <- object: linia 319
;- block -- let -- block -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 319
  %VR319 = add i32 4, 0
;; <- int_const: linia 319
;boxing to int
  %VR320 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR321 = add i32 %VR320, 12
  %VR322 = inttoptr i32 %VR321 to i32*
  store i32 %VR267, i32* %VR322
;boxing to int
  %VR323 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR324 = add i32 %VR323, 12
  %VR325 = inttoptr i32 %VR324 to i32*
  store i32 %VR319, i32* %VR325
  br label %eq_test_join_true_CellularAutomaton_21
;#######################################; <- false_CellularAutomaton_27


;#######################################; -> eq_test_join_true_CellularAutomaton_21
eq_test_join_true_CellularAutomaton_21:
  %VR326.0 = icmp eq i32 %VR320,  %VR323
  br i1 %VR326.0, label %eq_test_join_CellularAutomaton_21, label %eq_test_join_false_CellularAutomaton_21
;#######################################; <- eq_test_join_true_CellularAutomaton_21


;#######################################; -> eq_test_join_false_CellularAutomaton_21
eq_test_join_false_CellularAutomaton_21:
  %VR328 = call i32  @equality_test(i32 1, i32 0, i32 %VR320, i32 %VR323)
  %VR326.1 = icmp eq i32 %VR328,  1
  br label %eq_test_join_CellularAutomaton_21
;#######################################; <- eq_test_join_false_CellularAutomaton_21


;#######################################; -> eq_test_join_CellularAutomaton_21
eq_test_join_CellularAutomaton_21:
  %VR326 = phi i1  [ %VR326.0 , %eq_test_join_true_CellularAutomaton_21 ] , [ %VR326.1 , %eq_test_join_false_CellularAutomaton_21 ] 
;; <- eq: linia 319
  %VR329 = icmp eq i1 %VR326,  false
  br i1 %VR329, label %false_CellularAutomaton_28, label %false_false_CellularAutomaton_28
;#######################################; <- eq_test_join_CellularAutomaton_21


;#######################################; -> false_false_CellularAutomaton_28
false_false_CellularAutomaton_28:
;;if: linia 319 (expresia pentru then)
;- block -- let -- block -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 320
  %VR330 = ptrtoint %struct.String_protObj_t* @str_const__31 to i32 
;; <- string_const: linia 320
  br label %join_if_CellularAutomaton_28_true
;#######################################; <- false_false_CellularAutomaton_28


;#######################################; -> join_if_CellularAutomaton_28_true
join_if_CellularAutomaton_28_true:
  %VR318.0 = add i32 %VR330, 0
  br label %join_if_CellularAutomaton_28
;#######################################; <- join_if_CellularAutomaton_28_true


;#######################################; -> false_CellularAutomaton_28
false_CellularAutomaton_28:
;;if: linia 319 (expresia pentru else)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 321
;;if: linia 321 (expresia pentru predicat)
;;%VR331 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 321
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 321
;; <- object: linia 321
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 321
  %VR332 = add i32 5, 0
;; <- int_const: linia 321
;boxing to int
  %VR333 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR334 = add i32 %VR333, 12
  %VR335 = inttoptr i32 %VR334 to i32*
  store i32 %VR267, i32* %VR335
;boxing to int
  %VR336 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR337 = add i32 %VR336, 12
  %VR338 = inttoptr i32 %VR337 to i32*
  store i32 %VR332, i32* %VR338
  br label %eq_test_join_true_CellularAutomaton_22
;#######################################; <- false_CellularAutomaton_28


;#######################################; -> eq_test_join_true_CellularAutomaton_22
eq_test_join_true_CellularAutomaton_22:
  %VR339.0 = icmp eq i32 %VR333,  %VR336
  br i1 %VR339.0, label %eq_test_join_CellularAutomaton_22, label %eq_test_join_false_CellularAutomaton_22
;#######################################; <- eq_test_join_true_CellularAutomaton_22


;#######################################; -> eq_test_join_false_CellularAutomaton_22
eq_test_join_false_CellularAutomaton_22:
  %VR341 = call i32  @equality_test(i32 1, i32 0, i32 %VR333, i32 %VR336)
  %VR339.1 = icmp eq i32 %VR341,  1
  br label %eq_test_join_CellularAutomaton_22
;#######################################; <- eq_test_join_false_CellularAutomaton_22


;#######################################; -> eq_test_join_CellularAutomaton_22
eq_test_join_CellularAutomaton_22:
  %VR339 = phi i1  [ %VR339.0 , %eq_test_join_true_CellularAutomaton_22 ] , [ %VR339.1 , %eq_test_join_false_CellularAutomaton_22 ] 
;; <- eq: linia 321
  %VR342 = icmp eq i1 %VR339,  false
  br i1 %VR342, label %false_CellularAutomaton_29, label %false_false_CellularAutomaton_29
;#######################################; <- eq_test_join_CellularAutomaton_22


;#######################################; -> false_false_CellularAutomaton_29
false_false_CellularAutomaton_29:
;;if: linia 321 (expresia pentru then)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 322
  %VR343 = ptrtoint %struct.String_protObj_t* @str_const__32 to i32 
;; <- string_const: linia 322
  br label %join_if_CellularAutomaton_29_true
;#######################################; <- false_false_CellularAutomaton_29


;#######################################; -> join_if_CellularAutomaton_29_true
join_if_CellularAutomaton_29_true:
  %VR331.0 = add i32 %VR343, 0
  br label %join_if_CellularAutomaton_29
;#######################################; <- join_if_CellularAutomaton_29_true


;#######################################; -> false_CellularAutomaton_29
false_CellularAutomaton_29:
;;if: linia 321 (expresia pentru else)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 323
;;if: linia 323 (expresia pentru predicat)
;;%VR344 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 323
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 323
;; <- object: linia 323
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 323
  %VR345 = add i32 6, 0
;; <- int_const: linia 323
;boxing to int
  %VR346 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR347 = add i32 %VR346, 12
  %VR348 = inttoptr i32 %VR347 to i32*
  store i32 %VR267, i32* %VR348
;boxing to int
  %VR349 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR350 = add i32 %VR349, 12
  %VR351 = inttoptr i32 %VR350 to i32*
  store i32 %VR345, i32* %VR351
  br label %eq_test_join_true_CellularAutomaton_23
;#######################################; <- false_CellularAutomaton_29


;#######################################; -> eq_test_join_true_CellularAutomaton_23
eq_test_join_true_CellularAutomaton_23:
  %VR352.0 = icmp eq i32 %VR346,  %VR349
  br i1 %VR352.0, label %eq_test_join_CellularAutomaton_23, label %eq_test_join_false_CellularAutomaton_23
;#######################################; <- eq_test_join_true_CellularAutomaton_23


;#######################################; -> eq_test_join_false_CellularAutomaton_23
eq_test_join_false_CellularAutomaton_23:
  %VR354 = call i32  @equality_test(i32 1, i32 0, i32 %VR346, i32 %VR349)
  %VR352.1 = icmp eq i32 %VR354,  1
  br label %eq_test_join_CellularAutomaton_23
;#######################################; <- eq_test_join_false_CellularAutomaton_23


;#######################################; -> eq_test_join_CellularAutomaton_23
eq_test_join_CellularAutomaton_23:
  %VR352 = phi i1  [ %VR352.0 , %eq_test_join_true_CellularAutomaton_23 ] , [ %VR352.1 , %eq_test_join_false_CellularAutomaton_23 ] 
;; <- eq: linia 323
  %VR355 = icmp eq i1 %VR352,  false
  br i1 %VR355, label %false_CellularAutomaton_30, label %false_false_CellularAutomaton_30
;#######################################; <- eq_test_join_CellularAutomaton_23


;#######################################; -> false_false_CellularAutomaton_30
false_false_CellularAutomaton_30:
;;if: linia 323 (expresia pentru then)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 324
  %VR356 = ptrtoint %struct.String_protObj_t* @str_const__33 to i32 
;; <- string_const: linia 324
  br label %join_if_CellularAutomaton_30_true
;#######################################; <- false_false_CellularAutomaton_30


;#######################################; -> join_if_CellularAutomaton_30_true
join_if_CellularAutomaton_30_true:
  %VR344.0 = add i32 %VR356, 0
  br label %join_if_CellularAutomaton_30
;#######################################; <- join_if_CellularAutomaton_30_true


;#######################################; -> false_CellularAutomaton_30
false_CellularAutomaton_30:
;;if: linia 323 (expresia pentru else)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 325
;;if: linia 325 (expresia pentru predicat)
;;%VR357 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 325
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 325
;; <- object: linia 325
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 325
  %VR358 = add i32 7, 0
;; <- int_const: linia 325
;boxing to int
  %VR359 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR360 = add i32 %VR359, 12
  %VR361 = inttoptr i32 %VR360 to i32*
  store i32 %VR267, i32* %VR361
;boxing to int
  %VR362 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR363 = add i32 %VR362, 12
  %VR364 = inttoptr i32 %VR363 to i32*
  store i32 %VR358, i32* %VR364
  br label %eq_test_join_true_CellularAutomaton_24
;#######################################; <- false_CellularAutomaton_30


;#######################################; -> eq_test_join_true_CellularAutomaton_24
eq_test_join_true_CellularAutomaton_24:
  %VR365.0 = icmp eq i32 %VR359,  %VR362
  br i1 %VR365.0, label %eq_test_join_CellularAutomaton_24, label %eq_test_join_false_CellularAutomaton_24
;#######################################; <- eq_test_join_true_CellularAutomaton_24


;#######################################; -> eq_test_join_false_CellularAutomaton_24
eq_test_join_false_CellularAutomaton_24:
  %VR367 = call i32  @equality_test(i32 1, i32 0, i32 %VR359, i32 %VR362)
  %VR365.1 = icmp eq i32 %VR367,  1
  br label %eq_test_join_CellularAutomaton_24
;#######################################; <- eq_test_join_false_CellularAutomaton_24


;#######################################; -> eq_test_join_CellularAutomaton_24
eq_test_join_CellularAutomaton_24:
  %VR365 = phi i1  [ %VR365.0 , %eq_test_join_true_CellularAutomaton_24 ] , [ %VR365.1 , %eq_test_join_false_CellularAutomaton_24 ] 
;; <- eq: linia 325
  %VR368 = icmp eq i1 %VR365,  false
  br i1 %VR368, label %false_CellularAutomaton_31, label %false_false_CellularAutomaton_31
;#######################################; <- eq_test_join_CellularAutomaton_24


;#######################################; -> false_false_CellularAutomaton_31
false_false_CellularAutomaton_31:
;;if: linia 325 (expresia pentru then)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 326
  %VR369 = ptrtoint %struct.String_protObj_t* @str_const__34 to i32 
;; <- string_const: linia 326
  br label %join_if_CellularAutomaton_31_true
;#######################################; <- false_false_CellularAutomaton_31


;#######################################; -> join_if_CellularAutomaton_31_true
join_if_CellularAutomaton_31_true:
  %VR357.0 = add i32 %VR369, 0
  br label %join_if_CellularAutomaton_31
;#######################################; <- join_if_CellularAutomaton_31_true


;#######################################; -> false_CellularAutomaton_31
false_CellularAutomaton_31:
;;if: linia 325 (expresia pentru else)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 327
;;if: linia 327 (expresia pentru predicat)
;;%VR370 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 327
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 327
;; <- object: linia 327
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 327
  %VR371 = add i32 8, 0
;; <- int_const: linia 327
;boxing to int
  %VR372 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR373 = add i32 %VR372, 12
  %VR374 = inttoptr i32 %VR373 to i32*
  store i32 %VR267, i32* %VR374
;boxing to int
  %VR375 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR376 = add i32 %VR375, 12
  %VR377 = inttoptr i32 %VR376 to i32*
  store i32 %VR371, i32* %VR377
  br label %eq_test_join_true_CellularAutomaton_25
;#######################################; <- false_CellularAutomaton_31


;#######################################; -> eq_test_join_true_CellularAutomaton_25
eq_test_join_true_CellularAutomaton_25:
  %VR378.0 = icmp eq i32 %VR372,  %VR375
  br i1 %VR378.0, label %eq_test_join_CellularAutomaton_25, label %eq_test_join_false_CellularAutomaton_25
;#######################################; <- eq_test_join_true_CellularAutomaton_25


;#######################################; -> eq_test_join_false_CellularAutomaton_25
eq_test_join_false_CellularAutomaton_25:
  %VR380 = call i32  @equality_test(i32 1, i32 0, i32 %VR372, i32 %VR375)
  %VR378.1 = icmp eq i32 %VR380,  1
  br label %eq_test_join_CellularAutomaton_25
;#######################################; <- eq_test_join_false_CellularAutomaton_25


;#######################################; -> eq_test_join_CellularAutomaton_25
eq_test_join_CellularAutomaton_25:
  %VR378 = phi i1  [ %VR378.0 , %eq_test_join_true_CellularAutomaton_25 ] , [ %VR378.1 , %eq_test_join_false_CellularAutomaton_25 ] 
;; <- eq: linia 327
  %VR381 = icmp eq i1 %VR378,  false
  br i1 %VR381, label %false_CellularAutomaton_32, label %false_false_CellularAutomaton_32
;#######################################; <- eq_test_join_CellularAutomaton_25


;#######################################; -> false_false_CellularAutomaton_32
false_false_CellularAutomaton_32:
;;if: linia 327 (expresia pentru then)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 328
  %VR382 = ptrtoint %struct.String_protObj_t* @str_const__35 to i32 
;; <- string_const: linia 328
  br label %join_if_CellularAutomaton_32_true
;#######################################; <- false_false_CellularAutomaton_32


;#######################################; -> join_if_CellularAutomaton_32_true
join_if_CellularAutomaton_32_true:
  %VR370.0 = add i32 %VR382, 0
  br label %join_if_CellularAutomaton_32
;#######################################; <- join_if_CellularAutomaton_32_true


;#######################################; -> false_CellularAutomaton_32
false_CellularAutomaton_32:
;;if: linia 327 (expresia pentru else)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 329
;;if: linia 329 (expresia pentru predicat)
;;%VR383 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 329
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 329
;; <- object: linia 329
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 329
  %VR384 = add i32 9, 0
;; <- int_const: linia 329
;boxing to int
  %VR385 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR386 = add i32 %VR385, 12
  %VR387 = inttoptr i32 %VR386 to i32*
  store i32 %VR267, i32* %VR387
;boxing to int
  %VR388 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR389 = add i32 %VR388, 12
  %VR390 = inttoptr i32 %VR389 to i32*
  store i32 %VR384, i32* %VR390
  br label %eq_test_join_true_CellularAutomaton_26
;#######################################; <- false_CellularAutomaton_32


;#######################################; -> eq_test_join_true_CellularAutomaton_26
eq_test_join_true_CellularAutomaton_26:
  %VR391.0 = icmp eq i32 %VR385,  %VR388
  br i1 %VR391.0, label %eq_test_join_CellularAutomaton_26, label %eq_test_join_false_CellularAutomaton_26
;#######################################; <- eq_test_join_true_CellularAutomaton_26


;#######################################; -> eq_test_join_false_CellularAutomaton_26
eq_test_join_false_CellularAutomaton_26:
  %VR393 = call i32  @equality_test(i32 1, i32 0, i32 %VR385, i32 %VR388)
  %VR391.1 = icmp eq i32 %VR393,  1
  br label %eq_test_join_CellularAutomaton_26
;#######################################; <- eq_test_join_false_CellularAutomaton_26


;#######################################; -> eq_test_join_CellularAutomaton_26
eq_test_join_CellularAutomaton_26:
  %VR391 = phi i1  [ %VR391.0 , %eq_test_join_true_CellularAutomaton_26 ] , [ %VR391.1 , %eq_test_join_false_CellularAutomaton_26 ] 
;; <- eq: linia 329
  %VR394 = icmp eq i1 %VR391,  false
  br i1 %VR394, label %false_CellularAutomaton_33, label %false_false_CellularAutomaton_33
;#######################################; <- eq_test_join_CellularAutomaton_26


;#######################################; -> false_false_CellularAutomaton_33
false_false_CellularAutomaton_33:
;;if: linia 329 (expresia pentru then)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 330
  %VR395 = ptrtoint %struct.String_protObj_t* @str_const__36 to i32 
;; <- string_const: linia 330
  br label %join_if_CellularAutomaton_33_true
;#######################################; <- false_false_CellularAutomaton_33


;#######################################; -> join_if_CellularAutomaton_33_true
join_if_CellularAutomaton_33_true:
  %VR383.0 = add i32 %VR395, 0
  br label %join_if_CellularAutomaton_33
;#######################################; <- join_if_CellularAutomaton_33_true


;#######################################; -> false_CellularAutomaton_33
false_CellularAutomaton_33:
;;if: linia 329 (expresia pentru else)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 331
;;if: linia 331 (expresia pentru predicat)
;;%VR396 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 331
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 331
;; <- object: linia 331
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 331
  %VR397 = add i32 10, 0
;; <- int_const: linia 331
;boxing to int
  %VR398 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR399 = add i32 %VR398, 12
  %VR400 = inttoptr i32 %VR399 to i32*
  store i32 %VR267, i32* %VR400
;boxing to int
  %VR401 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR402 = add i32 %VR401, 12
  %VR403 = inttoptr i32 %VR402 to i32*
  store i32 %VR397, i32* %VR403
  br label %eq_test_join_true_CellularAutomaton_27
;#######################################; <- false_CellularAutomaton_33


;#######################################; -> eq_test_join_true_CellularAutomaton_27
eq_test_join_true_CellularAutomaton_27:
  %VR404.0 = icmp eq i32 %VR398,  %VR401
  br i1 %VR404.0, label %eq_test_join_CellularAutomaton_27, label %eq_test_join_false_CellularAutomaton_27
;#######################################; <- eq_test_join_true_CellularAutomaton_27


;#######################################; -> eq_test_join_false_CellularAutomaton_27
eq_test_join_false_CellularAutomaton_27:
  %VR406 = call i32  @equality_test(i32 1, i32 0, i32 %VR398, i32 %VR401)
  %VR404.1 = icmp eq i32 %VR406,  1
  br label %eq_test_join_CellularAutomaton_27
;#######################################; <- eq_test_join_false_CellularAutomaton_27


;#######################################; -> eq_test_join_CellularAutomaton_27
eq_test_join_CellularAutomaton_27:
  %VR404 = phi i1  [ %VR404.0 , %eq_test_join_true_CellularAutomaton_27 ] , [ %VR404.1 , %eq_test_join_false_CellularAutomaton_27 ] 
;; <- eq: linia 331
  %VR407 = icmp eq i1 %VR404,  false
  br i1 %VR407, label %false_CellularAutomaton_34, label %false_false_CellularAutomaton_34
;#######################################; <- eq_test_join_CellularAutomaton_27


;#######################################; -> false_false_CellularAutomaton_34
false_false_CellularAutomaton_34:
;;if: linia 331 (expresia pentru then)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 332
  %VR408 = ptrtoint %struct.String_protObj_t* @str_const__37 to i32 
;; <- string_const: linia 332
  br label %join_if_CellularAutomaton_34_true
;#######################################; <- false_false_CellularAutomaton_34


;#######################################; -> join_if_CellularAutomaton_34_true
join_if_CellularAutomaton_34_true:
  %VR396.0 = add i32 %VR408, 0
  br label %join_if_CellularAutomaton_34
;#######################################; <- join_if_CellularAutomaton_34_true


;#######################################; -> false_CellularAutomaton_34
false_CellularAutomaton_34:
;;if: linia 331 (expresia pentru else)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 333
;;if: linia 333 (expresia pentru predicat)
;;%VR409 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 333
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 333
;; <- object: linia 333
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 333
  %VR410 = add i32 11, 0
;; <- int_const: linia 333
;boxing to int
  %VR411 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR412 = add i32 %VR411, 12
  %VR413 = inttoptr i32 %VR412 to i32*
  store i32 %VR267, i32* %VR413
;boxing to int
  %VR414 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR415 = add i32 %VR414, 12
  %VR416 = inttoptr i32 %VR415 to i32*
  store i32 %VR410, i32* %VR416
  br label %eq_test_join_true_CellularAutomaton_28
;#######################################; <- false_CellularAutomaton_34


;#######################################; -> eq_test_join_true_CellularAutomaton_28
eq_test_join_true_CellularAutomaton_28:
  %VR417.0 = icmp eq i32 %VR411,  %VR414
  br i1 %VR417.0, label %eq_test_join_CellularAutomaton_28, label %eq_test_join_false_CellularAutomaton_28
;#######################################; <- eq_test_join_true_CellularAutomaton_28


;#######################################; -> eq_test_join_false_CellularAutomaton_28
eq_test_join_false_CellularAutomaton_28:
  %VR419 = call i32  @equality_test(i32 1, i32 0, i32 %VR411, i32 %VR414)
  %VR417.1 = icmp eq i32 %VR419,  1
  br label %eq_test_join_CellularAutomaton_28
;#######################################; <- eq_test_join_false_CellularAutomaton_28


;#######################################; -> eq_test_join_CellularAutomaton_28
eq_test_join_CellularAutomaton_28:
  %VR417 = phi i1  [ %VR417.0 , %eq_test_join_true_CellularAutomaton_28 ] , [ %VR417.1 , %eq_test_join_false_CellularAutomaton_28 ] 
;; <- eq: linia 333
  %VR420 = icmp eq i1 %VR417,  false
  br i1 %VR420, label %false_CellularAutomaton_35, label %false_false_CellularAutomaton_35
;#######################################; <- eq_test_join_CellularAutomaton_28


;#######################################; -> false_false_CellularAutomaton_35
false_false_CellularAutomaton_35:
;;if: linia 333 (expresia pentru then)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 334
  %VR421 = ptrtoint %struct.String_protObj_t* @str_const__38 to i32 
;; <- string_const: linia 334
  br label %join_if_CellularAutomaton_35_true
;#######################################; <- false_false_CellularAutomaton_35


;#######################################; -> join_if_CellularAutomaton_35_true
join_if_CellularAutomaton_35_true:
  %VR409.0 = add i32 %VR421, 0
  br label %join_if_CellularAutomaton_35
;#######################################; <- join_if_CellularAutomaton_35_true


;#######################################; -> false_CellularAutomaton_35
false_CellularAutomaton_35:
;;if: linia 333 (expresia pentru else)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 335
;;if: linia 335 (expresia pentru predicat)
;;%VR422 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 335
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 335
;; <- object: linia 335
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 335
  %VR423 = add i32 12, 0
;; <- int_const: linia 335
;boxing to int
  %VR424 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR425 = add i32 %VR424, 12
  %VR426 = inttoptr i32 %VR425 to i32*
  store i32 %VR267, i32* %VR426
;boxing to int
  %VR427 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR428 = add i32 %VR427, 12
  %VR429 = inttoptr i32 %VR428 to i32*
  store i32 %VR423, i32* %VR429
  br label %eq_test_join_true_CellularAutomaton_29
;#######################################; <- false_CellularAutomaton_35


;#######################################; -> eq_test_join_true_CellularAutomaton_29
eq_test_join_true_CellularAutomaton_29:
  %VR430.0 = icmp eq i32 %VR424,  %VR427
  br i1 %VR430.0, label %eq_test_join_CellularAutomaton_29, label %eq_test_join_false_CellularAutomaton_29
;#######################################; <- eq_test_join_true_CellularAutomaton_29


;#######################################; -> eq_test_join_false_CellularAutomaton_29
eq_test_join_false_CellularAutomaton_29:
  %VR432 = call i32  @equality_test(i32 1, i32 0, i32 %VR424, i32 %VR427)
  %VR430.1 = icmp eq i32 %VR432,  1
  br label %eq_test_join_CellularAutomaton_29
;#######################################; <- eq_test_join_false_CellularAutomaton_29


;#######################################; -> eq_test_join_CellularAutomaton_29
eq_test_join_CellularAutomaton_29:
  %VR430 = phi i1  [ %VR430.0 , %eq_test_join_true_CellularAutomaton_29 ] , [ %VR430.1 , %eq_test_join_false_CellularAutomaton_29 ] 
;; <- eq: linia 335
  %VR433 = icmp eq i1 %VR430,  false
  br i1 %VR433, label %false_CellularAutomaton_36, label %false_false_CellularAutomaton_36
;#######################################; <- eq_test_join_CellularAutomaton_29


;#######################################; -> false_false_CellularAutomaton_36
false_false_CellularAutomaton_36:
;;if: linia 335 (expresia pentru then)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 336
  %VR434 = ptrtoint %struct.String_protObj_t* @str_const__39 to i32 
;; <- string_const: linia 336
  br label %join_if_CellularAutomaton_36_true
;#######################################; <- false_false_CellularAutomaton_36


;#######################################; -> join_if_CellularAutomaton_36_true
join_if_CellularAutomaton_36_true:
  %VR422.0 = add i32 %VR434, 0
  br label %join_if_CellularAutomaton_36
;#######################################; <- join_if_CellularAutomaton_36_true


;#######################################; -> false_CellularAutomaton_36
false_CellularAutomaton_36:
;;if: linia 335 (expresia pentru else)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 337
;;if: linia 337 (expresia pentru predicat)
;;%VR435 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 337
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 337
;; <- object: linia 337
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 337
  %VR436 = add i32 13, 0
;; <- int_const: linia 337
;boxing to int
  %VR437 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR438 = add i32 %VR437, 12
  %VR439 = inttoptr i32 %VR438 to i32*
  store i32 %VR267, i32* %VR439
;boxing to int
  %VR440 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR441 = add i32 %VR440, 12
  %VR442 = inttoptr i32 %VR441 to i32*
  store i32 %VR436, i32* %VR442
  br label %eq_test_join_true_CellularAutomaton_30
;#######################################; <- false_CellularAutomaton_36


;#######################################; -> eq_test_join_true_CellularAutomaton_30
eq_test_join_true_CellularAutomaton_30:
  %VR443.0 = icmp eq i32 %VR437,  %VR440
  br i1 %VR443.0, label %eq_test_join_CellularAutomaton_30, label %eq_test_join_false_CellularAutomaton_30
;#######################################; <- eq_test_join_true_CellularAutomaton_30


;#######################################; -> eq_test_join_false_CellularAutomaton_30
eq_test_join_false_CellularAutomaton_30:
  %VR445 = call i32  @equality_test(i32 1, i32 0, i32 %VR437, i32 %VR440)
  %VR443.1 = icmp eq i32 %VR445,  1
  br label %eq_test_join_CellularAutomaton_30
;#######################################; <- eq_test_join_false_CellularAutomaton_30


;#######################################; -> eq_test_join_CellularAutomaton_30
eq_test_join_CellularAutomaton_30:
  %VR443 = phi i1  [ %VR443.0 , %eq_test_join_true_CellularAutomaton_30 ] , [ %VR443.1 , %eq_test_join_false_CellularAutomaton_30 ] 
;; <- eq: linia 337
  %VR446 = icmp eq i1 %VR443,  false
  br i1 %VR446, label %false_CellularAutomaton_37, label %false_false_CellularAutomaton_37
;#######################################; <- eq_test_join_CellularAutomaton_30


;#######################################; -> false_false_CellularAutomaton_37
false_false_CellularAutomaton_37:
;;if: linia 337 (expresia pentru then)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 338
  %VR447 = ptrtoint %struct.String_protObj_t* @str_const__40 to i32 
;; <- string_const: linia 338
  br label %join_if_CellularAutomaton_37_true
;#######################################; <- false_false_CellularAutomaton_37


;#######################################; -> join_if_CellularAutomaton_37_true
join_if_CellularAutomaton_37_true:
  %VR435.0 = add i32 %VR447, 0
  br label %join_if_CellularAutomaton_37
;#######################################; <- join_if_CellularAutomaton_37_true


;#######################################; -> false_CellularAutomaton_37
false_CellularAutomaton_37:
;;if: linia 337 (expresia pentru else)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 339
;;if: linia 339 (expresia pentru predicat)
;;%VR448 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 339
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 339
;; <- object: linia 339
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 339
  %VR449 = add i32 14, 0
;; <- int_const: linia 339
;boxing to int
  %VR450 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR451 = add i32 %VR450, 12
  %VR452 = inttoptr i32 %VR451 to i32*
  store i32 %VR267, i32* %VR452
;boxing to int
  %VR453 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR454 = add i32 %VR453, 12
  %VR455 = inttoptr i32 %VR454 to i32*
  store i32 %VR449, i32* %VR455
  br label %eq_test_join_true_CellularAutomaton_31
;#######################################; <- false_CellularAutomaton_37


;#######################################; -> eq_test_join_true_CellularAutomaton_31
eq_test_join_true_CellularAutomaton_31:
  %VR456.0 = icmp eq i32 %VR450,  %VR453
  br i1 %VR456.0, label %eq_test_join_CellularAutomaton_31, label %eq_test_join_false_CellularAutomaton_31
;#######################################; <- eq_test_join_true_CellularAutomaton_31


;#######################################; -> eq_test_join_false_CellularAutomaton_31
eq_test_join_false_CellularAutomaton_31:
  %VR458 = call i32  @equality_test(i32 1, i32 0, i32 %VR450, i32 %VR453)
  %VR456.1 = icmp eq i32 %VR458,  1
  br label %eq_test_join_CellularAutomaton_31
;#######################################; <- eq_test_join_false_CellularAutomaton_31


;#######################################; -> eq_test_join_CellularAutomaton_31
eq_test_join_CellularAutomaton_31:
  %VR456 = phi i1  [ %VR456.0 , %eq_test_join_true_CellularAutomaton_31 ] , [ %VR456.1 , %eq_test_join_false_CellularAutomaton_31 ] 
;; <- eq: linia 339
  %VR459 = icmp eq i1 %VR456,  false
  br i1 %VR459, label %false_CellularAutomaton_38, label %false_false_CellularAutomaton_38
;#######################################; <- eq_test_join_CellularAutomaton_31


;#######################################; -> false_false_CellularAutomaton_38
false_false_CellularAutomaton_38:
;;if: linia 339 (expresia pentru then)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 340
  %VR460 = ptrtoint %struct.String_protObj_t* @str_const__41 to i32 
;; <- string_const: linia 340
  br label %join_if_CellularAutomaton_38_true
;#######################################; <- false_false_CellularAutomaton_38


;#######################################; -> join_if_CellularAutomaton_38_true
join_if_CellularAutomaton_38_true:
  %VR448.0 = add i32 %VR460, 0
  br label %join_if_CellularAutomaton_38
;#######################################; <- join_if_CellularAutomaton_38_true


;#######################################; -> false_CellularAutomaton_38
false_CellularAutomaton_38:
;;if: linia 339 (expresia pentru else)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 341
;;if: linia 341 (expresia pentru predicat)
;;%VR461 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 341
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 341
;; <- object: linia 341
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 341
  %VR462 = add i32 15, 0
;; <- int_const: linia 341
;boxing to int
  %VR463 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR464 = add i32 %VR463, 12
  %VR465 = inttoptr i32 %VR464 to i32*
  store i32 %VR267, i32* %VR465
;boxing to int
  %VR466 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR467 = add i32 %VR466, 12
  %VR468 = inttoptr i32 %VR467 to i32*
  store i32 %VR462, i32* %VR468
  br label %eq_test_join_true_CellularAutomaton_32
;#######################################; <- false_CellularAutomaton_38


;#######################################; -> eq_test_join_true_CellularAutomaton_32
eq_test_join_true_CellularAutomaton_32:
  %VR469.0 = icmp eq i32 %VR463,  %VR466
  br i1 %VR469.0, label %eq_test_join_CellularAutomaton_32, label %eq_test_join_false_CellularAutomaton_32
;#######################################; <- eq_test_join_true_CellularAutomaton_32


;#######################################; -> eq_test_join_false_CellularAutomaton_32
eq_test_join_false_CellularAutomaton_32:
  %VR471 = call i32  @equality_test(i32 1, i32 0, i32 %VR463, i32 %VR466)
  %VR469.1 = icmp eq i32 %VR471,  1
  br label %eq_test_join_CellularAutomaton_32
;#######################################; <- eq_test_join_false_CellularAutomaton_32


;#######################################; -> eq_test_join_CellularAutomaton_32
eq_test_join_CellularAutomaton_32:
  %VR469 = phi i1  [ %VR469.0 , %eq_test_join_true_CellularAutomaton_32 ] , [ %VR469.1 , %eq_test_join_false_CellularAutomaton_32 ] 
;; <- eq: linia 341
  %VR472 = icmp eq i1 %VR469,  false
  br i1 %VR472, label %false_CellularAutomaton_39, label %false_false_CellularAutomaton_39
;#######################################; <- eq_test_join_CellularAutomaton_32


;#######################################; -> false_false_CellularAutomaton_39
false_false_CellularAutomaton_39:
;;if: linia 341 (expresia pentru then)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 342
  %VR473 = ptrtoint %struct.String_protObj_t* @str_const__42 to i32 
;; <- string_const: linia 342
  br label %join_if_CellularAutomaton_39_true
;#######################################; <- false_false_CellularAutomaton_39


;#######################################; -> join_if_CellularAutomaton_39_true
join_if_CellularAutomaton_39_true:
  %VR461.0 = add i32 %VR473, 0
  br label %join_if_CellularAutomaton_39
;#######################################; <- join_if_CellularAutomaton_39_true


;#######################################; -> false_CellularAutomaton_39
false_CellularAutomaton_39:
;;if: linia 341 (expresia pentru else)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 343
;;if: linia 343 (expresia pentru predicat)
;;%VR474 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 343
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 343
;; <- object: linia 343
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 343
  %VR475 = add i32 16, 0
;; <- int_const: linia 343
;boxing to int
  %VR476 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR477 = add i32 %VR476, 12
  %VR478 = inttoptr i32 %VR477 to i32*
  store i32 %VR267, i32* %VR478
;boxing to int
  %VR479 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR480 = add i32 %VR479, 12
  %VR481 = inttoptr i32 %VR480 to i32*
  store i32 %VR475, i32* %VR481
  br label %eq_test_join_true_CellularAutomaton_33
;#######################################; <- false_CellularAutomaton_39


;#######################################; -> eq_test_join_true_CellularAutomaton_33
eq_test_join_true_CellularAutomaton_33:
  %VR482.0 = icmp eq i32 %VR476,  %VR479
  br i1 %VR482.0, label %eq_test_join_CellularAutomaton_33, label %eq_test_join_false_CellularAutomaton_33
;#######################################; <- eq_test_join_true_CellularAutomaton_33


;#######################################; -> eq_test_join_false_CellularAutomaton_33
eq_test_join_false_CellularAutomaton_33:
  %VR484 = call i32  @equality_test(i32 1, i32 0, i32 %VR476, i32 %VR479)
  %VR482.1 = icmp eq i32 %VR484,  1
  br label %eq_test_join_CellularAutomaton_33
;#######################################; <- eq_test_join_false_CellularAutomaton_33


;#######################################; -> eq_test_join_CellularAutomaton_33
eq_test_join_CellularAutomaton_33:
  %VR482 = phi i1  [ %VR482.0 , %eq_test_join_true_CellularAutomaton_33 ] , [ %VR482.1 , %eq_test_join_false_CellularAutomaton_33 ] 
;; <- eq: linia 343
  %VR485 = icmp eq i1 %VR482,  false
  br i1 %VR485, label %false_CellularAutomaton_40, label %false_false_CellularAutomaton_40
;#######################################; <- eq_test_join_CellularAutomaton_33


;#######################################; -> false_false_CellularAutomaton_40
false_false_CellularAutomaton_40:
;;if: linia 343 (expresia pentru then)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 344
  %VR486 = ptrtoint %struct.String_protObj_t* @str_const__43 to i32 
;; <- string_const: linia 344
  br label %join_if_CellularAutomaton_40_true
;#######################################; <- false_false_CellularAutomaton_40


;#######################################; -> join_if_CellularAutomaton_40_true
join_if_CellularAutomaton_40_true:
  %VR474.0 = add i32 %VR486, 0
  br label %join_if_CellularAutomaton_40
;#######################################; <- join_if_CellularAutomaton_40_true


;#######################################; -> false_CellularAutomaton_40
false_CellularAutomaton_40:
;;if: linia 343 (expresia pentru else)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 345
;;if: linia 345 (expresia pentru predicat)
;;%VR487 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 345
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 345
;; <- object: linia 345
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 345
  %VR488 = add i32 17, 0
;; <- int_const: linia 345
;boxing to int
  %VR489 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR490 = add i32 %VR489, 12
  %VR491 = inttoptr i32 %VR490 to i32*
  store i32 %VR267, i32* %VR491
;boxing to int
  %VR492 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR493 = add i32 %VR492, 12
  %VR494 = inttoptr i32 %VR493 to i32*
  store i32 %VR488, i32* %VR494
  br label %eq_test_join_true_CellularAutomaton_34
;#######################################; <- false_CellularAutomaton_40


;#######################################; -> eq_test_join_true_CellularAutomaton_34
eq_test_join_true_CellularAutomaton_34:
  %VR495.0 = icmp eq i32 %VR489,  %VR492
  br i1 %VR495.0, label %eq_test_join_CellularAutomaton_34, label %eq_test_join_false_CellularAutomaton_34
;#######################################; <- eq_test_join_true_CellularAutomaton_34


;#######################################; -> eq_test_join_false_CellularAutomaton_34
eq_test_join_false_CellularAutomaton_34:
  %VR497 = call i32  @equality_test(i32 1, i32 0, i32 %VR489, i32 %VR492)
  %VR495.1 = icmp eq i32 %VR497,  1
  br label %eq_test_join_CellularAutomaton_34
;#######################################; <- eq_test_join_false_CellularAutomaton_34


;#######################################; -> eq_test_join_CellularAutomaton_34
eq_test_join_CellularAutomaton_34:
  %VR495 = phi i1  [ %VR495.0 , %eq_test_join_true_CellularAutomaton_34 ] , [ %VR495.1 , %eq_test_join_false_CellularAutomaton_34 ] 
;; <- eq: linia 345
  %VR498 = icmp eq i1 %VR495,  false
  br i1 %VR498, label %false_CellularAutomaton_41, label %false_false_CellularAutomaton_41
;#######################################; <- eq_test_join_CellularAutomaton_34


;#######################################; -> false_false_CellularAutomaton_41
false_false_CellularAutomaton_41:
;;if: linia 345 (expresia pentru then)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 346
  %VR499 = ptrtoint %struct.String_protObj_t* @str_const__44 to i32 
;; <- string_const: linia 346
  br label %join_if_CellularAutomaton_41_true
;#######################################; <- false_false_CellularAutomaton_41


;#######################################; -> join_if_CellularAutomaton_41_true
join_if_CellularAutomaton_41_true:
  %VR487.0 = add i32 %VR499, 0
  br label %join_if_CellularAutomaton_41
;#######################################; <- join_if_CellularAutomaton_41_true


;#######################################; -> false_CellularAutomaton_41
false_CellularAutomaton_41:
;;if: linia 345 (expresia pentru else)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 347
;;if: linia 347 (expresia pentru predicat)
;;%VR500 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 347
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 347
;; <- object: linia 347
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 347
  %VR501 = add i32 18, 0
;; <- int_const: linia 347
;boxing to int
  %VR502 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR503 = add i32 %VR502, 12
  %VR504 = inttoptr i32 %VR503 to i32*
  store i32 %VR267, i32* %VR504
;boxing to int
  %VR505 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR506 = add i32 %VR505, 12
  %VR507 = inttoptr i32 %VR506 to i32*
  store i32 %VR501, i32* %VR507
  br label %eq_test_join_true_CellularAutomaton_35
;#######################################; <- false_CellularAutomaton_41


;#######################################; -> eq_test_join_true_CellularAutomaton_35
eq_test_join_true_CellularAutomaton_35:
  %VR508.0 = icmp eq i32 %VR502,  %VR505
  br i1 %VR508.0, label %eq_test_join_CellularAutomaton_35, label %eq_test_join_false_CellularAutomaton_35
;#######################################; <- eq_test_join_true_CellularAutomaton_35


;#######################################; -> eq_test_join_false_CellularAutomaton_35
eq_test_join_false_CellularAutomaton_35:
  %VR510 = call i32  @equality_test(i32 1, i32 0, i32 %VR502, i32 %VR505)
  %VR508.1 = icmp eq i32 %VR510,  1
  br label %eq_test_join_CellularAutomaton_35
;#######################################; <- eq_test_join_false_CellularAutomaton_35


;#######################################; -> eq_test_join_CellularAutomaton_35
eq_test_join_CellularAutomaton_35:
  %VR508 = phi i1  [ %VR508.0 , %eq_test_join_true_CellularAutomaton_35 ] , [ %VR508.1 , %eq_test_join_false_CellularAutomaton_35 ] 
;; <- eq: linia 347
  %VR511 = icmp eq i1 %VR508,  false
  br i1 %VR511, label %false_CellularAutomaton_42, label %false_false_CellularAutomaton_42
;#######################################; <- eq_test_join_CellularAutomaton_35


;#######################################; -> false_false_CellularAutomaton_42
false_false_CellularAutomaton_42:
;;if: linia 347 (expresia pentru then)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 348
  %VR512 = ptrtoint %struct.String_protObj_t* @str_const__45 to i32 
;; <- string_const: linia 348
  br label %join_if_CellularAutomaton_42_true
;#######################################; <- false_false_CellularAutomaton_42


;#######################################; -> join_if_CellularAutomaton_42_true
join_if_CellularAutomaton_42_true:
  %VR500.0 = add i32 %VR512, 0
  br label %join_if_CellularAutomaton_42
;#######################################; <- join_if_CellularAutomaton_42_true


;#######################################; -> false_CellularAutomaton_42
false_CellularAutomaton_42:
;;if: linia 347 (expresia pentru else)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 349
;;if: linia 349 (expresia pentru predicat)
;;%VR513 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 349
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 349
;; <- object: linia 349
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 349
  %VR514 = add i32 19, 0
;; <- int_const: linia 349
;boxing to int
  %VR515 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR516 = add i32 %VR515, 12
  %VR517 = inttoptr i32 %VR516 to i32*
  store i32 %VR267, i32* %VR517
;boxing to int
  %VR518 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR519 = add i32 %VR518, 12
  %VR520 = inttoptr i32 %VR519 to i32*
  store i32 %VR514, i32* %VR520
  br label %eq_test_join_true_CellularAutomaton_36
;#######################################; <- false_CellularAutomaton_42


;#######################################; -> eq_test_join_true_CellularAutomaton_36
eq_test_join_true_CellularAutomaton_36:
  %VR521.0 = icmp eq i32 %VR515,  %VR518
  br i1 %VR521.0, label %eq_test_join_CellularAutomaton_36, label %eq_test_join_false_CellularAutomaton_36
;#######################################; <- eq_test_join_true_CellularAutomaton_36


;#######################################; -> eq_test_join_false_CellularAutomaton_36
eq_test_join_false_CellularAutomaton_36:
  %VR523 = call i32  @equality_test(i32 1, i32 0, i32 %VR515, i32 %VR518)
  %VR521.1 = icmp eq i32 %VR523,  1
  br label %eq_test_join_CellularAutomaton_36
;#######################################; <- eq_test_join_false_CellularAutomaton_36


;#######################################; -> eq_test_join_CellularAutomaton_36
eq_test_join_CellularAutomaton_36:
  %VR521 = phi i1  [ %VR521.0 , %eq_test_join_true_CellularAutomaton_36 ] , [ %VR521.1 , %eq_test_join_false_CellularAutomaton_36 ] 
;; <- eq: linia 349
  %VR524 = icmp eq i1 %VR521,  false
  br i1 %VR524, label %false_CellularAutomaton_43, label %false_false_CellularAutomaton_43
;#######################################; <- eq_test_join_CellularAutomaton_36


;#######################################; -> false_false_CellularAutomaton_43
false_false_CellularAutomaton_43:
;;if: linia 349 (expresia pentru then)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 350
  %VR525 = ptrtoint %struct.String_protObj_t* @str_const__46 to i32 
;; <- string_const: linia 350
  br label %join_if_CellularAutomaton_43_true
;#######################################; <- false_false_CellularAutomaton_43


;#######################################; -> join_if_CellularAutomaton_43_true
join_if_CellularAutomaton_43_true:
  %VR513.0 = add i32 %VR525, 0
  br label %join_if_CellularAutomaton_43
;#######################################; <- join_if_CellularAutomaton_43_true


;#######################################; -> false_CellularAutomaton_43
false_CellularAutomaton_43:
;;if: linia 349 (expresia pentru else)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 351
;;if: linia 351 (expresia pentru predicat)
;;%VR526 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 351
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 351
;; <- object: linia 351
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 351
  %VR527 = add i32 20, 0
;; <- int_const: linia 351
;boxing to int
  %VR528 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR529 = add i32 %VR528, 12
  %VR530 = inttoptr i32 %VR529 to i32*
  store i32 %VR267, i32* %VR530
;boxing to int
  %VR531 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR532 = add i32 %VR531, 12
  %VR533 = inttoptr i32 %VR532 to i32*
  store i32 %VR527, i32* %VR533
  br label %eq_test_join_true_CellularAutomaton_37
;#######################################; <- false_CellularAutomaton_43


;#######################################; -> eq_test_join_true_CellularAutomaton_37
eq_test_join_true_CellularAutomaton_37:
  %VR534.0 = icmp eq i32 %VR528,  %VR531
  br i1 %VR534.0, label %eq_test_join_CellularAutomaton_37, label %eq_test_join_false_CellularAutomaton_37
;#######################################; <- eq_test_join_true_CellularAutomaton_37


;#######################################; -> eq_test_join_false_CellularAutomaton_37
eq_test_join_false_CellularAutomaton_37:
  %VR536 = call i32  @equality_test(i32 1, i32 0, i32 %VR528, i32 %VR531)
  %VR534.1 = icmp eq i32 %VR536,  1
  br label %eq_test_join_CellularAutomaton_37
;#######################################; <- eq_test_join_false_CellularAutomaton_37


;#######################################; -> eq_test_join_CellularAutomaton_37
eq_test_join_CellularAutomaton_37:
  %VR534 = phi i1  [ %VR534.0 , %eq_test_join_true_CellularAutomaton_37 ] , [ %VR534.1 , %eq_test_join_false_CellularAutomaton_37 ] 
;; <- eq: linia 351
  %VR537 = icmp eq i1 %VR534,  false
  br i1 %VR537, label %false_CellularAutomaton_44, label %false_false_CellularAutomaton_44
;#######################################; <- eq_test_join_CellularAutomaton_37


;#######################################; -> false_false_CellularAutomaton_44
false_false_CellularAutomaton_44:
;;if: linia 351 (expresia pentru then)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 352
  %VR538 = ptrtoint %struct.String_protObj_t* @str_const__47 to i32 
;; <- string_const: linia 352
  br label %join_if_CellularAutomaton_44_true
;#######################################; <- false_false_CellularAutomaton_44


;#######################################; -> join_if_CellularAutomaton_44_true
join_if_CellularAutomaton_44_true:
  %VR526.0 = add i32 %VR538, 0
  br label %join_if_CellularAutomaton_44
;#######################################; <- join_if_CellularAutomaton_44_true


;#######################################; -> false_CellularAutomaton_44
false_CellularAutomaton_44:
;;if: linia 351 (expresia pentru else)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 353
;;if: linia 353 (expresia pentru predicat)
;;%VR539 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 353
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 353
;; <- object: linia 353
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 353
  %VR540 = add i32 21, 0
;; <- int_const: linia 353
;boxing to int
  %VR541 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR542 = add i32 %VR541, 12
  %VR543 = inttoptr i32 %VR542 to i32*
  store i32 %VR267, i32* %VR543
;boxing to int
  %VR544 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR545 = add i32 %VR544, 12
  %VR546 = inttoptr i32 %VR545 to i32*
  store i32 %VR540, i32* %VR546
  br label %eq_test_join_true_CellularAutomaton_38
;#######################################; <- false_CellularAutomaton_44


;#######################################; -> eq_test_join_true_CellularAutomaton_38
eq_test_join_true_CellularAutomaton_38:
  %VR547.0 = icmp eq i32 %VR541,  %VR544
  br i1 %VR547.0, label %eq_test_join_CellularAutomaton_38, label %eq_test_join_false_CellularAutomaton_38
;#######################################; <- eq_test_join_true_CellularAutomaton_38


;#######################################; -> eq_test_join_false_CellularAutomaton_38
eq_test_join_false_CellularAutomaton_38:
  %VR549 = call i32  @equality_test(i32 1, i32 0, i32 %VR541, i32 %VR544)
  %VR547.1 = icmp eq i32 %VR549,  1
  br label %eq_test_join_CellularAutomaton_38
;#######################################; <- eq_test_join_false_CellularAutomaton_38


;#######################################; -> eq_test_join_CellularAutomaton_38
eq_test_join_CellularAutomaton_38:
  %VR547 = phi i1  [ %VR547.0 , %eq_test_join_true_CellularAutomaton_38 ] , [ %VR547.1 , %eq_test_join_false_CellularAutomaton_38 ] 
;; <- eq: linia 353
  %VR550 = icmp eq i1 %VR547,  false
  br i1 %VR550, label %false_CellularAutomaton_45, label %false_false_CellularAutomaton_45
;#######################################; <- eq_test_join_CellularAutomaton_38


;#######################################; -> false_false_CellularAutomaton_45
false_false_CellularAutomaton_45:
;;if: linia 353 (expresia pentru then)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 354
  %VR551 = ptrtoint %struct.String_protObj_t* @str_const__48 to i32 
;; <- string_const: linia 354
  br label %join_if_CellularAutomaton_45_true
;#######################################; <- false_false_CellularAutomaton_45


;#######################################; -> join_if_CellularAutomaton_45_true
join_if_CellularAutomaton_45_true:
  %VR539.0 = add i32 %VR551, 0
  br label %join_if_CellularAutomaton_45
;#######################################; <- join_if_CellularAutomaton_45_true


;#######################################; -> false_CellularAutomaton_45
false_CellularAutomaton_45:
;;if: linia 353 (expresia pentru else)
;- block -- let -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 356
  %VR552 = ptrtoint %struct.String_protObj_t* @str_const__49 to i32 
;; <- string_const: linia 356
  br label %join_if_CellularAutomaton_45_false
;#######################################; <- false_CellularAutomaton_45


;#######################################; -> join_if_CellularAutomaton_45_false
join_if_CellularAutomaton_45_false:
  %VR539.1 = add i32 %VR552, 0
  br label %join_if_CellularAutomaton_45
;#######################################; <- join_if_CellularAutomaton_45_false


;#######################################; -> join_if_CellularAutomaton_45
join_if_CellularAutomaton_45:
  %VR539 = phi i32  [ %VR539.0 , %join_if_CellularAutomaton_45_true ] , [ %VR539.1 , %join_if_CellularAutomaton_45_false ] 
;; <- cond: linia 353
  br label %join_if_CellularAutomaton_44_false
;#######################################; <- join_if_CellularAutomaton_45


;#######################################; -> join_if_CellularAutomaton_44_false
join_if_CellularAutomaton_44_false:
  %VR526.1 = add i32 %VR539, 0
  br label %join_if_CellularAutomaton_44
;#######################################; <- join_if_CellularAutomaton_44_false


;#######################################; -> join_if_CellularAutomaton_44
join_if_CellularAutomaton_44:
  %VR526 = phi i32  [ %VR526.0 , %join_if_CellularAutomaton_44_true ] , [ %VR526.1 , %join_if_CellularAutomaton_44_false ] 
;; <- cond: linia 351
  br label %join_if_CellularAutomaton_43_false
;#######################################; <- join_if_CellularAutomaton_44


;#######################################; -> join_if_CellularAutomaton_43_false
join_if_CellularAutomaton_43_false:
  %VR513.1 = add i32 %VR526, 0
  br label %join_if_CellularAutomaton_43
;#######################################; <- join_if_CellularAutomaton_43_false


;#######################################; -> join_if_CellularAutomaton_43
join_if_CellularAutomaton_43:
  %VR513 = phi i32  [ %VR513.0 , %join_if_CellularAutomaton_43_true ] , [ %VR513.1 , %join_if_CellularAutomaton_43_false ] 
;; <- cond: linia 349
  br label %join_if_CellularAutomaton_42_false
;#######################################; <- join_if_CellularAutomaton_43


;#######################################; -> join_if_CellularAutomaton_42_false
join_if_CellularAutomaton_42_false:
  %VR500.1 = add i32 %VR513, 0
  br label %join_if_CellularAutomaton_42
;#######################################; <- join_if_CellularAutomaton_42_false


;#######################################; -> join_if_CellularAutomaton_42
join_if_CellularAutomaton_42:
  %VR500 = phi i32  [ %VR500.0 , %join_if_CellularAutomaton_42_true ] , [ %VR500.1 , %join_if_CellularAutomaton_42_false ] 
;; <- cond: linia 347
  br label %join_if_CellularAutomaton_41_false
;#######################################; <- join_if_CellularAutomaton_42


;#######################################; -> join_if_CellularAutomaton_41_false
join_if_CellularAutomaton_41_false:
  %VR487.1 = add i32 %VR500, 0
  br label %join_if_CellularAutomaton_41
;#######################################; <- join_if_CellularAutomaton_41_false


;#######################################; -> join_if_CellularAutomaton_41
join_if_CellularAutomaton_41:
  %VR487 = phi i32  [ %VR487.0 , %join_if_CellularAutomaton_41_true ] , [ %VR487.1 , %join_if_CellularAutomaton_41_false ] 
;; <- cond: linia 345
  br label %join_if_CellularAutomaton_40_false
;#######################################; <- join_if_CellularAutomaton_41


;#######################################; -> join_if_CellularAutomaton_40_false
join_if_CellularAutomaton_40_false:
  %VR474.1 = add i32 %VR487, 0
  br label %join_if_CellularAutomaton_40
;#######################################; <- join_if_CellularAutomaton_40_false


;#######################################; -> join_if_CellularAutomaton_40
join_if_CellularAutomaton_40:
  %VR474 = phi i32  [ %VR474.0 , %join_if_CellularAutomaton_40_true ] , [ %VR474.1 , %join_if_CellularAutomaton_40_false ] 
;; <- cond: linia 343
  br label %join_if_CellularAutomaton_39_false
;#######################################; <- join_if_CellularAutomaton_40


;#######################################; -> join_if_CellularAutomaton_39_false
join_if_CellularAutomaton_39_false:
  %VR461.1 = add i32 %VR474, 0
  br label %join_if_CellularAutomaton_39
;#######################################; <- join_if_CellularAutomaton_39_false


;#######################################; -> join_if_CellularAutomaton_39
join_if_CellularAutomaton_39:
  %VR461 = phi i32  [ %VR461.0 , %join_if_CellularAutomaton_39_true ] , [ %VR461.1 , %join_if_CellularAutomaton_39_false ] 
;; <- cond: linia 341
  br label %join_if_CellularAutomaton_38_false
;#######################################; <- join_if_CellularAutomaton_39


;#######################################; -> join_if_CellularAutomaton_38_false
join_if_CellularAutomaton_38_false:
  %VR448.1 = add i32 %VR461, 0
  br label %join_if_CellularAutomaton_38
;#######################################; <- join_if_CellularAutomaton_38_false


;#######################################; -> join_if_CellularAutomaton_38
join_if_CellularAutomaton_38:
  %VR448 = phi i32  [ %VR448.0 , %join_if_CellularAutomaton_38_true ] , [ %VR448.1 , %join_if_CellularAutomaton_38_false ] 
;; <- cond: linia 339
  br label %join_if_CellularAutomaton_37_false
;#######################################; <- join_if_CellularAutomaton_38


;#######################################; -> join_if_CellularAutomaton_37_false
join_if_CellularAutomaton_37_false:
  %VR435.1 = add i32 %VR448, 0
  br label %join_if_CellularAutomaton_37
;#######################################; <- join_if_CellularAutomaton_37_false


;#######################################; -> join_if_CellularAutomaton_37
join_if_CellularAutomaton_37:
  %VR435 = phi i32  [ %VR435.0 , %join_if_CellularAutomaton_37_true ] , [ %VR435.1 , %join_if_CellularAutomaton_37_false ] 
;; <- cond: linia 337
  br label %join_if_CellularAutomaton_36_false
;#######################################; <- join_if_CellularAutomaton_37


;#######################################; -> join_if_CellularAutomaton_36_false
join_if_CellularAutomaton_36_false:
  %VR422.1 = add i32 %VR435, 0
  br label %join_if_CellularAutomaton_36
;#######################################; <- join_if_CellularAutomaton_36_false


;#######################################; -> join_if_CellularAutomaton_36
join_if_CellularAutomaton_36:
  %VR422 = phi i32  [ %VR422.0 , %join_if_CellularAutomaton_36_true ] , [ %VR422.1 , %join_if_CellularAutomaton_36_false ] 
;; <- cond: linia 335
  br label %join_if_CellularAutomaton_35_false
;#######################################; <- join_if_CellularAutomaton_36


;#######################################; -> join_if_CellularAutomaton_35_false
join_if_CellularAutomaton_35_false:
  %VR409.1 = add i32 %VR422, 0
  br label %join_if_CellularAutomaton_35
;#######################################; <- join_if_CellularAutomaton_35_false


;#######################################; -> join_if_CellularAutomaton_35
join_if_CellularAutomaton_35:
  %VR409 = phi i32  [ %VR409.0 , %join_if_CellularAutomaton_35_true ] , [ %VR409.1 , %join_if_CellularAutomaton_35_false ] 
;; <- cond: linia 333
  br label %join_if_CellularAutomaton_34_false
;#######################################; <- join_if_CellularAutomaton_35


;#######################################; -> join_if_CellularAutomaton_34_false
join_if_CellularAutomaton_34_false:
  %VR396.1 = add i32 %VR409, 0
  br label %join_if_CellularAutomaton_34
;#######################################; <- join_if_CellularAutomaton_34_false


;#######################################; -> join_if_CellularAutomaton_34
join_if_CellularAutomaton_34:
  %VR396 = phi i32  [ %VR396.0 , %join_if_CellularAutomaton_34_true ] , [ %VR396.1 , %join_if_CellularAutomaton_34_false ] 
;; <- cond: linia 331
  br label %join_if_CellularAutomaton_33_false
;#######################################; <- join_if_CellularAutomaton_34


;#######################################; -> join_if_CellularAutomaton_33_false
join_if_CellularAutomaton_33_false:
  %VR383.1 = add i32 %VR396, 0
  br label %join_if_CellularAutomaton_33
;#######################################; <- join_if_CellularAutomaton_33_false


;#######################################; -> join_if_CellularAutomaton_33
join_if_CellularAutomaton_33:
  %VR383 = phi i32  [ %VR383.0 , %join_if_CellularAutomaton_33_true ] , [ %VR383.1 , %join_if_CellularAutomaton_33_false ] 
;; <- cond: linia 329
  br label %join_if_CellularAutomaton_32_false
;#######################################; <- join_if_CellularAutomaton_33


;#######################################; -> join_if_CellularAutomaton_32_false
join_if_CellularAutomaton_32_false:
  %VR370.1 = add i32 %VR383, 0
  br label %join_if_CellularAutomaton_32
;#######################################; <- join_if_CellularAutomaton_32_false


;#######################################; -> join_if_CellularAutomaton_32
join_if_CellularAutomaton_32:
  %VR370 = phi i32  [ %VR370.0 , %join_if_CellularAutomaton_32_true ] , [ %VR370.1 , %join_if_CellularAutomaton_32_false ] 
;; <- cond: linia 327
  br label %join_if_CellularAutomaton_31_false
;#######################################; <- join_if_CellularAutomaton_32


;#######################################; -> join_if_CellularAutomaton_31_false
join_if_CellularAutomaton_31_false:
  %VR357.1 = add i32 %VR370, 0
  br label %join_if_CellularAutomaton_31
;#######################################; <- join_if_CellularAutomaton_31_false


;#######################################; -> join_if_CellularAutomaton_31
join_if_CellularAutomaton_31:
  %VR357 = phi i32  [ %VR357.0 , %join_if_CellularAutomaton_31_true ] , [ %VR357.1 , %join_if_CellularAutomaton_31_false ] 
;; <- cond: linia 325
  br label %join_if_CellularAutomaton_30_false
;#######################################; <- join_if_CellularAutomaton_31


;#######################################; -> join_if_CellularAutomaton_30_false
join_if_CellularAutomaton_30_false:
  %VR344.1 = add i32 %VR357, 0
  br label %join_if_CellularAutomaton_30
;#######################################; <- join_if_CellularAutomaton_30_false


;#######################################; -> join_if_CellularAutomaton_30
join_if_CellularAutomaton_30:
  %VR344 = phi i32  [ %VR344.0 , %join_if_CellularAutomaton_30_true ] , [ %VR344.1 , %join_if_CellularAutomaton_30_false ] 
;; <- cond: linia 323
  br label %join_if_CellularAutomaton_29_false
;#######################################; <- join_if_CellularAutomaton_30


;#######################################; -> join_if_CellularAutomaton_29_false
join_if_CellularAutomaton_29_false:
  %VR331.1 = add i32 %VR344, 0
  br label %join_if_CellularAutomaton_29
;#######################################; <- join_if_CellularAutomaton_29_false


;#######################################; -> join_if_CellularAutomaton_29
join_if_CellularAutomaton_29:
  %VR331 = phi i32  [ %VR331.0 , %join_if_CellularAutomaton_29_true ] , [ %VR331.1 , %join_if_CellularAutomaton_29_false ] 
;; <- cond: linia 321
  br label %join_if_CellularAutomaton_28_false
;#######################################; <- join_if_CellularAutomaton_29


;#######################################; -> join_if_CellularAutomaton_28_false
join_if_CellularAutomaton_28_false:
  %VR318.1 = add i32 %VR331, 0
  br label %join_if_CellularAutomaton_28
;#######################################; <- join_if_CellularAutomaton_28_false


;#######################################; -> join_if_CellularAutomaton_28
join_if_CellularAutomaton_28:
  %VR318 = phi i32  [ %VR318.0 , %join_if_CellularAutomaton_28_true ] , [ %VR318.1 , %join_if_CellularAutomaton_28_false ] 
;; <- cond: linia 319
  br label %join_if_CellularAutomaton_27_false
;#######################################; <- join_if_CellularAutomaton_28


;#######################################; -> join_if_CellularAutomaton_27_false
join_if_CellularAutomaton_27_false:
  %VR305.1 = add i32 %VR318, 0
  br label %join_if_CellularAutomaton_27
;#######################################; <- join_if_CellularAutomaton_27_false


;#######################################; -> join_if_CellularAutomaton_27
join_if_CellularAutomaton_27:
  %VR305 = phi i32  [ %VR305.0 , %join_if_CellularAutomaton_27_true ] , [ %VR305.1 , %join_if_CellularAutomaton_27_false ] 
;; <- cond: linia 317
  br label %join_if_CellularAutomaton_26_false
;#######################################; <- join_if_CellularAutomaton_27


;#######################################; -> join_if_CellularAutomaton_26_false
join_if_CellularAutomaton_26_false:
  %VR292.1 = add i32 %VR305, 0
  br label %join_if_CellularAutomaton_26
;#######################################; <- join_if_CellularAutomaton_26_false


;#######################################; -> join_if_CellularAutomaton_26
join_if_CellularAutomaton_26:
  %VR292 = phi i32  [ %VR292.0 , %join_if_CellularAutomaton_26_true ] , [ %VR292.1 , %join_if_CellularAutomaton_26_false ] 
;; <- cond: linia 315
  br label %join_if_CellularAutomaton_25_false
;#######################################; <- join_if_CellularAutomaton_26


;#######################################; -> join_if_CellularAutomaton_25_false
join_if_CellularAutomaton_25_false:
  %VR279.1 = add i32 %VR292, 0
  br label %join_if_CellularAutomaton_25
;#######################################; <- join_if_CellularAutomaton_25_false


;#######################################; -> join_if_CellularAutomaton_25
join_if_CellularAutomaton_25:
  %VR279 = phi i32  [ %VR279.0 , %join_if_CellularAutomaton_25_true ] , [ %VR279.1 , %join_if_CellularAutomaton_25_false ] 
;; <- cond: linia 313
;; <- block: linia 287
;; <- let: linia 286
;; <- block: linia 285
  ret i32 %VR279
;#######################################; <- join_if_CellularAutomaton_25


}
define i32 @CellularAutomaton__prompt(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR1a = alloca i32 
  store i32 0, i32* %VR1a
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
;- block -
;; -> block: linia 367
;- block -- let -
;; -> let: linia 368
  %VR1.a = call i32  @Object__copy(i32 ptrtoint (%struct.String_protObj_t* @String_protObj to i32))
  store i32 %VR1.a, i32* %VR1a
;- block -- let -- block -
;; -> block: linia 369
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 370
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 370
  %VR2 = ptrtoint %struct.String_protObj_t* @str_const__50 to i32 
;; <- string_const: linia 370
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 370
;; <- object: linia 370
  %VR3 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR3, label %false_dispatch55, label %dispatch_not_void_CellularAutomaton_55
;#######################################; <- entry


;#######################################; -> false_dispatch55
false_dispatch55:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__79 to i32))
  ret i32 0
;#######################################; <- false_dispatch55


;#######################################; -> dispatch_not_void_CellularAutomaton_55
dispatch_not_void_CellularAutomaton_55:
  %VR4 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR5 = add i32 %VR4, 8
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = load i32* %VR6
  %VR8 = add i32 %VR7, 16
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = inttoptr i32 %VR10 to i32 (i32, i32)*
  %VR12 = call i32 (i32, i32)* %VR11(i32 %ARG, i32 %VR2)
;; <- dispatch: linia 370
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 371
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 371
  %VR13 = ptrtoint %struct.String_protObj_t* @str_const__51 to i32 
;; <- string_const: linia 371
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 371
;; <- object: linia 371
  %VR14 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR14, label %false_dispatch56, label %dispatch_not_void_CellularAutomaton_56
;#######################################; <- dispatch_not_void_CellularAutomaton_55


;#######################################; -> false_dispatch56
false_dispatch56:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__80 to i32))
  ret i32 0
;#######################################; <- false_dispatch56


;#######################################; -> dispatch_not_void_CellularAutomaton_56
dispatch_not_void_CellularAutomaton_56:
  %VR15 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR16 = add i32 %VR15, 8
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = load i32* %VR17
  %VR19 = add i32 %VR18, 16
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = load i32* %VR20
  %VR22 = inttoptr i32 %VR21 to i32 (i32, i32)*
  %VR23 = call i32 (i32, i32)* %VR22(i32 %ARG, i32 %VR13)
;; <- dispatch: linia 371
;- block -- let -- block -- assign -
;; -> assign: linia 372
;- block -- let -- block -- assign -- dispatch -
;; -> dispatch: linia 372
;;generez codul pentru apelul metodei in_string
;- block -- let -- block -- assign -- dispatch -- object -
;; -> object: linia 372
;; <- object: linia 372
  %VR24 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR24, label %false_dispatch57, label %dispatch_not_void_CellularAutomaton_57
;#######################################; <- dispatch_not_void_CellularAutomaton_56


;#######################################; -> false_dispatch57
false_dispatch57:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__81 to i32))
  ret i32 0
;#######################################; <- false_dispatch57


;#######################################; -> dispatch_not_void_CellularAutomaton_57
dispatch_not_void_CellularAutomaton_57:
  %VR25 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR26 = add i32 %VR25, 8
  %VR27 = inttoptr i32 %VR26 to i32*
  %VR28 = load i32* %VR27
  %VR29 = add i32 %VR28, 24
  %VR30 = inttoptr i32 %VR29 to i32*
  %VR31 = load i32* %VR30
  %VR32 = inttoptr i32 %VR31 to i32 (i32)*
  %VR33 = call i32 (i32)* %VR32(i32 %ARG)
;; <- dispatch: linia 372
  store i32 %VR33, i32* %VR1a
;; <- assign: linia 372
;- block -- let -- block -- dispatch -
;; -> dispatch: linia 373
;;generez codul pentru apelul metodei out_string
;- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 373
  %VR34 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 373
;- block -- let -- block -- dispatch -- object -
;; -> object: linia 373
;; <- object: linia 373
  %VR35 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR35, label %false_dispatch58, label %dispatch_not_void_CellularAutomaton_58
;#######################################; <- dispatch_not_void_CellularAutomaton_57


;#######################################; -> false_dispatch58
false_dispatch58:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__82 to i32))
  ret i32 0
;#######################################; <- false_dispatch58


;#######################################; -> dispatch_not_void_CellularAutomaton_58
dispatch_not_void_CellularAutomaton_58:
  %VR36 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR37 = add i32 %VR36, 8
  %VR38 = inttoptr i32 %VR37 to i32*
  %VR39 = load i32* %VR38
  %VR40 = add i32 %VR39, 16
  %VR41 = inttoptr i32 %VR40 to i32*
  %VR42 = load i32* %VR41
  %VR43 = inttoptr i32 %VR42 to i32 (i32, i32)*
  %VR44 = call i32 (i32, i32)* %VR43(i32 %ARG, i32 %VR34)
;; <- dispatch: linia 373
;- block -- let -- block -- cond -
;; -> cond: linia 374
;;if: linia 374 (expresia pentru predicat)
;;%VR45 rezervat pentru rezultatul if-ului
;- block -- let -- block -- cond -- eq -
;; -> eq: linia 374
;- block -- let -- block -- cond -- eq -- object -
;; -> object: linia 374
;; <- object: linia 374
;- block -- let -- block -- cond -- eq -- string_const -
;; -> string_const: linia 374
  %VR46 = ptrtoint %struct.String_protObj_t* @str_const__52 to i32 
;; <- string_const: linia 374
  br label %eq_test_join_true_CellularAutomaton_39
;#######################################; <- dispatch_not_void_CellularAutomaton_58


;#######################################; -> eq_test_join_true_CellularAutomaton_39
eq_test_join_true_CellularAutomaton_39:
  %VR47.0 = icmp eq i32 %VR33,  %VR46
  br i1 %VR47.0, label %eq_test_join_CellularAutomaton_39, label %eq_test_join_false_CellularAutomaton_39
;#######################################; <- eq_test_join_true_CellularAutomaton_39


;#######################################; -> eq_test_join_false_CellularAutomaton_39
eq_test_join_false_CellularAutomaton_39:
  %VR49 = call i32  @equality_test(i32 1, i32 0, i32 %VR33, i32 %VR46)
  %VR47.1 = icmp eq i32 %VR49,  1
  br label %eq_test_join_CellularAutomaton_39
;#######################################; <- eq_test_join_false_CellularAutomaton_39


;#######################################; -> eq_test_join_CellularAutomaton_39
eq_test_join_CellularAutomaton_39:
  %VR47 = phi i1  [ %VR47.0 , %eq_test_join_true_CellularAutomaton_39 ] , [ %VR47.1 , %eq_test_join_false_CellularAutomaton_39 ] 
;; <- eq: linia 374
  %VR50 = icmp eq i1 %VR47,  false
  br i1 %VR50, label %false_CellularAutomaton_46, label %false_false_CellularAutomaton_46
;#######################################; <- eq_test_join_CellularAutomaton_39


;#######################################; -> false_false_CellularAutomaton_46
false_false_CellularAutomaton_46:
;;if: linia 374 (expresia pentru then)
;- block -- let -- block -- cond -- bool_const -
;; -> bool_const: linia 375
  %VR51 = add i32 0, 0
;; <- bool_const: linia 375
  br label %join_if_CellularAutomaton_46_true
;#######################################; <- false_false_CellularAutomaton_46


;#######################################; -> join_if_CellularAutomaton_46_true
join_if_CellularAutomaton_46_true:
  %VR45.0 = add i32 %VR51, 0
  br label %join_if_CellularAutomaton_46
;#######################################; <- join_if_CellularAutomaton_46_true


;#######################################; -> false_CellularAutomaton_46
false_CellularAutomaton_46:
;;if: linia 374 (expresia pentru else)
;- block -- let -- block -- cond -- bool_const -
;; -> bool_const: linia 377
  %VR52 = add i32 1, 0
;; <- bool_const: linia 377
  br label %join_if_CellularAutomaton_46_false
;#######################################; <- false_CellularAutomaton_46


;#######################################; -> join_if_CellularAutomaton_46_false
join_if_CellularAutomaton_46_false:
  %VR45.1 = add i32 %VR52, 0
  br label %join_if_CellularAutomaton_46
;#######################################; <- join_if_CellularAutomaton_46_false


;#######################################; -> join_if_CellularAutomaton_46
join_if_CellularAutomaton_46:
  %VR45 = phi i32  [ %VR45.0 , %join_if_CellularAutomaton_46_true ] , [ %VR45.1 , %join_if_CellularAutomaton_46_false ] 
;; <- cond: linia 374
;; <- block: linia 369
;; <- let: linia 368
;; <- block: linia 367
  ret i32 %VR45
;#######################################; <- join_if_CellularAutomaton_46


}
define i32 @CellularAutomaton__prompt2(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR1a = alloca i32 
  store i32 0, i32* %VR1a
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
;- let -
;; -> let: linia 386
  %VR1.a = call i32  @Object__copy(i32 ptrtoint (%struct.String_protObj_t* @String_protObj to i32))
  store i32 %VR1.a, i32* %VR1a
;- let -- block -
;; -> block: linia 387
;- let -- block -- dispatch -
;; -> dispatch: linia 388
;;generez codul pentru apelul metodei out_string
;- let -- block -- dispatch -- string_const -
;; -> string_const: linia 388
  %VR2 = ptrtoint %struct.String_protObj_t* @str_const__53 to i32 
;; <- string_const: linia 388
;- let -- block -- dispatch -- object -
;; -> object: linia 388
;; <- object: linia 388
  %VR3 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR3, label %false_dispatch59, label %dispatch_not_void_CellularAutomaton_59
;#######################################; <- entry


;#######################################; -> false_dispatch59
false_dispatch59:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__83 to i32))
  ret i32 0
;#######################################; <- false_dispatch59


;#######################################; -> dispatch_not_void_CellularAutomaton_59
dispatch_not_void_CellularAutomaton_59:
  %VR4 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR5 = add i32 %VR4, 8
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = load i32* %VR6
  %VR8 = add i32 %VR7, 16
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = inttoptr i32 %VR10 to i32 (i32, i32)*
  %VR12 = call i32 (i32, i32)* %VR11(i32 %ARG, i32 %VR2)
;; <- dispatch: linia 388
;- let -- block -- dispatch -
;; -> dispatch: linia 389
;;generez codul pentru apelul metodei out_string
;- let -- block -- dispatch -- string_const -
;; -> string_const: linia 389
  %VR13 = ptrtoint %struct.String_protObj_t* @str_const__54 to i32 
;; <- string_const: linia 389
;- let -- block -- dispatch -- object -
;; -> object: linia 389
;; <- object: linia 389
  %VR14 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR14, label %false_dispatch60, label %dispatch_not_void_CellularAutomaton_60
;#######################################; <- dispatch_not_void_CellularAutomaton_59


;#######################################; -> false_dispatch60
false_dispatch60:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__84 to i32))
  ret i32 0
;#######################################; <- false_dispatch60


;#######################################; -> dispatch_not_void_CellularAutomaton_60
dispatch_not_void_CellularAutomaton_60:
  %VR15 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR16 = add i32 %VR15, 8
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = load i32* %VR17
  %VR19 = add i32 %VR18, 16
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = load i32* %VR20
  %VR22 = inttoptr i32 %VR21 to i32 (i32, i32)*
  %VR23 = call i32 (i32, i32)* %VR22(i32 %ARG, i32 %VR13)
;; <- dispatch: linia 389
;- let -- block -- dispatch -
;; -> dispatch: linia 390
;;generez codul pentru apelul metodei out_string
;- let -- block -- dispatch -- string_const -
;; -> string_const: linia 390
  %VR24 = ptrtoint %struct.String_protObj_t* @str_const__55 to i32 
;; <- string_const: linia 390
;- let -- block -- dispatch -- object -
;; -> object: linia 390
;; <- object: linia 390
  %VR25 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR25, label %false_dispatch61, label %dispatch_not_void_CellularAutomaton_61
;#######################################; <- dispatch_not_void_CellularAutomaton_60


;#######################################; -> false_dispatch61
false_dispatch61:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__85 to i32))
  ret i32 0
;#######################################; <- false_dispatch61


;#######################################; -> dispatch_not_void_CellularAutomaton_61
dispatch_not_void_CellularAutomaton_61:
  %VR26 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR27 = add i32 %VR26, 8
  %VR28 = inttoptr i32 %VR27 to i32*
  %VR29 = load i32* %VR28
  %VR30 = add i32 %VR29, 16
  %VR31 = inttoptr i32 %VR30 to i32*
  %VR32 = load i32* %VR31
  %VR33 = inttoptr i32 %VR32 to i32 (i32, i32)*
  %VR34 = call i32 (i32, i32)* %VR33(i32 %ARG, i32 %VR24)
;; <- dispatch: linia 390
;- let -- block -- assign -
;; -> assign: linia 391
;- let -- block -- assign -- dispatch -
;; -> dispatch: linia 391
;;generez codul pentru apelul metodei in_string
;- let -- block -- assign -- dispatch -- object -
;; -> object: linia 391
;; <- object: linia 391
  %VR35 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR35, label %false_dispatch62, label %dispatch_not_void_CellularAutomaton_62
;#######################################; <- dispatch_not_void_CellularAutomaton_61


;#######################################; -> false_dispatch62
false_dispatch62:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__86 to i32))
  ret i32 0
;#######################################; <- false_dispatch62


;#######################################; -> dispatch_not_void_CellularAutomaton_62
dispatch_not_void_CellularAutomaton_62:
  %VR36 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR37 = add i32 %VR36, 8
  %VR38 = inttoptr i32 %VR37 to i32*
  %VR39 = load i32* %VR38
  %VR40 = add i32 %VR39, 24
  %VR41 = inttoptr i32 %VR40 to i32*
  %VR42 = load i32* %VR41
  %VR43 = inttoptr i32 %VR42 to i32 (i32)*
  %VR44 = call i32 (i32)* %VR43(i32 %ARG)
;; <- dispatch: linia 391
  store i32 %VR44, i32* %VR1a
;; <- assign: linia 391
;- let -- block -- cond -
;; -> cond: linia 392
;;if: linia 392 (expresia pentru predicat)
;;%VR45 rezervat pentru rezultatul if-ului
;- let -- block -- cond -- eq -
;; -> eq: linia 392
;- let -- block -- cond -- eq -- object -
;; -> object: linia 392
;; <- object: linia 392
;- let -- block -- cond -- eq -- string_const -
;; -> string_const: linia 392
  %VR46 = ptrtoint %struct.String_protObj_t* @str_const__56 to i32 
;; <- string_const: linia 392
  br label %eq_test_join_true_CellularAutomaton_40
;#######################################; <- dispatch_not_void_CellularAutomaton_62


;#######################################; -> eq_test_join_true_CellularAutomaton_40
eq_test_join_true_CellularAutomaton_40:
  %VR47.0 = icmp eq i32 %VR44,  %VR46
  br i1 %VR47.0, label %eq_test_join_CellularAutomaton_40, label %eq_test_join_false_CellularAutomaton_40
;#######################################; <- eq_test_join_true_CellularAutomaton_40


;#######################################; -> eq_test_join_false_CellularAutomaton_40
eq_test_join_false_CellularAutomaton_40:
  %VR49 = call i32  @equality_test(i32 1, i32 0, i32 %VR44, i32 %VR46)
  %VR47.1 = icmp eq i32 %VR49,  1
  br label %eq_test_join_CellularAutomaton_40
;#######################################; <- eq_test_join_false_CellularAutomaton_40


;#######################################; -> eq_test_join_CellularAutomaton_40
eq_test_join_CellularAutomaton_40:
  %VR47 = phi i1  [ %VR47.0 , %eq_test_join_true_CellularAutomaton_40 ] , [ %VR47.1 , %eq_test_join_false_CellularAutomaton_40 ] 
;; <- eq: linia 392
  %VR50 = icmp eq i1 %VR47,  false
  br i1 %VR50, label %false_CellularAutomaton_47, label %false_false_CellularAutomaton_47
;#######################################; <- eq_test_join_CellularAutomaton_40


;#######################################; -> false_false_CellularAutomaton_47
false_false_CellularAutomaton_47:
;;if: linia 392 (expresia pentru then)
;- let -- block -- cond -- bool_const -
;; -> bool_const: linia 393
  %VR51 = add i32 1, 0
;; <- bool_const: linia 393
  br label %join_if_CellularAutomaton_47_true
;#######################################; <- false_false_CellularAutomaton_47


;#######################################; -> join_if_CellularAutomaton_47_true
join_if_CellularAutomaton_47_true:
  %VR45.0 = add i32 %VR51, 0
  br label %join_if_CellularAutomaton_47
;#######################################; <- join_if_CellularAutomaton_47_true


;#######################################; -> false_CellularAutomaton_47
false_CellularAutomaton_47:
;;if: linia 392 (expresia pentru else)
;- let -- block -- cond -- bool_const -
;; -> bool_const: linia 395
  %VR52 = add i32 0, 0
;; <- bool_const: linia 395
  br label %join_if_CellularAutomaton_47_false
;#######################################; <- false_CellularAutomaton_47


;#######################################; -> join_if_CellularAutomaton_47_false
join_if_CellularAutomaton_47_false:
  %VR45.1 = add i32 %VR52, 0
  br label %join_if_CellularAutomaton_47
;#######################################; <- join_if_CellularAutomaton_47_false


;#######################################; -> join_if_CellularAutomaton_47
join_if_CellularAutomaton_47:
  %VR45 = phi i32  [ %VR45.0 , %join_if_CellularAutomaton_47_true ] , [ %VR45.1 , %join_if_CellularAutomaton_47_false ] 
;; <- cond: linia 392
;; <- block: linia 387
;; <- let: linia 386
  ret i32 %VR45
;#######################################; <- join_if_CellularAutomaton_47


}
define void @Main_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @CellularAutomaton_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @Main__main(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR36a = alloca i32 
  store i32 0, i32* %VR36a
  %VR2a = alloca i32 
  store i32 0, i32* %VR2a
  %VR1a = alloca i32 
  store i32 0, i32* %VR1a
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- block -
;; -> block: linia 408
;- block -- let -
;; -> let: linia 409
  %VR1.a = add i32 0, 0
  store i32 %VR1.a, i32* %VR1a
;- block -- let -- let -
;; -> let: linia 410
  %VR2.a = call i32  @Object__copy(i32 ptrtoint (%struct.String_protObj_t* @String_protObj to i32))
  store i32 %VR2.a, i32* %VR2a
;- block -- let -- let -- block -
;; -> block: linia 411
;- block -- let -- let -- block -- dispatch -
;; -> dispatch: linia 412
;;generez codul pentru apelul metodei out_string
;- block -- let -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 412
  %VR3 = ptrtoint %struct.String_protObj_t* @str_const__57 to i32 
;; <- string_const: linia 412
;- block -- let -- let -- block -- dispatch -- object -
;; -> object: linia 412
;; <- object: linia 412
  %VR4 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR4, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__87 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR5 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 16
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32, i32)*
  %VR13 = call i32 (i32, i32)* %VR12(i32 %ARG, i32 %VR3)
;; <- dispatch: linia 412
;- block -- let -- let -- block -- dispatch -
;; -> dispatch: linia 413
;;generez codul pentru apelul metodei out_string
;- block -- let -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 413
  %VR14 = ptrtoint %struct.String_protObj_t* @str_const__58 to i32 
;; <- string_const: linia 413
;- block -- let -- let -- block -- dispatch -- object -
;; -> object: linia 413
;; <- object: linia 413
  %VR15 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR15, label %false_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- dispatch_not_void_Main_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__88 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Main_1
dispatch_not_void_Main_1:
  %VR16 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR17 = add i32 %VR16, 8
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
  %VR20 = add i32 %VR19, 16
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
  %VR23 = inttoptr i32 %VR22 to i32 (i32, i32)*
  %VR24 = call i32 (i32, i32)* %VR23(i32 %ARG, i32 %VR14)
;; <- dispatch: linia 413
;- block -- let -- let -- block -- loop -
;; -> loop: linia 414
;; conditie
  br label %start_loop_Main_0
;#######################################; <- dispatch_not_void_Main_1


;#######################################; -> start_loop_Main_0
start_loop_Main_0:
;- block -- let -- let -- block -- loop -- dispatch -
;; -> dispatch: linia 414
;;generez codul pentru apelul metodei prompt2
;- block -- let -- let -- block -- loop -- dispatch -- object -
;; -> object: linia 414
;; <- object: linia 414
  %VR25 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR25, label %false_dispatch2, label %dispatch_not_void_Main_2
;#######################################; <- start_loop_Main_0


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__89 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Main_2
dispatch_not_void_Main_2:
  %VR26 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR27 = add i32 %VR26, 8
  %VR28 = inttoptr i32 %VR27 to i32*
  %VR29 = load i32* %VR28
  %VR30 = add i32 %VR29, 104
  %VR31 = inttoptr i32 %VR30 to i32*
  %VR32 = load i32* %VR31
  %VR33 = inttoptr i32 %VR32 to i32 (i32)*
  %VR34 = call i32 (i32)* %VR33(i32 %ARG)
;; <- dispatch: linia 414
  %VR35 = icmp eq i32 %VR34,  0
  br i1 %VR35, label %sfarsit_loop_Main_0, label %label_next_loop_Main_0
;#######################################; <- dispatch_not_void_Main_2


;#######################################; -> label_next_loop_Main_0
label_next_loop_Main_0:
;; corp loop
;- block -- let -- let -- block -- loop -- block -
;; -> block: linia 415
;- block -- let -- let -- block -- loop -- block -- assign -
;; -> assign: linia 416
;- block -- let -- let -- block -- loop -- block -- assign -- bool_const -
;; -> bool_const: linia 416
  %VR36.a = add i32 1, 0
  store i32 %VR36.a, i32* %VR36a
  %VR36_tmp0 = load i32* %VR36a
;; <- bool_const: linia 416
  store i32 %VR36_tmp0, i32* %VR1a
;; <- assign: linia 416
;- block -- let -- let -- block -- loop -- block -- assign -
;; -> assign: linia 417
;- block -- let -- let -- block -- loop -- block -- assign -- dispatch -
;; -> dispatch: linia 417
;;generez codul pentru apelul metodei option
;- block -- let -- let -- block -- loop -- block -- assign -- dispatch -- object -
;; -> object: linia 417
;; <- object: linia 417
  %VR37 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR37, label %false_dispatch3, label %dispatch_not_void_Main_3
;#######################################; <- label_next_loop_Main_0


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__90 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Main_3
dispatch_not_void_Main_3:
  %VR38 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR39 = add i32 %VR38, 8
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = load i32* %VR40
  %VR42 = add i32 %VR41, 96
  %VR43 = inttoptr i32 %VR42 to i32*
  %VR44 = load i32* %VR43
  %VR45 = inttoptr i32 %VR44 to i32 (i32)*
  %VR46 = call i32 (i32)* %VR45(i32 %ARG)
;; <- dispatch: linia 417
  store i32 %VR46, i32* %VR2a
;; <- assign: linia 417
;- block -- let -- let -- block -- loop -- block -- assign -
;; -> assign: linia 418
;- block -- let -- let -- block -- loop -- block -- assign -- dispatch -
;; -> dispatch: linia 418
;;generez codul pentru apelul metodei init
;- block -- let -- let -- block -- loop -- block -- assign -- dispatch -- object -
;; -> object: linia 418
;; <- object: linia 418
;- block -- let -- let -- block -- loop -- block -- assign -- dispatch -- new -
;; -> new: linia 418
  %VR47 = call i32  @Object__copy(i32 ptrtoint (%struct.CellularAutomaton_protObj_t* @CellularAutomaton_protObj to i32))
  call void @CellularAutomaton_init(i32 %VR47)
;; <- new: linia 418
  %VR48 = inttoptr i32 %VR47 to i32*
  %VR49 = icmp eq i32* %VR48,  null
  br i1 %VR49, label %false_dispatch4, label %dispatch_not_void_Main_4
;#######################################; <- dispatch_not_void_Main_3


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__91 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Main_4
dispatch_not_void_Main_4:
  %VR50 = ptrtoint i32* %VR48 to i32 
  %VR51 = add i32 %VR50, 8
  %VR52 = inttoptr i32 %VR51 to i32*
  %VR53 = load i32* %VR52
  %VR54 = add i32 %VR53, 36
  %VR55 = inttoptr i32 %VR54 to i32*
  %VR56 = load i32* %VR55
  %VR57 = inttoptr i32 %VR56 to i32 (i32, i32)*
  %VR58 = call i32 (i32, i32)* %VR57(i32 %VR47, i32 %VR46)
;; <- dispatch: linia 418
  %VR59 = add i32 %ARG, 28
  %VR60 = inttoptr i32 %VR59 to i32*
  store i32 %VR58, i32* %VR60
;; <- assign: linia 418
;- block -- let -- let -- block -- loop -- block -- dispatch -
;; -> dispatch: linia 419
;;generez codul pentru apelul metodei print
;- block -- let -- let -- block -- loop -- block -- dispatch -- object -
;; -> object: linia 419
  %VR61 = add i32 %ARG, 28
  %VR62 = inttoptr i32 %VR61 to i32*
  %VR63 = load i32* %VR62
;; <- object: linia 419
  %VR64 = inttoptr i32 %VR63 to i32*
  %VR65 = icmp eq i32* %VR64,  null
  br i1 %VR65, label %false_dispatch5, label %dispatch_not_void_Main_5
;#######################################; <- dispatch_not_void_Main_4


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__92 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_Main_5
dispatch_not_void_Main_5:
  %VR66 = ptrtoint i32* %VR64 to i32 
  %VR67 = add i32 %VR66, 8
  %VR68 = inttoptr i32 %VR67 to i32*
  %VR69 = load i32* %VR68
  %VR70 = add i32 %VR69, 40
  %VR71 = inttoptr i32 %VR70 to i32*
  %VR72 = load i32* %VR71
  %VR73 = inttoptr i32 %VR72 to i32 (i32)*
  %VR74 = call i32 (i32)* %VR73(i32 %VR63)
;; <- dispatch: linia 419
;- block -- let -- let -- block -- loop -- block -- loop -
;; -> loop: linia 420
;; conditie
  br label %start_loop_Main_1
;#######################################; <- dispatch_not_void_Main_5


;#######################################; -> start_loop_Main_1
start_loop_Main_1:
  %VR36_tmp1 = load i32* %VR36a
;- block -- let -- let -- block -- loop -- block -- loop -- object -
;; -> object: linia 420
;; <- object: linia 420
  %VR75 = icmp eq i32 %VR36_tmp1,  0
  br i1 %VR75, label %sfarsit_loop_Main_1, label %label_next_loop_Main_1
;#######################################; <- start_loop_Main_1


;#######################################; -> label_next_loop_Main_1
label_next_loop_Main_1:
;; corp loop
;- block -- let -- let -- block -- loop -- block -- loop -- cond -
;; -> cond: linia 421
;;if: linia 421 (expresia pentru predicat)
;;%VR76 rezervat pentru rezultatul if-ului
;- block -- let -- let -- block -- loop -- block -- loop -- cond -- dispatch -
;; -> dispatch: linia 421
;;generez codul pentru apelul metodei prompt
;- block -- let -- let -- block -- loop -- block -- loop -- cond -- dispatch -- object -
;; -> object: linia 421
;; <- object: linia 421
  %VR77 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR77, label %false_dispatch6, label %dispatch_not_void_Main_6
;#######################################; <- label_next_loop_Main_1


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__93 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_Main_6
dispatch_not_void_Main_6:
  %VR78 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR79 = add i32 %VR78, 8
  %VR80 = inttoptr i32 %VR79 to i32*
  %VR81 = load i32* %VR80
  %VR82 = add i32 %VR81, 100
  %VR83 = inttoptr i32 %VR82 to i32*
  %VR84 = load i32* %VR83
  %VR85 = inttoptr i32 %VR84 to i32 (i32)*
  %VR86 = call i32 (i32)* %VR85(i32 %ARG)
;; <- dispatch: linia 421
  %VR87 = icmp eq i32 %VR86,  0
  br i1 %VR87, label %false_Main_0, label %false_false_Main_0
;#######################################; <- dispatch_not_void_Main_6


;#######################################; -> false_false_Main_0
false_false_Main_0:
;;if: linia 421 (expresia pentru then)
;- block -- let -- let -- block -- loop -- block -- loop -- cond -- block -
;; -> block: linia 422
;- block -- let -- let -- block -- loop -- block -- loop -- cond -- block -- dispatch -
;; -> dispatch: linia 423
;;generez codul pentru apelul metodei evolve
;- block -- let -- let -- block -- loop -- block -- loop -- cond -- block -- dispatch -- object -
;; -> object: linia 423
  %VR88 = add i32 %ARG, 28
  %VR89 = inttoptr i32 %VR88 to i32*
  %VR90 = load i32* %VR89
;; <- object: linia 423
  %VR91 = inttoptr i32 %VR90 to i32*
  %VR92 = icmp eq i32* %VR91,  null
  br i1 %VR92, label %false_dispatch7, label %dispatch_not_void_Main_7
;#######################################; <- false_false_Main_0


;#######################################; -> false_dispatch7
false_dispatch7:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__94 to i32))
  ret i32 0
;#######################################; <- false_dispatch7


;#######################################; -> dispatch_not_void_Main_7
dispatch_not_void_Main_7:
  %VR93 = ptrtoint i32* %VR91 to i32 
  %VR94 = add i32 %VR93, 8
  %VR95 = inttoptr i32 %VR94 to i32*
  %VR96 = load i32* %VR95
  %VR97 = add i32 %VR96, 92
  %VR98 = inttoptr i32 %VR97 to i32*
  %VR99 = load i32* %VR98
  %VR100 = inttoptr i32 %VR99 to i32 (i32)*
  %VR101 = call i32 (i32)* %VR100(i32 %VR90)
;; <- dispatch: linia 423
;- block -- let -- let -- block -- loop -- block -- loop -- cond -- block -- dispatch -
;; -> dispatch: linia 424
;;generez codul pentru apelul metodei print
;- block -- let -- let -- block -- loop -- block -- loop -- cond -- block -- dispatch -- object -
;; -> object: linia 424
  %VR102 = add i32 %ARG, 28
  %VR103 = inttoptr i32 %VR102 to i32*
  %VR104 = load i32* %VR103
;; <- object: linia 424
  %VR105 = inttoptr i32 %VR104 to i32*
  %VR106 = icmp eq i32* %VR105,  null
  br i1 %VR106, label %false_dispatch8, label %dispatch_not_void_Main_8
;#######################################; <- dispatch_not_void_Main_7


;#######################################; -> false_dispatch8
false_dispatch8:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__95 to i32))
  ret i32 0
;#######################################; <- false_dispatch8


;#######################################; -> dispatch_not_void_Main_8
dispatch_not_void_Main_8:
  %VR107 = ptrtoint i32* %VR105 to i32 
  %VR108 = add i32 %VR107, 8
  %VR109 = inttoptr i32 %VR108 to i32*
  %VR110 = load i32* %VR109
  %VR111 = add i32 %VR110, 40
  %VR112 = inttoptr i32 %VR111 to i32*
  %VR113 = load i32* %VR112
  %VR114 = inttoptr i32 %VR113 to i32 (i32)*
  %VR115 = call i32 (i32)* %VR114(i32 %VR104)
;; <- dispatch: linia 424
;; <- block: linia 422
  br label %join_if_Main_0_true
;#######################################; <- dispatch_not_void_Main_8


;#######################################; -> join_if_Main_0_true
join_if_Main_0_true:
  %VR76.0 = add i32 %VR115, 0
  br label %join_if_Main_0
;#######################################; <- join_if_Main_0_true


;#######################################; -> false_Main_0
false_Main_0:
;;if: linia 421 (expresia pentru else)
;- block -- let -- let -- block -- loop -- block -- loop -- cond -- assign -
;; -> assign: linia 427
;- block -- let -- let -- block -- loop -- block -- loop -- cond -- assign -- bool_const -
;; -> bool_const: linia 427
  %VR116 = add i32 0, 0
;; <- bool_const: linia 427
  store i32 %VR116, i32* %VR36a
;; <- assign: linia 427
  br label %join_if_Main_0_false
;#######################################; <- false_Main_0


;#######################################; -> join_if_Main_0_false
join_if_Main_0_false:
  %VR76.1 = add i32 %VR116, 0
  br label %join_if_Main_0
;#######################################; <- join_if_Main_0_false


;#######################################; -> join_if_Main_0
join_if_Main_0:
  %VR76 = phi i32  [ %VR76.0 , %join_if_Main_0_true ] , [ %VR76.1 , %join_if_Main_0_false ] 
;; <- cond: linia 421
  br label %start_loop_Main_1
;#######################################; <- join_if_Main_0


;#######################################; -> sfarsit_loop_Main_1
sfarsit_loop_Main_1:
;; <- loop: linia 420
;; <- block: linia 415
  br label %start_loop_Main_0
;#######################################; <- sfarsit_loop_Main_1


;#######################################; -> sfarsit_loop_Main_0
sfarsit_loop_Main_0:
;; <- loop: linia 414
;- block -- let -- let -- block -- object -
;; -> object: linia 432
;; <- object: linia 432
;; <- block: linia 411
;; <- let: linia 410
;; <- let: linia 409
;; <- block: linia 408
  ret i32 %ARG
;#######################################; <- sfarsit_loop_Main_0


}
@s71 = internal constant [1 x i8] c"\00"
@str_const__71 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([1 x i8]* @s71, i32 0, i32 0)}
@s70 = internal constant [5 x i8] c"Main\00"
@str_const__70 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([5 x i8]* @s70, i32 0, i32 0)}
@s69 = internal constant [18 x i8] c"CellularAutomaton\00"
@str_const__69 = global %struct.String_protObj_t{i32 3, i32 9, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__21, i8* getelementptr ([18 x i8]* @s69, i32 0, i32 0)}
@s68 = internal constant [6 x i8] c"Board\00"
@str_const__68 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([6 x i8]* @s68, i32 0, i32 0)}
@s67 = internal constant [3 x i8] c"IO\00"
@str_const__67 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__12, i8* getelementptr ([3 x i8]* @s67, i32 0, i32 0)}
@s66 = internal constant [7 x i8] c"String\00"
@str_const__66 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([7 x i8]* @s66, i32 0, i32 0)}
@s65 = internal constant [5 x i8] c"Bool\00"
@str_const__65 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([5 x i8]* @s65, i32 0, i32 0)}
@s64 = internal constant [4 x i8] c"Int\00"
@str_const__64 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([4 x i8]* @s64, i32 0, i32 0)}
@s63 = internal constant [7 x i8] c"Object\00"
@str_const__63 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([7 x i8]* @s63, i32 0, i32 0)}
@s62 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__62 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__16, i8* getelementptr ([11 x i8]* @s62, i32 0, i32 0)}
@s61 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__61 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__15, i8* getelementptr ([10 x i8]* @s61, i32 0, i32 0)}
@s60 = internal constant [10 x i8] c"_no_class\00"
@str_const__60 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__15, i8* getelementptr ([10 x i8]* @s60, i32 0, i32 0)}
@s59 = internal constant [14 x i8] c"<basic class>\00"
@str_const__59 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__19, i8* getelementptr ([14 x i8]* @s59, i32 0, i32 0)}
@s58 = internal constant [48 x i8] c"There are many initial states to choose from. \0A\00"
@str_const__58 = global %struct.String_protObj_t{i32 3, i32 16, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__96, i8* getelementptr ([48 x i8]* @s58, i32 0, i32 0)}
@s57 = internal constant [30 x i8] c"Welcome to the Game of Life.\0A\00"
@str_const__57 = global %struct.String_protObj_t{i32 3, i32 12, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__97, i8* getelementptr ([30 x i8]* @s57, i32 0, i32 0)}
@s56 = internal constant [2 x i8] c"y\00"
@str_const__56 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([2 x i8]* @s56, i32 0, i32 0)}
@s55 = internal constant [50 x i8] c"Please use lowercase y or n for your answer [n]: \00"
@str_const__55 = global %struct.String_protObj_t{i32 3, i32 17, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__98, i8* getelementptr ([50 x i8]* @s55, i32 0, i32 0)}
@s54 = internal constant [49 x i8] c"Would you like to choose a background pattern? \0A\00"
@str_const__54 = global %struct.String_protObj_t{i32 3, i32 17, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__99, i8* getelementptr ([49 x i8]* @s54, i32 0, i32 0)}
@s53 = internal constant [3 x i8] c"\0A\0A\00"
@str_const__53 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__12, i8* getelementptr ([3 x i8]* @s53, i32 0, i32 0)}
@s52 = internal constant [2 x i8] c"n\00"
@str_const__52 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([2 x i8]* @s52, i32 0, i32 0)}
@s51 = internal constant [50 x i8] c"Please use lowercase y or n for your answer [y]: \00"
@str_const__51 = global %struct.String_protObj_t{i32 3, i32 17, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__98, i8* getelementptr ([50 x i8]* @s51, i32 0, i32 0)}
@s50 = internal constant [55 x i8] c"Would you like to continue with the next generation? \0A\00"
@str_const__50 = global %struct.String_protObj_t{i32 3, i32 18, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__100, i8* getelementptr ([55 x i8]* @s50, i32 0, i32 0)}
@s49 = internal constant [26 x i8] c"                         \00"
@str_const__49 = global %struct.String_protObj_t{i32 3, i32 11, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([26 x i8]* @s49, i32 0, i32 0)}
@s48 = internal constant [29 x i8] c" XXXX   X    XX    X   XXXX \00"
@str_const__48 = global %struct.String_protObj_t{i32 3, i32 12, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([29 x i8]* @s48, i32 0, i32 0)}
@s47 = internal constant [29 x i8] c" XX X  XX  X XX X  XX  X XX \00"
@str_const__47 = global %struct.String_protObj_t{i32 3, i32 12, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([29 x i8]* @s47, i32 0, i32 0)}
@s46 = internal constant [17 x i8] c" XX X  XX  X XX \00"
@str_const__46 = global %struct.String_protObj_t{i32 3, i32 9, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([17 x i8]* @s46, i32 0, i32 0)}
@s45 = internal constant [29 x i8] c"XXX    X   X  X    X   XXXX \00"
@str_const__45 = global %struct.String_protObj_t{i32 3, i32 12, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([29 x i8]* @s45, i32 0, i32 0)}
@s44 = internal constant [29 x i8] c"XXXXX   X   XXXXX   X   XXXX\00"
@str_const__44 = global %struct.String_protObj_t{i32 3, i32 12, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([29 x i8]* @s44, i32 0, i32 0)}
@s43 = internal constant [22 x i8] c"  X X   X X X X     X\00"
@str_const__43 = global %struct.String_protObj_t{i32 3, i32 10, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__6, i8* getelementptr ([22 x i8]* @s43, i32 0, i32 0)}
@s42 = internal constant [22 x i8] c"X     X X X X   X X  \00"
@str_const__42 = global %struct.String_protObj_t{i32 3, i32 10, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__6, i8* getelementptr ([22 x i8]* @s42, i32 0, i32 0)}
@s41 = internal constant [26 x i8] c"  X    X  XXXXX  X    X  \00"
@str_const__41 = global %struct.String_protObj_t{i32 3, i32 11, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([26 x i8]* @s41, i32 0, i32 0)}
@s40 = internal constant [26 x i8] c"XXXXX  X    X    X    X  \00"
@str_const__40 = global %struct.String_protObj_t{i32 3, i32 11, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([26 x i8]* @s40, i32 0, i32 0)}
@s39 = internal constant [26 x i8] c"XXXXXXXXXXXXXXXXXXXXXXXXX\00"
@str_const__39 = global %struct.String_protObj_t{i32 3, i32 11, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([26 x i8]* @s39, i32 0, i32 0)}
@s38 = internal constant [16 x i8] c"X X X X X X X X\00"
@str_const__38 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([16 x i8]* @s38, i32 0, i32 0)}
@s37 = internal constant [16 x i8] c"  X   X X X   X\00"
@str_const__37 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([16 x i8]* @s37, i32 0, i32 0)}
@s36 = internal constant [16 x i8] c"X   X X X   X  \00"
@str_const__36 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([16 x i8]* @s36, i32 0, i32 0)}
@s35 = internal constant [21 x i8] c" X  XX  X  X  X     \00"
@str_const__35 = global %struct.String_protObj_t{i32 3, i32 10, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__5, i8* getelementptr ([21 x i8]* @s35, i32 0, i32 0)}
@s34 = internal constant [21 x i8] c"X  X  X  XX  X      \00"
@str_const__34 = global %struct.String_protObj_t{i32 3, i32 10, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__5, i8* getelementptr ([21 x i8]* @s34, i32 0, i32 0)}
@s33 = internal constant [26 x i8] c"    X   X   X     X     X\00"
@str_const__33 = global %struct.String_protObj_t{i32 3, i32 11, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([26 x i8]* @s33, i32 0, i32 0)}
@s32 = internal constant [26 x i8] c"X     X     X   X   X    \00"
@str_const__32 = global %struct.String_protObj_t{i32 3, i32 11, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([26 x i8]* @s32, i32 0, i32 0)}
@s31 = internal constant [26 x i8] c"X   X X X   X   X X X   X\00"
@str_const__31 = global %struct.String_protObj_t{i32 3, i32 11, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([26 x i8]* @s31, i32 0, i32 0)}
@s30 = internal constant [26 x i8] c"X     X     X     X     X\00"
@str_const__30 = global %struct.String_protObj_t{i32 3, i32 11, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([26 x i8]* @s30, i32 0, i32 0)}
@s29 = internal constant [26 x i8] c"    X   X   X   X   X    \00"
@str_const__29 = global %struct.String_protObj_t{i32 3, i32 11, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([26 x i8]* @s29, i32 0, i32 0)}
@s28 = internal constant [21 x i8] c" XX  XXXX XXXX  XX  \00"
@str_const__28 = global %struct.String_protObj_t{i32 3, i32 10, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__5, i8* getelementptr ([21 x i8]* @s28, i32 0, i32 0)}
@s27 = internal constant [16 x i8] c"Your choice => \00"
@str_const__27 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([16 x i8]* @s27, i32 0, i32 0)}
@s26 = internal constant [13 x i8] c"	21: An 'S'\0A\00"
@str_const__26 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__18, i8* getelementptr ([13 x i8]* @s26, i32 0, i32 0)}
@s25 = internal constant [13 x i8] c"	20: An '8'\0A\00"
@str_const__25 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__18, i8* getelementptr ([13 x i8]* @s25, i32 0, i32 0)}
@s24 = internal constant [13 x i8] c"	19: An 'O'\0A\00"
@str_const__24 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__18, i8* getelementptr ([13 x i8]* @s24, i32 0, i32 0)}
@s23 = internal constant [12 x i8] c"	18: A '3'\0A\00"
@str_const__23 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__17, i8* getelementptr ([12 x i8]* @s23, i32 0, i32 0)}
@s22 = internal constant [13 x i8] c"	17: An 'E'\0A\00"
@str_const__22 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__18, i8* getelementptr ([13 x i8]* @s22, i32 0, i32 0)}
@s21 = internal constant [13 x i8] c"	16: An 'M'\0A\00"
@str_const__21 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__18, i8* getelementptr ([13 x i8]* @s21, i32 0, i32 0)}
@s20 = internal constant [12 x i8] c"	15: A 'W'\0A\00"
@str_const__20 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__17, i8* getelementptr ([12 x i8]* @s20, i32 0, i32 0)}
@s19 = internal constant [17 x i8] c"	14: A plus '+'\0A\00"
@str_const__19 = global %struct.String_protObj_t{i32 3, i32 9, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([17 x i8]* @s19, i32 0, i32 0)}
@s18 = internal constant [12 x i8] c"	13: A 'T'\0A\00"
@str_const__18 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__17, i8* getelementptr ([12 x i8]* @s18, i32 0, i32 0)}
@s17 = internal constant [18 x i8] c"	12: A full grid\0A\00"
@str_const__17 = global %struct.String_protObj_t{i32 3, i32 9, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__21, i8* getelementptr ([18 x i8]* @s17, i32 0, i32 0)}
@s16 = internal constant [32 x i8] c"	11: Numbers 9 and 10 combined\0A\00"
@str_const__16 = global %struct.String_protObj_t{i32 3, i32 12, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__101, i8* getelementptr ([32 x i8]* @s16, i32 0, i32 0)}
@s15 = internal constant [21 x i8] c"	10: An inverse 'V'\0A\00"
@str_const__15 = global %struct.String_protObj_t{i32 3, i32 10, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__5, i8* getelementptr ([21 x i8]* @s15, i32 0, i32 0)}
@s14 = internal constant [11 x i8] c"	9: A 'V'\0A\00"
@str_const__14 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__16, i8* getelementptr ([11 x i8]* @s14, i32 0, i32 0)}
@s13 = internal constant [25 x i8] c"	8: Two less than signs\0A\00"
@str_const__13 = global %struct.String_protObj_t{i32 3, i32 11, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__102, i8* getelementptr ([25 x i8]* @s13, i32 0, i32 0)}
@s12 = internal constant [28 x i8] c"	7: Two greater than signs\0A\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 11, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__103, i8* getelementptr ([28 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [22 x i8] c"	6: A less than sign\0A\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 10, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__6, i8* getelementptr ([22 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [26 x i8] c"	5: A greater than sign \0A\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 11, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([26 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [10 x i8] c"	4: An X\0A\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__15, i8* getelementptr ([10 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [48 x i8] c"	3: A slash from the upper right to lower left\0A\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 16, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__96, i8* getelementptr ([48 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [48 x i8] c"	2: A slash from the upper left to lower right\0A\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 16, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__96, i8* getelementptr ([48 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [13 x i8] c"	1: A cross\0A\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__18, i8* getelementptr ([13 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [25 x i8] c"\0APlease chose a number:\0A\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 11, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__102, i8* getelementptr ([25 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [2 x i8] c"-\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([2 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [2 x i8] c"X\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([2 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [2 x i8] c" \00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([2 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [2 x i8] c"\0A\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([2 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [15 x i8] c"/tmp/cplSBIDvm\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__20, i8* getelementptr ([15 x i8]* @s0, i32 0, i32 0)}
@int_const__103 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 27}
@int_const__102 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 24}
@int_const__101 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 31}
@int_const__100 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 54}
@int_const__99 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 48}
@int_const__98 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 49}
@int_const__97 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 29}
@int_const__96 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 47}
@int_const__95 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 424}
@int_const__94 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 423}
@int_const__93 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 421}
@int_const__92 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 419}
@int_const__91 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 418}
@int_const__90 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 417}
@int_const__89 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 414}
@int_const__88 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 413}
@int_const__87 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 412}
@int_const__86 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 391}
@int_const__85 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 390}
@int_const__84 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 389}
@int_const__83 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 388}
@int_const__82 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 373}
@int_const__81 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 372}
@int_const__80 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 371}
@int_const__79 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 370}
@int_const__78 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 312}
@int_const__77 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 311}
@int_const__76 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 310}
@int_const__75 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 309}
@int_const__74 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 308}
@int_const__73 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 307}
@int_const__72 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 306}
@int_const__71 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 305}
@int_const__70 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 304}
@int_const__69 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 303}
@int_const__68 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 302}
@int_const__67 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 301}
@int_const__66 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 300}
@int_const__65 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 299}
@int_const__64 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 298}
@int_const__63 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 297}
@int_const__62 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 296}
@int_const__61 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 295}
@int_const__60 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 294}
@int_const__59 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 293}
@int_const__58 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 292}
@int_const__57 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 291}
@int_const__56 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 290}
@int_const__55 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 289}
@int_const__54 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 288}
@int_const__53 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 271}
@int_const__52 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 266}
@int_const__51 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 253}
@int_const__50 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 252}
@int_const__49 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 249}
@int_const__48 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 239}
@int_const__47 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 238}
@int_const__46 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 237}
@int_const__45 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 236}
@int_const__44 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 235}
@int_const__43 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 234}
@int_const__42 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 233}
@int_const__41 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 232}
@int_const__40 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 226}
@int_const__39 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 216}
@int_const__38 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 206}
@int_const__37 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 196}
@int_const__36 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 186}
@int_const__35 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 175}
@int_const__34 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 167}
@int_const__33 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 159}
@int_const__32 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 151}
@int_const__31 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 144}
@int_const__30 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 137}
@int_const__29 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 133}
@int_const__28 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 132}
@int_const__27 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 129}
@int_const__26 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 116}
@int_const__25 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 56}
@int_const__24 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 52}
@int_const__23 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 19}
@int_const__22 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 18}
@int_const__21 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 17}
@int_const__20 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 14}
@int_const__19 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__18 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 12}
@int_const__17 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 11}
@int_const__16 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__15 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__14 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 8}
@int_const__13 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__12 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 28}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 25}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 7}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 21}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 20}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 16}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 5}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 15}
%struct.Board_protObj_t = type { i32, i32, %struct.Board_dispTab_t*, i32, i32, i32 }
@Board_protObj = global %struct.Board_protObj_t {i32 5, i32 6, %struct.Board_dispTab_t* @Board_dispTab, i32 0, i32 0, i32 0}
%struct.CellularAutomaton_protObj_t = type { i32, i32, %struct.CellularAutomaton_dispTab_t*, i32, i32, i32, i32 }
@CellularAutomaton_protObj = global %struct.CellularAutomaton_protObj_t {i32 6, i32 7, %struct.CellularAutomaton_dispTab_t* @CellularAutomaton_dispTab, i32 0, i32 0, i32 0, i32 0}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t*, i32, i32, i32, i32, i32 }
@Main_protObj = global %struct.Main_protObj_t {i32 7, i32 8, %struct.Main_dispTab_t* @Main_dispTab, i32 0, i32 0, i32 0, i32 0, i32 0}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__63, %struct.String_protObj_t* @str_const__64, %struct.String_protObj_t* @str_const__65, %struct.String_protObj_t* @str_const__66, %struct.String_protObj_t* @str_const__67, %struct.String_protObj_t* @str_const__68, %struct.String_protObj_t* @str_const__69, %struct.String_protObj_t* @str_const__70 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @Board_init to i8*), i8* bitcast (void (i32)* @CellularAutomaton_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.Board_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Board_dispTab = global %struct.Board_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32,i32)* @Board__size_of_board to i8*), i8* bitcast (i32 (i32,i32)* @Board__board_init to i8*)}

%struct.CellularAutomaton_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@CellularAutomaton_dispTab = global %struct.CellularAutomaton_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32,i32)* @Board__size_of_board to i8*), i8* bitcast (i32 (i32,i32)* @Board__board_init to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__init to i8*), i8* bitcast (i32 (i32)* @CellularAutomaton__print to i8*), i8* bitcast (i32 (i32)* @CellularAutomaton__num_cells to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__cell to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__north to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__south to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__east to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__west to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__northwest to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__northeast to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__southeast to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__southwest to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__neighbors to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__cell_at_next_evolution to i8*), i8* bitcast (i32 (i32)* @CellularAutomaton__evolve to i8*), i8* bitcast (i32 (i32)* @CellularAutomaton__option to i8*), i8* bitcast (i32 (i32)* @CellularAutomaton__prompt to i8*), i8* bitcast (i32 (i32)* @CellularAutomaton__prompt2 to i8*)}

%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32,i32)* @Board__size_of_board to i8*), i8* bitcast (i32 (i32,i32)* @Board__board_init to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__init to i8*), i8* bitcast (i32 (i32)* @CellularAutomaton__print to i8*), i8* bitcast (i32 (i32)* @CellularAutomaton__num_cells to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__cell to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__north to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__south to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__east to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__west to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__northwest to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__northeast to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__southeast to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__southwest to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__neighbors to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__cell_at_next_evolution to i8*), i8* bitcast (i32 (i32)* @CellularAutomaton__evolve to i8*), i8* bitcast (i32 (i32)* @CellularAutomaton__option to i8*), i8* bitcast (i32 (i32)* @CellularAutomaton__prompt to i8*), i8* bitcast (i32 (i32)* @CellularAutomaton__prompt2 to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}

