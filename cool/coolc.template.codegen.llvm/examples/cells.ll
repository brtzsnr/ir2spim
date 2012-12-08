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
define void @CellularAutomaton_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.String_protObj_t* @String_protObj to i32))
  %VR2 = add i32 %ARG, 12
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
;; -> block: linia 9
;- block -- assign -
;; -> assign: linia 10
;- block -- assign -- object -
;; -> object: linia 10
;; <- object: linia 10
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
;; <- assign: linia 10
;- block -- object -
;; -> object: linia 11
;; <- object: linia 11
;; <- block: linia 9
  ret i32 %ARG
;#######################################; <- entry


}
define i32 @CellularAutomaton__print(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
;- block -
;; -> block: linia 16
;- block -- dispatch -
;; -> dispatch: linia 17
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- dispatch -
;; -> dispatch: linia 17
;;generez codul pentru apelul metodei concat
;- block -- dispatch -- dispatch -- string_const -
;; -> string_const: linia 17
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 17
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 17
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = load i32* %VR3
;; <- object: linia 17
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = icmp eq i32* %VR5,  null
  br i1 %VR6, label %false_dispatch0, label %dispatch_not_void_CellularAutomaton_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__3 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_CellularAutomaton_0
dispatch_not_void_CellularAutomaton_0:
  %VR7 = ptrtoint i32* %VR5 to i32 
  %VR8 = add i32 %VR7, 8
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = add i32 %VR10, 12
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
  %VR14 = inttoptr i32 %VR13 to i32 (i32, i32)*
  %VR15 = call i32 (i32, i32)* %VR14(i32 %VR4, i32 %VR1)
;; <- dispatch: linia 17
;- block -- dispatch -- object -
;; -> object: linia 17
;; <- object: linia 17
  %VR16 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR16, label %false_dispatch1, label %dispatch_not_void_CellularAutomaton_1
;#######################################; <- dispatch_not_void_CellularAutomaton_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__3 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_CellularAutomaton_1
dispatch_not_void_CellularAutomaton_1:
  %VR17 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR18 = add i32 %VR17, 8
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
  %VR21 = add i32 %VR20, 16
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = load i32* %VR22
  %VR24 = inttoptr i32 %VR23 to i32 (i32, i32)*
  %VR25 = call i32 (i32, i32)* %VR24(i32 %ARG, i32 %VR15)
;; <- dispatch: linia 17
;- block -- object -
;; -> object: linia 18
;; <- object: linia 18
;; <- block: linia 16
  ret i32 %ARG
;#######################################; <- dispatch_not_void_CellularAutomaton_1


}
define i32 @CellularAutomaton__num_cells(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
;- dispatch -
;; -> dispatch: linia 23
;;generez codul pentru apelul metodei length
;- dispatch -- object -
;; -> object: linia 23
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 23
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_dispatch2, label %dispatch_not_void_CellularAutomaton_2
;#######################################; <- entry


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_CellularAutomaton_2
dispatch_not_void_CellularAutomaton_2:
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
;; <- dispatch: linia 23
  ret i32 %VR17
;#######################################; <- dispatch_not_void_CellularAutomaton_2


}
define i32 @CellularAutomaton__cell(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- dispatch -
;; -> dispatch: linia 27
;;generez codul pentru apelul metodei substr
;- dispatch -- object -
;; -> object: linia 27
;; <- object: linia 27
;- dispatch -- int_const -
;; -> int_const: linia 27
  %VR2 = add i32 1, 0
;; <- int_const: linia 27
;- dispatch -- object -
;; -> object: linia 27
  %VR3 = add i32 %ARG, 12
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
;; <- object: linia 27
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = icmp eq i32* %VR6,  null
  br i1 %VR7, label %false_dispatch3, label %dispatch_not_void_CellularAutomaton_3
;#######################################; <- entry


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__5 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_CellularAutomaton_3
dispatch_not_void_CellularAutomaton_3:
  %VR8 = ptrtoint i32* %VR6 to i32 
  %VR9 = add i32 %VR8, 8
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = add i32 %VR11, 20
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
;boxing to int
  %VR15 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR16 = add i32 %VR15, 12
  %VR17 = inttoptr i32 %VR16 to i32*
  store i32 %VR1, i32* %VR17
;boxing to int
  %VR18 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR19 = add i32 %VR18, 12
  %VR20 = inttoptr i32 %VR19 to i32*
  store i32 %VR2, i32* %VR20
  %VR21 = inttoptr i32 %VR14 to i32 (i32, i32, i32)*
  %VR22 = call i32 (i32, i32, i32)* %VR21(i32 %VR5, i32 %VR15, i32 %VR18)
;; <- dispatch: linia 27
  ret i32 %VR22
;#######################################; <- dispatch_not_void_CellularAutomaton_3


}
define i32 @CellularAutomaton__cell_left_neighbor(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 31
;;if: linia 31 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- eq -
;; -> eq: linia 31
;- cond -- eq -- object -
;; -> object: linia 31
;; <- object: linia 31
;- cond -- eq -- int_const -
;; -> int_const: linia 31
  %VR3 = add i32 0, 0
;; <- int_const: linia 31
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
  br label %eq_test_join_true_CellularAutomaton_0
;#######################################; <- entry


;#######################################; -> eq_test_join_true_CellularAutomaton_0
eq_test_join_true_CellularAutomaton_0:
  %VR10.0 = icmp eq i32 %VR4,  %VR7
  br i1 %VR10.0, label %eq_test_join_CellularAutomaton_0, label %eq_test_join_false_CellularAutomaton_0
;#######################################; <- eq_test_join_true_CellularAutomaton_0


;#######################################; -> eq_test_join_false_CellularAutomaton_0
eq_test_join_false_CellularAutomaton_0:
  %VR12 = call i32  @equality_test(i32 1, i32 0, i32 %VR4, i32 %VR7)
  %VR10.1 = icmp eq i32 %VR12,  1
  br label %eq_test_join_CellularAutomaton_0
;#######################################; <- eq_test_join_false_CellularAutomaton_0


;#######################################; -> eq_test_join_CellularAutomaton_0
eq_test_join_CellularAutomaton_0:
  %VR10 = phi i1 [ %VR10.0, %eq_test_join_true_CellularAutomaton_0 ] , [ %VR10.1, %eq_test_join_false_CellularAutomaton_0 ] 
;; <- eq: linia 31
  %VR13 = icmp eq i1 %VR10,  false
  br i1 %VR13, label %false_CellularAutomaton_0, label %false_false_CellularAutomaton_0
;#######################################; <- eq_test_join_CellularAutomaton_0


;#######################################; -> false_false_CellularAutomaton_0
false_false_CellularAutomaton_0:
;;if: linia 31 (expresia pentru then)
;- cond -- dispatch -
;; -> dispatch: linia 32
;;generez codul pentru apelul metodei cell
;- cond -- dispatch -- sub -
;; -> sub: linia 32
;- cond -- dispatch -- sub -- dispatch -
;; -> dispatch: linia 32
;;generez codul pentru apelul metodei num_cells
;- cond -- dispatch -- sub -- dispatch -- object -
;; -> object: linia 32
;; <- object: linia 32
  %VR14 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR14, label %false_dispatch4, label %dispatch_not_void_CellularAutomaton_4
;#######################################; <- false_false_CellularAutomaton_0


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_CellularAutomaton_4
dispatch_not_void_CellularAutomaton_4:
  %VR15 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR16 = add i32 %VR15, 8
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = load i32* %VR17
  %VR19 = add i32 %VR18, 36
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = load i32* %VR20
  %VR22 = inttoptr i32 %VR21 to i32 (i32)*
  %VR23 = call i32 (i32)* %VR22(i32 %ARG)
;; <- dispatch: linia 32
;- cond -- dispatch -- sub -- int_const -
;; -> int_const: linia 32
  %VR24 = add i32 1, 0
;; <- int_const: linia 32
  %VR25 = sub i32 %VR23, %VR24
;; <- sub: linia 32
;- cond -- dispatch -- object -
;; -> object: linia 32
;; <- object: linia 32
  %VR26 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR26, label %false_dispatch5, label %dispatch_not_void_CellularAutomaton_5
;#######################################; <- dispatch_not_void_CellularAutomaton_4


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_CellularAutomaton_5
dispatch_not_void_CellularAutomaton_5:
  %VR27 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR28 = add i32 %VR27, 8
  %VR29 = inttoptr i32 %VR28 to i32*
  %VR30 = load i32* %VR29
  %VR31 = add i32 %VR30, 40
  %VR32 = inttoptr i32 %VR31 to i32*
  %VR33 = load i32* %VR32
  %VR34 = inttoptr i32 %VR33 to i32 (i32, i32)*
  %VR35 = call i32 (i32, i32)* %VR34(i32 %ARG, i32 %VR25)
;; <- dispatch: linia 32
  br label %join_if_CellularAutomaton_0_true
;#######################################; <- dispatch_not_void_CellularAutomaton_5


;#######################################; -> join_if_CellularAutomaton_0_true
join_if_CellularAutomaton_0_true:
  %VR2.0 = add i32 %VR35, 0
  br label %join_if_CellularAutomaton_0
;#######################################; <- join_if_CellularAutomaton_0_true


;#######################################; -> false_CellularAutomaton_0
false_CellularAutomaton_0:
;;if: linia 31 (expresia pentru else)
;- cond -- dispatch -
;; -> dispatch: linia 34
;;generez codul pentru apelul metodei cell
;- cond -- dispatch -- sub -
;; -> sub: linia 34
;- cond -- dispatch -- sub -- object -
;; -> object: linia 34
;; <- object: linia 34
;- cond -- dispatch -- sub -- int_const -
;; -> int_const: linia 34
  %VR36 = add i32 1, 0
;; <- int_const: linia 34
  %VR37 = sub i32 %VR1, %VR36
;; <- sub: linia 34
;- cond -- dispatch -- object -
;; -> object: linia 34
;; <- object: linia 34
  %VR38 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR38, label %false_dispatch6, label %dispatch_not_void_CellularAutomaton_6
;#######################################; <- false_CellularAutomaton_0


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__7 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_CellularAutomaton_6
dispatch_not_void_CellularAutomaton_6:
  %VR39 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR40 = add i32 %VR39, 8
  %VR41 = inttoptr i32 %VR40 to i32*
  %VR42 = load i32* %VR41
  %VR43 = add i32 %VR42, 40
  %VR44 = inttoptr i32 %VR43 to i32*
  %VR45 = load i32* %VR44
  %VR46 = inttoptr i32 %VR45 to i32 (i32, i32)*
  %VR47 = call i32 (i32, i32)* %VR46(i32 %ARG, i32 %VR37)
;; <- dispatch: linia 34
  br label %join_if_CellularAutomaton_0_false
;#######################################; <- dispatch_not_void_CellularAutomaton_6


;#######################################; -> join_if_CellularAutomaton_0_false
join_if_CellularAutomaton_0_false:
  %VR2.1 = add i32 %VR47, 0
  br label %join_if_CellularAutomaton_0
;#######################################; <- join_if_CellularAutomaton_0_false


;#######################################; -> join_if_CellularAutomaton_0
join_if_CellularAutomaton_0:
  %VR2 = phi i32 [ %VR2.0, %join_if_CellularAutomaton_0_true ], [ %VR2.1, %join_if_CellularAutomaton_0_false ]
;; <- cond: linia 31
  ret i32 %VR2
;#######################################; <- join_if_CellularAutomaton_0


}
define i32 @CellularAutomaton__cell_right_neighbor(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 39
;;if: linia 39 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- eq -
;; -> eq: linia 39
;- cond -- eq -- object -
;; -> object: linia 39
;; <- object: linia 39
;- cond -- eq -- sub -
;; -> sub: linia 39
;- cond -- eq -- sub -- dispatch -
;; -> dispatch: linia 39
;;generez codul pentru apelul metodei num_cells
;- cond -- eq -- sub -- dispatch -- object -
;; -> object: linia 39
;; <- object: linia 39
  %VR3 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR3, label %false_dispatch7, label %dispatch_not_void_CellularAutomaton_7
;#######################################; <- entry


;#######################################; -> false_dispatch7
false_dispatch7:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__8 to i32))
  ret i32 0
;#######################################; <- false_dispatch7


;#######################################; -> dispatch_not_void_CellularAutomaton_7
dispatch_not_void_CellularAutomaton_7:
  %VR4 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR5 = add i32 %VR4, 8
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = load i32* %VR6
  %VR8 = add i32 %VR7, 36
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = inttoptr i32 %VR10 to i32 (i32)*
  %VR12 = call i32 (i32)* %VR11(i32 %ARG)
;; <- dispatch: linia 39
;- cond -- eq -- sub -- int_const -
;; -> int_const: linia 39
  %VR13 = add i32 1, 0
;; <- int_const: linia 39
  %VR14 = sub i32 %VR12, %VR13
;; <- sub: linia 39
;boxing to int
  %VR15 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR16 = add i32 %VR15, 12
  %VR17 = inttoptr i32 %VR16 to i32*
  store i32 %VR1, i32* %VR17
;boxing to int
  %VR18 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR19 = add i32 %VR18, 12
  %VR20 = inttoptr i32 %VR19 to i32*
  store i32 %VR14, i32* %VR20
  br label %eq_test_join_true_CellularAutomaton_1
;#######################################; <- dispatch_not_void_CellularAutomaton_7


;#######################################; -> eq_test_join_true_CellularAutomaton_1
eq_test_join_true_CellularAutomaton_1:
  %VR21.0 = icmp eq i32 %VR15,  %VR18
  br i1 %VR21.0, label %eq_test_join_CellularAutomaton_1, label %eq_test_join_false_CellularAutomaton_1
;#######################################; <- eq_test_join_true_CellularAutomaton_1


;#######################################; -> eq_test_join_false_CellularAutomaton_1
eq_test_join_false_CellularAutomaton_1:
  %VR23 = call i32  @equality_test(i32 1, i32 0, i32 %VR15, i32 %VR18)
  %VR21.1 = icmp eq i32 %VR23,  1
  br label %eq_test_join_CellularAutomaton_1
;#######################################; <- eq_test_join_false_CellularAutomaton_1


;#######################################; -> eq_test_join_CellularAutomaton_1
eq_test_join_CellularAutomaton_1:
  %VR21 = phi i1 [ %VR21.0, %eq_test_join_true_CellularAutomaton_1 ] , [ %VR21.1, %eq_test_join_false_CellularAutomaton_1 ] 
;; <- eq: linia 39
  %VR24 = icmp eq i1 %VR21,  false
  br i1 %VR24, label %false_CellularAutomaton_1, label %false_false_CellularAutomaton_1
;#######################################; <- eq_test_join_CellularAutomaton_1


;#######################################; -> false_false_CellularAutomaton_1
false_false_CellularAutomaton_1:
;;if: linia 39 (expresia pentru then)
;- cond -- dispatch -
;; -> dispatch: linia 40
;;generez codul pentru apelul metodei cell
;- cond -- dispatch -- int_const -
;; -> int_const: linia 40
  %VR25 = add i32 0, 0
;; <- int_const: linia 40
;- cond -- dispatch -- object -
;; -> object: linia 40
;; <- object: linia 40
  %VR26 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR26, label %false_dispatch8, label %dispatch_not_void_CellularAutomaton_8
;#######################################; <- false_false_CellularAutomaton_1


;#######################################; -> false_dispatch8
false_dispatch8:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__9 to i32))
  ret i32 0
;#######################################; <- false_dispatch8


;#######################################; -> dispatch_not_void_CellularAutomaton_8
dispatch_not_void_CellularAutomaton_8:
  %VR27 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR28 = add i32 %VR27, 8
  %VR29 = inttoptr i32 %VR28 to i32*
  %VR30 = load i32* %VR29
  %VR31 = add i32 %VR30, 40
  %VR32 = inttoptr i32 %VR31 to i32*
  %VR33 = load i32* %VR32
  %VR34 = inttoptr i32 %VR33 to i32 (i32, i32)*
  %VR35 = call i32 (i32, i32)* %VR34(i32 %ARG, i32 %VR25)
;; <- dispatch: linia 40
  br label %join_if_CellularAutomaton_1_true
;#######################################; <- dispatch_not_void_CellularAutomaton_8


;#######################################; -> join_if_CellularAutomaton_1_true
join_if_CellularAutomaton_1_true:
  %VR2.0 = add i32 %VR35, 0
  br label %join_if_CellularAutomaton_1
;#######################################; <- join_if_CellularAutomaton_1_true


;#######################################; -> false_CellularAutomaton_1
false_CellularAutomaton_1:
;;if: linia 39 (expresia pentru else)
;- cond -- dispatch -
;; -> dispatch: linia 42
;;generez codul pentru apelul metodei cell
;- cond -- dispatch -- plus -
;; -> plus: linia 42
;- cond -- dispatch -- plus -- object -
;; -> object: linia 42
;; <- object: linia 42
;- cond -- dispatch -- plus -- int_const -
;; -> int_const: linia 42
  %VR36 = add i32 1, 0
;; <- int_const: linia 42
  %VR37 = add i32 %VR1, %VR36
;; <- plus: linia 42
;- cond -- dispatch -- object -
;; -> object: linia 42
;; <- object: linia 42
  %VR38 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR38, label %false_dispatch9, label %dispatch_not_void_CellularAutomaton_9
;#######################################; <- false_CellularAutomaton_1


;#######################################; -> false_dispatch9
false_dispatch9:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__10 to i32))
  ret i32 0
;#######################################; <- false_dispatch9


;#######################################; -> dispatch_not_void_CellularAutomaton_9
dispatch_not_void_CellularAutomaton_9:
  %VR39 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR40 = add i32 %VR39, 8
  %VR41 = inttoptr i32 %VR40 to i32*
  %VR42 = load i32* %VR41
  %VR43 = add i32 %VR42, 40
  %VR44 = inttoptr i32 %VR43 to i32*
  %VR45 = load i32* %VR44
  %VR46 = inttoptr i32 %VR45 to i32 (i32, i32)*
  %VR47 = call i32 (i32, i32)* %VR46(i32 %ARG, i32 %VR37)
;; <- dispatch: linia 42
  br label %join_if_CellularAutomaton_1_false
;#######################################; <- dispatch_not_void_CellularAutomaton_9


;#######################################; -> join_if_CellularAutomaton_1_false
join_if_CellularAutomaton_1_false:
  %VR2.1 = add i32 %VR47, 0
  br label %join_if_CellularAutomaton_1
;#######################################; <- join_if_CellularAutomaton_1_false


;#######################################; -> join_if_CellularAutomaton_1
join_if_CellularAutomaton_1:
  %VR2 = phi i32 [ %VR2.0, %join_if_CellularAutomaton_1_true ], [ %VR2.1, %join_if_CellularAutomaton_1_false ]
;; <- cond: linia 39
  ret i32 %VR2
;#######################################; <- join_if_CellularAutomaton_1


}
define i32 @CellularAutomaton__cell_at_next_evolution(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.CellularAutomaton_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 49
;;if: linia 49 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- eq -
;; -> eq: linia 52
;- cond -- eq -- plus -
;; -> plus: linia 51
;- cond -- eq -- plus -- plus -
;; -> plus: linia 50
;- cond -- eq -- plus -- plus -- cond -
;; -> cond: linia 49
;;if: linia 49 (expresia pentru predicat)
;;%VR3 rezervat pentru rezultatul if-ului
;- cond -- eq -- plus -- plus -- cond -- eq -
;; -> eq: linia 49
;- cond -- eq -- plus -- plus -- cond -- eq -- dispatch -
;; -> dispatch: linia 49
;;generez codul pentru apelul metodei cell
;- cond -- eq -- plus -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 49
;; <- object: linia 49
;- cond -- eq -- plus -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 49
;; <- object: linia 49
  %VR4 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR4, label %false_dispatch10, label %dispatch_not_void_CellularAutomaton_10
;#######################################; <- entry


;#######################################; -> false_dispatch10
false_dispatch10:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__11 to i32))
  ret i32 0
;#######################################; <- false_dispatch10


;#######################################; -> dispatch_not_void_CellularAutomaton_10
dispatch_not_void_CellularAutomaton_10:
  %VR5 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 40
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32, i32)*
  %VR13 = call i32 (i32, i32)* %VR12(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 49
;- cond -- eq -- plus -- plus -- cond -- eq -- string_const -
;; -> string_const: linia 49
  %VR14 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 49
  br label %eq_test_join_true_CellularAutomaton_3
;#######################################; <- dispatch_not_void_CellularAutomaton_10


;#######################################; -> eq_test_join_true_CellularAutomaton_3
eq_test_join_true_CellularAutomaton_3:
  %VR15.0 = icmp eq i32 %VR13,  %VR14
  br i1 %VR15.0, label %eq_test_join_CellularAutomaton_3, label %eq_test_join_false_CellularAutomaton_3
;#######################################; <- eq_test_join_true_CellularAutomaton_3


;#######################################; -> eq_test_join_false_CellularAutomaton_3
eq_test_join_false_CellularAutomaton_3:
  %VR17 = call i32  @equality_test(i32 1, i32 0, i32 %VR13, i32 %VR14)
  %VR15.1 = icmp eq i32 %VR17,  1
  br label %eq_test_join_CellularAutomaton_3
;#######################################; <- eq_test_join_false_CellularAutomaton_3


;#######################################; -> eq_test_join_CellularAutomaton_3
eq_test_join_CellularAutomaton_3:
  %VR15 = phi i1 [ %VR15.0, %eq_test_join_true_CellularAutomaton_3 ] , [ %VR15.1, %eq_test_join_false_CellularAutomaton_3 ] 
;; <- eq: linia 49
  %VR18 = icmp eq i1 %VR15,  false
  br i1 %VR18, label %false_CellularAutomaton_3, label %false_false_CellularAutomaton_3
;#######################################; <- eq_test_join_CellularAutomaton_3


;#######################################; -> false_false_CellularAutomaton_3
false_false_CellularAutomaton_3:
;;if: linia 49 (expresia pentru then)
;- cond -- eq -- plus -- plus -- cond -- int_const -
;; -> int_const: linia 49
  %VR19 = add i32 1, 0
;; <- int_const: linia 49
  br label %join_if_CellularAutomaton_3_true
;#######################################; <- false_false_CellularAutomaton_3


;#######################################; -> join_if_CellularAutomaton_3_true
join_if_CellularAutomaton_3_true:
  %VR3.0 = add i32 %VR19, 0
  br label %join_if_CellularAutomaton_3
;#######################################; <- join_if_CellularAutomaton_3_true


;#######################################; -> false_CellularAutomaton_3
false_CellularAutomaton_3:
;;if: linia 49 (expresia pentru else)
;- cond -- eq -- plus -- plus -- cond -- int_const -
;; -> int_const: linia 49
  %VR20 = add i32 0, 0
;; <- int_const: linia 49
  br label %join_if_CellularAutomaton_3_false
;#######################################; <- false_CellularAutomaton_3


;#######################################; -> join_if_CellularAutomaton_3_false
join_if_CellularAutomaton_3_false:
  %VR3.1 = add i32 %VR20, 0
  br label %join_if_CellularAutomaton_3
;#######################################; <- join_if_CellularAutomaton_3_false


;#######################################; -> join_if_CellularAutomaton_3
join_if_CellularAutomaton_3:
  %VR3 = phi i32 [ %VR3.0, %join_if_CellularAutomaton_3_true ], [ %VR3.1, %join_if_CellularAutomaton_3_false ]
;; <- cond: linia 49
;- cond -- eq -- plus -- plus -- cond -
;; -> cond: linia 50
;;if: linia 50 (expresia pentru predicat)
;;%VR21 rezervat pentru rezultatul if-ului
;- cond -- eq -- plus -- plus -- cond -- eq -
;; -> eq: linia 50
;- cond -- eq -- plus -- plus -- cond -- eq -- dispatch -
;; -> dispatch: linia 50
;;generez codul pentru apelul metodei cell_left_neighbor
;- cond -- eq -- plus -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 50
;; <- object: linia 50
;- cond -- eq -- plus -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 50
;; <- object: linia 50
  %VR22 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR22, label %false_dispatch11, label %dispatch_not_void_CellularAutomaton_11
;#######################################; <- join_if_CellularAutomaton_3


;#######################################; -> false_dispatch11
false_dispatch11:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__12 to i32))
  ret i32 0
;#######################################; <- false_dispatch11


;#######################################; -> dispatch_not_void_CellularAutomaton_11
dispatch_not_void_CellularAutomaton_11:
  %VR23 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR24 = add i32 %VR23, 8
  %VR25 = inttoptr i32 %VR24 to i32*
  %VR26 = load i32* %VR25
  %VR27 = add i32 %VR26, 44
  %VR28 = inttoptr i32 %VR27 to i32*
  %VR29 = load i32* %VR28
  %VR30 = inttoptr i32 %VR29 to i32 (i32, i32)*
  %VR31 = call i32 (i32, i32)* %VR30(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 50
;- cond -- eq -- plus -- plus -- cond -- eq -- string_const -
;; -> string_const: linia 50
  %VR32 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 50
  br label %eq_test_join_true_CellularAutomaton_4
;#######################################; <- dispatch_not_void_CellularAutomaton_11


;#######################################; -> eq_test_join_true_CellularAutomaton_4
eq_test_join_true_CellularAutomaton_4:
  %VR33.0 = icmp eq i32 %VR31,  %VR32
  br i1 %VR33.0, label %eq_test_join_CellularAutomaton_4, label %eq_test_join_false_CellularAutomaton_4
;#######################################; <- eq_test_join_true_CellularAutomaton_4


;#######################################; -> eq_test_join_false_CellularAutomaton_4
eq_test_join_false_CellularAutomaton_4:
  %VR35 = call i32  @equality_test(i32 1, i32 0, i32 %VR31, i32 %VR32)
  %VR33.1 = icmp eq i32 %VR35,  1
  br label %eq_test_join_CellularAutomaton_4
;#######################################; <- eq_test_join_false_CellularAutomaton_4


;#######################################; -> eq_test_join_CellularAutomaton_4
eq_test_join_CellularAutomaton_4:
  %VR33 = phi i1 [ %VR33.0, %eq_test_join_true_CellularAutomaton_4 ] , [ %VR33.1, %eq_test_join_false_CellularAutomaton_4 ] 
;; <- eq: linia 50
  %VR36 = icmp eq i1 %VR33,  false
  br i1 %VR36, label %false_CellularAutomaton_4, label %false_false_CellularAutomaton_4
;#######################################; <- eq_test_join_CellularAutomaton_4


;#######################################; -> false_false_CellularAutomaton_4
false_false_CellularAutomaton_4:
;;if: linia 50 (expresia pentru then)
;- cond -- eq -- plus -- plus -- cond -- int_const -
;; -> int_const: linia 50
  %VR37 = add i32 1, 0
;; <- int_const: linia 50
  br label %join_if_CellularAutomaton_4_true
;#######################################; <- false_false_CellularAutomaton_4


;#######################################; -> join_if_CellularAutomaton_4_true
join_if_CellularAutomaton_4_true:
  %VR21.0 = add i32 %VR37, 0
  br label %join_if_CellularAutomaton_4
;#######################################; <- join_if_CellularAutomaton_4_true


;#######################################; -> false_CellularAutomaton_4
false_CellularAutomaton_4:
;;if: linia 50 (expresia pentru else)
;- cond -- eq -- plus -- plus -- cond -- int_const -
;; -> int_const: linia 50
  %VR38 = add i32 0, 0
;; <- int_const: linia 50
  br label %join_if_CellularAutomaton_4_false
;#######################################; <- false_CellularAutomaton_4


;#######################################; -> join_if_CellularAutomaton_4_false
join_if_CellularAutomaton_4_false:
  %VR21.1 = add i32 %VR38, 0
  br label %join_if_CellularAutomaton_4
;#######################################; <- join_if_CellularAutomaton_4_false


;#######################################; -> join_if_CellularAutomaton_4
join_if_CellularAutomaton_4:
  %VR21 = phi i32 [ %VR21.0, %join_if_CellularAutomaton_4_true ], [ %VR21.1, %join_if_CellularAutomaton_4_false ]
;; <- cond: linia 50
  %VR39 = add i32 %VR3, %VR21
;; <- plus: linia 50
;- cond -- eq -- plus -- cond -
;; -> cond: linia 51
;;if: linia 51 (expresia pentru predicat)
;;%VR40 rezervat pentru rezultatul if-ului
;- cond -- eq -- plus -- cond -- eq -
;; -> eq: linia 51
;- cond -- eq -- plus -- cond -- eq -- dispatch -
;; -> dispatch: linia 51
;;generez codul pentru apelul metodei cell_right_neighbor
;- cond -- eq -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 51
;; <- object: linia 51
;- cond -- eq -- plus -- cond -- eq -- dispatch -- object -
;; -> object: linia 51
;; <- object: linia 51
  %VR41 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR41, label %false_dispatch12, label %dispatch_not_void_CellularAutomaton_12
;#######################################; <- join_if_CellularAutomaton_4


;#######################################; -> false_dispatch12
false_dispatch12:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__13 to i32))
  ret i32 0
;#######################################; <- false_dispatch12


;#######################################; -> dispatch_not_void_CellularAutomaton_12
dispatch_not_void_CellularAutomaton_12:
  %VR42 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR43 = add i32 %VR42, 8
  %VR44 = inttoptr i32 %VR43 to i32*
  %VR45 = load i32* %VR44
  %VR46 = add i32 %VR45, 48
  %VR47 = inttoptr i32 %VR46 to i32*
  %VR48 = load i32* %VR47
  %VR49 = inttoptr i32 %VR48 to i32 (i32, i32)*
  %VR50 = call i32 (i32, i32)* %VR49(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 51
;- cond -- eq -- plus -- cond -- eq -- string_const -
;; -> string_const: linia 51
  %VR51 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 51
  br label %eq_test_join_true_CellularAutomaton_5
;#######################################; <- dispatch_not_void_CellularAutomaton_12


;#######################################; -> eq_test_join_true_CellularAutomaton_5
eq_test_join_true_CellularAutomaton_5:
  %VR52.0 = icmp eq i32 %VR50,  %VR51
  br i1 %VR52.0, label %eq_test_join_CellularAutomaton_5, label %eq_test_join_false_CellularAutomaton_5
;#######################################; <- eq_test_join_true_CellularAutomaton_5


;#######################################; -> eq_test_join_false_CellularAutomaton_5
eq_test_join_false_CellularAutomaton_5:
  %VR54 = call i32  @equality_test(i32 1, i32 0, i32 %VR50, i32 %VR51)
  %VR52.1 = icmp eq i32 %VR54,  1
  br label %eq_test_join_CellularAutomaton_5
;#######################################; <- eq_test_join_false_CellularAutomaton_5


;#######################################; -> eq_test_join_CellularAutomaton_5
eq_test_join_CellularAutomaton_5:
  %VR52 = phi i1 [ %VR52.0, %eq_test_join_true_CellularAutomaton_5 ] , [ %VR52.1, %eq_test_join_false_CellularAutomaton_5 ] 
;; <- eq: linia 51
  %VR55 = icmp eq i1 %VR52,  false
  br i1 %VR55, label %false_CellularAutomaton_5, label %false_false_CellularAutomaton_5
;#######################################; <- eq_test_join_CellularAutomaton_5


;#######################################; -> false_false_CellularAutomaton_5
false_false_CellularAutomaton_5:
;;if: linia 51 (expresia pentru then)
;- cond -- eq -- plus -- cond -- int_const -
;; -> int_const: linia 51
  %VR56 = add i32 1, 0
;; <- int_const: linia 51
  br label %join_if_CellularAutomaton_5_true
;#######################################; <- false_false_CellularAutomaton_5


;#######################################; -> join_if_CellularAutomaton_5_true
join_if_CellularAutomaton_5_true:
  %VR40.0 = add i32 %VR56, 0
  br label %join_if_CellularAutomaton_5
;#######################################; <- join_if_CellularAutomaton_5_true


;#######################################; -> false_CellularAutomaton_5
false_CellularAutomaton_5:
;;if: linia 51 (expresia pentru else)
;- cond -- eq -- plus -- cond -- int_const -
;; -> int_const: linia 51
  %VR57 = add i32 0, 0
;; <- int_const: linia 51
  br label %join_if_CellularAutomaton_5_false
;#######################################; <- false_CellularAutomaton_5


;#######################################; -> join_if_CellularAutomaton_5_false
join_if_CellularAutomaton_5_false:
  %VR40.1 = add i32 %VR57, 0
  br label %join_if_CellularAutomaton_5
;#######################################; <- join_if_CellularAutomaton_5_false


;#######################################; -> join_if_CellularAutomaton_5
join_if_CellularAutomaton_5:
  %VR40 = phi i32 [ %VR40.0, %join_if_CellularAutomaton_5_true ], [ %VR40.1, %join_if_CellularAutomaton_5_false ]
;; <- cond: linia 51
  %VR58 = add i32 %VR39, %VR40
;; <- plus: linia 51
;- cond -- eq -- int_const -
;; -> int_const: linia 52
  %VR59 = add i32 1, 0
;; <- int_const: linia 52
;boxing to int
  %VR60 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR61 = add i32 %VR60, 12
  %VR62 = inttoptr i32 %VR61 to i32*
  store i32 %VR58, i32* %VR62
;boxing to int
  %VR63 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR64 = add i32 %VR63, 12
  %VR65 = inttoptr i32 %VR64 to i32*
  store i32 %VR59, i32* %VR65
  br label %eq_test_join_true_CellularAutomaton_2
;#######################################; <- join_if_CellularAutomaton_5


;#######################################; -> eq_test_join_true_CellularAutomaton_2
eq_test_join_true_CellularAutomaton_2:
  %VR66.0 = icmp eq i32 %VR60,  %VR63
  br i1 %VR66.0, label %eq_test_join_CellularAutomaton_2, label %eq_test_join_false_CellularAutomaton_2
;#######################################; <- eq_test_join_true_CellularAutomaton_2


;#######################################; -> eq_test_join_false_CellularAutomaton_2
eq_test_join_false_CellularAutomaton_2:
  %VR68 = call i32  @equality_test(i32 1, i32 0, i32 %VR60, i32 %VR63)
  %VR66.1 = icmp eq i32 %VR68,  1
  br label %eq_test_join_CellularAutomaton_2
;#######################################; <- eq_test_join_false_CellularAutomaton_2


;#######################################; -> eq_test_join_CellularAutomaton_2
eq_test_join_CellularAutomaton_2:
  %VR66 = phi i1 [ %VR66.0, %eq_test_join_true_CellularAutomaton_2 ] , [ %VR66.1, %eq_test_join_false_CellularAutomaton_2 ] 
;; <- eq: linia 52
  %VR69 = icmp eq i1 %VR66,  false
  br i1 %VR69, label %false_CellularAutomaton_2, label %false_false_CellularAutomaton_2
;#######################################; <- eq_test_join_CellularAutomaton_2


;#######################################; -> false_false_CellularAutomaton_2
false_false_CellularAutomaton_2:
;;if: linia 49 (expresia pentru then)
;- cond -- string_const -
;; -> string_const: linia 54
  %VR70 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 54
  br label %join_if_CellularAutomaton_2_true
;#######################################; <- false_false_CellularAutomaton_2


;#######################################; -> join_if_CellularAutomaton_2_true
join_if_CellularAutomaton_2_true:
  %VR2.0 = add i32 %VR70, 0
  br label %join_if_CellularAutomaton_2
;#######################################; <- join_if_CellularAutomaton_2_true


;#######################################; -> false_CellularAutomaton_2
false_CellularAutomaton_2:
;;if: linia 49 (expresia pentru else)
;- cond -- string_const -
;; -> string_const: linia 56
  %VR71 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 56
  br label %join_if_CellularAutomaton_2_false
;#######################################; <- false_CellularAutomaton_2


;#######################################; -> join_if_CellularAutomaton_2_false
join_if_CellularAutomaton_2_false:
  %VR2.1 = add i32 %VR71, 0
  br label %join_if_CellularAutomaton_2
;#######################################; <- join_if_CellularAutomaton_2_false


;#######################################; -> join_if_CellularAutomaton_2
join_if_CellularAutomaton_2:
  %VR2 = phi i32 [ %VR2.0, %join_if_CellularAutomaton_2_true ], [ %VR2.1, %join_if_CellularAutomaton_2_false ]
;; <- cond: linia 49
  ret i32 %VR2
;#######################################; <- join_if_CellularAutomaton_2


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
;; -> let: linia 61
  %VR1.a = add i32 0, 0
  store i32 %VR1.a, i32* %VR1a
;- let -- let -
;; -> let: linia 62
;- let -- let -- dispatch -
;; -> dispatch: linia 62
;;generez codul pentru apelul metodei num_cells
;- let -- let -- dispatch -- object -
;; -> object: linia 62
;; <- object: linia 62
  %VR2 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch13, label %dispatch_not_void_CellularAutomaton_13
;#######################################; <- entry


;#######################################; -> false_dispatch13
false_dispatch13:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__14 to i32))
  ret i32 0
;#######################################; <- false_dispatch13


;#######################################; -> dispatch_not_void_CellularAutomaton_13
dispatch_not_void_CellularAutomaton_13:
  %VR3 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 36
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32)*
  %VR11 = call i32 (i32)* %VR10(i32 %ARG)
;; <- dispatch: linia 62
;- let -- let -- let -
;; -> let: linia 63
  %VR12.a = call i32  @Object__copy(i32 ptrtoint (%struct.String_protObj_t* @String_protObj to i32))
  store i32 %VR12.a, i32* %VR12a
;- let -- let -- let -- block -
;; -> block: linia 64
;- let -- let -- let -- block -- loop -
;; -> loop: linia 65
;; conditie
  br label %start_loop_CellularAutomaton_0
;#######################################; <- dispatch_not_void_CellularAutomaton_13


;#######################################; -> start_loop_CellularAutomaton_0
start_loop_CellularAutomaton_0:
  %VR1_tmp0 = load i32* %VR1a
;- let -- let -- let -- block -- loop -- lt -
;; -> lt: linia 65
;- let -- let -- let -- block -- loop -- lt -- object -
;; -> object: linia 65
;; <- object: linia 65
;- let -- let -- let -- block -- loop -- lt -- object -
;; -> object: linia 65
;; <- object: linia 65
  %VR13 = icmp slt i32 %VR1_tmp0,  %VR11
;; <- lt: linia 65
  %VR14 = icmp eq i1 %VR13,  false
  br i1 %VR14, label %sfarsit_loop_CellularAutomaton_0, label %label_next_loop_CellularAutomaton_0
;#######################################; <- start_loop_CellularAutomaton_0


;#######################################; -> label_next_loop_CellularAutomaton_0
label_next_loop_CellularAutomaton_0:
;; corp loop
;- let -- let -- let -- block -- loop -- block -
;; -> block: linia 66
;- let -- let -- let -- block -- loop -- block -- assign -
;; -> assign: linia 67
;- let -- let -- let -- block -- loop -- block -- assign -- dispatch -
;; -> dispatch: linia 67
;;generez codul pentru apelul metodei concat
;- let -- let -- let -- block -- loop -- block -- assign -- dispatch -- dispatch -
;; -> dispatch: linia 67
;;generez codul pentru apelul metodei cell_at_next_evolution
;- let -- let -- let -- block -- loop -- block -- assign -- dispatch -- dispatch -- object -
;; -> object: linia 67
;; <- object: linia 67
;- let -- let -- let -- block -- loop -- block -- assign -- dispatch -- dispatch -- object -
;; -> object: linia 67
;; <- object: linia 67
  %VR15 = icmp eq %struct.CellularAutomaton_protObj_t* %VR0,  null
  br i1 %VR15, label %false_dispatch14, label %dispatch_not_void_CellularAutomaton_14
;#######################################; <- label_next_loop_CellularAutomaton_0


;#######################################; -> false_dispatch14
false_dispatch14:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__15 to i32))
  ret i32 0
;#######################################; <- false_dispatch14


;#######################################; -> dispatch_not_void_CellularAutomaton_14
dispatch_not_void_CellularAutomaton_14:
  %VR12_tmp3 = load i32* %VR12a
  %VR1_tmp1 = load i32* %VR1a
  %VR16 = ptrtoint %struct.CellularAutomaton_protObj_t* %VR0 to i32 
  %VR17 = add i32 %VR16, 8
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
  %VR20 = add i32 %VR19, 52
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
  %VR23 = inttoptr i32 %VR22 to i32 (i32, i32)*
  %VR24 = call i32 (i32, i32)* %VR23(i32 %ARG, i32 %VR1_tmp1)
;; <- dispatch: linia 67
;- let -- let -- let -- block -- loop -- block -- assign -- dispatch -- object -
;; -> object: linia 67
;; <- object: linia 67
  %VR25 = inttoptr i32 %VR12_tmp3 to i32*
  %VR26 = icmp eq i32* %VR25,  null
  br i1 %VR26, label %false_dispatch15, label %dispatch_not_void_CellularAutomaton_15
;#######################################; <- dispatch_not_void_CellularAutomaton_14


;#######################################; -> false_dispatch15
false_dispatch15:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__15 to i32))
  ret i32 0
;#######################################; <- false_dispatch15


;#######################################; -> dispatch_not_void_CellularAutomaton_15
dispatch_not_void_CellularAutomaton_15:
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
;; <- dispatch: linia 67
  store i32 %VR35, i32* %VR12a
;; <- assign: linia 67
;- let -- let -- let -- block -- loop -- block -- assign -
;; -> assign: linia 68
;- let -- let -- let -- block -- loop -- block -- assign -- plus -
;; -> plus: linia 68
;- let -- let -- let -- block -- loop -- block -- assign -- plus -- object -
;; -> object: linia 68
;; <- object: linia 68
;- let -- let -- let -- block -- loop -- block -- assign -- plus -- int_const -
;; -> int_const: linia 68
  %VR36 = add i32 1, 0
;; <- int_const: linia 68
  %VR37 = add i32 %VR1_tmp2, %VR36
;; <- plus: linia 68
  store i32 %VR37, i32* %VR1a
;; <- assign: linia 68
;; <- block: linia 66
  br label %start_loop_CellularAutomaton_0
;#######################################; <- dispatch_not_void_CellularAutomaton_15


;#######################################; -> sfarsit_loop_CellularAutomaton_0
sfarsit_loop_CellularAutomaton_0:
  %VR12_tmp5 = load i32* %VR12a
;; <- loop: linia 65
;- let -- let -- let -- block -- assign -
;; -> assign: linia 71
;- let -- let -- let -- block -- assign -- object -
;; -> object: linia 71
;; <- object: linia 71
  %VR38 = add i32 %ARG, 12
  %VR39 = inttoptr i32 %VR38 to i32*
  store i32 %VR12_tmp5, i32* %VR39
;; <- assign: linia 71
;- let -- let -- let -- block -- object -
;; -> object: linia 72
;; <- object: linia 72
;; <- block: linia 64
;; <- let: linia 63
;; <- let: linia 62
;; <- let: linia 61
  ret i32 %ARG
;#######################################; <- sfarsit_loop_CellularAutomaton_0


}
define void @Main_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Object_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @Main__main(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR30a = alloca i32 
  store i32 0, i32* %VR30a
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- block -
;; -> block: linia 82
;- block -- assign -
;; -> assign: linia 83
;- block -- assign -- dispatch -
;; -> dispatch: linia 83
;;generez codul pentru apelul metodei init
;- block -- assign -- dispatch -- string_const -
;; -> string_const: linia 83
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__4 to i32 
;; <- string_const: linia 83
;- block -- assign -- dispatch -- new -
;; -> new: linia 83
  %VR2 = call i32  @Object__copy(i32 ptrtoint (%struct.CellularAutomaton_protObj_t* @CellularAutomaton_protObj to i32))
  call void @CellularAutomaton_init(i32 %VR2)
;; <- new: linia 83
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = icmp eq i32* %VR3,  null
  br i1 %VR4, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__16 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR5 = ptrtoint i32* %VR3 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 28
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32, i32)*
  %VR13 = call i32 (i32, i32)* %VR12(i32 %VR2, i32 %VR1)
;; <- dispatch: linia 83
  %VR14 = add i32 %ARG, 12
  %VR15 = inttoptr i32 %VR14 to i32*
  store i32 %VR13, i32* %VR15
;; <- assign: linia 83
;- block -- dispatch -
;; -> dispatch: linia 84
;;generez codul pentru apelul metodei print
;- block -- dispatch -- object -
;; -> object: linia 84
  %VR16 = add i32 %ARG, 12
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = load i32* %VR17
;; <- object: linia 84
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = icmp eq i32* %VR19,  null
  br i1 %VR20, label %false_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- dispatch_not_void_Main_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__17 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Main_1
dispatch_not_void_Main_1:
  %VR21 = ptrtoint i32* %VR19 to i32 
  %VR22 = add i32 %VR21, 8
  %VR23 = inttoptr i32 %VR22 to i32*
  %VR24 = load i32* %VR23
  %VR25 = add i32 %VR24, 32
  %VR26 = inttoptr i32 %VR25 to i32*
  %VR27 = load i32* %VR26
  %VR28 = inttoptr i32 %VR27 to i32 (i32)*
  %VR29 = call i32 (i32)* %VR28(i32 %VR18)
;; <- dispatch: linia 84
;- block -- let -
;; -> let: linia 85
;- block -- let -- int_const -
;; -> int_const: linia 85
  %VR30.a = add i32 20, 0
  store i32 %VR30.a, i32* %VR30a
;; <- int_const: linia 85
;- block -- let -- loop -
;; -> loop: linia 86
;; conditie
  br label %start_loop_Main_0
;#######################################; <- dispatch_not_void_Main_1


;#######################################; -> start_loop_Main_0
start_loop_Main_0:
  %VR30_tmp0 = load i32* %VR30a
;- block -- let -- loop -- lt -
;; -> lt: linia 86
;- block -- let -- loop -- lt -- int_const -
;; -> int_const: linia 86
  %VR31 = add i32 0, 0
;; <- int_const: linia 86
;- block -- let -- loop -- lt -- object -
;; -> object: linia 86
;; <- object: linia 86
  %VR32 = icmp slt i32 %VR31,  %VR30_tmp0
;; <- lt: linia 86
  %VR33 = icmp eq i1 %VR32,  false
  br i1 %VR33, label %sfarsit_loop_Main_0, label %label_next_loop_Main_0
;#######################################; <- start_loop_Main_0


;#######################################; -> label_next_loop_Main_0
label_next_loop_Main_0:
;; corp loop
;- block -- let -- loop -- block -
;; -> block: linia 87
;- block -- let -- loop -- block -- dispatch -
;; -> dispatch: linia 88
;;generez codul pentru apelul metodei evolve
;- block -- let -- loop -- block -- dispatch -- object -
;; -> object: linia 88
  %VR34 = add i32 %ARG, 12
  %VR35 = inttoptr i32 %VR34 to i32*
  %VR36 = load i32* %VR35
;; <- object: linia 88
  %VR37 = inttoptr i32 %VR36 to i32*
  %VR38 = icmp eq i32* %VR37,  null
  br i1 %VR38, label %false_dispatch2, label %dispatch_not_void_Main_2
;#######################################; <- label_next_loop_Main_0


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__18 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Main_2
dispatch_not_void_Main_2:
  %VR39 = ptrtoint i32* %VR37 to i32 
  %VR40 = add i32 %VR39, 8
  %VR41 = inttoptr i32 %VR40 to i32*
  %VR42 = load i32* %VR41
  %VR43 = add i32 %VR42, 56
  %VR44 = inttoptr i32 %VR43 to i32*
  %VR45 = load i32* %VR44
  %VR46 = inttoptr i32 %VR45 to i32 (i32)*
  %VR47 = call i32 (i32)* %VR46(i32 %VR36)
;; <- dispatch: linia 88
;- block -- let -- loop -- block -- dispatch -
;; -> dispatch: linia 89
;;generez codul pentru apelul metodei print
;- block -- let -- loop -- block -- dispatch -- object -
;; -> object: linia 89
  %VR48 = add i32 %ARG, 12
  %VR49 = inttoptr i32 %VR48 to i32*
  %VR50 = load i32* %VR49
;; <- object: linia 89
  %VR51 = inttoptr i32 %VR50 to i32*
  %VR52 = icmp eq i32* %VR51,  null
  br i1 %VR52, label %false_dispatch3, label %dispatch_not_void_Main_3
;#######################################; <- dispatch_not_void_Main_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__19 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Main_3
dispatch_not_void_Main_3:
  %VR30_tmp1 = load i32* %VR30a
  %VR53 = ptrtoint i32* %VR51 to i32 
  %VR54 = add i32 %VR53, 8
  %VR55 = inttoptr i32 %VR54 to i32*
  %VR56 = load i32* %VR55
  %VR57 = add i32 %VR56, 32
  %VR58 = inttoptr i32 %VR57 to i32*
  %VR59 = load i32* %VR58
  %VR60 = inttoptr i32 %VR59 to i32 (i32)*
  %VR61 = call i32 (i32)* %VR60(i32 %VR50)
;; <- dispatch: linia 89
;- block -- let -- loop -- block -- assign -
;; -> assign: linia 90
;- block -- let -- loop -- block -- assign -- sub -
;; -> sub: linia 90
;- block -- let -- loop -- block -- assign -- sub -- object -
;; -> object: linia 90
;; <- object: linia 90
;- block -- let -- loop -- block -- assign -- sub -- int_const -
;; -> int_const: linia 90
  %VR62 = add i32 1, 0
;; <- int_const: linia 90
  %VR63 = sub i32 %VR30_tmp1, %VR62
;; <- sub: linia 90
  store i32 %VR63, i32* %VR30a
;; <- assign: linia 90
;; <- block: linia 87
  br label %start_loop_Main_0
;#######################################; <- dispatch_not_void_Main_3


;#######################################; -> sfarsit_loop_Main_0
sfarsit_loop_Main_0:
;; <- loop: linia 86
;; <- let: linia 85
;- block -- object -
;; -> object: linia 94
;; <- object: linia 94
;; <- block: linia 82
  ret i32 %ARG
;#######################################; <- sfarsit_loop_Main_0


}
@s16 = internal constant [1 x i8] c"\00"
@str_const__16 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([1 x i8]* @s16, i32 0, i32 0)}
@s15 = internal constant [5 x i8] c"Main\00"
@str_const__15 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__20, i8* getelementptr ([5 x i8]* @s15, i32 0, i32 0)}
@s14 = internal constant [18 x i8] c"CellularAutomaton\00"
@str_const__14 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([18 x i8]* @s14, i32 0, i32 0)}
@s13 = internal constant [3 x i8] c"IO\00"
@str_const__13 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__21, i8* getelementptr ([3 x i8]* @s13, i32 0, i32 0)}
@s12 = internal constant [7 x i8] c"String\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__22, i8* getelementptr ([7 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [5 x i8] c"Bool\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__20, i8* getelementptr ([5 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [4 x i8] c"Int\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__23, i8* getelementptr ([4 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [7 x i8] c"Object\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__22, i8* getelementptr ([7 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__24, i8* getelementptr ([11 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__25, i8* getelementptr ([10 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [10 x i8] c"_no_class\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__25, i8* getelementptr ([10 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [14 x i8] c"<basic class>\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__26, i8* getelementptr ([14 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [20 x i8] c"         X         \00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__27, i8* getelementptr ([20 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [2 x i8] c".\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [2 x i8] c"X\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [2 x i8] c"\0A\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [18 x i8] c"advanced/cells.cl\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([18 x i8]* @s0, i32 0, i32 0)}
@int_const__27 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 19}
@int_const__26 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__25 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__24 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__23 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__22 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__21 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__20 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__19 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 89}
@int_const__18 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 88}
@int_const__17 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 84}
@int_const__16 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 83}
@int_const__15 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 67}
@int_const__14 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 62}
@int_const__13 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 51}
@int_const__12 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 50}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 49}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 42}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 40}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 39}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 34}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 32}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 27}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 23}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 17}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 20}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
%struct.CellularAutomaton_protObj_t = type { i32, i32, %struct.CellularAutomaton_dispTab_t*, i32 }
@CellularAutomaton_protObj = global %struct.CellularAutomaton_protObj_t {i32 5, i32 4, %struct.CellularAutomaton_dispTab_t* @CellularAutomaton_dispTab, i32 0}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t*, i32 }
@Main_protObj = global %struct.Main_protObj_t {i32 6, i32 4, %struct.Main_dispTab_t* @Main_dispTab, i32 0}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__9, %struct.String_protObj_t* @str_const__10, %struct.String_protObj_t* @str_const__11, %struct.String_protObj_t* @str_const__12, %struct.String_protObj_t* @str_const__13, %struct.String_protObj_t* @str_const__14, %struct.String_protObj_t* @str_const__15 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @CellularAutomaton_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.CellularAutomaton_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@CellularAutomaton_dispTab = global %struct.CellularAutomaton_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__init to i8*), i8* bitcast (i32 (i32)* @CellularAutomaton__print to i8*), i8* bitcast (i32 (i32)* @CellularAutomaton__num_cells to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__cell to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__cell_left_neighbor to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__cell_right_neighbor to i8*), i8* bitcast (i32 (i32,i32)* @CellularAutomaton__cell_at_next_evolution to i8*), i8* bitcast (i32 (i32)* @CellularAutomaton__evolve to i8*)}

%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}


