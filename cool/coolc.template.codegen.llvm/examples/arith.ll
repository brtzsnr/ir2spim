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
;- int_const -
;; -> int_const: linia 9
  %VR1 = add i32 0, 0
;; <- int_const: linia 9
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
  ret void
;#######################################; <- entry


}
define i32 @A__value(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.A_protObj_t*
;- object -
;; -> object: linia 11
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 11
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @A__set_var(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.A_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- block -
;; -> block: linia 14
;- block -- assign -
;; -> assign: linia 15
;- block -- assign -- object -
;; -> object: linia 15
;; <- object: linia 15
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
;; <- assign: linia 15
;- block -- object -
;; -> object: linia 16
;; <- object: linia 16
;; <- block: linia 14
  ret i32 %ARG
;#######################################; <- entry


}
define i32 @A__method1(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.A_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- object -
;; -> object: linia 21
;; <- object: linia 21
  ret i32 %ARG
;#######################################; <- entry


}
define i32 @A__method2(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR3a = alloca i32 
  store i32 0, i32* %VR3a
  %VR0 = inttoptr i32 %ARG to %struct.A_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- let -
;; -> let: linia 25
  %VR3.a = add i32 0, 0
  store i32 %VR3.a, i32* %VR3a
;- let -- block -
;; -> block: linia 26
;- let -- block -- assign -
;; -> assign: linia 27
;- let -- block -- assign -- plus -
;; -> plus: linia 27
;- let -- block -- assign -- plus -- object -
;; -> object: linia 27
;; <- object: linia 27
;- let -- block -- assign -- plus -- object -
;; -> object: linia 27
;; <- object: linia 27
  %VR4 = add i32 %VR1, %VR2
;; <- plus: linia 27
  store i32 %VR4, i32* %VR3a
;; <- assign: linia 27
;- let -- block -- dispatch -
;; -> dispatch: linia 28
;;generez codul pentru apelul metodei set_var
;- let -- block -- dispatch -- object -
;; -> object: linia 28
;; <- object: linia 28
;- let -- block -- dispatch -- new -
;; -> new: linia 28
  %VR5 = call i32  @Object__copy(i32 ptrtoint (%struct.B_protObj_t* @B_protObj to i32))
  call void @B_init(i32 %VR5)
;; <- new: linia 28
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = icmp eq i32* %VR6,  null
  br i1 %VR7, label %false_dispatch0, label %dispatch_not_void_A_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__11 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_A_0
dispatch_not_void_A_0:
  %VR8 = ptrtoint i32* %VR6 to i32 
  %VR9 = add i32 %VR8, 8
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = add i32 %VR11, 16
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
  %VR15 = inttoptr i32 %VR14 to i32 (i32, i32)*
  %VR16 = call i32 (i32, i32)* %VR15(i32 %VR5, i32 %VR4)
;; <- dispatch: linia 28
;; <- block: linia 26
;; <- let: linia 25
  ret i32 %VR16
;#######################################; <- dispatch_not_void_A_0


}
define i32 @A__method3(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR2a = alloca i32 
  store i32 0, i32* %VR2a
  %VR0 = inttoptr i32 %ARG to %struct.A_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- let -
;; -> let: linia 34
  %VR2.a = add i32 0, 0
  store i32 %VR2.a, i32* %VR2a
;- let -- block -
;; -> block: linia 35
;- let -- block -- assign -
;; -> assign: linia 36
;- let -- block -- assign -- neg -
;; -> neg: linia 36
;- let -- block -- assign -- neg -- object -
;; -> object: linia 36
;; <- object: linia 36
  %VR3 = xor i32 1, %VR1
;; <- neg: linia 36
  store i32 %VR3, i32* %VR2a
;; <- assign: linia 36
;- let -- block -- dispatch -
;; -> dispatch: linia 37
;;generez codul pentru apelul metodei set_var
;- let -- block -- dispatch -- object -
;; -> object: linia 37
;; <- object: linia 37
;- let -- block -- dispatch -- new -
;; -> new: linia 37
  %VR4 = call i32  @Object__copy(i32 ptrtoint (%struct.C_protObj_t* @C_protObj to i32))
  call void @C_init(i32 %VR4)
;; <- new: linia 37
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = icmp eq i32* %VR5,  null
  br i1 %VR6, label %false_dispatch1, label %dispatch_not_void_A_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__12 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_A_1
dispatch_not_void_A_1:
  %VR7 = ptrtoint i32* %VR5 to i32 
  %VR8 = add i32 %VR7, 8
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = add i32 %VR10, 16
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
  %VR14 = inttoptr i32 %VR13 to i32 (i32, i32)*
  %VR15 = call i32 (i32, i32)* %VR14(i32 %VR4, i32 %VR3)
;; <- dispatch: linia 37
;; <- block: linia 35
;; <- let: linia 34
  ret i32 %VR15
;#######################################; <- dispatch_not_void_A_1


}
define i32 @A__method4(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR20a = alloca i32 
  store i32 0, i32* %VR20a
  %VR6a = alloca i32 
  store i32 0, i32* %VR6a
  %VR0 = inttoptr i32 %ARG to %struct.A_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- cond -
;; -> cond: linia 43
;;if: linia 43 (expresia pentru predicat)
;;%VR3 rezervat pentru rezultatul if-ului
;- cond -- lt -
;; -> lt: linia 43
;- cond -- lt -- object -
;; -> object: linia 43
;; <- object: linia 43
;- cond -- lt -- object -
;; -> object: linia 43
;; <- object: linia 43
  %VR4 = icmp slt i32 %VR2,  %VR1
;; <- lt: linia 43
  %VR5 = icmp eq i1 %VR4,  false
  br i1 %VR5, label %false_A_0, label %false_false_A_0
;#######################################; <- entry


;#######################################; -> false_false_A_0
false_false_A_0:
;;if: linia 43 (expresia pentru then)
;- cond -- let -
;; -> let: linia 44
  %VR6.a = add i32 0, 0
  store i32 %VR6.a, i32* %VR6a
;- cond -- let -- block -
;; -> block: linia 45
;- cond -- let -- block -- assign -
;; -> assign: linia 46
;- cond -- let -- block -- assign -- sub -
;; -> sub: linia 46
;- cond -- let -- block -- assign -- sub -- object -
;; -> object: linia 46
;; <- object: linia 46
;- cond -- let -- block -- assign -- sub -- object -
;; -> object: linia 46
;; <- object: linia 46
  %VR7 = sub i32 %VR1, %VR2
;; <- sub: linia 46
  store i32 %VR7, i32* %VR6a
;; <- assign: linia 46
;- cond -- let -- block -- dispatch -
;; -> dispatch: linia 47
;;generez codul pentru apelul metodei set_var
;- cond -- let -- block -- dispatch -- object -
;; -> object: linia 47
;; <- object: linia 47
;- cond -- let -- block -- dispatch -- new -
;; -> new: linia 47
  %VR8 = call i32  @Object__copy(i32 ptrtoint (%struct.D_protObj_t* @D_protObj to i32))
  call void @D_init(i32 %VR8)
;; <- new: linia 47
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = icmp eq i32* %VR9,  null
  br i1 %VR10, label %false_dispatch2, label %dispatch_not_void_A_2
;#######################################; <- false_false_A_0


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__13 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_A_2
dispatch_not_void_A_2:
  %VR11 = ptrtoint i32* %VR9 to i32 
  %VR12 = add i32 %VR11, 8
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
  %VR15 = add i32 %VR14, 16
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
  %VR18 = inttoptr i32 %VR17 to i32 (i32, i32)*
  %VR19 = call i32 (i32, i32)* %VR18(i32 %VR8, i32 %VR7)
;; <- dispatch: linia 47
;; <- block: linia 45
;; <- let: linia 44
  br label %join_if_A_0_true
;#######################################; <- dispatch_not_void_A_2


;#######################################; -> join_if_A_0_true
join_if_A_0_true:
  %VR3.0 = add i32 %VR19, 0
  br label %join_if_A_0
;#######################################; <- join_if_A_0_true


;#######################################; -> false_A_0
false_A_0:
;;if: linia 43 (expresia pentru else)
;- cond -- let -
;; -> let: linia 51
  %VR20.a = add i32 0, 0
  store i32 %VR20.a, i32* %VR20a
;- cond -- let -- block -
;; -> block: linia 52
;- cond -- let -- block -- assign -
;; -> assign: linia 53
;- cond -- let -- block -- assign -- sub -
;; -> sub: linia 53
;- cond -- let -- block -- assign -- sub -- object -
;; -> object: linia 53
;; <- object: linia 53
;- cond -- let -- block -- assign -- sub -- object -
;; -> object: linia 53
;; <- object: linia 53
  %VR21 = sub i32 %VR2, %VR1
;; <- sub: linia 53
  store i32 %VR21, i32* %VR20a
;; <- assign: linia 53
;- cond -- let -- block -- dispatch -
;; -> dispatch: linia 54
;;generez codul pentru apelul metodei set_var
;- cond -- let -- block -- dispatch -- object -
;; -> object: linia 54
;; <- object: linia 54
;- cond -- let -- block -- dispatch -- new -
;; -> new: linia 54
  %VR22 = call i32  @Object__copy(i32 ptrtoint (%struct.D_protObj_t* @D_protObj to i32))
  call void @D_init(i32 %VR22)
;; <- new: linia 54
  %VR23 = inttoptr i32 %VR22 to i32*
  %VR24 = icmp eq i32* %VR23,  null
  br i1 %VR24, label %false_dispatch3, label %dispatch_not_void_A_3
;#######################################; <- false_A_0


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__14 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_A_3
dispatch_not_void_A_3:
  %VR25 = ptrtoint i32* %VR23 to i32 
  %VR26 = add i32 %VR25, 8
  %VR27 = inttoptr i32 %VR26 to i32*
  %VR28 = load i32* %VR27
  %VR29 = add i32 %VR28, 16
  %VR30 = inttoptr i32 %VR29 to i32*
  %VR31 = load i32* %VR30
  %VR32 = inttoptr i32 %VR31 to i32 (i32, i32)*
  %VR33 = call i32 (i32, i32)* %VR32(i32 %VR22, i32 %VR21)
;; <- dispatch: linia 54
;; <- block: linia 52
;; <- let: linia 51
  br label %join_if_A_0_false
;#######################################; <- dispatch_not_void_A_3


;#######################################; -> join_if_A_0_false
join_if_A_0_false:
  %VR3.1 = add i32 %VR33, 0
  br label %join_if_A_0
;#######################################; <- join_if_A_0_false


;#######################################; -> join_if_A_0
join_if_A_0:
  %VR3 = phi i32  [ %VR3.0 , %join_if_A_0_true ] , [ %VR3.1 , %join_if_A_0_false ] 
;; <- cond: linia 43
  ret i32 %VR3
;#######################################; <- join_if_A_0


}
define i32 @A__method5(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR2a = alloca i32 
  store i32 0, i32* %VR2a
  %VR3a = alloca i32 
  store i32 0, i32* %VR3a
  %VR0 = inttoptr i32 %ARG to %struct.A_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- let -
;; -> let: linia 61
;- let -- int_const -
;; -> int_const: linia 61
  %VR2.a = add i32 1, 0
  store i32 %VR2.a, i32* %VR2a
;; <- int_const: linia 61
;- let -- block -
;; -> block: linia 62
;- let -- block -- let -
;; -> let: linia 63
;- let -- block -- let -- int_const -
;; -> int_const: linia 63
  %VR3.a = add i32 1, 0
  store i32 %VR3.a, i32* %VR3a
;; <- int_const: linia 63
;- let -- block -- let -- loop -
;; -> loop: linia 64
;; conditie
  br label %start_loop_A_0
;#######################################; <- entry


;#######################################; -> start_loop_A_0
start_loop_A_0:
  %VR3_tmp0 = load i32* %VR3a
;- let -- block -- let -- loop -- leq -
;; -> leq: linia 64
;- let -- block -- let -- loop -- leq -- object -
;; -> object: linia 64
;; <- object: linia 64
;- let -- block -- let -- loop -- leq -- object -
;; -> object: linia 64
;; <- object: linia 64
  %VR4 = icmp sle i32 %VR3_tmp0,  %VR1
;; <- leq: linia 64
  %VR5 = icmp eq i1 %VR4,  false
  br i1 %VR5, label %sfarsit_loop_A_0, label %label_next_loop_A_0
;#######################################; <- start_loop_A_0


;#######################################; -> label_next_loop_A_0
label_next_loop_A_0:
  %VR2_tmp2 = load i32* %VR2a
  %VR3_tmp1 = load i32* %VR3a
;; corp loop
;- let -- block -- let -- loop -- block -
;; -> block: linia 65
;- let -- block -- let -- loop -- block -- assign -
;; -> assign: linia 66
;- let -- block -- let -- loop -- block -- assign -- mul -
;; -> mul: linia 66
;- let -- block -- let -- loop -- block -- assign -- mul -- object -
;; -> object: linia 66
;; <- object: linia 66
;- let -- block -- let -- loop -- block -- assign -- mul -- object -
;; -> object: linia 66
;; <- object: linia 66
  %VR6 = mul i32 %VR2_tmp2, %VR3_tmp1
;; <- mul: linia 66
  store i32 %VR6, i32* %VR2a
;; <- assign: linia 66
;- let -- block -- let -- loop -- block -- assign -
;; -> assign: linia 67
;- let -- block -- let -- loop -- block -- assign -- plus -
;; -> plus: linia 67
;- let -- block -- let -- loop -- block -- assign -- plus -- object -
;; -> object: linia 67
;; <- object: linia 67
;- let -- block -- let -- loop -- block -- assign -- plus -- int_const -
;; -> int_const: linia 67
  %VR7 = add i32 1, 0
;; <- int_const: linia 67
  %VR8 = add i32 %VR3_tmp1, %VR7
;; <- plus: linia 67
  store i32 %VR8, i32* %VR3a
;; <- assign: linia 67
;; <- block: linia 65
  br label %start_loop_A_0
;#######################################; <- label_next_loop_A_0


;#######################################; -> sfarsit_loop_A_0
sfarsit_loop_A_0:
;; <- loop: linia 64
;; <- let: linia 63
;- let -- block -- dispatch -
;; -> dispatch: linia 71
;;generez codul pentru apelul metodei set_var
;- let -- block -- dispatch -- object -
;; -> object: linia 71
;; <- object: linia 71
;- let -- block -- dispatch -- new -
;; -> new: linia 71
  %VR9 = call i32  @Object__copy(i32 ptrtoint (%struct.E_protObj_t* @E_protObj to i32))
  call void @E_init(i32 %VR9)
;; <- new: linia 71
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = icmp eq i32* %VR10,  null
  br i1 %VR11, label %false_dispatch4, label %dispatch_not_void_A_4
;#######################################; <- sfarsit_loop_A_0


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__15 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_A_4
dispatch_not_void_A_4:
  %VR2_tmp3 = load i32* %VR2a
  %VR12 = ptrtoint i32* %VR10 to i32 
  %VR13 = add i32 %VR12, 8
  %VR14 = inttoptr i32 %VR13 to i32*
  %VR15 = load i32* %VR14
  %VR16 = add i32 %VR15, 16
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = load i32* %VR17
  %VR19 = inttoptr i32 %VR18 to i32 (i32, i32)*
  %VR20 = call i32 (i32, i32)* %VR19(i32 %VR9, i32 %VR2_tmp3)
;; <- dispatch: linia 71
;; <- block: linia 62
;; <- let: linia 61
  ret i32 %VR20
;#######################################; <- dispatch_not_void_A_4


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
define i32 @B__method5(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR2a = alloca i32 
  store i32 0, i32* %VR2a
  %VR0 = inttoptr i32 %ARG to %struct.B_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- let -
;; -> let: linia 81
  %VR2.a = add i32 0, 0
  store i32 %VR2.a, i32* %VR2a
;- let -- block -
;; -> block: linia 82
;- let -- block -- assign -
;; -> assign: linia 83
;- let -- block -- assign -- mul -
;; -> mul: linia 83
;- let -- block -- assign -- mul -- object -
;; -> object: linia 83
;; <- object: linia 83
;- let -- block -- assign -- mul -- object -
;; -> object: linia 83
;; <- object: linia 83
  %VR3 = mul i32 %VR1, %VR1
;; <- mul: linia 83
  store i32 %VR3, i32* %VR2a
;; <- assign: linia 83
;- let -- block -- dispatch -
;; -> dispatch: linia 84
;;generez codul pentru apelul metodei set_var
;- let -- block -- dispatch -- object -
;; -> object: linia 84
;; <- object: linia 84
;- let -- block -- dispatch -- new -
;; -> new: linia 84
  %VR4 = call i32  @Object__copy(i32 ptrtoint (%struct.E_protObj_t* @E_protObj to i32))
  call void @E_init(i32 %VR4)
;; <- new: linia 84
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = icmp eq i32* %VR5,  null
  br i1 %VR6, label %false_dispatch0, label %dispatch_not_void_B_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__16 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_B_0
dispatch_not_void_B_0:
  %VR7 = ptrtoint i32* %VR5 to i32 
  %VR8 = add i32 %VR7, 8
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = add i32 %VR10, 16
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
  %VR14 = inttoptr i32 %VR13 to i32 (i32, i32)*
  %VR15 = call i32 (i32, i32)* %VR14(i32 %VR4, i32 %VR3)
;; <- dispatch: linia 84
;; <- block: linia 82
;; <- let: linia 81
  ret i32 %VR15
;#######################################; <- dispatch_not_void_B_0


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
define i32 @C__method6(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR2a = alloca i32 
  store i32 0, i32* %VR2a
  %VR0 = inttoptr i32 %ARG to %struct.C_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- let -
;; -> let: linia 94
  %VR2.a = add i32 0, 0
  store i32 %VR2.a, i32* %VR2a
;- let -- block -
;; -> block: linia 95
;- let -- block -- assign -
;; -> assign: linia 96
;- let -- block -- assign -- neg -
;; -> neg: linia 96
;- let -- block -- assign -- neg -- object -
;; -> object: linia 96
;; <- object: linia 96
  %VR3 = xor i32 1, %VR1
;; <- neg: linia 96
  store i32 %VR3, i32* %VR2a
;; <- assign: linia 96
;- let -- block -- dispatch -
;; -> dispatch: linia 97
;;generez codul pentru apelul metodei set_var
;- let -- block -- dispatch -- object -
;; -> object: linia 97
;; <- object: linia 97
;- let -- block -- dispatch -- new -
;; -> new: linia 97
  %VR4 = call i32  @Object__copy(i32 ptrtoint (%struct.A_protObj_t* @A_protObj to i32))
  call void @A_init(i32 %VR4)
;; <- new: linia 97
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = icmp eq i32* %VR5,  null
  br i1 %VR6, label %false_dispatch0, label %dispatch_not_void_C_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__17 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_C_0
dispatch_not_void_C_0:
  %VR7 = ptrtoint i32* %VR5 to i32 
  %VR8 = add i32 %VR7, 8
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = add i32 %VR10, 16
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
  %VR14 = inttoptr i32 %VR13 to i32 (i32, i32)*
  %VR15 = call i32 (i32, i32)* %VR14(i32 %VR4, i32 %VR3)
;; <- dispatch: linia 97
;; <- block: linia 95
;; <- let: linia 94
  ret i32 %VR15
;#######################################; <- dispatch_not_void_C_0


}
define i32 @C__method5(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR2a = alloca i32 
  store i32 0, i32* %VR2a
  %VR0 = inttoptr i32 %ARG to %struct.C_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- let -
;; -> let: linia 103
  %VR2.a = add i32 0, 0
  store i32 %VR2.a, i32* %VR2a
;- let -- block -
;; -> block: linia 104
;- let -- block -- assign -
;; -> assign: linia 105
;- let -- block -- assign -- mul -
;; -> mul: linia 105
;- let -- block -- assign -- mul -- mul -
;; -> mul: linia 105
;- let -- block -- assign -- mul -- mul -- object -
;; -> object: linia 105
;; <- object: linia 105
;- let -- block -- assign -- mul -- mul -- object -
;; -> object: linia 105
;; <- object: linia 105
  %VR3 = mul i32 %VR1, %VR1
;; <- mul: linia 105
;- let -- block -- assign -- mul -- object -
;; -> object: linia 105
;; <- object: linia 105
  %VR4 = mul i32 %VR3, %VR1
;; <- mul: linia 105
  store i32 %VR4, i32* %VR2a
;; <- assign: linia 105
;- let -- block -- dispatch -
;; -> dispatch: linia 106
;;generez codul pentru apelul metodei set_var
;- let -- block -- dispatch -- object -
;; -> object: linia 106
;; <- object: linia 106
;- let -- block -- dispatch -- new -
;; -> new: linia 106
  %VR5 = call i32  @Object__copy(i32 ptrtoint (%struct.E_protObj_t* @E_protObj to i32))
  call void @E_init(i32 %VR5)
;; <- new: linia 106
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = icmp eq i32* %VR6,  null
  br i1 %VR7, label %false_dispatch1, label %dispatch_not_void_C_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__18 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_C_1
dispatch_not_void_C_1:
  %VR8 = ptrtoint i32* %VR6 to i32 
  %VR9 = add i32 %VR8, 8
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = add i32 %VR11, 16
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
  %VR15 = inttoptr i32 %VR14 to i32 (i32, i32)*
  %VR16 = call i32 (i32, i32)* %VR15(i32 %VR5, i32 %VR4)
;; <- dispatch: linia 106
;; <- block: linia 104
;; <- let: linia 103
  ret i32 %VR16
;#######################################; <- dispatch_not_void_C_1


}
define void @D_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @B_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @D__method7(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.D_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- let -
;; -> let: linia 116
;- let -- object -
;; -> object: linia 116
;; <- object: linia 116
;- let -- cond -
;; -> cond: linia 117
;;if: linia 117 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- let -- cond -- lt -
;; -> lt: linia 117
;- let -- cond -- lt -- object -
;; -> object: linia 117
;; <- object: linia 117
;- let -- cond -- lt -- int_const -
;; -> int_const: linia 117
  %VR3 = add i32 0, 0
;; <- int_const: linia 117
  %VR4 = icmp slt i32 %VR1,  %VR3
;; <- lt: linia 117
  %VR5 = icmp eq i1 %VR4,  false
  br i1 %VR5, label %false_D_0, label %false_false_D_0
;#######################################; <- entry


;#######################################; -> false_false_D_0
false_false_D_0:
;;if: linia 117 (expresia pentru then)
;- let -- cond -- dispatch -
;; -> dispatch: linia 117
;;generez codul pentru apelul metodei method7
;- let -- cond -- dispatch -- neg -
;; -> neg: linia 117
;- let -- cond -- dispatch -- neg -- object -
;; -> object: linia 117
;; <- object: linia 117
  %VR6 = xor i32 1, %VR1
;; <- neg: linia 117
;- let -- cond -- dispatch -- object -
;; -> object: linia 117
;; <- object: linia 117
  %VR7 = icmp eq %struct.D_protObj_t* %VR0,  null
  br i1 %VR7, label %false_dispatch0, label %dispatch_not_void_D_0
;#######################################; <- false_false_D_0


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__19 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_D_0
dispatch_not_void_D_0:
  %VR8 = ptrtoint %struct.D_protObj_t* %VR0 to i32 
  %VR9 = add i32 %VR8, 8
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = add i32 %VR11, 40
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
  %VR15 = inttoptr i32 %VR14 to i32 (i32, i32)*
  %VR16 = call i32 (i32, i32)* %VR15(i32 %ARG, i32 %VR6)
;; <- dispatch: linia 117
  br label %join_if_D_0_true
;#######################################; <- dispatch_not_void_D_0


;#######################################; -> join_if_D_0_true
join_if_D_0_true:
  %VR2.0 = add i32 %VR16, 0
  br label %join_if_D_0
;#######################################; <- join_if_D_0_true


;#######################################; -> false_D_0
false_D_0:
;;if: linia 117 (expresia pentru else)
;- let -- cond -- cond -
;; -> cond: linia 118
;;if: linia 118 (expresia pentru predicat)
;;%VR17 rezervat pentru rezultatul if-ului
;- let -- cond -- cond -- eq -
;; -> eq: linia 118
;- let -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 118
  %VR18 = add i32 0, 0
;; <- int_const: linia 118
;- let -- cond -- cond -- eq -- object -
;; -> object: linia 118
;; <- object: linia 118
;boxing to int
  %VR19 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR20 = add i32 %VR19, 12
  %VR21 = inttoptr i32 %VR20 to i32*
  store i32 %VR18, i32* %VR21
;boxing to int
  %VR22 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR23 = add i32 %VR22, 12
  %VR24 = inttoptr i32 %VR23 to i32*
  store i32 %VR1, i32* %VR24
  br label %eq_test_join_true_D_0
;#######################################; <- false_D_0


;#######################################; -> eq_test_join_true_D_0
eq_test_join_true_D_0:
  %VR25.0 = icmp eq i32 %VR19,  %VR22
  br i1 %VR25.0, label %eq_test_join_D_0, label %eq_test_join_false_D_0
;#######################################; <- eq_test_join_true_D_0


;#######################################; -> eq_test_join_false_D_0
eq_test_join_false_D_0:
  %VR27 = call i32  @equality_test(i32 1, i32 0, i32 %VR19, i32 %VR22)
  %VR25.1 = icmp eq i32 %VR27,  1
  br label %eq_test_join_D_0
;#######################################; <- eq_test_join_false_D_0


;#######################################; -> eq_test_join_D_0
eq_test_join_D_0:
  %VR25 = phi i1 [ %VR25.0, %eq_test_join_true_D_0 ] , [ %VR25.1, %eq_test_join_false_D_0 ] 
;; <- eq: linia 118
  %VR28 = icmp eq i1 %VR25,  false
  br i1 %VR28, label %false_D_1, label %false_false_D_1
;#######################################; <- eq_test_join_D_0


;#######################################; -> false_false_D_1
false_false_D_1:
;;if: linia 118 (expresia pentru then)
;- let -- cond -- cond -- bool_const -
;; -> bool_const: linia 118
  %VR29 = add i32 1, 0
;; <- bool_const: linia 118
  br label %join_if_D_1_true
;#######################################; <- false_false_D_1


;#######################################; -> join_if_D_1_true
join_if_D_1_true:
  %VR17.0 = add i32 %VR29, 0
  br label %join_if_D_1
;#######################################; <- join_if_D_1_true


;#######################################; -> false_D_1
false_D_1:
;;if: linia 118 (expresia pentru else)
;- let -- cond -- cond -- cond -
;; -> cond: linia 119
;;if: linia 119 (expresia pentru predicat)
;;%VR30 rezervat pentru rezultatul if-ului
;- let -- cond -- cond -- cond -- eq -
;; -> eq: linia 119
;- let -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 119
  %VR31 = add i32 1, 0
;; <- int_const: linia 119
;- let -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 119
;; <- object: linia 119
;boxing to int
  %VR32 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR33 = add i32 %VR32, 12
  %VR34 = inttoptr i32 %VR33 to i32*
  store i32 %VR31, i32* %VR34
;boxing to int
  %VR35 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR36 = add i32 %VR35, 12
  %VR37 = inttoptr i32 %VR36 to i32*
  store i32 %VR1, i32* %VR37
  br label %eq_test_join_true_D_1
;#######################################; <- false_D_1


;#######################################; -> eq_test_join_true_D_1
eq_test_join_true_D_1:
  %VR38.0 = icmp eq i32 %VR32,  %VR35
  br i1 %VR38.0, label %eq_test_join_D_1, label %eq_test_join_false_D_1
;#######################################; <- eq_test_join_true_D_1


;#######################################; -> eq_test_join_false_D_1
eq_test_join_false_D_1:
  %VR40 = call i32  @equality_test(i32 1, i32 0, i32 %VR32, i32 %VR35)
  %VR38.1 = icmp eq i32 %VR40,  1
  br label %eq_test_join_D_1
;#######################################; <- eq_test_join_false_D_1


;#######################################; -> eq_test_join_D_1
eq_test_join_D_1:
  %VR38 = phi i1 [ %VR38.0, %eq_test_join_true_D_1 ] , [ %VR38.1, %eq_test_join_false_D_1 ] 
;; <- eq: linia 119
  %VR41 = icmp eq i1 %VR38,  false
  br i1 %VR41, label %false_D_2, label %false_false_D_2
;#######################################; <- eq_test_join_D_1


;#######################################; -> false_false_D_2
false_false_D_2:
;;if: linia 119 (expresia pentru then)
;- let -- cond -- cond -- cond -- bool_const -
;; -> bool_const: linia 119
  %VR42 = add i32 0, 0
;; <- bool_const: linia 119
  br label %join_if_D_2_true
;#######################################; <- false_false_D_2


;#######################################; -> join_if_D_2_true
join_if_D_2_true:
  %VR30.0 = add i32 %VR42, 0
  br label %join_if_D_2
;#######################################; <- join_if_D_2_true


;#######################################; -> false_D_2
false_D_2:
;;if: linia 119 (expresia pentru else)
;- let -- cond -- cond -- cond -- cond -
;; -> cond: linia 120
;;if: linia 120 (expresia pentru predicat)
;;%VR43 rezervat pentru rezultatul if-ului
;- let -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 120
;- let -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 120
  %VR44 = add i32 2, 0
;; <- int_const: linia 120
;- let -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 120
;; <- object: linia 120
;boxing to int
  %VR45 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR46 = add i32 %VR45, 12
  %VR47 = inttoptr i32 %VR46 to i32*
  store i32 %VR44, i32* %VR47
;boxing to int
  %VR48 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR49 = add i32 %VR48, 12
  %VR50 = inttoptr i32 %VR49 to i32*
  store i32 %VR1, i32* %VR50
  br label %eq_test_join_true_D_2
;#######################################; <- false_D_2


;#######################################; -> eq_test_join_true_D_2
eq_test_join_true_D_2:
  %VR51.0 = icmp eq i32 %VR45,  %VR48
  br i1 %VR51.0, label %eq_test_join_D_2, label %eq_test_join_false_D_2
;#######################################; <- eq_test_join_true_D_2


;#######################################; -> eq_test_join_false_D_2
eq_test_join_false_D_2:
  %VR53 = call i32  @equality_test(i32 1, i32 0, i32 %VR45, i32 %VR48)
  %VR51.1 = icmp eq i32 %VR53,  1
  br label %eq_test_join_D_2
;#######################################; <- eq_test_join_false_D_2


;#######################################; -> eq_test_join_D_2
eq_test_join_D_2:
  %VR51 = phi i1 [ %VR51.0, %eq_test_join_true_D_2 ] , [ %VR51.1, %eq_test_join_false_D_2 ] 
;; <- eq: linia 120
  %VR54 = icmp eq i1 %VR51,  false
  br i1 %VR54, label %false_D_3, label %false_false_D_3
;#######################################; <- eq_test_join_D_2


;#######################################; -> false_false_D_3
false_false_D_3:
;;if: linia 120 (expresia pentru then)
;- let -- cond -- cond -- cond -- cond -- bool_const -
;; -> bool_const: linia 120
  %VR55 = add i32 0, 0
;; <- bool_const: linia 120
  br label %join_if_D_3_true
;#######################################; <- false_false_D_3


;#######################################; -> join_if_D_3_true
join_if_D_3_true:
  %VR43.0 = add i32 %VR55, 0
  br label %join_if_D_3
;#######################################; <- join_if_D_3_true


;#######################################; -> false_D_3
false_D_3:
;;if: linia 120 (expresia pentru else)
;- let -- cond -- cond -- cond -- cond -- dispatch -
;; -> dispatch: linia 121
;;generez codul pentru apelul metodei method7
;- let -- cond -- cond -- cond -- cond -- dispatch -- sub -
;; -> sub: linia 121
;- let -- cond -- cond -- cond -- cond -- dispatch -- sub -- object -
;; -> object: linia 121
;; <- object: linia 121
;- let -- cond -- cond -- cond -- cond -- dispatch -- sub -- int_const -
;; -> int_const: linia 121
  %VR56 = add i32 3, 0
;; <- int_const: linia 121
  %VR57 = sub i32 %VR1, %VR56
;; <- sub: linia 121
;- let -- cond -- cond -- cond -- cond -- dispatch -- object -
;; -> object: linia 121
;; <- object: linia 121
  %VR58 = icmp eq %struct.D_protObj_t* %VR0,  null
  br i1 %VR58, label %false_dispatch1, label %dispatch_not_void_D_1
;#######################################; <- false_D_3


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__20 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_D_1
dispatch_not_void_D_1:
  %VR59 = ptrtoint %struct.D_protObj_t* %VR0 to i32 
  %VR60 = add i32 %VR59, 8
  %VR61 = inttoptr i32 %VR60 to i32*
  %VR62 = load i32* %VR61
  %VR63 = add i32 %VR62, 40
  %VR64 = inttoptr i32 %VR63 to i32*
  %VR65 = load i32* %VR64
  %VR66 = inttoptr i32 %VR65 to i32 (i32, i32)*
  %VR67 = call i32 (i32, i32)* %VR66(i32 %ARG, i32 %VR57)
;; <- dispatch: linia 121
  br label %join_if_D_3_false
;#######################################; <- dispatch_not_void_D_1


;#######################################; -> join_if_D_3_false
join_if_D_3_false:
  %VR43.1 = add i32 %VR67, 0
  br label %join_if_D_3
;#######################################; <- join_if_D_3_false


;#######################################; -> join_if_D_3
join_if_D_3:
  %VR43 = phi i32 [ %VR43.0, %join_if_D_3_true ], [ %VR43.1, %join_if_D_3_false ]
;; <- cond: linia 120
  br label %join_if_D_2_false
;#######################################; <- join_if_D_3


;#######################################; -> join_if_D_2_false
join_if_D_2_false:
  %VR30.1 = add i32 %VR43, 0
  br label %join_if_D_2
;#######################################; <- join_if_D_2_false


;#######################################; -> join_if_D_2
join_if_D_2:
  %VR30 = phi i32 [ %VR30.0, %join_if_D_2_true ], [ %VR30.1, %join_if_D_2_false ]
;; <- cond: linia 119
  br label %join_if_D_1_false
;#######################################; <- join_if_D_2


;#######################################; -> join_if_D_1_false
join_if_D_1_false:
  %VR17.1 = add i32 %VR30, 0
  br label %join_if_D_1
;#######################################; <- join_if_D_1_false


;#######################################; -> join_if_D_1
join_if_D_1:
  %VR17 = phi i32 [ %VR17.0, %join_if_D_1_true ], [ %VR17.1, %join_if_D_1_false ]
;; <- cond: linia 118
  br label %join_if_D_0_false
;#######################################; <- join_if_D_1


;#######################################; -> join_if_D_0_false
join_if_D_0_false:
  %VR2.1 = add i32 %VR17, 0
  br label %join_if_D_0
;#######################################; <- join_if_D_0_false


;#######################################; -> join_if_D_0
join_if_D_0:
  %VR2 = phi i32 [ %VR2.0, %join_if_D_0_true ], [ %VR2.1, %join_if_D_0_false ]
;; <- cond: linia 117
;; <- let: linia 116
  ret i32 %VR2
;#######################################; <- join_if_D_0


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
define i32 @E__method6(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR2a = alloca i32 
  store i32 0, i32* %VR2a
  %VR0 = inttoptr i32 %ARG to %struct.E_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- let -
;; -> let: linia 131
  %VR2.a = add i32 0, 0
  store i32 %VR2.a, i32* %VR2a
;- let -- block -
;; -> block: linia 132
;- let -- block -- assign -
;; -> assign: linia 133
;- let -- block -- assign -- divide -
;; -> divide: linia 133
;- let -- block -- assign -- divide -- object -
;; -> object: linia 133
;; <- object: linia 133
;- let -- block -- assign -- divide -- int_const -
;; -> int_const: linia 133
  %VR3 = add i32 8, 0
;; <- int_const: linia 133
  %VR4 = sdiv i32 %VR1, %VR3
;; <- divide: linia 133
  store i32 %VR4, i32* %VR2a
;; <- assign: linia 133
;- let -- block -- dispatch -
;; -> dispatch: linia 134
;;generez codul pentru apelul metodei set_var
;- let -- block -- dispatch -- object -
;; -> object: linia 134
;; <- object: linia 134
;- let -- block -- dispatch -- new -
;; -> new: linia 134
  %VR5 = call i32  @Object__copy(i32 ptrtoint (%struct.A_protObj_t* @A_protObj to i32))
  call void @A_init(i32 %VR5)
;; <- new: linia 134
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = icmp eq i32* %VR6,  null
  br i1 %VR7, label %false_dispatch0, label %dispatch_not_void_E_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__21 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_E_0
dispatch_not_void_E_0:
  %VR8 = ptrtoint i32* %VR6 to i32 
  %VR9 = add i32 %VR8, 8
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = add i32 %VR11, 16
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
  %VR15 = inttoptr i32 %VR14 to i32 (i32, i32)*
  %VR16 = call i32 (i32, i32)* %VR15(i32 %VR5, i32 %VR4)
;; <- dispatch: linia 134
;; <- block: linia 132
;; <- let: linia 131
  ret i32 %VR16
;#######################################; <- dispatch_not_void_E_0


}
define void @A2I_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Object_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @A2I__c2i(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.A2I_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 158
;;if: linia 158 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- eq -
;; -> eq: linia 158
;- cond -- eq -- object -
;; -> object: linia 158
;; <- object: linia 158
;- cond -- eq -- string_const -
;; -> string_const: linia 158
  %VR3 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 158
  br label %eq_test_join_true_A2I_0
;#######################################; <- entry


;#######################################; -> eq_test_join_true_A2I_0
eq_test_join_true_A2I_0:
  %VR4.0 = icmp eq i32 %VR1,  %VR3
  br i1 %VR4.0, label %eq_test_join_A2I_0, label %eq_test_join_false_A2I_0
;#######################################; <- eq_test_join_true_A2I_0


;#######################################; -> eq_test_join_false_A2I_0
eq_test_join_false_A2I_0:
  %VR6 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR3)
  %VR4.1 = icmp eq i32 %VR6,  1
  br label %eq_test_join_A2I_0
;#######################################; <- eq_test_join_false_A2I_0


;#######################################; -> eq_test_join_A2I_0
eq_test_join_A2I_0:
  %VR4 = phi i1 [ %VR4.0, %eq_test_join_true_A2I_0 ] , [ %VR4.1, %eq_test_join_false_A2I_0 ] 
;; <- eq: linia 158
  %VR7 = icmp eq i1 %VR4,  false
  br i1 %VR7, label %false_A2I_0, label %false_false_A2I_0
;#######################################; <- eq_test_join_A2I_0


;#######################################; -> false_false_A2I_0
false_false_A2I_0:
;;if: linia 158 (expresia pentru then)
;- cond -- int_const -
;; -> int_const: linia 158
  %VR8 = add i32 0, 0
;; <- int_const: linia 158
  br label %join_if_A2I_0_true
;#######################################; <- false_false_A2I_0


;#######################################; -> join_if_A2I_0_true
join_if_A2I_0_true:
  %VR2.0 = add i32 %VR8, 0
  br label %join_if_A2I_0
;#######################################; <- join_if_A2I_0_true


;#######################################; -> false_A2I_0
false_A2I_0:
;;if: linia 158 (expresia pentru else)
;- cond -- cond -
;; -> cond: linia 159
;;if: linia 159 (expresia pentru predicat)
;;%VR9 rezervat pentru rezultatul if-ului
;- cond -- cond -- eq -
;; -> eq: linia 159
;- cond -- cond -- eq -- object -
;; -> object: linia 159
;; <- object: linia 159
;- cond -- cond -- eq -- string_const -
;; -> string_const: linia 159
  %VR10 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 159
  br label %eq_test_join_true_A2I_1
;#######################################; <- false_A2I_0


;#######################################; -> eq_test_join_true_A2I_1
eq_test_join_true_A2I_1:
  %VR11.0 = icmp eq i32 %VR1,  %VR10
  br i1 %VR11.0, label %eq_test_join_A2I_1, label %eq_test_join_false_A2I_1
;#######################################; <- eq_test_join_true_A2I_1


;#######################################; -> eq_test_join_false_A2I_1
eq_test_join_false_A2I_1:
  %VR13 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR10)
  %VR11.1 = icmp eq i32 %VR13,  1
  br label %eq_test_join_A2I_1
;#######################################; <- eq_test_join_false_A2I_1


;#######################################; -> eq_test_join_A2I_1
eq_test_join_A2I_1:
  %VR11 = phi i1 [ %VR11.0, %eq_test_join_true_A2I_1 ] , [ %VR11.1, %eq_test_join_false_A2I_1 ] 
;; <- eq: linia 159
  %VR14 = icmp eq i1 %VR11,  false
  br i1 %VR14, label %false_A2I_1, label %false_false_A2I_1
;#######################################; <- eq_test_join_A2I_1


;#######################################; -> false_false_A2I_1
false_false_A2I_1:
;;if: linia 159 (expresia pentru then)
;- cond -- cond -- int_const -
;; -> int_const: linia 159
  %VR15 = add i32 1, 0
;; <- int_const: linia 159
  br label %join_if_A2I_1_true
;#######################################; <- false_false_A2I_1


;#######################################; -> join_if_A2I_1_true
join_if_A2I_1_true:
  %VR9.0 = add i32 %VR15, 0
  br label %join_if_A2I_1
;#######################################; <- join_if_A2I_1_true


;#######################################; -> false_A2I_1
false_A2I_1:
;;if: linia 159 (expresia pentru else)
;- cond -- cond -- cond -
;; -> cond: linia 160
;;if: linia 160 (expresia pentru predicat)
;;%VR16 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- eq -
;; -> eq: linia 160
;- cond -- cond -- cond -- eq -- object -
;; -> object: linia 160
;; <- object: linia 160
;- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 160
  %VR17 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 160
  br label %eq_test_join_true_A2I_2
;#######################################; <- false_A2I_1


;#######################################; -> eq_test_join_true_A2I_2
eq_test_join_true_A2I_2:
  %VR18.0 = icmp eq i32 %VR1,  %VR17
  br i1 %VR18.0, label %eq_test_join_A2I_2, label %eq_test_join_false_A2I_2
;#######################################; <- eq_test_join_true_A2I_2


;#######################################; -> eq_test_join_false_A2I_2
eq_test_join_false_A2I_2:
  %VR20 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR17)
  %VR18.1 = icmp eq i32 %VR20,  1
  br label %eq_test_join_A2I_2
;#######################################; <- eq_test_join_false_A2I_2


;#######################################; -> eq_test_join_A2I_2
eq_test_join_A2I_2:
  %VR18 = phi i1 [ %VR18.0, %eq_test_join_true_A2I_2 ] , [ %VR18.1, %eq_test_join_false_A2I_2 ] 
;; <- eq: linia 160
  %VR21 = icmp eq i1 %VR18,  false
  br i1 %VR21, label %false_A2I_2, label %false_false_A2I_2
;#######################################; <- eq_test_join_A2I_2


;#######################################; -> false_false_A2I_2
false_false_A2I_2:
;;if: linia 160 (expresia pentru then)
;- cond -- cond -- cond -- int_const -
;; -> int_const: linia 160
  %VR22 = add i32 2, 0
;; <- int_const: linia 160
  br label %join_if_A2I_2_true
;#######################################; <- false_false_A2I_2


;#######################################; -> join_if_A2I_2_true
join_if_A2I_2_true:
  %VR16.0 = add i32 %VR22, 0
  br label %join_if_A2I_2
;#######################################; <- join_if_A2I_2_true


;#######################################; -> false_A2I_2
false_A2I_2:
;;if: linia 160 (expresia pentru else)
;- cond -- cond -- cond -- cond -
;; -> cond: linia 161
;;if: linia 161 (expresia pentru predicat)
;;%VR23 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 161
;- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 161
;; <- object: linia 161
;- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 161
  %VR24 = ptrtoint %struct.String_protObj_t* @str_const__4 to i32 
;; <- string_const: linia 161
  br label %eq_test_join_true_A2I_3
;#######################################; <- false_A2I_2


;#######################################; -> eq_test_join_true_A2I_3
eq_test_join_true_A2I_3:
  %VR25.0 = icmp eq i32 %VR1,  %VR24
  br i1 %VR25.0, label %eq_test_join_A2I_3, label %eq_test_join_false_A2I_3
;#######################################; <- eq_test_join_true_A2I_3


;#######################################; -> eq_test_join_false_A2I_3
eq_test_join_false_A2I_3:
  %VR27 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR24)
  %VR25.1 = icmp eq i32 %VR27,  1
  br label %eq_test_join_A2I_3
;#######################################; <- eq_test_join_false_A2I_3


;#######################################; -> eq_test_join_A2I_3
eq_test_join_A2I_3:
  %VR25 = phi i1 [ %VR25.0, %eq_test_join_true_A2I_3 ] , [ %VR25.1, %eq_test_join_false_A2I_3 ] 
;; <- eq: linia 161
  %VR28 = icmp eq i1 %VR25,  false
  br i1 %VR28, label %false_A2I_3, label %false_false_A2I_3
;#######################################; <- eq_test_join_A2I_3


;#######################################; -> false_false_A2I_3
false_false_A2I_3:
;;if: linia 161 (expresia pentru then)
;- cond -- cond -- cond -- cond -- int_const -
;; -> int_const: linia 161
  %VR29 = add i32 3, 0
;; <- int_const: linia 161
  br label %join_if_A2I_3_true
;#######################################; <- false_false_A2I_3


;#######################################; -> join_if_A2I_3_true
join_if_A2I_3_true:
  %VR23.0 = add i32 %VR29, 0
  br label %join_if_A2I_3
;#######################################; <- join_if_A2I_3_true


;#######################################; -> false_A2I_3
false_A2I_3:
;;if: linia 161 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 162
;;if: linia 162 (expresia pentru predicat)
;;%VR30 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 162
;- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 162
;; <- object: linia 162
;- cond -- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 162
  %VR31 = ptrtoint %struct.String_protObj_t* @str_const__5 to i32 
;; <- string_const: linia 162
  br label %eq_test_join_true_A2I_4
;#######################################; <- false_A2I_3


;#######################################; -> eq_test_join_true_A2I_4
eq_test_join_true_A2I_4:
  %VR32.0 = icmp eq i32 %VR1,  %VR31
  br i1 %VR32.0, label %eq_test_join_A2I_4, label %eq_test_join_false_A2I_4
;#######################################; <- eq_test_join_true_A2I_4


;#######################################; -> eq_test_join_false_A2I_4
eq_test_join_false_A2I_4:
  %VR34 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR31)
  %VR32.1 = icmp eq i32 %VR34,  1
  br label %eq_test_join_A2I_4
;#######################################; <- eq_test_join_false_A2I_4


;#######################################; -> eq_test_join_A2I_4
eq_test_join_A2I_4:
  %VR32 = phi i1 [ %VR32.0, %eq_test_join_true_A2I_4 ] , [ %VR32.1, %eq_test_join_false_A2I_4 ] 
;; <- eq: linia 162
  %VR35 = icmp eq i1 %VR32,  false
  br i1 %VR35, label %false_A2I_4, label %false_false_A2I_4
;#######################################; <- eq_test_join_A2I_4


;#######################################; -> false_false_A2I_4
false_false_A2I_4:
;;if: linia 162 (expresia pentru then)
;- cond -- cond -- cond -- cond -- cond -- int_const -
;; -> int_const: linia 162
  %VR36 = add i32 4, 0
;; <- int_const: linia 162
  br label %join_if_A2I_4_true
;#######################################; <- false_false_A2I_4


;#######################################; -> join_if_A2I_4_true
join_if_A2I_4_true:
  %VR30.0 = add i32 %VR36, 0
  br label %join_if_A2I_4
;#######################################; <- join_if_A2I_4_true


;#######################################; -> false_A2I_4
false_A2I_4:
;;if: linia 162 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 163
;;if: linia 163 (expresia pentru predicat)
;;%VR37 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 163
;- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 163
;; <- object: linia 163
;- cond -- cond -- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 163
  %VR38 = ptrtoint %struct.String_protObj_t* @str_const__6 to i32 
;; <- string_const: linia 163
  br label %eq_test_join_true_A2I_5
;#######################################; <- false_A2I_4


;#######################################; -> eq_test_join_true_A2I_5
eq_test_join_true_A2I_5:
  %VR39.0 = icmp eq i32 %VR1,  %VR38
  br i1 %VR39.0, label %eq_test_join_A2I_5, label %eq_test_join_false_A2I_5
;#######################################; <- eq_test_join_true_A2I_5


;#######################################; -> eq_test_join_false_A2I_5
eq_test_join_false_A2I_5:
  %VR41 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR38)
  %VR39.1 = icmp eq i32 %VR41,  1
  br label %eq_test_join_A2I_5
;#######################################; <- eq_test_join_false_A2I_5


;#######################################; -> eq_test_join_A2I_5
eq_test_join_A2I_5:
  %VR39 = phi i1 [ %VR39.0, %eq_test_join_true_A2I_5 ] , [ %VR39.1, %eq_test_join_false_A2I_5 ] 
;; <- eq: linia 163
  %VR42 = icmp eq i1 %VR39,  false
  br i1 %VR42, label %false_A2I_5, label %false_false_A2I_5
;#######################################; <- eq_test_join_A2I_5


;#######################################; -> false_false_A2I_5
false_false_A2I_5:
;;if: linia 163 (expresia pentru then)
;- cond -- cond -- cond -- cond -- cond -- cond -- int_const -
;; -> int_const: linia 163
  %VR43 = add i32 5, 0
;; <- int_const: linia 163
  br label %join_if_A2I_5_true
;#######################################; <- false_false_A2I_5


;#######################################; -> join_if_A2I_5_true
join_if_A2I_5_true:
  %VR37.0 = add i32 %VR43, 0
  br label %join_if_A2I_5
;#######################################; <- join_if_A2I_5_true


;#######################################; -> false_A2I_5
false_A2I_5:
;;if: linia 163 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 164
;;if: linia 164 (expresia pentru predicat)
;;%VR44 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 164
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 164
;; <- object: linia 164
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 164
  %VR45 = ptrtoint %struct.String_protObj_t* @str_const__7 to i32 
;; <- string_const: linia 164
  br label %eq_test_join_true_A2I_6
;#######################################; <- false_A2I_5


;#######################################; -> eq_test_join_true_A2I_6
eq_test_join_true_A2I_6:
  %VR46.0 = icmp eq i32 %VR1,  %VR45
  br i1 %VR46.0, label %eq_test_join_A2I_6, label %eq_test_join_false_A2I_6
;#######################################; <- eq_test_join_true_A2I_6


;#######################################; -> eq_test_join_false_A2I_6
eq_test_join_false_A2I_6:
  %VR48 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR45)
  %VR46.1 = icmp eq i32 %VR48,  1
  br label %eq_test_join_A2I_6
;#######################################; <- eq_test_join_false_A2I_6


;#######################################; -> eq_test_join_A2I_6
eq_test_join_A2I_6:
  %VR46 = phi i1 [ %VR46.0, %eq_test_join_true_A2I_6 ] , [ %VR46.1, %eq_test_join_false_A2I_6 ] 
;; <- eq: linia 164
  %VR49 = icmp eq i1 %VR46,  false
  br i1 %VR49, label %false_A2I_6, label %false_false_A2I_6
;#######################################; <- eq_test_join_A2I_6


;#######################################; -> false_false_A2I_6
false_false_A2I_6:
;;if: linia 164 (expresia pentru then)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- int_const -
;; -> int_const: linia 164
  %VR50 = add i32 6, 0
;; <- int_const: linia 164
  br label %join_if_A2I_6_true
;#######################################; <- false_false_A2I_6


;#######################################; -> join_if_A2I_6_true
join_if_A2I_6_true:
  %VR44.0 = add i32 %VR50, 0
  br label %join_if_A2I_6
;#######################################; <- join_if_A2I_6_true


;#######################################; -> false_A2I_6
false_A2I_6:
;;if: linia 164 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 165
;;if: linia 165 (expresia pentru predicat)
;;%VR51 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 165
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 165
;; <- object: linia 165
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 165
  %VR52 = ptrtoint %struct.String_protObj_t* @str_const__8 to i32 
;; <- string_const: linia 165
  br label %eq_test_join_true_A2I_7
;#######################################; <- false_A2I_6


;#######################################; -> eq_test_join_true_A2I_7
eq_test_join_true_A2I_7:
  %VR53.0 = icmp eq i32 %VR1,  %VR52
  br i1 %VR53.0, label %eq_test_join_A2I_7, label %eq_test_join_false_A2I_7
;#######################################; <- eq_test_join_true_A2I_7


;#######################################; -> eq_test_join_false_A2I_7
eq_test_join_false_A2I_7:
  %VR55 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR52)
  %VR53.1 = icmp eq i32 %VR55,  1
  br label %eq_test_join_A2I_7
;#######################################; <- eq_test_join_false_A2I_7


;#######################################; -> eq_test_join_A2I_7
eq_test_join_A2I_7:
  %VR53 = phi i1 [ %VR53.0, %eq_test_join_true_A2I_7 ] , [ %VR53.1, %eq_test_join_false_A2I_7 ] 
;; <- eq: linia 165
  %VR56 = icmp eq i1 %VR53,  false
  br i1 %VR56, label %false_A2I_7, label %false_false_A2I_7
;#######################################; <- eq_test_join_A2I_7


;#######################################; -> false_false_A2I_7
false_false_A2I_7:
;;if: linia 165 (expresia pentru then)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- int_const -
;; -> int_const: linia 165
  %VR57 = add i32 7, 0
;; <- int_const: linia 165
  br label %join_if_A2I_7_true
;#######################################; <- false_false_A2I_7


;#######################################; -> join_if_A2I_7_true
join_if_A2I_7_true:
  %VR51.0 = add i32 %VR57, 0
  br label %join_if_A2I_7
;#######################################; <- join_if_A2I_7_true


;#######################################; -> false_A2I_7
false_A2I_7:
;;if: linia 165 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 166
;;if: linia 166 (expresia pentru predicat)
;;%VR58 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 166
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 166
;; <- object: linia 166
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 166
  %VR59 = ptrtoint %struct.String_protObj_t* @str_const__9 to i32 
;; <- string_const: linia 166
  br label %eq_test_join_true_A2I_8
;#######################################; <- false_A2I_7


;#######################################; -> eq_test_join_true_A2I_8
eq_test_join_true_A2I_8:
  %VR60.0 = icmp eq i32 %VR1,  %VR59
  br i1 %VR60.0, label %eq_test_join_A2I_8, label %eq_test_join_false_A2I_8
;#######################################; <- eq_test_join_true_A2I_8


;#######################################; -> eq_test_join_false_A2I_8
eq_test_join_false_A2I_8:
  %VR62 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR59)
  %VR60.1 = icmp eq i32 %VR62,  1
  br label %eq_test_join_A2I_8
;#######################################; <- eq_test_join_false_A2I_8


;#######################################; -> eq_test_join_A2I_8
eq_test_join_A2I_8:
  %VR60 = phi i1 [ %VR60.0, %eq_test_join_true_A2I_8 ] , [ %VR60.1, %eq_test_join_false_A2I_8 ] 
;; <- eq: linia 166
  %VR63 = icmp eq i1 %VR60,  false
  br i1 %VR63, label %false_A2I_8, label %false_false_A2I_8
;#######################################; <- eq_test_join_A2I_8


;#######################################; -> false_false_A2I_8
false_false_A2I_8:
;;if: linia 166 (expresia pentru then)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- int_const -
;; -> int_const: linia 166
  %VR64 = add i32 8, 0
;; <- int_const: linia 166
  br label %join_if_A2I_8_true
;#######################################; <- false_false_A2I_8


;#######################################; -> join_if_A2I_8_true
join_if_A2I_8_true:
  %VR58.0 = add i32 %VR64, 0
  br label %join_if_A2I_8
;#######################################; <- join_if_A2I_8_true


;#######################################; -> false_A2I_8
false_A2I_8:
;;if: linia 166 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 167
;;if: linia 167 (expresia pentru predicat)
;;%VR65 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 167
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 167
;; <- object: linia 167
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 167
  %VR66 = ptrtoint %struct.String_protObj_t* @str_const__10 to i32 
;; <- string_const: linia 167
  br label %eq_test_join_true_A2I_9
;#######################################; <- false_A2I_8


;#######################################; -> eq_test_join_true_A2I_9
eq_test_join_true_A2I_9:
  %VR67.0 = icmp eq i32 %VR1,  %VR66
  br i1 %VR67.0, label %eq_test_join_A2I_9, label %eq_test_join_false_A2I_9
;#######################################; <- eq_test_join_true_A2I_9


;#######################################; -> eq_test_join_false_A2I_9
eq_test_join_false_A2I_9:
  %VR69 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR66)
  %VR67.1 = icmp eq i32 %VR69,  1
  br label %eq_test_join_A2I_9
;#######################################; <- eq_test_join_false_A2I_9


;#######################################; -> eq_test_join_A2I_9
eq_test_join_A2I_9:
  %VR67 = phi i1 [ %VR67.0, %eq_test_join_true_A2I_9 ] , [ %VR67.1, %eq_test_join_false_A2I_9 ] 
;; <- eq: linia 167
  %VR70 = icmp eq i1 %VR67,  false
  br i1 %VR70, label %false_A2I_9, label %false_false_A2I_9
;#######################################; <- eq_test_join_A2I_9


;#######################################; -> false_false_A2I_9
false_false_A2I_9:
;;if: linia 167 (expresia pentru then)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- int_const -
;; -> int_const: linia 167
  %VR71 = add i32 9, 0
;; <- int_const: linia 167
  br label %join_if_A2I_9_true
;#######################################; <- false_false_A2I_9


;#######################################; -> join_if_A2I_9_true
join_if_A2I_9_true:
  %VR65.0 = add i32 %VR71, 0
  br label %join_if_A2I_9
;#######################################; <- join_if_A2I_9_true


;#######################################; -> false_A2I_9
false_A2I_9:
;;if: linia 167 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -
;; -> block: linia 168
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -
;; -> dispatch: linia 168
;;generez codul pentru apelul metodei abort
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -- object -
;; -> object: linia 168
;; <- object: linia 168
  %VR72 = icmp eq %struct.A2I_protObj_t* %VR0,  null
  br i1 %VR72, label %false_dispatch0, label %dispatch_not_void_A2I_0
;#######################################; <- false_A2I_9


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__22 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_A2I_0
dispatch_not_void_A2I_0:
  %VR73 = ptrtoint %struct.A2I_protObj_t* %VR0 to i32 
  %VR74 = add i32 %VR73, 8
  %VR75 = inttoptr i32 %VR74 to i32*
  %VR76 = load i32* %VR75
  %VR77 = add i32 %VR76, 0
  %VR78 = inttoptr i32 %VR77 to i32*
  %VR79 = load i32* %VR78
  %VR80 = inttoptr i32 %VR79 to i32 (i32)*
  %VR81 = call i32 (i32)* %VR80(i32 %ARG)
;; <- dispatch: linia 168
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- int_const -
;; -> int_const: linia 168
  %VR82 = add i32 0, 0
;; <- int_const: linia 168
;; <- block: linia 168
  br label %join_if_A2I_9_false
;#######################################; <- dispatch_not_void_A2I_0


;#######################################; -> join_if_A2I_9_false
join_if_A2I_9_false:
  %VR65.1 = add i32 %VR82, 0
  br label %join_if_A2I_9
;#######################################; <- join_if_A2I_9_false


;#######################################; -> join_if_A2I_9
join_if_A2I_9:
  %VR65 = phi i32 [ %VR65.0, %join_if_A2I_9_true ], [ %VR65.1, %join_if_A2I_9_false ]
;; <- cond: linia 167
  br label %join_if_A2I_8_false
;#######################################; <- join_if_A2I_9


;#######################################; -> join_if_A2I_8_false
join_if_A2I_8_false:
  %VR58.1 = add i32 %VR65, 0
  br label %join_if_A2I_8
;#######################################; <- join_if_A2I_8_false


;#######################################; -> join_if_A2I_8
join_if_A2I_8:
  %VR58 = phi i32 [ %VR58.0, %join_if_A2I_8_true ], [ %VR58.1, %join_if_A2I_8_false ]
;; <- cond: linia 166
  br label %join_if_A2I_7_false
;#######################################; <- join_if_A2I_8


;#######################################; -> join_if_A2I_7_false
join_if_A2I_7_false:
  %VR51.1 = add i32 %VR58, 0
  br label %join_if_A2I_7
;#######################################; <- join_if_A2I_7_false


;#######################################; -> join_if_A2I_7
join_if_A2I_7:
  %VR51 = phi i32 [ %VR51.0, %join_if_A2I_7_true ], [ %VR51.1, %join_if_A2I_7_false ]
;; <- cond: linia 165
  br label %join_if_A2I_6_false
;#######################################; <- join_if_A2I_7


;#######################################; -> join_if_A2I_6_false
join_if_A2I_6_false:
  %VR44.1 = add i32 %VR51, 0
  br label %join_if_A2I_6
;#######################################; <- join_if_A2I_6_false


;#######################################; -> join_if_A2I_6
join_if_A2I_6:
  %VR44 = phi i32 [ %VR44.0, %join_if_A2I_6_true ], [ %VR44.1, %join_if_A2I_6_false ]
;; <- cond: linia 164
  br label %join_if_A2I_5_false
;#######################################; <- join_if_A2I_6


;#######################################; -> join_if_A2I_5_false
join_if_A2I_5_false:
  %VR37.1 = add i32 %VR44, 0
  br label %join_if_A2I_5
;#######################################; <- join_if_A2I_5_false


;#######################################; -> join_if_A2I_5
join_if_A2I_5:
  %VR37 = phi i32 [ %VR37.0, %join_if_A2I_5_true ], [ %VR37.1, %join_if_A2I_5_false ]
;; <- cond: linia 163
  br label %join_if_A2I_4_false
;#######################################; <- join_if_A2I_5


;#######################################; -> join_if_A2I_4_false
join_if_A2I_4_false:
  %VR30.1 = add i32 %VR37, 0
  br label %join_if_A2I_4
;#######################################; <- join_if_A2I_4_false


;#######################################; -> join_if_A2I_4
join_if_A2I_4:
  %VR30 = phi i32 [ %VR30.0, %join_if_A2I_4_true ], [ %VR30.1, %join_if_A2I_4_false ]
;; <- cond: linia 162
  br label %join_if_A2I_3_false
;#######################################; <- join_if_A2I_4


;#######################################; -> join_if_A2I_3_false
join_if_A2I_3_false:
  %VR23.1 = add i32 %VR30, 0
  br label %join_if_A2I_3
;#######################################; <- join_if_A2I_3_false


;#######################################; -> join_if_A2I_3
join_if_A2I_3:
  %VR23 = phi i32 [ %VR23.0, %join_if_A2I_3_true ], [ %VR23.1, %join_if_A2I_3_false ]
;; <- cond: linia 161
  br label %join_if_A2I_2_false
;#######################################; <- join_if_A2I_3


;#######################################; -> join_if_A2I_2_false
join_if_A2I_2_false:
  %VR16.1 = add i32 %VR23, 0
  br label %join_if_A2I_2
;#######################################; <- join_if_A2I_2_false


;#######################################; -> join_if_A2I_2
join_if_A2I_2:
  %VR16 = phi i32 [ %VR16.0, %join_if_A2I_2_true ], [ %VR16.1, %join_if_A2I_2_false ]
;; <- cond: linia 160
  br label %join_if_A2I_1_false
;#######################################; <- join_if_A2I_2


;#######################################; -> join_if_A2I_1_false
join_if_A2I_1_false:
  %VR9.1 = add i32 %VR16, 0
  br label %join_if_A2I_1
;#######################################; <- join_if_A2I_1_false


;#######################################; -> join_if_A2I_1
join_if_A2I_1:
  %VR9 = phi i32 [ %VR9.0, %join_if_A2I_1_true ], [ %VR9.1, %join_if_A2I_1_false ]
;; <- cond: linia 159
  br label %join_if_A2I_0_false
;#######################################; <- join_if_A2I_1


;#######################################; -> join_if_A2I_0_false
join_if_A2I_0_false:
  %VR2.1 = add i32 %VR9, 0
  br label %join_if_A2I_0
;#######################################; <- join_if_A2I_0_false


;#######################################; -> join_if_A2I_0
join_if_A2I_0:
  %VR2 = phi i32 [ %VR2.0, %join_if_A2I_0_true ], [ %VR2.1, %join_if_A2I_0_false ]
;; <- cond: linia 158
  ret i32 %VR2
;#######################################; <- join_if_A2I_0


}
define i32 @A2I__i2c(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.A2I_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 177
;;if: linia 177 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- eq -
;; -> eq: linia 177
;- cond -- eq -- object -
;; -> object: linia 177
;; <- object: linia 177
;- cond -- eq -- int_const -
;; -> int_const: linia 177
  %VR3 = add i32 0, 0
;; <- int_const: linia 177
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
  br label %eq_test_join_true_A2I_10
;#######################################; <- entry


;#######################################; -> eq_test_join_true_A2I_10
eq_test_join_true_A2I_10:
  %VR10.0 = icmp eq i32 %VR4,  %VR7
  br i1 %VR10.0, label %eq_test_join_A2I_10, label %eq_test_join_false_A2I_10
;#######################################; <- eq_test_join_true_A2I_10


;#######################################; -> eq_test_join_false_A2I_10
eq_test_join_false_A2I_10:
  %VR12 = call i32  @equality_test(i32 1, i32 0, i32 %VR4, i32 %VR7)
  %VR10.1 = icmp eq i32 %VR12,  1
  br label %eq_test_join_A2I_10
;#######################################; <- eq_test_join_false_A2I_10


;#######################################; -> eq_test_join_A2I_10
eq_test_join_A2I_10:
  %VR10 = phi i1 [ %VR10.0, %eq_test_join_true_A2I_10 ] , [ %VR10.1, %eq_test_join_false_A2I_10 ] 
;; <- eq: linia 177
  %VR13 = icmp eq i1 %VR10,  false
  br i1 %VR13, label %false_A2I_10, label %false_false_A2I_10
;#######################################; <- eq_test_join_A2I_10


;#######################################; -> false_false_A2I_10
false_false_A2I_10:
;;if: linia 177 (expresia pentru then)
;- cond -- string_const -
;; -> string_const: linia 177
  %VR14 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 177
  br label %join_if_A2I_10_true
;#######################################; <- false_false_A2I_10


;#######################################; -> join_if_A2I_10_true
join_if_A2I_10_true:
  %VR2.0 = add i32 %VR14, 0
  br label %join_if_A2I_10
;#######################################; <- join_if_A2I_10_true


;#######################################; -> false_A2I_10
false_A2I_10:
;;if: linia 177 (expresia pentru else)
;- cond -- cond -
;; -> cond: linia 178
;;if: linia 178 (expresia pentru predicat)
;;%VR15 rezervat pentru rezultatul if-ului
;- cond -- cond -- eq -
;; -> eq: linia 178
;- cond -- cond -- eq -- object -
;; -> object: linia 178
;; <- object: linia 178
;- cond -- cond -- eq -- int_const -
;; -> int_const: linia 178
  %VR16 = add i32 1, 0
;; <- int_const: linia 178
;boxing to int
  %VR17 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR18 = add i32 %VR17, 12
  %VR19 = inttoptr i32 %VR18 to i32*
  store i32 %VR1, i32* %VR19
;boxing to int
  %VR20 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR21 = add i32 %VR20, 12
  %VR22 = inttoptr i32 %VR21 to i32*
  store i32 %VR16, i32* %VR22
  br label %eq_test_join_true_A2I_11
;#######################################; <- false_A2I_10


;#######################################; -> eq_test_join_true_A2I_11
eq_test_join_true_A2I_11:
  %VR23.0 = icmp eq i32 %VR17,  %VR20
  br i1 %VR23.0, label %eq_test_join_A2I_11, label %eq_test_join_false_A2I_11
;#######################################; <- eq_test_join_true_A2I_11


;#######################################; -> eq_test_join_false_A2I_11
eq_test_join_false_A2I_11:
  %VR25 = call i32  @equality_test(i32 1, i32 0, i32 %VR17, i32 %VR20)
  %VR23.1 = icmp eq i32 %VR25,  1
  br label %eq_test_join_A2I_11
;#######################################; <- eq_test_join_false_A2I_11


;#######################################; -> eq_test_join_A2I_11
eq_test_join_A2I_11:
  %VR23 = phi i1 [ %VR23.0, %eq_test_join_true_A2I_11 ] , [ %VR23.1, %eq_test_join_false_A2I_11 ] 
;; <- eq: linia 178
  %VR26 = icmp eq i1 %VR23,  false
  br i1 %VR26, label %false_A2I_11, label %false_false_A2I_11
;#######################################; <- eq_test_join_A2I_11


;#######################################; -> false_false_A2I_11
false_false_A2I_11:
;;if: linia 178 (expresia pentru then)
;- cond -- cond -- string_const -
;; -> string_const: linia 178
  %VR27 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 178
  br label %join_if_A2I_11_true
;#######################################; <- false_false_A2I_11


;#######################################; -> join_if_A2I_11_true
join_if_A2I_11_true:
  %VR15.0 = add i32 %VR27, 0
  br label %join_if_A2I_11
;#######################################; <- join_if_A2I_11_true


;#######################################; -> false_A2I_11
false_A2I_11:
;;if: linia 178 (expresia pentru else)
;- cond -- cond -- cond -
;; -> cond: linia 179
;;if: linia 179 (expresia pentru predicat)
;;%VR28 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- eq -
;; -> eq: linia 179
;- cond -- cond -- cond -- eq -- object -
;; -> object: linia 179
;; <- object: linia 179
;- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 179
  %VR29 = add i32 2, 0
;; <- int_const: linia 179
;boxing to int
  %VR30 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR31 = add i32 %VR30, 12
  %VR32 = inttoptr i32 %VR31 to i32*
  store i32 %VR1, i32* %VR32
;boxing to int
  %VR33 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR34 = add i32 %VR33, 12
  %VR35 = inttoptr i32 %VR34 to i32*
  store i32 %VR29, i32* %VR35
  br label %eq_test_join_true_A2I_12
;#######################################; <- false_A2I_11


;#######################################; -> eq_test_join_true_A2I_12
eq_test_join_true_A2I_12:
  %VR36.0 = icmp eq i32 %VR30,  %VR33
  br i1 %VR36.0, label %eq_test_join_A2I_12, label %eq_test_join_false_A2I_12
;#######################################; <- eq_test_join_true_A2I_12


;#######################################; -> eq_test_join_false_A2I_12
eq_test_join_false_A2I_12:
  %VR38 = call i32  @equality_test(i32 1, i32 0, i32 %VR30, i32 %VR33)
  %VR36.1 = icmp eq i32 %VR38,  1
  br label %eq_test_join_A2I_12
;#######################################; <- eq_test_join_false_A2I_12


;#######################################; -> eq_test_join_A2I_12
eq_test_join_A2I_12:
  %VR36 = phi i1 [ %VR36.0, %eq_test_join_true_A2I_12 ] , [ %VR36.1, %eq_test_join_false_A2I_12 ] 
;; <- eq: linia 179
  %VR39 = icmp eq i1 %VR36,  false
  br i1 %VR39, label %false_A2I_12, label %false_false_A2I_12
;#######################################; <- eq_test_join_A2I_12


;#######################################; -> false_false_A2I_12
false_false_A2I_12:
;;if: linia 179 (expresia pentru then)
;- cond -- cond -- cond -- string_const -
;; -> string_const: linia 179
  %VR40 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 179
  br label %join_if_A2I_12_true
;#######################################; <- false_false_A2I_12


;#######################################; -> join_if_A2I_12_true
join_if_A2I_12_true:
  %VR28.0 = add i32 %VR40, 0
  br label %join_if_A2I_12
;#######################################; <- join_if_A2I_12_true


;#######################################; -> false_A2I_12
false_A2I_12:
;;if: linia 179 (expresia pentru else)
;- cond -- cond -- cond -- cond -
;; -> cond: linia 180
;;if: linia 180 (expresia pentru predicat)
;;%VR41 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 180
;- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 180
;; <- object: linia 180
;- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 180
  %VR42 = add i32 3, 0
;; <- int_const: linia 180
;boxing to int
  %VR43 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR44 = add i32 %VR43, 12
  %VR45 = inttoptr i32 %VR44 to i32*
  store i32 %VR1, i32* %VR45
;boxing to int
  %VR46 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR47 = add i32 %VR46, 12
  %VR48 = inttoptr i32 %VR47 to i32*
  store i32 %VR42, i32* %VR48
  br label %eq_test_join_true_A2I_13
;#######################################; <- false_A2I_12


;#######################################; -> eq_test_join_true_A2I_13
eq_test_join_true_A2I_13:
  %VR49.0 = icmp eq i32 %VR43,  %VR46
  br i1 %VR49.0, label %eq_test_join_A2I_13, label %eq_test_join_false_A2I_13
;#######################################; <- eq_test_join_true_A2I_13


;#######################################; -> eq_test_join_false_A2I_13
eq_test_join_false_A2I_13:
  %VR51 = call i32  @equality_test(i32 1, i32 0, i32 %VR43, i32 %VR46)
  %VR49.1 = icmp eq i32 %VR51,  1
  br label %eq_test_join_A2I_13
;#######################################; <- eq_test_join_false_A2I_13


;#######################################; -> eq_test_join_A2I_13
eq_test_join_A2I_13:
  %VR49 = phi i1 [ %VR49.0, %eq_test_join_true_A2I_13 ] , [ %VR49.1, %eq_test_join_false_A2I_13 ] 
;; <- eq: linia 180
  %VR52 = icmp eq i1 %VR49,  false
  br i1 %VR52, label %false_A2I_13, label %false_false_A2I_13
;#######################################; <- eq_test_join_A2I_13


;#######################################; -> false_false_A2I_13
false_false_A2I_13:
;;if: linia 180 (expresia pentru then)
;- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 180
  %VR53 = ptrtoint %struct.String_protObj_t* @str_const__4 to i32 
;; <- string_const: linia 180
  br label %join_if_A2I_13_true
;#######################################; <- false_false_A2I_13


;#######################################; -> join_if_A2I_13_true
join_if_A2I_13_true:
  %VR41.0 = add i32 %VR53, 0
  br label %join_if_A2I_13
;#######################################; <- join_if_A2I_13_true


;#######################################; -> false_A2I_13
false_A2I_13:
;;if: linia 180 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 181
;;if: linia 181 (expresia pentru predicat)
;;%VR54 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 181
;- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 181
;; <- object: linia 181
;- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 181
  %VR55 = add i32 4, 0
;; <- int_const: linia 181
;boxing to int
  %VR56 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR57 = add i32 %VR56, 12
  %VR58 = inttoptr i32 %VR57 to i32*
  store i32 %VR1, i32* %VR58
;boxing to int
  %VR59 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR60 = add i32 %VR59, 12
  %VR61 = inttoptr i32 %VR60 to i32*
  store i32 %VR55, i32* %VR61
  br label %eq_test_join_true_A2I_14
;#######################################; <- false_A2I_13


;#######################################; -> eq_test_join_true_A2I_14
eq_test_join_true_A2I_14:
  %VR62.0 = icmp eq i32 %VR56,  %VR59
  br i1 %VR62.0, label %eq_test_join_A2I_14, label %eq_test_join_false_A2I_14
;#######################################; <- eq_test_join_true_A2I_14


;#######################################; -> eq_test_join_false_A2I_14
eq_test_join_false_A2I_14:
  %VR64 = call i32  @equality_test(i32 1, i32 0, i32 %VR56, i32 %VR59)
  %VR62.1 = icmp eq i32 %VR64,  1
  br label %eq_test_join_A2I_14
;#######################################; <- eq_test_join_false_A2I_14


;#######################################; -> eq_test_join_A2I_14
eq_test_join_A2I_14:
  %VR62 = phi i1 [ %VR62.0, %eq_test_join_true_A2I_14 ] , [ %VR62.1, %eq_test_join_false_A2I_14 ] 
;; <- eq: linia 181
  %VR65 = icmp eq i1 %VR62,  false
  br i1 %VR65, label %false_A2I_14, label %false_false_A2I_14
;#######################################; <- eq_test_join_A2I_14


;#######################################; -> false_false_A2I_14
false_false_A2I_14:
;;if: linia 181 (expresia pentru then)
;- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 181
  %VR66 = ptrtoint %struct.String_protObj_t* @str_const__5 to i32 
;; <- string_const: linia 181
  br label %join_if_A2I_14_true
;#######################################; <- false_false_A2I_14


;#######################################; -> join_if_A2I_14_true
join_if_A2I_14_true:
  %VR54.0 = add i32 %VR66, 0
  br label %join_if_A2I_14
;#######################################; <- join_if_A2I_14_true


;#######################################; -> false_A2I_14
false_A2I_14:
;;if: linia 181 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 182
;;if: linia 182 (expresia pentru predicat)
;;%VR67 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 182
;- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 182
;; <- object: linia 182
;- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 182
  %VR68 = add i32 5, 0
;; <- int_const: linia 182
;boxing to int
  %VR69 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR70 = add i32 %VR69, 12
  %VR71 = inttoptr i32 %VR70 to i32*
  store i32 %VR1, i32* %VR71
;boxing to int
  %VR72 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR73 = add i32 %VR72, 12
  %VR74 = inttoptr i32 %VR73 to i32*
  store i32 %VR68, i32* %VR74
  br label %eq_test_join_true_A2I_15
;#######################################; <- false_A2I_14


;#######################################; -> eq_test_join_true_A2I_15
eq_test_join_true_A2I_15:
  %VR75.0 = icmp eq i32 %VR69,  %VR72
  br i1 %VR75.0, label %eq_test_join_A2I_15, label %eq_test_join_false_A2I_15
;#######################################; <- eq_test_join_true_A2I_15


;#######################################; -> eq_test_join_false_A2I_15
eq_test_join_false_A2I_15:
  %VR77 = call i32  @equality_test(i32 1, i32 0, i32 %VR69, i32 %VR72)
  %VR75.1 = icmp eq i32 %VR77,  1
  br label %eq_test_join_A2I_15
;#######################################; <- eq_test_join_false_A2I_15


;#######################################; -> eq_test_join_A2I_15
eq_test_join_A2I_15:
  %VR75 = phi i1 [ %VR75.0, %eq_test_join_true_A2I_15 ] , [ %VR75.1, %eq_test_join_false_A2I_15 ] 
;; <- eq: linia 182
  %VR78 = icmp eq i1 %VR75,  false
  br i1 %VR78, label %false_A2I_15, label %false_false_A2I_15
;#######################################; <- eq_test_join_A2I_15


;#######################################; -> false_false_A2I_15
false_false_A2I_15:
;;if: linia 182 (expresia pentru then)
;- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 182
  %VR79 = ptrtoint %struct.String_protObj_t* @str_const__6 to i32 
;; <- string_const: linia 182
  br label %join_if_A2I_15_true
;#######################################; <- false_false_A2I_15


;#######################################; -> join_if_A2I_15_true
join_if_A2I_15_true:
  %VR67.0 = add i32 %VR79, 0
  br label %join_if_A2I_15
;#######################################; <- join_if_A2I_15_true


;#######################################; -> false_A2I_15
false_A2I_15:
;;if: linia 182 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 183
;;if: linia 183 (expresia pentru predicat)
;;%VR80 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 183
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 183
;; <- object: linia 183
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 183
  %VR81 = add i32 6, 0
;; <- int_const: linia 183
;boxing to int
  %VR82 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR83 = add i32 %VR82, 12
  %VR84 = inttoptr i32 %VR83 to i32*
  store i32 %VR1, i32* %VR84
;boxing to int
  %VR85 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR86 = add i32 %VR85, 12
  %VR87 = inttoptr i32 %VR86 to i32*
  store i32 %VR81, i32* %VR87
  br label %eq_test_join_true_A2I_16
;#######################################; <- false_A2I_15


;#######################################; -> eq_test_join_true_A2I_16
eq_test_join_true_A2I_16:
  %VR88.0 = icmp eq i32 %VR82,  %VR85
  br i1 %VR88.0, label %eq_test_join_A2I_16, label %eq_test_join_false_A2I_16
;#######################################; <- eq_test_join_true_A2I_16


;#######################################; -> eq_test_join_false_A2I_16
eq_test_join_false_A2I_16:
  %VR90 = call i32  @equality_test(i32 1, i32 0, i32 %VR82, i32 %VR85)
  %VR88.1 = icmp eq i32 %VR90,  1
  br label %eq_test_join_A2I_16
;#######################################; <- eq_test_join_false_A2I_16


;#######################################; -> eq_test_join_A2I_16
eq_test_join_A2I_16:
  %VR88 = phi i1 [ %VR88.0, %eq_test_join_true_A2I_16 ] , [ %VR88.1, %eq_test_join_false_A2I_16 ] 
;; <- eq: linia 183
  %VR91 = icmp eq i1 %VR88,  false
  br i1 %VR91, label %false_A2I_16, label %false_false_A2I_16
;#######################################; <- eq_test_join_A2I_16


;#######################################; -> false_false_A2I_16
false_false_A2I_16:
;;if: linia 183 (expresia pentru then)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 183
  %VR92 = ptrtoint %struct.String_protObj_t* @str_const__7 to i32 
;; <- string_const: linia 183
  br label %join_if_A2I_16_true
;#######################################; <- false_false_A2I_16


;#######################################; -> join_if_A2I_16_true
join_if_A2I_16_true:
  %VR80.0 = add i32 %VR92, 0
  br label %join_if_A2I_16
;#######################################; <- join_if_A2I_16_true


;#######################################; -> false_A2I_16
false_A2I_16:
;;if: linia 183 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 184
;;if: linia 184 (expresia pentru predicat)
;;%VR93 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 184
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 184
;; <- object: linia 184
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 184
  %VR94 = add i32 7, 0
;; <- int_const: linia 184
;boxing to int
  %VR95 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR96 = add i32 %VR95, 12
  %VR97 = inttoptr i32 %VR96 to i32*
  store i32 %VR1, i32* %VR97
;boxing to int
  %VR98 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR99 = add i32 %VR98, 12
  %VR100 = inttoptr i32 %VR99 to i32*
  store i32 %VR94, i32* %VR100
  br label %eq_test_join_true_A2I_17
;#######################################; <- false_A2I_16


;#######################################; -> eq_test_join_true_A2I_17
eq_test_join_true_A2I_17:
  %VR101.0 = icmp eq i32 %VR95,  %VR98
  br i1 %VR101.0, label %eq_test_join_A2I_17, label %eq_test_join_false_A2I_17
;#######################################; <- eq_test_join_true_A2I_17


;#######################################; -> eq_test_join_false_A2I_17
eq_test_join_false_A2I_17:
  %VR103 = call i32  @equality_test(i32 1, i32 0, i32 %VR95, i32 %VR98)
  %VR101.1 = icmp eq i32 %VR103,  1
  br label %eq_test_join_A2I_17
;#######################################; <- eq_test_join_false_A2I_17


;#######################################; -> eq_test_join_A2I_17
eq_test_join_A2I_17:
  %VR101 = phi i1 [ %VR101.0, %eq_test_join_true_A2I_17 ] , [ %VR101.1, %eq_test_join_false_A2I_17 ] 
;; <- eq: linia 184
  %VR104 = icmp eq i1 %VR101,  false
  br i1 %VR104, label %false_A2I_17, label %false_false_A2I_17
;#######################################; <- eq_test_join_A2I_17


;#######################################; -> false_false_A2I_17
false_false_A2I_17:
;;if: linia 184 (expresia pentru then)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 184
  %VR105 = ptrtoint %struct.String_protObj_t* @str_const__8 to i32 
;; <- string_const: linia 184
  br label %join_if_A2I_17_true
;#######################################; <- false_false_A2I_17


;#######################################; -> join_if_A2I_17_true
join_if_A2I_17_true:
  %VR93.0 = add i32 %VR105, 0
  br label %join_if_A2I_17
;#######################################; <- join_if_A2I_17_true


;#######################################; -> false_A2I_17
false_A2I_17:
;;if: linia 184 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 185
;;if: linia 185 (expresia pentru predicat)
;;%VR106 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 185
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 185
;; <- object: linia 185
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 185
  %VR107 = add i32 8, 0
;; <- int_const: linia 185
;boxing to int
  %VR108 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR109 = add i32 %VR108, 12
  %VR110 = inttoptr i32 %VR109 to i32*
  store i32 %VR1, i32* %VR110
;boxing to int
  %VR111 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR112 = add i32 %VR111, 12
  %VR113 = inttoptr i32 %VR112 to i32*
  store i32 %VR107, i32* %VR113
  br label %eq_test_join_true_A2I_18
;#######################################; <- false_A2I_17


;#######################################; -> eq_test_join_true_A2I_18
eq_test_join_true_A2I_18:
  %VR114.0 = icmp eq i32 %VR108,  %VR111
  br i1 %VR114.0, label %eq_test_join_A2I_18, label %eq_test_join_false_A2I_18
;#######################################; <- eq_test_join_true_A2I_18


;#######################################; -> eq_test_join_false_A2I_18
eq_test_join_false_A2I_18:
  %VR116 = call i32  @equality_test(i32 1, i32 0, i32 %VR108, i32 %VR111)
  %VR114.1 = icmp eq i32 %VR116,  1
  br label %eq_test_join_A2I_18
;#######################################; <- eq_test_join_false_A2I_18


;#######################################; -> eq_test_join_A2I_18
eq_test_join_A2I_18:
  %VR114 = phi i1 [ %VR114.0, %eq_test_join_true_A2I_18 ] , [ %VR114.1, %eq_test_join_false_A2I_18 ] 
;; <- eq: linia 185
  %VR117 = icmp eq i1 %VR114,  false
  br i1 %VR117, label %false_A2I_18, label %false_false_A2I_18
;#######################################; <- eq_test_join_A2I_18


;#######################################; -> false_false_A2I_18
false_false_A2I_18:
;;if: linia 185 (expresia pentru then)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 185
  %VR118 = ptrtoint %struct.String_protObj_t* @str_const__9 to i32 
;; <- string_const: linia 185
  br label %join_if_A2I_18_true
;#######################################; <- false_false_A2I_18


;#######################################; -> join_if_A2I_18_true
join_if_A2I_18_true:
  %VR106.0 = add i32 %VR118, 0
  br label %join_if_A2I_18
;#######################################; <- join_if_A2I_18_true


;#######################################; -> false_A2I_18
false_A2I_18:
;;if: linia 185 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 186
;;if: linia 186 (expresia pentru predicat)
;;%VR119 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 186
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 186
;; <- object: linia 186
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 186
  %VR120 = add i32 9, 0
;; <- int_const: linia 186
;boxing to int
  %VR121 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR122 = add i32 %VR121, 12
  %VR123 = inttoptr i32 %VR122 to i32*
  store i32 %VR1, i32* %VR123
;boxing to int
  %VR124 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR125 = add i32 %VR124, 12
  %VR126 = inttoptr i32 %VR125 to i32*
  store i32 %VR120, i32* %VR126
  br label %eq_test_join_true_A2I_19
;#######################################; <- false_A2I_18


;#######################################; -> eq_test_join_true_A2I_19
eq_test_join_true_A2I_19:
  %VR127.0 = icmp eq i32 %VR121,  %VR124
  br i1 %VR127.0, label %eq_test_join_A2I_19, label %eq_test_join_false_A2I_19
;#######################################; <- eq_test_join_true_A2I_19


;#######################################; -> eq_test_join_false_A2I_19
eq_test_join_false_A2I_19:
  %VR129 = call i32  @equality_test(i32 1, i32 0, i32 %VR121, i32 %VR124)
  %VR127.1 = icmp eq i32 %VR129,  1
  br label %eq_test_join_A2I_19
;#######################################; <- eq_test_join_false_A2I_19


;#######################################; -> eq_test_join_A2I_19
eq_test_join_A2I_19:
  %VR127 = phi i1 [ %VR127.0, %eq_test_join_true_A2I_19 ] , [ %VR127.1, %eq_test_join_false_A2I_19 ] 
;; <- eq: linia 186
  %VR130 = icmp eq i1 %VR127,  false
  br i1 %VR130, label %false_A2I_19, label %false_false_A2I_19
;#######################################; <- eq_test_join_A2I_19


;#######################################; -> false_false_A2I_19
false_false_A2I_19:
;;if: linia 186 (expresia pentru then)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- string_const -
;; -> string_const: linia 186
  %VR131 = ptrtoint %struct.String_protObj_t* @str_const__10 to i32 
;; <- string_const: linia 186
  br label %join_if_A2I_19_true
;#######################################; <- false_false_A2I_19


;#######################################; -> join_if_A2I_19_true
join_if_A2I_19_true:
  %VR119.0 = add i32 %VR131, 0
  br label %join_if_A2I_19
;#######################################; <- join_if_A2I_19_true


;#######################################; -> false_A2I_19
false_A2I_19:
;;if: linia 186 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -
;; -> block: linia 187
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -
;; -> dispatch: linia 187
;;generez codul pentru apelul metodei abort
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -- object -
;; -> object: linia 187
;; <- object: linia 187
  %VR132 = icmp eq %struct.A2I_protObj_t* %VR0,  null
  br i1 %VR132, label %false_dispatch1, label %dispatch_not_void_A2I_1
;#######################################; <- false_A2I_19


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__23 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_A2I_1
dispatch_not_void_A2I_1:
  %VR133 = ptrtoint %struct.A2I_protObj_t* %VR0 to i32 
  %VR134 = add i32 %VR133, 8
  %VR135 = inttoptr i32 %VR134 to i32*
  %VR136 = load i32* %VR135
  %VR137 = add i32 %VR136, 0
  %VR138 = inttoptr i32 %VR137 to i32*
  %VR139 = load i32* %VR138
  %VR140 = inttoptr i32 %VR139 to i32 (i32)*
  %VR141 = call i32 (i32)* %VR140(i32 %ARG)
;; <- dispatch: linia 187
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- string_const -
;; -> string_const: linia 187
  %VR142 = ptrtoint %struct.String_protObj_t* @str_const__11 to i32 
;; <- string_const: linia 187
;; <- block: linia 187
  br label %join_if_A2I_19_false
;#######################################; <- dispatch_not_void_A2I_1


;#######################################; -> join_if_A2I_19_false
join_if_A2I_19_false:
  %VR119.1 = add i32 %VR142, 0
  br label %join_if_A2I_19
;#######################################; <- join_if_A2I_19_false


;#######################################; -> join_if_A2I_19
join_if_A2I_19:
  %VR119 = phi i32 [ %VR119.0, %join_if_A2I_19_true ], [ %VR119.1, %join_if_A2I_19_false ]
;; <- cond: linia 186
  br label %join_if_A2I_18_false
;#######################################; <- join_if_A2I_19


;#######################################; -> join_if_A2I_18_false
join_if_A2I_18_false:
  %VR106.1 = add i32 %VR119, 0
  br label %join_if_A2I_18
;#######################################; <- join_if_A2I_18_false


;#######################################; -> join_if_A2I_18
join_if_A2I_18:
  %VR106 = phi i32 [ %VR106.0, %join_if_A2I_18_true ], [ %VR106.1, %join_if_A2I_18_false ]
;; <- cond: linia 185
  br label %join_if_A2I_17_false
;#######################################; <- join_if_A2I_18


;#######################################; -> join_if_A2I_17_false
join_if_A2I_17_false:
  %VR93.1 = add i32 %VR106, 0
  br label %join_if_A2I_17
;#######################################; <- join_if_A2I_17_false


;#######################################; -> join_if_A2I_17
join_if_A2I_17:
  %VR93 = phi i32 [ %VR93.0, %join_if_A2I_17_true ], [ %VR93.1, %join_if_A2I_17_false ]
;; <- cond: linia 184
  br label %join_if_A2I_16_false
;#######################################; <- join_if_A2I_17


;#######################################; -> join_if_A2I_16_false
join_if_A2I_16_false:
  %VR80.1 = add i32 %VR93, 0
  br label %join_if_A2I_16
;#######################################; <- join_if_A2I_16_false


;#######################################; -> join_if_A2I_16
join_if_A2I_16:
  %VR80 = phi i32 [ %VR80.0, %join_if_A2I_16_true ], [ %VR80.1, %join_if_A2I_16_false ]
;; <- cond: linia 183
  br label %join_if_A2I_15_false
;#######################################; <- join_if_A2I_16


;#######################################; -> join_if_A2I_15_false
join_if_A2I_15_false:
  %VR67.1 = add i32 %VR80, 0
  br label %join_if_A2I_15
;#######################################; <- join_if_A2I_15_false


;#######################################; -> join_if_A2I_15
join_if_A2I_15:
  %VR67 = phi i32 [ %VR67.0, %join_if_A2I_15_true ], [ %VR67.1, %join_if_A2I_15_false ]
;; <- cond: linia 182
  br label %join_if_A2I_14_false
;#######################################; <- join_if_A2I_15


;#######################################; -> join_if_A2I_14_false
join_if_A2I_14_false:
  %VR54.1 = add i32 %VR67, 0
  br label %join_if_A2I_14
;#######################################; <- join_if_A2I_14_false


;#######################################; -> join_if_A2I_14
join_if_A2I_14:
  %VR54 = phi i32 [ %VR54.0, %join_if_A2I_14_true ], [ %VR54.1, %join_if_A2I_14_false ]
;; <- cond: linia 181
  br label %join_if_A2I_13_false
;#######################################; <- join_if_A2I_14


;#######################################; -> join_if_A2I_13_false
join_if_A2I_13_false:
  %VR41.1 = add i32 %VR54, 0
  br label %join_if_A2I_13
;#######################################; <- join_if_A2I_13_false


;#######################################; -> join_if_A2I_13
join_if_A2I_13:
  %VR41 = phi i32 [ %VR41.0, %join_if_A2I_13_true ], [ %VR41.1, %join_if_A2I_13_false ]
;; <- cond: linia 180
  br label %join_if_A2I_12_false
;#######################################; <- join_if_A2I_13


;#######################################; -> join_if_A2I_12_false
join_if_A2I_12_false:
  %VR28.1 = add i32 %VR41, 0
  br label %join_if_A2I_12
;#######################################; <- join_if_A2I_12_false


;#######################################; -> join_if_A2I_12
join_if_A2I_12:
  %VR28 = phi i32 [ %VR28.0, %join_if_A2I_12_true ], [ %VR28.1, %join_if_A2I_12_false ]
;; <- cond: linia 179
  br label %join_if_A2I_11_false
;#######################################; <- join_if_A2I_12


;#######################################; -> join_if_A2I_11_false
join_if_A2I_11_false:
  %VR15.1 = add i32 %VR28, 0
  br label %join_if_A2I_11
;#######################################; <- join_if_A2I_11_false


;#######################################; -> join_if_A2I_11
join_if_A2I_11:
  %VR15 = phi i32 [ %VR15.0, %join_if_A2I_11_true ], [ %VR15.1, %join_if_A2I_11_false ]
;; <- cond: linia 178
  br label %join_if_A2I_10_false
;#######################################; <- join_if_A2I_11


;#######################################; -> join_if_A2I_10_false
join_if_A2I_10_false:
  %VR2.1 = add i32 %VR15, 0
  br label %join_if_A2I_10
;#######################################; <- join_if_A2I_10_false


;#######################################; -> join_if_A2I_10
join_if_A2I_10:
  %VR2 = phi i32 [ %VR2.0, %join_if_A2I_10_true ], [ %VR2.1, %join_if_A2I_10_false ]
;; <- cond: linia 177
  ret i32 %VR2
;#######################################; <- join_if_A2I_10


}
define i32 @A2I__a2i(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.A2I_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 200
;;if: linia 200 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- eq -
;; -> eq: linia 200
;- cond -- eq -- dispatch -
;; -> dispatch: linia 200
;;generez codul pentru apelul metodei length
;- cond -- eq -- dispatch -- object -
;; -> object: linia 200
;; <- object: linia 200
  %VR3 = inttoptr i32 %VR1 to i32*
  %VR4 = icmp eq i32* %VR3,  null
  br i1 %VR4, label %false_dispatch2, label %dispatch_not_void_A2I_2
;#######################################; <- entry


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__24 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_A2I_2
dispatch_not_void_A2I_2:
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
;; <- dispatch: linia 200
;- cond -- eq -- int_const -
;; -> int_const: linia 200
  %VR17 = add i32 0, 0
;; <- int_const: linia 200
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
  br label %eq_test_join_true_A2I_20
;#######################################; <- dispatch_not_void_A2I_2


;#######################################; -> eq_test_join_true_A2I_20
eq_test_join_true_A2I_20:
  %VR24.0 = icmp eq i32 %VR18,  %VR21
  br i1 %VR24.0, label %eq_test_join_A2I_20, label %eq_test_join_false_A2I_20
;#######################################; <- eq_test_join_true_A2I_20


;#######################################; -> eq_test_join_false_A2I_20
eq_test_join_false_A2I_20:
  %VR26 = call i32  @equality_test(i32 1, i32 0, i32 %VR18, i32 %VR21)
  %VR24.1 = icmp eq i32 %VR26,  1
  br label %eq_test_join_A2I_20
;#######################################; <- eq_test_join_false_A2I_20


;#######################################; -> eq_test_join_A2I_20
eq_test_join_A2I_20:
  %VR24 = phi i1 [ %VR24.0, %eq_test_join_true_A2I_20 ] , [ %VR24.1, %eq_test_join_false_A2I_20 ] 
;; <- eq: linia 200
  %VR27 = icmp eq i1 %VR24,  false
  br i1 %VR27, label %false_A2I_20, label %false_false_A2I_20
;#######################################; <- eq_test_join_A2I_20


;#######################################; -> false_false_A2I_20
false_false_A2I_20:
;;if: linia 200 (expresia pentru then)
;- cond -- int_const -
;; -> int_const: linia 200
  %VR28 = add i32 0, 0
;; <- int_const: linia 200
  br label %join_if_A2I_20_true
;#######################################; <- false_false_A2I_20


;#######################################; -> join_if_A2I_20_true
join_if_A2I_20_true:
  %VR2.0 = add i32 %VR28, 0
  br label %join_if_A2I_20
;#######################################; <- join_if_A2I_20_true


;#######################################; -> false_A2I_20
false_A2I_20:
;;if: linia 200 (expresia pentru else)
;- cond -- cond -
;; -> cond: linia 201
;;if: linia 201 (expresia pentru predicat)
;;%VR29 rezervat pentru rezultatul if-ului
;- cond -- cond -- eq -
;; -> eq: linia 201
;- cond -- cond -- eq -- dispatch -
;; -> dispatch: linia 201
;;generez codul pentru apelul metodei substr
;- cond -- cond -- eq -- dispatch -- int_const -
;; -> int_const: linia 201
  %VR30 = add i32 0, 0
;; <- int_const: linia 201
;- cond -- cond -- eq -- dispatch -- int_const -
;; -> int_const: linia 201
  %VR31 = add i32 1, 0
;; <- int_const: linia 201
;- cond -- cond -- eq -- dispatch -- object -
;; -> object: linia 201
;; <- object: linia 201
  %VR32 = inttoptr i32 %VR1 to i32*
  %VR33 = icmp eq i32* %VR32,  null
  br i1 %VR33, label %false_dispatch3, label %dispatch_not_void_A2I_3
;#######################################; <- false_A2I_20


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__25 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_A2I_3
dispatch_not_void_A2I_3:
  %VR34 = ptrtoint i32* %VR32 to i32 
  %VR35 = add i32 %VR34, 8
  %VR36 = inttoptr i32 %VR35 to i32*
  %VR37 = load i32* %VR36
  %VR38 = add i32 %VR37, 20
  %VR39 = inttoptr i32 %VR38 to i32*
  %VR40 = load i32* %VR39
;boxing to int
  %VR41 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR42 = add i32 %VR41, 12
  %VR43 = inttoptr i32 %VR42 to i32*
  store i32 %VR30, i32* %VR43
;boxing to int
  %VR44 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR45 = add i32 %VR44, 12
  %VR46 = inttoptr i32 %VR45 to i32*
  store i32 %VR31, i32* %VR46
  %VR47 = inttoptr i32 %VR40 to i32 (i32, i32, i32)*
  %VR48 = call i32 (i32, i32, i32)* %VR47(i32 %VR1, i32 %VR41, i32 %VR44)
;; <- dispatch: linia 201
;- cond -- cond -- eq -- string_const -
;; -> string_const: linia 201
  %VR49 = ptrtoint %struct.String_protObj_t* @str_const__12 to i32 
;; <- string_const: linia 201
  br label %eq_test_join_true_A2I_21
;#######################################; <- dispatch_not_void_A2I_3


;#######################################; -> eq_test_join_true_A2I_21
eq_test_join_true_A2I_21:
  %VR50.0 = icmp eq i32 %VR48,  %VR49
  br i1 %VR50.0, label %eq_test_join_A2I_21, label %eq_test_join_false_A2I_21
;#######################################; <- eq_test_join_true_A2I_21


;#######################################; -> eq_test_join_false_A2I_21
eq_test_join_false_A2I_21:
  %VR52 = call i32  @equality_test(i32 1, i32 0, i32 %VR48, i32 %VR49)
  %VR50.1 = icmp eq i32 %VR52,  1
  br label %eq_test_join_A2I_21
;#######################################; <- eq_test_join_false_A2I_21


;#######################################; -> eq_test_join_A2I_21
eq_test_join_A2I_21:
  %VR50 = phi i1 [ %VR50.0, %eq_test_join_true_A2I_21 ] , [ %VR50.1, %eq_test_join_false_A2I_21 ] 
;; <- eq: linia 201
  %VR53 = icmp eq i1 %VR50,  false
  br i1 %VR53, label %false_A2I_21, label %false_false_A2I_21
;#######################################; <- eq_test_join_A2I_21


;#######################################; -> false_false_A2I_21
false_false_A2I_21:
;;if: linia 201 (expresia pentru then)
;- cond -- cond -- neg -
;; -> neg: linia 201
;- cond -- cond -- neg -- dispatch -
;; -> dispatch: linia 201
;;generez codul pentru apelul metodei a2i_aux
;- cond -- cond -- neg -- dispatch -- dispatch -
;; -> dispatch: linia 201
;;generez codul pentru apelul metodei substr
;- cond -- cond -- neg -- dispatch -- dispatch -- int_const -
;; -> int_const: linia 201
  %VR54 = add i32 1, 0
;; <- int_const: linia 201
;- cond -- cond -- neg -- dispatch -- dispatch -- sub -
;; -> sub: linia 201
;- cond -- cond -- neg -- dispatch -- dispatch -- sub -- dispatch -
;; -> dispatch: linia 201
;;generez codul pentru apelul metodei length
;- cond -- cond -- neg -- dispatch -- dispatch -- sub -- dispatch -- object -
;; -> object: linia 201
;; <- object: linia 201
  %VR55 = inttoptr i32 %VR1 to i32*
  %VR56 = icmp eq i32* %VR55,  null
  br i1 %VR56, label %false_dispatch4, label %dispatch_not_void_A2I_4
;#######################################; <- false_false_A2I_21


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__25 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_A2I_4
dispatch_not_void_A2I_4:
  %VR57 = ptrtoint i32* %VR55 to i32 
  %VR58 = add i32 %VR57, 8
  %VR59 = inttoptr i32 %VR58 to i32*
  %VR60 = load i32* %VR59
  %VR61 = add i32 %VR60, 16
  %VR62 = inttoptr i32 %VR61 to i32*
  %VR63 = load i32* %VR62
  %VR64 = inttoptr i32 %VR63 to i32 (i32)*
  %VR65 = call i32 (i32)* %VR64(i32 %VR1)
  %VR66 = add i32 %VR65, 12
  %VR67 = inttoptr i32 %VR66 to i32*
  %VR68 = load i32* %VR67
;; <- dispatch: linia 201
;- cond -- cond -- neg -- dispatch -- dispatch -- sub -- int_const -
;; -> int_const: linia 201
  %VR69 = add i32 1, 0
;; <- int_const: linia 201
  %VR70 = sub i32 %VR68, %VR69
;; <- sub: linia 201
;- cond -- cond -- neg -- dispatch -- dispatch -- object -
;; -> object: linia 201
;; <- object: linia 201
  %VR71 = inttoptr i32 %VR1 to i32*
  %VR72 = icmp eq i32* %VR71,  null
  br i1 %VR72, label %false_dispatch5, label %dispatch_not_void_A2I_5
;#######################################; <- dispatch_not_void_A2I_4


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__25 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_A2I_5
dispatch_not_void_A2I_5:
  %VR73 = ptrtoint i32* %VR71 to i32 
  %VR74 = add i32 %VR73, 8
  %VR75 = inttoptr i32 %VR74 to i32*
  %VR76 = load i32* %VR75
  %VR77 = add i32 %VR76, 20
  %VR78 = inttoptr i32 %VR77 to i32*
  %VR79 = load i32* %VR78
;boxing to int
  %VR80 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR81 = add i32 %VR80, 12
  %VR82 = inttoptr i32 %VR81 to i32*
  store i32 %VR54, i32* %VR82
;boxing to int
  %VR83 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR84 = add i32 %VR83, 12
  %VR85 = inttoptr i32 %VR84 to i32*
  store i32 %VR70, i32* %VR85
  %VR86 = inttoptr i32 %VR79 to i32 (i32, i32, i32)*
  %VR87 = call i32 (i32, i32, i32)* %VR86(i32 %VR1, i32 %VR80, i32 %VR83)
;; <- dispatch: linia 201
;- cond -- cond -- neg -- dispatch -- object -
;; -> object: linia 201
;; <- object: linia 201
  %VR88 = icmp eq %struct.A2I_protObj_t* %VR0,  null
  br i1 %VR88, label %false_dispatch6, label %dispatch_not_void_A2I_6
;#######################################; <- dispatch_not_void_A2I_5


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__25 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_A2I_6
dispatch_not_void_A2I_6:
  %VR89 = ptrtoint %struct.A2I_protObj_t* %VR0 to i32 
  %VR90 = add i32 %VR89, 8
  %VR91 = inttoptr i32 %VR90 to i32*
  %VR92 = load i32* %VR91
  %VR93 = add i32 %VR92, 24
  %VR94 = inttoptr i32 %VR93 to i32*
  %VR95 = load i32* %VR94
  %VR96 = inttoptr i32 %VR95 to i32 (i32, i32)*
  %VR97 = call i32 (i32, i32)* %VR96(i32 %ARG, i32 %VR87)
;; <- dispatch: linia 201
  %VR98 = xor i32 1, %VR97
;; <- neg: linia 201
  br label %join_if_A2I_21_true
;#######################################; <- dispatch_not_void_A2I_6


;#######################################; -> join_if_A2I_21_true
join_if_A2I_21_true:
  %VR29.0 = add i32 %VR98, 0
  br label %join_if_A2I_21
;#######################################; <- join_if_A2I_21_true


;#######################################; -> false_A2I_21
false_A2I_21:
;;if: linia 201 (expresia pentru else)
;- cond -- cond -- cond -
;; -> cond: linia 202
;;if: linia 202 (expresia pentru predicat)
;;%VR99 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- eq -
;; -> eq: linia 202
;- cond -- cond -- cond -- eq -- dispatch -
;; -> dispatch: linia 202
;;generez codul pentru apelul metodei substr
;- cond -- cond -- cond -- eq -- dispatch -- int_const -
;; -> int_const: linia 202
  %VR100 = add i32 0, 0
;; <- int_const: linia 202
;- cond -- cond -- cond -- eq -- dispatch -- int_const -
;; -> int_const: linia 202
  %VR101 = add i32 1, 0
;; <- int_const: linia 202
;- cond -- cond -- cond -- eq -- dispatch -- object -
;; -> object: linia 202
;; <- object: linia 202
  %VR102 = inttoptr i32 %VR1 to i32*
  %VR103 = icmp eq i32* %VR102,  null
  br i1 %VR103, label %false_dispatch7, label %dispatch_not_void_A2I_7
;#######################################; <- false_A2I_21


;#######################################; -> false_dispatch7
false_dispatch7:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__26 to i32))
  ret i32 0
;#######################################; <- false_dispatch7


;#######################################; -> dispatch_not_void_A2I_7
dispatch_not_void_A2I_7:
  %VR104 = ptrtoint i32* %VR102 to i32 
  %VR105 = add i32 %VR104, 8
  %VR106 = inttoptr i32 %VR105 to i32*
  %VR107 = load i32* %VR106
  %VR108 = add i32 %VR107, 20
  %VR109 = inttoptr i32 %VR108 to i32*
  %VR110 = load i32* %VR109
;boxing to int
  %VR111 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR112 = add i32 %VR111, 12
  %VR113 = inttoptr i32 %VR112 to i32*
  store i32 %VR100, i32* %VR113
;boxing to int
  %VR114 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR115 = add i32 %VR114, 12
  %VR116 = inttoptr i32 %VR115 to i32*
  store i32 %VR101, i32* %VR116
  %VR117 = inttoptr i32 %VR110 to i32 (i32, i32, i32)*
  %VR118 = call i32 (i32, i32, i32)* %VR117(i32 %VR1, i32 %VR111, i32 %VR114)
;; <- dispatch: linia 202
;- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 202
  %VR119 = ptrtoint %struct.String_protObj_t* @str_const__13 to i32 
;; <- string_const: linia 202
  br label %eq_test_join_true_A2I_22
;#######################################; <- dispatch_not_void_A2I_7


;#######################################; -> eq_test_join_true_A2I_22
eq_test_join_true_A2I_22:
  %VR120.0 = icmp eq i32 %VR118,  %VR119
  br i1 %VR120.0, label %eq_test_join_A2I_22, label %eq_test_join_false_A2I_22
;#######################################; <- eq_test_join_true_A2I_22


;#######################################; -> eq_test_join_false_A2I_22
eq_test_join_false_A2I_22:
  %VR122 = call i32  @equality_test(i32 1, i32 0, i32 %VR118, i32 %VR119)
  %VR120.1 = icmp eq i32 %VR122,  1
  br label %eq_test_join_A2I_22
;#######################################; <- eq_test_join_false_A2I_22


;#######################################; -> eq_test_join_A2I_22
eq_test_join_A2I_22:
  %VR120 = phi i1 [ %VR120.0, %eq_test_join_true_A2I_22 ] , [ %VR120.1, %eq_test_join_false_A2I_22 ] 
;; <- eq: linia 202
  %VR123 = icmp eq i1 %VR120,  false
  br i1 %VR123, label %false_A2I_22, label %false_false_A2I_22
;#######################################; <- eq_test_join_A2I_22


;#######################################; -> false_false_A2I_22
false_false_A2I_22:
;;if: linia 202 (expresia pentru then)
;- cond -- cond -- cond -- dispatch -
;; -> dispatch: linia 202
;;generez codul pentru apelul metodei a2i_aux
;- cond -- cond -- cond -- dispatch -- dispatch -
;; -> dispatch: linia 202
;;generez codul pentru apelul metodei substr
;- cond -- cond -- cond -- dispatch -- dispatch -- int_const -
;; -> int_const: linia 202
  %VR124 = add i32 1, 0
;; <- int_const: linia 202
;- cond -- cond -- cond -- dispatch -- dispatch -- sub -
;; -> sub: linia 202
;- cond -- cond -- cond -- dispatch -- dispatch -- sub -- dispatch -
;; -> dispatch: linia 202
;;generez codul pentru apelul metodei length
;- cond -- cond -- cond -- dispatch -- dispatch -- sub -- dispatch -- object -
;; -> object: linia 202
;; <- object: linia 202
  %VR125 = inttoptr i32 %VR1 to i32*
  %VR126 = icmp eq i32* %VR125,  null
  br i1 %VR126, label %false_dispatch8, label %dispatch_not_void_A2I_8
;#######################################; <- false_false_A2I_22


;#######################################; -> false_dispatch8
false_dispatch8:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__26 to i32))
  ret i32 0
;#######################################; <- false_dispatch8


;#######################################; -> dispatch_not_void_A2I_8
dispatch_not_void_A2I_8:
  %VR127 = ptrtoint i32* %VR125 to i32 
  %VR128 = add i32 %VR127, 8
  %VR129 = inttoptr i32 %VR128 to i32*
  %VR130 = load i32* %VR129
  %VR131 = add i32 %VR130, 16
  %VR132 = inttoptr i32 %VR131 to i32*
  %VR133 = load i32* %VR132
  %VR134 = inttoptr i32 %VR133 to i32 (i32)*
  %VR135 = call i32 (i32)* %VR134(i32 %VR1)
  %VR136 = add i32 %VR135, 12
  %VR137 = inttoptr i32 %VR136 to i32*
  %VR138 = load i32* %VR137
;; <- dispatch: linia 202
;- cond -- cond -- cond -- dispatch -- dispatch -- sub -- int_const -
;; -> int_const: linia 202
  %VR139 = add i32 1, 0
;; <- int_const: linia 202
  %VR140 = sub i32 %VR138, %VR139
;; <- sub: linia 202
;- cond -- cond -- cond -- dispatch -- dispatch -- object -
;; -> object: linia 202
;; <- object: linia 202
  %VR141 = inttoptr i32 %VR1 to i32*
  %VR142 = icmp eq i32* %VR141,  null
  br i1 %VR142, label %false_dispatch9, label %dispatch_not_void_A2I_9
;#######################################; <- dispatch_not_void_A2I_8


;#######################################; -> false_dispatch9
false_dispatch9:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__26 to i32))
  ret i32 0
;#######################################; <- false_dispatch9


;#######################################; -> dispatch_not_void_A2I_9
dispatch_not_void_A2I_9:
  %VR143 = ptrtoint i32* %VR141 to i32 
  %VR144 = add i32 %VR143, 8
  %VR145 = inttoptr i32 %VR144 to i32*
  %VR146 = load i32* %VR145
  %VR147 = add i32 %VR146, 20
  %VR148 = inttoptr i32 %VR147 to i32*
  %VR149 = load i32* %VR148
;boxing to int
  %VR150 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR151 = add i32 %VR150, 12
  %VR152 = inttoptr i32 %VR151 to i32*
  store i32 %VR124, i32* %VR152
;boxing to int
  %VR153 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR154 = add i32 %VR153, 12
  %VR155 = inttoptr i32 %VR154 to i32*
  store i32 %VR140, i32* %VR155
  %VR156 = inttoptr i32 %VR149 to i32 (i32, i32, i32)*
  %VR157 = call i32 (i32, i32, i32)* %VR156(i32 %VR1, i32 %VR150, i32 %VR153)
;; <- dispatch: linia 202
;- cond -- cond -- cond -- dispatch -- object -
;; -> object: linia 202
;; <- object: linia 202
  %VR158 = icmp eq %struct.A2I_protObj_t* %VR0,  null
  br i1 %VR158, label %false_dispatch10, label %dispatch_not_void_A2I_10
;#######################################; <- dispatch_not_void_A2I_9


;#######################################; -> false_dispatch10
false_dispatch10:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__26 to i32))
  ret i32 0
;#######################################; <- false_dispatch10


;#######################################; -> dispatch_not_void_A2I_10
dispatch_not_void_A2I_10:
  %VR159 = ptrtoint %struct.A2I_protObj_t* %VR0 to i32 
  %VR160 = add i32 %VR159, 8
  %VR161 = inttoptr i32 %VR160 to i32*
  %VR162 = load i32* %VR161
  %VR163 = add i32 %VR162, 24
  %VR164 = inttoptr i32 %VR163 to i32*
  %VR165 = load i32* %VR164
  %VR166 = inttoptr i32 %VR165 to i32 (i32, i32)*
  %VR167 = call i32 (i32, i32)* %VR166(i32 %ARG, i32 %VR157)
;; <- dispatch: linia 202
  br label %join_if_A2I_22_true
;#######################################; <- dispatch_not_void_A2I_10


;#######################################; -> join_if_A2I_22_true
join_if_A2I_22_true:
  %VR99.0 = add i32 %VR167, 0
  br label %join_if_A2I_22
;#######################################; <- join_if_A2I_22_true


;#######################################; -> false_A2I_22
false_A2I_22:
;;if: linia 202 (expresia pentru else)
;- cond -- cond -- cond -- dispatch -
;; -> dispatch: linia 203
;;generez codul pentru apelul metodei a2i_aux
;- cond -- cond -- cond -- dispatch -- object -
;; -> object: linia 203
;; <- object: linia 203
;- cond -- cond -- cond -- dispatch -- object -
;; -> object: linia 203
;; <- object: linia 203
  %VR168 = icmp eq %struct.A2I_protObj_t* %VR0,  null
  br i1 %VR168, label %false_dispatch11, label %dispatch_not_void_A2I_11
;#######################################; <- false_A2I_22


;#######################################; -> false_dispatch11
false_dispatch11:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__27 to i32))
  ret i32 0
;#######################################; <- false_dispatch11


;#######################################; -> dispatch_not_void_A2I_11
dispatch_not_void_A2I_11:
  %VR169 = ptrtoint %struct.A2I_protObj_t* %VR0 to i32 
  %VR170 = add i32 %VR169, 8
  %VR171 = inttoptr i32 %VR170 to i32*
  %VR172 = load i32* %VR171
  %VR173 = add i32 %VR172, 24
  %VR174 = inttoptr i32 %VR173 to i32*
  %VR175 = load i32* %VR174
  %VR176 = inttoptr i32 %VR175 to i32 (i32, i32)*
  %VR177 = call i32 (i32, i32)* %VR176(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 203
  br label %join_if_A2I_22_false
;#######################################; <- dispatch_not_void_A2I_11


;#######################################; -> join_if_A2I_22_false
join_if_A2I_22_false:
  %VR99.1 = add i32 %VR177, 0
  br label %join_if_A2I_22
;#######################################; <- join_if_A2I_22_false


;#######################################; -> join_if_A2I_22
join_if_A2I_22:
  %VR99 = phi i32 [ %VR99.0, %join_if_A2I_22_true ], [ %VR99.1, %join_if_A2I_22_false ]
;; <- cond: linia 202
  br label %join_if_A2I_21_false
;#######################################; <- join_if_A2I_22


;#######################################; -> join_if_A2I_21_false
join_if_A2I_21_false:
  %VR29.1 = add i32 %VR99, 0
  br label %join_if_A2I_21
;#######################################; <- join_if_A2I_21_false


;#######################################; -> join_if_A2I_21
join_if_A2I_21:
  %VR29 = phi i32 [ %VR29.0, %join_if_A2I_21_true ], [ %VR29.1, %join_if_A2I_21_false ]
;; <- cond: linia 201
  br label %join_if_A2I_20_false
;#######################################; <- join_if_A2I_21


;#######################################; -> join_if_A2I_20_false
join_if_A2I_20_false:
  %VR2.1 = add i32 %VR29, 0
  br label %join_if_A2I_20
;#######################################; <- join_if_A2I_20_false


;#######################################; -> join_if_A2I_20
join_if_A2I_20:
  %VR2 = phi i32 [ %VR2.0, %join_if_A2I_20_true ], [ %VR2.1, %join_if_A2I_20_false ]
;; <- cond: linia 200
  ret i32 %VR2
;#######################################; <- join_if_A2I_20


}
define i32 @A2I__a2i_aux(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR17a = alloca i32 
  store i32 0, i32* %VR17a
  %VR2a = alloca i32 
  store i32 0, i32* %VR2a
  %VR0 = inttoptr i32 %ARG to %struct.A2I_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- let -
;; -> let: linia 212
;- let -- int_const -
;; -> int_const: linia 212
  %VR2.a = add i32 0, 0
  store i32 %VR2.a, i32* %VR2a
;; <- int_const: linia 212
;- let -- block -
;; -> block: linia 213
;- let -- block -- let -
;; -> let: linia 214
;- let -- block -- let -- dispatch -
;; -> dispatch: linia 214
;;generez codul pentru apelul metodei length
;- let -- block -- let -- dispatch -- object -
;; -> object: linia 214
;; <- object: linia 214
  %VR3 = inttoptr i32 %VR1 to i32*
  %VR4 = icmp eq i32* %VR3,  null
  br i1 %VR4, label %false_dispatch12, label %dispatch_not_void_A2I_12
;#######################################; <- entry


;#######################################; -> false_dispatch12
false_dispatch12:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__28 to i32))
  ret i32 0
;#######################################; <- false_dispatch12


;#######################################; -> dispatch_not_void_A2I_12
dispatch_not_void_A2I_12:
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
;; <- dispatch: linia 214
;- let -- block -- let -- let -
;; -> let: linia 215
;- let -- block -- let -- let -- int_const -
;; -> int_const: linia 215
  %VR17.a = add i32 0, 0
  store i32 %VR17.a, i32* %VR17a
;; <- int_const: linia 215
;- let -- block -- let -- let -- loop -
;; -> loop: linia 216
;; conditie
  br label %start_loop_A2I_0
;#######################################; <- dispatch_not_void_A2I_12


;#######################################; -> start_loop_A2I_0
start_loop_A2I_0:
  %VR17_tmp2 = load i32* %VR17a
;- let -- block -- let -- let -- loop -- lt -
;; -> lt: linia 216
;- let -- block -- let -- let -- loop -- lt -- object -
;; -> object: linia 216
;; <- object: linia 216
;- let -- block -- let -- let -- loop -- lt -- object -
;; -> object: linia 216
;; <- object: linia 216
  %VR18 = icmp slt i32 %VR17_tmp2,  %VR16
;; <- lt: linia 216
  %VR19 = icmp eq i1 %VR18,  false
  br i1 %VR19, label %sfarsit_loop_A2I_0, label %label_next_loop_A2I_0
;#######################################; <- start_loop_A2I_0


;#######################################; -> label_next_loop_A2I_0
label_next_loop_A2I_0:
  %VR2_tmp0 = load i32* %VR2a
;; corp loop
;- let -- block -- let -- let -- loop -- block -
;; -> block: linia 217
;- let -- block -- let -- let -- loop -- block -- assign -
;; -> assign: linia 218
;- let -- block -- let -- let -- loop -- block -- assign -- plus -
;; -> plus: linia 218
;- let -- block -- let -- let -- loop -- block -- assign -- plus -- mul -
;; -> mul: linia 218
;- let -- block -- let -- let -- loop -- block -- assign -- plus -- mul -- object -
;; -> object: linia 218
;; <- object: linia 218
;- let -- block -- let -- let -- loop -- block -- assign -- plus -- mul -- int_const -
;; -> int_const: linia 218
  %VR20 = add i32 10, 0
;; <- int_const: linia 218
  %VR21 = mul i32 %VR2_tmp0, %VR20
;; <- mul: linia 218
;- let -- block -- let -- let -- loop -- block -- assign -- plus -- dispatch -
;; -> dispatch: linia 218
;;generez codul pentru apelul metodei c2i
;- let -- block -- let -- let -- loop -- block -- assign -- plus -- dispatch -- dispatch -
;; -> dispatch: linia 218
;;generez codul pentru apelul metodei substr
;- let -- block -- let -- let -- loop -- block -- assign -- plus -- dispatch -- dispatch -- object -
;; -> object: linia 218
;; <- object: linia 218
;- let -- block -- let -- let -- loop -- block -- assign -- plus -- dispatch -- dispatch -- int_const -
;; -> int_const: linia 218
  %VR22 = add i32 1, 0
;; <- int_const: linia 218
;- let -- block -- let -- let -- loop -- block -- assign -- plus -- dispatch -- dispatch -- object -
;; -> object: linia 218
;; <- object: linia 218
  %VR23 = inttoptr i32 %VR1 to i32*
  %VR24 = icmp eq i32* %VR23,  null
  br i1 %VR24, label %false_dispatch13, label %dispatch_not_void_A2I_13
;#######################################; <- label_next_loop_A2I_0


;#######################################; -> false_dispatch13
false_dispatch13:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__29 to i32))
  ret i32 0
;#######################################; <- false_dispatch13


;#######################################; -> dispatch_not_void_A2I_13
dispatch_not_void_A2I_13:
  %VR17_tmp3 = load i32* %VR17a
  %VR25 = ptrtoint i32* %VR23 to i32 
  %VR26 = add i32 %VR25, 8
  %VR27 = inttoptr i32 %VR26 to i32*
  %VR28 = load i32* %VR27
  %VR29 = add i32 %VR28, 20
  %VR30 = inttoptr i32 %VR29 to i32*
  %VR31 = load i32* %VR30
;boxing to int
  %VR32 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR33 = add i32 %VR32, 12
  %VR34 = inttoptr i32 %VR33 to i32*
  store i32 %VR17_tmp3, i32* %VR34
;boxing to int
  %VR35 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR36 = add i32 %VR35, 12
  %VR37 = inttoptr i32 %VR36 to i32*
  store i32 %VR22, i32* %VR37
  %VR38 = inttoptr i32 %VR31 to i32 (i32, i32, i32)*
  %VR39 = call i32 (i32, i32, i32)* %VR38(i32 %VR1, i32 %VR32, i32 %VR35)
;; <- dispatch: linia 218
;- let -- block -- let -- let -- loop -- block -- assign -- plus -- dispatch -- object -
;; -> object: linia 218
;; <- object: linia 218
  %VR40 = icmp eq %struct.A2I_protObj_t* %VR0,  null
  br i1 %VR40, label %false_dispatch14, label %dispatch_not_void_A2I_14
;#######################################; <- dispatch_not_void_A2I_13


;#######################################; -> false_dispatch14
false_dispatch14:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__29 to i32))
  ret i32 0
;#######################################; <- false_dispatch14


;#######################################; -> dispatch_not_void_A2I_14
dispatch_not_void_A2I_14:
  %VR17_tmp4 = load i32* %VR17a
  %VR41 = ptrtoint %struct.A2I_protObj_t* %VR0 to i32 
  %VR42 = add i32 %VR41, 8
  %VR43 = inttoptr i32 %VR42 to i32*
  %VR44 = load i32* %VR43
  %VR45 = add i32 %VR44, 12
  %VR46 = inttoptr i32 %VR45 to i32*
  %VR47 = load i32* %VR46
  %VR48 = inttoptr i32 %VR47 to i32 (i32, i32)*
  %VR49 = call i32 (i32, i32)* %VR48(i32 %ARG, i32 %VR39)
;; <- dispatch: linia 218
  %VR50 = add i32 %VR21, %VR49
;; <- plus: linia 218
  store i32 %VR50, i32* %VR2a
;; <- assign: linia 218
;- let -- block -- let -- let -- loop -- block -- assign -
;; -> assign: linia 219
;- let -- block -- let -- let -- loop -- block -- assign -- plus -
;; -> plus: linia 219
;- let -- block -- let -- let -- loop -- block -- assign -- plus -- object -
;; -> object: linia 219
;; <- object: linia 219
;- let -- block -- let -- let -- loop -- block -- assign -- plus -- int_const -
;; -> int_const: linia 219
  %VR51 = add i32 1, 0
;; <- int_const: linia 219
  %VR52 = add i32 %VR17_tmp4, %VR51
;; <- plus: linia 219
  store i32 %VR52, i32* %VR17a
;; <- assign: linia 219
;; <- block: linia 217
  br label %start_loop_A2I_0
;#######################################; <- dispatch_not_void_A2I_14


;#######################################; -> sfarsit_loop_A2I_0
sfarsit_loop_A2I_0:
  %VR2_tmp1 = load i32* %VR2a
;; <- loop: linia 216
;; <- let: linia 215
;; <- let: linia 214
;- let -- block -- object -
;; -> object: linia 224
;; <- object: linia 224
;; <- block: linia 213
;; <- let: linia 212
  ret i32 %VR2_tmp1
;#######################################; <- sfarsit_loop_A2I_0


}
define i32 @A2I__i2a(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.A2I_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 233
;;if: linia 233 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- eq -
;; -> eq: linia 233
;- cond -- eq -- object -
;; -> object: linia 233
;; <- object: linia 233
;- cond -- eq -- int_const -
;; -> int_const: linia 233
  %VR3 = add i32 0, 0
;; <- int_const: linia 233
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
  br label %eq_test_join_true_A2I_23
;#######################################; <- entry


;#######################################; -> eq_test_join_true_A2I_23
eq_test_join_true_A2I_23:
  %VR10.0 = icmp eq i32 %VR4,  %VR7
  br i1 %VR10.0, label %eq_test_join_A2I_23, label %eq_test_join_false_A2I_23
;#######################################; <- eq_test_join_true_A2I_23


;#######################################; -> eq_test_join_false_A2I_23
eq_test_join_false_A2I_23:
  %VR12 = call i32  @equality_test(i32 1, i32 0, i32 %VR4, i32 %VR7)
  %VR10.1 = icmp eq i32 %VR12,  1
  br label %eq_test_join_A2I_23
;#######################################; <- eq_test_join_false_A2I_23


;#######################################; -> eq_test_join_A2I_23
eq_test_join_A2I_23:
  %VR10 = phi i1 [ %VR10.0, %eq_test_join_true_A2I_23 ] , [ %VR10.1, %eq_test_join_false_A2I_23 ] 
;; <- eq: linia 233
  %VR13 = icmp eq i1 %VR10,  false
  br i1 %VR13, label %false_A2I_23, label %false_false_A2I_23
;#######################################; <- eq_test_join_A2I_23


;#######################################; -> false_false_A2I_23
false_false_A2I_23:
;;if: linia 233 (expresia pentru then)
;- cond -- string_const -
;; -> string_const: linia 233
  %VR14 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 233
  br label %join_if_A2I_23_true
;#######################################; <- false_false_A2I_23


;#######################################; -> join_if_A2I_23_true
join_if_A2I_23_true:
  %VR2.0 = add i32 %VR14, 0
  br label %join_if_A2I_23
;#######################################; <- join_if_A2I_23_true


;#######################################; -> false_A2I_23
false_A2I_23:
;;if: linia 233 (expresia pentru else)
;- cond -- cond -
;; -> cond: linia 234
;;if: linia 234 (expresia pentru predicat)
;;%VR15 rezervat pentru rezultatul if-ului
;- cond -- cond -- lt -
;; -> lt: linia 234
;- cond -- cond -- lt -- int_const -
;; -> int_const: linia 234
  %VR16 = add i32 0, 0
;; <- int_const: linia 234
;- cond -- cond -- lt -- object -
;; -> object: linia 234
;; <- object: linia 234
  %VR17 = icmp slt i32 %VR16,  %VR1
;; <- lt: linia 234
  %VR18 = icmp eq i1 %VR17,  false
  br i1 %VR18, label %false_A2I_24, label %false_false_A2I_24
;#######################################; <- false_A2I_23


;#######################################; -> false_false_A2I_24
false_false_A2I_24:
;;if: linia 234 (expresia pentru then)
;- cond -- cond -- dispatch -
;; -> dispatch: linia 234
;;generez codul pentru apelul metodei i2a_aux
;- cond -- cond -- dispatch -- object -
;; -> object: linia 234
;; <- object: linia 234
;- cond -- cond -- dispatch -- object -
;; -> object: linia 234
;; <- object: linia 234
  %VR19 = icmp eq %struct.A2I_protObj_t* %VR0,  null
  br i1 %VR19, label %false_dispatch15, label %dispatch_not_void_A2I_15
;#######################################; <- false_false_A2I_24


;#######################################; -> false_dispatch15
false_dispatch15:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__30 to i32))
  ret i32 0
;#######################################; <- false_dispatch15


;#######################################; -> dispatch_not_void_A2I_15
dispatch_not_void_A2I_15:
  %VR20 = ptrtoint %struct.A2I_protObj_t* %VR0 to i32 
  %VR21 = add i32 %VR20, 8
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = load i32* %VR22
  %VR24 = add i32 %VR23, 32
  %VR25 = inttoptr i32 %VR24 to i32*
  %VR26 = load i32* %VR25
  %VR27 = inttoptr i32 %VR26 to i32 (i32, i32)*
  %VR28 = call i32 (i32, i32)* %VR27(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 234
  br label %join_if_A2I_24_true
;#######################################; <- dispatch_not_void_A2I_15


;#######################################; -> join_if_A2I_24_true
join_if_A2I_24_true:
  %VR15.0 = add i32 %VR28, 0
  br label %join_if_A2I_24
;#######################################; <- join_if_A2I_24_true


;#######################################; -> false_A2I_24
false_A2I_24:
;;if: linia 234 (expresia pentru else)
;- cond -- cond -- dispatch -
;; -> dispatch: linia 235
;;generez codul pentru apelul metodei concat
;- cond -- cond -- dispatch -- dispatch -
;; -> dispatch: linia 235
;;generez codul pentru apelul metodei i2a_aux
;- cond -- cond -- dispatch -- dispatch -- mul -
;; -> mul: linia 235
;- cond -- cond -- dispatch -- dispatch -- mul -- object -
;; -> object: linia 235
;; <- object: linia 235
;- cond -- cond -- dispatch -- dispatch -- mul -- neg -
;; -> neg: linia 235
;- cond -- cond -- dispatch -- dispatch -- mul -- neg -- int_const -
;; -> int_const: linia 235
  %VR29 = add i32 1, 0
;; <- int_const: linia 235
  %VR30 = xor i32 1, %VR29
;; <- neg: linia 235
  %VR31 = mul i32 %VR1, %VR30
;; <- mul: linia 235
;- cond -- cond -- dispatch -- dispatch -- object -
;; -> object: linia 235
;; <- object: linia 235
  %VR32 = icmp eq %struct.A2I_protObj_t* %VR0,  null
  br i1 %VR32, label %false_dispatch16, label %dispatch_not_void_A2I_16
;#######################################; <- false_A2I_24


;#######################################; -> false_dispatch16
false_dispatch16:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__31 to i32))
  ret i32 0
;#######################################; <- false_dispatch16


;#######################################; -> dispatch_not_void_A2I_16
dispatch_not_void_A2I_16:
  %VR33 = ptrtoint %struct.A2I_protObj_t* %VR0 to i32 
  %VR34 = add i32 %VR33, 8
  %VR35 = inttoptr i32 %VR34 to i32*
  %VR36 = load i32* %VR35
  %VR37 = add i32 %VR36, 32
  %VR38 = inttoptr i32 %VR37 to i32*
  %VR39 = load i32* %VR38
  %VR40 = inttoptr i32 %VR39 to i32 (i32, i32)*
  %VR41 = call i32 (i32, i32)* %VR40(i32 %ARG, i32 %VR31)
;; <- dispatch: linia 235
;- cond -- cond -- dispatch -- string_const -
;; -> string_const: linia 235
  %VR42 = ptrtoint %struct.String_protObj_t* @str_const__12 to i32 
;; <- string_const: linia 235
  %VR43 = inttoptr i32 %VR42 to i32*
  %VR44 = icmp eq i32* %VR43,  null
  br i1 %VR44, label %false_dispatch17, label %dispatch_not_void_A2I_17
;#######################################; <- dispatch_not_void_A2I_16


;#######################################; -> false_dispatch17
false_dispatch17:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__31 to i32))
  ret i32 0
;#######################################; <- false_dispatch17


;#######################################; -> dispatch_not_void_A2I_17
dispatch_not_void_A2I_17:
  %VR45 = ptrtoint i32* %VR43 to i32 
  %VR46 = add i32 %VR45, 8
  %VR47 = inttoptr i32 %VR46 to i32*
  %VR48 = load i32* %VR47
  %VR49 = add i32 %VR48, 12
  %VR50 = inttoptr i32 %VR49 to i32*
  %VR51 = load i32* %VR50
  %VR52 = inttoptr i32 %VR51 to i32 (i32, i32)*
  %VR53 = call i32 (i32, i32)* %VR52(i32 %VR42, i32 %VR41)
;; <- dispatch: linia 235
  br label %join_if_A2I_24_false
;#######################################; <- dispatch_not_void_A2I_17


;#######################################; -> join_if_A2I_24_false
join_if_A2I_24_false:
  %VR15.1 = add i32 %VR53, 0
  br label %join_if_A2I_24
;#######################################; <- join_if_A2I_24_false


;#######################################; -> join_if_A2I_24
join_if_A2I_24:
  %VR15 = phi i32 [ %VR15.0, %join_if_A2I_24_true ], [ %VR15.1, %join_if_A2I_24_false ]
;; <- cond: linia 234
  br label %join_if_A2I_23_false
;#######################################; <- join_if_A2I_24


;#######################################; -> join_if_A2I_23_false
join_if_A2I_23_false:
  %VR2.1 = add i32 %VR15, 0
  br label %join_if_A2I_23
;#######################################; <- join_if_A2I_23_false


;#######################################; -> join_if_A2I_23
join_if_A2I_23:
  %VR2 = phi i32 [ %VR2.0, %join_if_A2I_23_true ], [ %VR2.1, %join_if_A2I_23_false ]
;; <- cond: linia 233
  ret i32 %VR2
;#######################################; <- join_if_A2I_23


}
define i32 @A2I__i2a_aux(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.A2I_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 242
;;if: linia 242 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- eq -
;; -> eq: linia 242
;- cond -- eq -- object -
;; -> object: linia 242
;; <- object: linia 242
;- cond -- eq -- int_const -
;; -> int_const: linia 242
  %VR3 = add i32 0, 0
;; <- int_const: linia 242
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
  br label %eq_test_join_true_A2I_24
;#######################################; <- entry


;#######################################; -> eq_test_join_true_A2I_24
eq_test_join_true_A2I_24:
  %VR10.0 = icmp eq i32 %VR4,  %VR7
  br i1 %VR10.0, label %eq_test_join_A2I_24, label %eq_test_join_false_A2I_24
;#######################################; <- eq_test_join_true_A2I_24


;#######################################; -> eq_test_join_false_A2I_24
eq_test_join_false_A2I_24:
  %VR12 = call i32  @equality_test(i32 1, i32 0, i32 %VR4, i32 %VR7)
  %VR10.1 = icmp eq i32 %VR12,  1
  br label %eq_test_join_A2I_24
;#######################################; <- eq_test_join_false_A2I_24


;#######################################; -> eq_test_join_A2I_24
eq_test_join_A2I_24:
  %VR10 = phi i1 [ %VR10.0, %eq_test_join_true_A2I_24 ] , [ %VR10.1, %eq_test_join_false_A2I_24 ] 
;; <- eq: linia 242
  %VR13 = icmp eq i1 %VR10,  false
  br i1 %VR13, label %false_A2I_25, label %false_false_A2I_25
;#######################################; <- eq_test_join_A2I_24


;#######################################; -> false_false_A2I_25
false_false_A2I_25:
;;if: linia 242 (expresia pentru then)
;- cond -- string_const -
;; -> string_const: linia 242
  %VR14 = ptrtoint %struct.String_protObj_t* @str_const__11 to i32 
;; <- string_const: linia 242
  br label %join_if_A2I_25_true
;#######################################; <- false_false_A2I_25


;#######################################; -> join_if_A2I_25_true
join_if_A2I_25_true:
  %VR2.0 = add i32 %VR14, 0
  br label %join_if_A2I_25
;#######################################; <- join_if_A2I_25_true


;#######################################; -> false_A2I_25
false_A2I_25:
;;if: linia 242 (expresia pentru else)
;- cond -- let -
;; -> let: linia 243
;- cond -- let -- divide -
;; -> divide: linia 243
;- cond -- let -- divide -- object -
;; -> object: linia 243
;; <- object: linia 243
;- cond -- let -- divide -- int_const -
;; -> int_const: linia 243
  %VR15 = add i32 10, 0
;; <- int_const: linia 243
  %VR16 = sdiv i32 %VR1, %VR15
;; <- divide: linia 243
;- cond -- let -- dispatch -
;; -> dispatch: linia 244
;;generez codul pentru apelul metodei concat
;- cond -- let -- dispatch -- dispatch -
;; -> dispatch: linia 244
;;generez codul pentru apelul metodei i2c
;- cond -- let -- dispatch -- dispatch -- sub -
;; -> sub: linia 244
;- cond -- let -- dispatch -- dispatch -- sub -- object -
;; -> object: linia 244
;; <- object: linia 244
;- cond -- let -- dispatch -- dispatch -- sub -- mul -
;; -> mul: linia 244
;- cond -- let -- dispatch -- dispatch -- sub -- mul -- object -
;; -> object: linia 244
;; <- object: linia 244
;- cond -- let -- dispatch -- dispatch -- sub -- mul -- int_const -
;; -> int_const: linia 244
  %VR17 = add i32 10, 0
;; <- int_const: linia 244
  %VR18 = mul i32 %VR16, %VR17
;; <- mul: linia 244
  %VR19 = sub i32 %VR1, %VR18
;; <- sub: linia 244
;- cond -- let -- dispatch -- dispatch -- object -
;; -> object: linia 244
;; <- object: linia 244
  %VR20 = icmp eq %struct.A2I_protObj_t* %VR0,  null
  br i1 %VR20, label %false_dispatch18, label %dispatch_not_void_A2I_18
;#######################################; <- false_A2I_25


;#######################################; -> false_dispatch18
false_dispatch18:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__32 to i32))
  ret i32 0
;#######################################; <- false_dispatch18


;#######################################; -> dispatch_not_void_A2I_18
dispatch_not_void_A2I_18:
  %VR21 = ptrtoint %struct.A2I_protObj_t* %VR0 to i32 
  %VR22 = add i32 %VR21, 8
  %VR23 = inttoptr i32 %VR22 to i32*
  %VR24 = load i32* %VR23
  %VR25 = add i32 %VR24, 16
  %VR26 = inttoptr i32 %VR25 to i32*
  %VR27 = load i32* %VR26
  %VR28 = inttoptr i32 %VR27 to i32 (i32, i32)*
  %VR29 = call i32 (i32, i32)* %VR28(i32 %ARG, i32 %VR19)
;; <- dispatch: linia 244
;- cond -- let -- dispatch -- dispatch -
;; -> dispatch: linia 244
;;generez codul pentru apelul metodei i2a_aux
;- cond -- let -- dispatch -- dispatch -- object -
;; -> object: linia 244
;; <- object: linia 244
;- cond -- let -- dispatch -- dispatch -- object -
;; -> object: linia 244
;; <- object: linia 244
  %VR30 = icmp eq %struct.A2I_protObj_t* %VR0,  null
  br i1 %VR30, label %false_dispatch19, label %dispatch_not_void_A2I_19
;#######################################; <- dispatch_not_void_A2I_18


;#######################################; -> false_dispatch19
false_dispatch19:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__32 to i32))
  ret i32 0
;#######################################; <- false_dispatch19


;#######################################; -> dispatch_not_void_A2I_19
dispatch_not_void_A2I_19:
  %VR31 = ptrtoint %struct.A2I_protObj_t* %VR0 to i32 
  %VR32 = add i32 %VR31, 8
  %VR33 = inttoptr i32 %VR32 to i32*
  %VR34 = load i32* %VR33
  %VR35 = add i32 %VR34, 32
  %VR36 = inttoptr i32 %VR35 to i32*
  %VR37 = load i32* %VR36
  %VR38 = inttoptr i32 %VR37 to i32 (i32, i32)*
  %VR39 = call i32 (i32, i32)* %VR38(i32 %ARG, i32 %VR16)
;; <- dispatch: linia 244
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = icmp eq i32* %VR40,  null
  br i1 %VR41, label %false_dispatch20, label %dispatch_not_void_A2I_20
;#######################################; <- dispatch_not_void_A2I_19


;#######################################; -> false_dispatch20
false_dispatch20:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__32 to i32))
  ret i32 0
;#######################################; <- false_dispatch20


;#######################################; -> dispatch_not_void_A2I_20
dispatch_not_void_A2I_20:
  %VR42 = ptrtoint i32* %VR40 to i32 
  %VR43 = add i32 %VR42, 8
  %VR44 = inttoptr i32 %VR43 to i32*
  %VR45 = load i32* %VR44
  %VR46 = add i32 %VR45, 12
  %VR47 = inttoptr i32 %VR46 to i32*
  %VR48 = load i32* %VR47
  %VR49 = inttoptr i32 %VR48 to i32 (i32, i32)*
  %VR50 = call i32 (i32, i32)* %VR49(i32 %VR39, i32 %VR29)
;; <- dispatch: linia 244
;; <- let: linia 243
  br label %join_if_A2I_25_false
;#######################################; <- dispatch_not_void_A2I_20


;#######################################; -> join_if_A2I_25_false
join_if_A2I_25_false:
  %VR2.1 = add i32 %VR50, 0
  br label %join_if_A2I_25
;#######################################; <- join_if_A2I_25_false


;#######################################; -> join_if_A2I_25
join_if_A2I_25:
  %VR2 = phi i32 [ %VR2.0, %join_if_A2I_25_true ], [ %VR2.1, %join_if_A2I_25_false ]
;; <- cond: linia 242
  ret i32 %VR2
;#######################################; <- join_if_A2I_25


}
define void @Main_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.String_protObj_t* @String_protObj to i32))
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
;- bool_const -
;; -> bool_const: linia 256
  %VR4 = add i32 1, 0
;; <- bool_const: linia 256
  %VR5 = add i32 %ARG, 24
  %VR6 = inttoptr i32 %VR5 to i32*
  store i32 %VR4, i32* %VR6
  ret void
;#######################################; <- entry


}
define i32 @Main__menu(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- block -
;; -> block: linia 260
;- block -- dispatch -
;; -> dispatch: linia 261
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 261
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__14 to i32 
;; <- string_const: linia 261
;- block -- dispatch -- object -
;; -> object: linia 261
;; <- object: linia 261
  %VR2 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__33 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR3 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 16
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 261
;- block -- dispatch -
;; -> dispatch: linia 262
;;generez codul pentru apelul metodei print
;- block -- dispatch -- object -
;; -> object: linia 262
  %VR12 = add i32 %ARG, 16
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
;; <- object: linia 262
;- block -- dispatch -- object -
;; -> object: linia 262
;; <- object: linia 262
  %VR15 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR15, label %false_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- dispatch_not_void_Main_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__34 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Main_1
dispatch_not_void_Main_1:
  %VR16 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR17 = add i32 %VR16, 8
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
  %VR20 = add i32 %VR19, 48
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
  %VR23 = inttoptr i32 %VR22 to i32 (i32, i32)*
  %VR24 = call i32 (i32, i32)* %VR23(i32 %ARG, i32 %VR14)
;; <- dispatch: linia 262
;- block -- dispatch -
;; -> dispatch: linia 263
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 263
  %VR25 = ptrtoint %struct.String_protObj_t* @str_const__15 to i32 
;; <- string_const: linia 263
;- block -- dispatch -- object -
;; -> object: linia 263
;; <- object: linia 263
  %VR26 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR26, label %false_dispatch2, label %dispatch_not_void_Main_2
;#######################################; <- dispatch_not_void_Main_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__35 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Main_2
dispatch_not_void_Main_2:
  %VR27 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR28 = add i32 %VR27, 8
  %VR29 = inttoptr i32 %VR28 to i32*
  %VR30 = load i32* %VR29
  %VR31 = add i32 %VR30, 16
  %VR32 = inttoptr i32 %VR31 to i32*
  %VR33 = load i32* %VR32
  %VR34 = inttoptr i32 %VR33 to i32 (i32, i32)*
  %VR35 = call i32 (i32, i32)* %VR34(i32 %ARG, i32 %VR25)
;; <- dispatch: linia 263
;- block -- dispatch -
;; -> dispatch: linia 264
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 264
  %VR36 = ptrtoint %struct.String_protObj_t* @str_const__16 to i32 
;; <- string_const: linia 264
;- block -- dispatch -- object -
;; -> object: linia 264
;; <- object: linia 264
  %VR37 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR37, label %false_dispatch3, label %dispatch_not_void_Main_3
;#######################################; <- dispatch_not_void_Main_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__36 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Main_3
dispatch_not_void_Main_3:
  %VR38 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR39 = add i32 %VR38, 8
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = load i32* %VR40
  %VR42 = add i32 %VR41, 16
  %VR43 = inttoptr i32 %VR42 to i32*
  %VR44 = load i32* %VR43
  %VR45 = inttoptr i32 %VR44 to i32 (i32, i32)*
  %VR46 = call i32 (i32, i32)* %VR45(i32 %ARG, i32 %VR36)
;; <- dispatch: linia 264
;- block -- dispatch -
;; -> dispatch: linia 265
;;generez codul pentru apelul metodei print
;- block -- dispatch -- object -
;; -> object: linia 265
  %VR47 = add i32 %ARG, 16
  %VR48 = inttoptr i32 %VR47 to i32*
  %VR49 = load i32* %VR48
;; <- object: linia 265
;- block -- dispatch -- object -
;; -> object: linia 265
;; <- object: linia 265
  %VR50 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR50, label %false_dispatch4, label %dispatch_not_void_Main_4
;#######################################; <- dispatch_not_void_Main_3


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__37 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Main_4
dispatch_not_void_Main_4:
  %VR51 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR52 = add i32 %VR51, 8
  %VR53 = inttoptr i32 %VR52 to i32*
  %VR54 = load i32* %VR53
  %VR55 = add i32 %VR54, 48
  %VR56 = inttoptr i32 %VR55 to i32*
  %VR57 = load i32* %VR56
  %VR58 = inttoptr i32 %VR57 to i32 (i32, i32)*
  %VR59 = call i32 (i32, i32)* %VR58(i32 %ARG, i32 %VR49)
;; <- dispatch: linia 265
;- block -- dispatch -
;; -> dispatch: linia 266
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 266
  %VR60 = ptrtoint %struct.String_protObj_t* @str_const__17 to i32 
;; <- string_const: linia 266
;- block -- dispatch -- object -
;; -> object: linia 266
;; <- object: linia 266
  %VR61 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR61, label %false_dispatch5, label %dispatch_not_void_Main_5
;#######################################; <- dispatch_not_void_Main_4


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__38 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_Main_5
dispatch_not_void_Main_5:
  %VR62 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR63 = add i32 %VR62, 8
  %VR64 = inttoptr i32 %VR63 to i32*
  %VR65 = load i32* %VR64
  %VR66 = add i32 %VR65, 16
  %VR67 = inttoptr i32 %VR66 to i32*
  %VR68 = load i32* %VR67
  %VR69 = inttoptr i32 %VR68 to i32 (i32, i32)*
  %VR70 = call i32 (i32, i32)* %VR69(i32 %ARG, i32 %VR60)
;; <- dispatch: linia 266
;- block -- dispatch -
;; -> dispatch: linia 267
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 267
  %VR71 = ptrtoint %struct.String_protObj_t* @str_const__18 to i32 
;; <- string_const: linia 267
;- block -- dispatch -- object -
;; -> object: linia 267
;; <- object: linia 267
  %VR72 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR72, label %false_dispatch6, label %dispatch_not_void_Main_6
;#######################################; <- dispatch_not_void_Main_5


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__39 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_Main_6
dispatch_not_void_Main_6:
  %VR73 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR74 = add i32 %VR73, 8
  %VR75 = inttoptr i32 %VR74 to i32*
  %VR76 = load i32* %VR75
  %VR77 = add i32 %VR76, 16
  %VR78 = inttoptr i32 %VR77 to i32*
  %VR79 = load i32* %VR78
  %VR80 = inttoptr i32 %VR79 to i32 (i32, i32)*
  %VR81 = call i32 (i32, i32)* %VR80(i32 %ARG, i32 %VR71)
;; <- dispatch: linia 267
;- block -- dispatch -
;; -> dispatch: linia 268
;;generez codul pentru apelul metodei print
;- block -- dispatch -- object -
;; -> object: linia 268
  %VR82 = add i32 %ARG, 16
  %VR83 = inttoptr i32 %VR82 to i32*
  %VR84 = load i32* %VR83
;; <- object: linia 268
;- block -- dispatch -- object -
;; -> object: linia 268
;; <- object: linia 268
  %VR85 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR85, label %false_dispatch7, label %dispatch_not_void_Main_7
;#######################################; <- dispatch_not_void_Main_6


;#######################################; -> false_dispatch7
false_dispatch7:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__40 to i32))
  ret i32 0
;#######################################; <- false_dispatch7


;#######################################; -> dispatch_not_void_Main_7
dispatch_not_void_Main_7:
  %VR86 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR87 = add i32 %VR86, 8
  %VR88 = inttoptr i32 %VR87 to i32*
  %VR89 = load i32* %VR88
  %VR90 = add i32 %VR89, 48
  %VR91 = inttoptr i32 %VR90 to i32*
  %VR92 = load i32* %VR91
  %VR93 = inttoptr i32 %VR92 to i32 (i32, i32)*
  %VR94 = call i32 (i32, i32)* %VR93(i32 %ARG, i32 %VR84)
;; <- dispatch: linia 268
;- block -- dispatch -
;; -> dispatch: linia 269
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 269
  %VR95 = ptrtoint %struct.String_protObj_t* @str_const__19 to i32 
;; <- string_const: linia 269
;- block -- dispatch -- object -
;; -> object: linia 269
;; <- object: linia 269
  %VR96 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR96, label %false_dispatch8, label %dispatch_not_void_Main_8
;#######################################; <- dispatch_not_void_Main_7


;#######################################; -> false_dispatch8
false_dispatch8:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__41 to i32))
  ret i32 0
;#######################################; <- false_dispatch8


;#######################################; -> dispatch_not_void_Main_8
dispatch_not_void_Main_8:
  %VR97 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR98 = add i32 %VR97, 8
  %VR99 = inttoptr i32 %VR98 to i32*
  %VR100 = load i32* %VR99
  %VR101 = add i32 %VR100, 16
  %VR102 = inttoptr i32 %VR101 to i32*
  %VR103 = load i32* %VR102
  %VR104 = inttoptr i32 %VR103 to i32 (i32, i32)*
  %VR105 = call i32 (i32, i32)* %VR104(i32 %ARG, i32 %VR95)
;; <- dispatch: linia 269
;- block -- dispatch -
;; -> dispatch: linia 270
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 270
  %VR106 = ptrtoint %struct.String_protObj_t* @str_const__20 to i32 
;; <- string_const: linia 270
;- block -- dispatch -- object -
;; -> object: linia 270
;; <- object: linia 270
  %VR107 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR107, label %false_dispatch9, label %dispatch_not_void_Main_9
;#######################################; <- dispatch_not_void_Main_8


;#######################################; -> false_dispatch9
false_dispatch9:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__42 to i32))
  ret i32 0
;#######################################; <- false_dispatch9


;#######################################; -> dispatch_not_void_Main_9
dispatch_not_void_Main_9:
  %VR108 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR109 = add i32 %VR108, 8
  %VR110 = inttoptr i32 %VR109 to i32*
  %VR111 = load i32* %VR110
  %VR112 = add i32 %VR111, 16
  %VR113 = inttoptr i32 %VR112 to i32*
  %VR114 = load i32* %VR113
  %VR115 = inttoptr i32 %VR114 to i32 (i32, i32)*
  %VR116 = call i32 (i32, i32)* %VR115(i32 %ARG, i32 %VR106)
;; <- dispatch: linia 270
;- block -- dispatch -
;; -> dispatch: linia 271
;;generez codul pentru apelul metodei print
;- block -- dispatch -- object -
;; -> object: linia 271
  %VR117 = add i32 %ARG, 16
  %VR118 = inttoptr i32 %VR117 to i32*
  %VR119 = load i32* %VR118
;; <- object: linia 271
;- block -- dispatch -- object -
;; -> object: linia 271
;; <- object: linia 271
  %VR120 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR120, label %false_dispatch10, label %dispatch_not_void_Main_10
;#######################################; <- dispatch_not_void_Main_9


;#######################################; -> false_dispatch10
false_dispatch10:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__43 to i32))
  ret i32 0
;#######################################; <- false_dispatch10


;#######################################; -> dispatch_not_void_Main_10
dispatch_not_void_Main_10:
  %VR121 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR122 = add i32 %VR121, 8
  %VR123 = inttoptr i32 %VR122 to i32*
  %VR124 = load i32* %VR123
  %VR125 = add i32 %VR124, 48
  %VR126 = inttoptr i32 %VR125 to i32*
  %VR127 = load i32* %VR126
  %VR128 = inttoptr i32 %VR127 to i32 (i32, i32)*
  %VR129 = call i32 (i32, i32)* %VR128(i32 %ARG, i32 %VR119)
;; <- dispatch: linia 271
;- block -- dispatch -
;; -> dispatch: linia 272
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 272
  %VR130 = ptrtoint %struct.String_protObj_t* @str_const__21 to i32 
;; <- string_const: linia 272
;- block -- dispatch -- object -
;; -> object: linia 272
;; <- object: linia 272
  %VR131 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR131, label %false_dispatch11, label %dispatch_not_void_Main_11
;#######################################; <- dispatch_not_void_Main_10


;#######################################; -> false_dispatch11
false_dispatch11:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__44 to i32))
  ret i32 0
;#######################################; <- false_dispatch11


;#######################################; -> dispatch_not_void_Main_11
dispatch_not_void_Main_11:
  %VR132 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR133 = add i32 %VR132, 8
  %VR134 = inttoptr i32 %VR133 to i32*
  %VR135 = load i32* %VR134
  %VR136 = add i32 %VR135, 16
  %VR137 = inttoptr i32 %VR136 to i32*
  %VR138 = load i32* %VR137
  %VR139 = inttoptr i32 %VR138 to i32 (i32, i32)*
  %VR140 = call i32 (i32, i32)* %VR139(i32 %ARG, i32 %VR130)
;; <- dispatch: linia 272
;- block -- dispatch -
;; -> dispatch: linia 273
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 273
  %VR141 = ptrtoint %struct.String_protObj_t* @str_const__22 to i32 
;; <- string_const: linia 273
;- block -- dispatch -- object -
;; -> object: linia 273
;; <- object: linia 273
  %VR142 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR142, label %false_dispatch12, label %dispatch_not_void_Main_12
;#######################################; <- dispatch_not_void_Main_11


;#######################################; -> false_dispatch12
false_dispatch12:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__45 to i32))
  ret i32 0
;#######################################; <- false_dispatch12


;#######################################; -> dispatch_not_void_Main_12
dispatch_not_void_Main_12:
  %VR143 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR144 = add i32 %VR143, 8
  %VR145 = inttoptr i32 %VR144 to i32*
  %VR146 = load i32* %VR145
  %VR147 = add i32 %VR146, 16
  %VR148 = inttoptr i32 %VR147 to i32*
  %VR149 = load i32* %VR148
  %VR150 = inttoptr i32 %VR149 to i32 (i32, i32)*
  %VR151 = call i32 (i32, i32)* %VR150(i32 %ARG, i32 %VR141)
;; <- dispatch: linia 273
;- block -- dispatch -
;; -> dispatch: linia 274
;;generez codul pentru apelul metodei print
;- block -- dispatch -- object -
;; -> object: linia 274
  %VR152 = add i32 %ARG, 16
  %VR153 = inttoptr i32 %VR152 to i32*
  %VR154 = load i32* %VR153
;; <- object: linia 274
;- block -- dispatch -- object -
;; -> object: linia 274
;; <- object: linia 274
  %VR155 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR155, label %false_dispatch13, label %dispatch_not_void_Main_13
;#######################################; <- dispatch_not_void_Main_12


;#######################################; -> false_dispatch13
false_dispatch13:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__46 to i32))
  ret i32 0
;#######################################; <- false_dispatch13


;#######################################; -> dispatch_not_void_Main_13
dispatch_not_void_Main_13:
  %VR156 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR157 = add i32 %VR156, 8
  %VR158 = inttoptr i32 %VR157 to i32*
  %VR159 = load i32* %VR158
  %VR160 = add i32 %VR159, 48
  %VR161 = inttoptr i32 %VR160 to i32*
  %VR162 = load i32* %VR161
  %VR163 = inttoptr i32 %VR162 to i32 (i32, i32)*
  %VR164 = call i32 (i32, i32)* %VR163(i32 %ARG, i32 %VR154)
;; <- dispatch: linia 274
;- block -- dispatch -
;; -> dispatch: linia 275
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 275
  %VR165 = ptrtoint %struct.String_protObj_t* @str_const__23 to i32 
;; <- string_const: linia 275
;- block -- dispatch -- object -
;; -> object: linia 275
;; <- object: linia 275
  %VR166 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR166, label %false_dispatch14, label %dispatch_not_void_Main_14
;#######################################; <- dispatch_not_void_Main_13


;#######################################; -> false_dispatch14
false_dispatch14:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__47 to i32))
  ret i32 0
;#######################################; <- false_dispatch14


;#######################################; -> dispatch_not_void_Main_14
dispatch_not_void_Main_14:
  %VR167 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR168 = add i32 %VR167, 8
  %VR169 = inttoptr i32 %VR168 to i32*
  %VR170 = load i32* %VR169
  %VR171 = add i32 %VR170, 16
  %VR172 = inttoptr i32 %VR171 to i32*
  %VR173 = load i32* %VR172
  %VR174 = inttoptr i32 %VR173 to i32 (i32, i32)*
  %VR175 = call i32 (i32, i32)* %VR174(i32 %ARG, i32 %VR165)
;; <- dispatch: linia 275
;- block -- dispatch -
;; -> dispatch: linia 276
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 276
  %VR176 = ptrtoint %struct.String_protObj_t* @str_const__24 to i32 
;; <- string_const: linia 276
;- block -- dispatch -- object -
;; -> object: linia 276
;; <- object: linia 276
  %VR177 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR177, label %false_dispatch15, label %dispatch_not_void_Main_15
;#######################################; <- dispatch_not_void_Main_14


;#######################################; -> false_dispatch15
false_dispatch15:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__48 to i32))
  ret i32 0
;#######################################; <- false_dispatch15


;#######################################; -> dispatch_not_void_Main_15
dispatch_not_void_Main_15:
  %VR178 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR179 = add i32 %VR178, 8
  %VR180 = inttoptr i32 %VR179 to i32*
  %VR181 = load i32* %VR180
  %VR182 = add i32 %VR181, 16
  %VR183 = inttoptr i32 %VR182 to i32*
  %VR184 = load i32* %VR183
  %VR185 = inttoptr i32 %VR184 to i32 (i32, i32)*
  %VR186 = call i32 (i32, i32)* %VR185(i32 %ARG, i32 %VR176)
;; <- dispatch: linia 276
;- block -- dispatch -
;; -> dispatch: linia 277
;;generez codul pentru apelul metodei print
;- block -- dispatch -- object -
;; -> object: linia 277
  %VR187 = add i32 %ARG, 16
  %VR188 = inttoptr i32 %VR187 to i32*
  %VR189 = load i32* %VR188
;; <- object: linia 277
;- block -- dispatch -- object -
;; -> object: linia 277
;; <- object: linia 277
  %VR190 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR190, label %false_dispatch16, label %dispatch_not_void_Main_16
;#######################################; <- dispatch_not_void_Main_15


;#######################################; -> false_dispatch16
false_dispatch16:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__49 to i32))
  ret i32 0
;#######################################; <- false_dispatch16


;#######################################; -> dispatch_not_void_Main_16
dispatch_not_void_Main_16:
  %VR191 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR192 = add i32 %VR191, 8
  %VR193 = inttoptr i32 %VR192 to i32*
  %VR194 = load i32* %VR193
  %VR195 = add i32 %VR194, 48
  %VR196 = inttoptr i32 %VR195 to i32*
  %VR197 = load i32* %VR196
  %VR198 = inttoptr i32 %VR197 to i32 (i32, i32)*
  %VR199 = call i32 (i32, i32)* %VR198(i32 %ARG, i32 %VR189)
;; <- dispatch: linia 277
;- block -- dispatch -
;; -> dispatch: linia 278
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 278
  %VR200 = ptrtoint %struct.String_protObj_t* @str_const__25 to i32 
;; <- string_const: linia 278
;- block -- dispatch -- object -
;; -> object: linia 278
;; <- object: linia 278
  %VR201 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR201, label %false_dispatch17, label %dispatch_not_void_Main_17
;#######################################; <- dispatch_not_void_Main_16


;#######################################; -> false_dispatch17
false_dispatch17:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__50 to i32))
  ret i32 0
;#######################################; <- false_dispatch17


;#######################################; -> dispatch_not_void_Main_17
dispatch_not_void_Main_17:
  %VR202 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR203 = add i32 %VR202, 8
  %VR204 = inttoptr i32 %VR203 to i32*
  %VR205 = load i32* %VR204
  %VR206 = add i32 %VR205, 16
  %VR207 = inttoptr i32 %VR206 to i32*
  %VR208 = load i32* %VR207
  %VR209 = inttoptr i32 %VR208 to i32 (i32, i32)*
  %VR210 = call i32 (i32, i32)* %VR209(i32 %ARG, i32 %VR200)
;; <- dispatch: linia 278
;- block -- dispatch -
;; -> dispatch: linia 279
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 279
  %VR211 = ptrtoint %struct.String_protObj_t* @str_const__26 to i32 
;; <- string_const: linia 279
;- block -- dispatch -- object -
;; -> object: linia 279
;; <- object: linia 279
  %VR212 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR212, label %false_dispatch18, label %dispatch_not_void_Main_18
;#######################################; <- dispatch_not_void_Main_17


;#######################################; -> false_dispatch18
false_dispatch18:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__51 to i32))
  ret i32 0
;#######################################; <- false_dispatch18


;#######################################; -> dispatch_not_void_Main_18
dispatch_not_void_Main_18:
  %VR213 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR214 = add i32 %VR213, 8
  %VR215 = inttoptr i32 %VR214 to i32*
  %VR216 = load i32* %VR215
  %VR217 = add i32 %VR216, 16
  %VR218 = inttoptr i32 %VR217 to i32*
  %VR219 = load i32* %VR218
  %VR220 = inttoptr i32 %VR219 to i32 (i32, i32)*
  %VR221 = call i32 (i32, i32)* %VR220(i32 %ARG, i32 %VR211)
;; <- dispatch: linia 279
;- block -- dispatch -
;; -> dispatch: linia 280
;;generez codul pentru apelul metodei print
;- block -- dispatch -- object -
;; -> object: linia 280
  %VR222 = add i32 %ARG, 16
  %VR223 = inttoptr i32 %VR222 to i32*
  %VR224 = load i32* %VR223
;; <- object: linia 280
;- block -- dispatch -- object -
;; -> object: linia 280
;; <- object: linia 280
  %VR225 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR225, label %false_dispatch19, label %dispatch_not_void_Main_19
;#######################################; <- dispatch_not_void_Main_18


;#######################################; -> false_dispatch19
false_dispatch19:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__52 to i32))
  ret i32 0
;#######################################; <- false_dispatch19


;#######################################; -> dispatch_not_void_Main_19
dispatch_not_void_Main_19:
  %VR226 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR227 = add i32 %VR226, 8
  %VR228 = inttoptr i32 %VR227 to i32*
  %VR229 = load i32* %VR228
  %VR230 = add i32 %VR229, 48
  %VR231 = inttoptr i32 %VR230 to i32*
  %VR232 = load i32* %VR231
  %VR233 = inttoptr i32 %VR232 to i32 (i32, i32)*
  %VR234 = call i32 (i32, i32)* %VR233(i32 %ARG, i32 %VR224)
;; <- dispatch: linia 280
;- block -- dispatch -
;; -> dispatch: linia 281
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 281
  %VR235 = ptrtoint %struct.String_protObj_t* @str_const__27 to i32 
;; <- string_const: linia 281
;- block -- dispatch -- object -
;; -> object: linia 281
;; <- object: linia 281
  %VR236 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR236, label %false_dispatch20, label %dispatch_not_void_Main_20
;#######################################; <- dispatch_not_void_Main_19


;#######################################; -> false_dispatch20
false_dispatch20:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__53 to i32))
  ret i32 0
;#######################################; <- false_dispatch20


;#######################################; -> dispatch_not_void_Main_20
dispatch_not_void_Main_20:
  %VR237 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR238 = add i32 %VR237, 8
  %VR239 = inttoptr i32 %VR238 to i32*
  %VR240 = load i32* %VR239
  %VR241 = add i32 %VR240, 16
  %VR242 = inttoptr i32 %VR241 to i32*
  %VR243 = load i32* %VR242
  %VR244 = inttoptr i32 %VR243 to i32 (i32, i32)*
  %VR245 = call i32 (i32, i32)* %VR244(i32 %ARG, i32 %VR235)
;; <- dispatch: linia 281
;- block -- dispatch -
;; -> dispatch: linia 282
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 282
  %VR246 = ptrtoint %struct.String_protObj_t* @str_const__28 to i32 
;; <- string_const: linia 282
;- block -- dispatch -- object -
;; -> object: linia 282
;; <- object: linia 282
  %VR247 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR247, label %false_dispatch21, label %dispatch_not_void_Main_21
;#######################################; <- dispatch_not_void_Main_20


;#######################################; -> false_dispatch21
false_dispatch21:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__54 to i32))
  ret i32 0
;#######################################; <- false_dispatch21


;#######################################; -> dispatch_not_void_Main_21
dispatch_not_void_Main_21:
  %VR248 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR249 = add i32 %VR248, 8
  %VR250 = inttoptr i32 %VR249 to i32*
  %VR251 = load i32* %VR250
  %VR252 = add i32 %VR251, 16
  %VR253 = inttoptr i32 %VR252 to i32*
  %VR254 = load i32* %VR253
  %VR255 = inttoptr i32 %VR254 to i32 (i32, i32)*
  %VR256 = call i32 (i32, i32)* %VR255(i32 %ARG, i32 %VR246)
;; <- dispatch: linia 282
;- block -- dispatch -
;; -> dispatch: linia 283
;;generez codul pentru apelul metodei print
;- block -- dispatch -- object -
;; -> object: linia 283
  %VR257 = add i32 %ARG, 16
  %VR258 = inttoptr i32 %VR257 to i32*
  %VR259 = load i32* %VR258
;; <- object: linia 283
;- block -- dispatch -- object -
;; -> object: linia 283
;; <- object: linia 283
  %VR260 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR260, label %false_dispatch22, label %dispatch_not_void_Main_22
;#######################################; <- dispatch_not_void_Main_21


;#######################################; -> false_dispatch22
false_dispatch22:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__55 to i32))
  ret i32 0
;#######################################; <- false_dispatch22


;#######################################; -> dispatch_not_void_Main_22
dispatch_not_void_Main_22:
  %VR261 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR262 = add i32 %VR261, 8
  %VR263 = inttoptr i32 %VR262 to i32*
  %VR264 = load i32* %VR263
  %VR265 = add i32 %VR264, 48
  %VR266 = inttoptr i32 %VR265 to i32*
  %VR267 = load i32* %VR266
  %VR268 = inttoptr i32 %VR267 to i32 (i32, i32)*
  %VR269 = call i32 (i32, i32)* %VR268(i32 %ARG, i32 %VR259)
;; <- dispatch: linia 283
;- block -- dispatch -
;; -> dispatch: linia 284
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 284
  %VR270 = ptrtoint %struct.String_protObj_t* @str_const__29 to i32 
;; <- string_const: linia 284
;- block -- dispatch -- object -
;; -> object: linia 284
;; <- object: linia 284
  %VR271 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR271, label %false_dispatch23, label %dispatch_not_void_Main_23
;#######################################; <- dispatch_not_void_Main_22


;#######################################; -> false_dispatch23
false_dispatch23:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__56 to i32))
  ret i32 0
;#######################################; <- false_dispatch23


;#######################################; -> dispatch_not_void_Main_23
dispatch_not_void_Main_23:
  %VR272 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR273 = add i32 %VR272, 8
  %VR274 = inttoptr i32 %VR273 to i32*
  %VR275 = load i32* %VR274
  %VR276 = add i32 %VR275, 16
  %VR277 = inttoptr i32 %VR276 to i32*
  %VR278 = load i32* %VR277
  %VR279 = inttoptr i32 %VR278 to i32 (i32, i32)*
  %VR280 = call i32 (i32, i32)* %VR279(i32 %ARG, i32 %VR270)
;; <- dispatch: linia 284
;- block -- dispatch -
;; -> dispatch: linia 285
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 285
  %VR281 = ptrtoint %struct.String_protObj_t* @str_const__30 to i32 
;; <- string_const: linia 285
;- block -- dispatch -- object -
;; -> object: linia 285
;; <- object: linia 285
  %VR282 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR282, label %false_dispatch24, label %dispatch_not_void_Main_24
;#######################################; <- dispatch_not_void_Main_23


;#######################################; -> false_dispatch24
false_dispatch24:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__57 to i32))
  ret i32 0
;#######################################; <- false_dispatch24


;#######################################; -> dispatch_not_void_Main_24
dispatch_not_void_Main_24:
  %VR283 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR284 = add i32 %VR283, 8
  %VR285 = inttoptr i32 %VR284 to i32*
  %VR286 = load i32* %VR285
  %VR287 = add i32 %VR286, 16
  %VR288 = inttoptr i32 %VR287 to i32*
  %VR289 = load i32* %VR288
  %VR290 = inttoptr i32 %VR289 to i32 (i32, i32)*
  %VR291 = call i32 (i32, i32)* %VR290(i32 %ARG, i32 %VR281)
;; <- dispatch: linia 285
;- block -- dispatch -
;; -> dispatch: linia 286
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 286
  %VR292 = ptrtoint %struct.String_protObj_t* @str_const__31 to i32 
;; <- string_const: linia 286
;- block -- dispatch -- object -
;; -> object: linia 286
;; <- object: linia 286
  %VR293 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR293, label %false_dispatch25, label %dispatch_not_void_Main_25
;#######################################; <- dispatch_not_void_Main_24


;#######################################; -> false_dispatch25
false_dispatch25:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__58 to i32))
  ret i32 0
;#######################################; <- false_dispatch25


;#######################################; -> dispatch_not_void_Main_25
dispatch_not_void_Main_25:
  %VR294 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR295 = add i32 %VR294, 8
  %VR296 = inttoptr i32 %VR295 to i32*
  %VR297 = load i32* %VR296
  %VR298 = add i32 %VR297, 16
  %VR299 = inttoptr i32 %VR298 to i32*
  %VR300 = load i32* %VR299
  %VR301 = inttoptr i32 %VR300 to i32 (i32, i32)*
  %VR302 = call i32 (i32, i32)* %VR301(i32 %ARG, i32 %VR292)
;; <- dispatch: linia 286
;- block -- dispatch -
;; -> dispatch: linia 287
;;generez codul pentru apelul metodei in_string
;- block -- dispatch -- object -
;; -> object: linia 287
;; <- object: linia 287
  %VR303 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR303, label %false_dispatch26, label %dispatch_not_void_Main_26
;#######################################; <- dispatch_not_void_Main_25


;#######################################; -> false_dispatch26
false_dispatch26:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__59 to i32))
  ret i32 0
;#######################################; <- false_dispatch26


;#######################################; -> dispatch_not_void_Main_26
dispatch_not_void_Main_26:
  %VR304 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR305 = add i32 %VR304, 8
  %VR306 = inttoptr i32 %VR305 to i32*
  %VR307 = load i32* %VR306
  %VR308 = add i32 %VR307, 24
  %VR309 = inttoptr i32 %VR308 to i32*
  %VR310 = load i32* %VR309
  %VR311 = inttoptr i32 %VR310 to i32 (i32)*
  %VR312 = call i32 (i32)* %VR311(i32 %ARG)
;; <- dispatch: linia 287
;; <- block: linia 260
  ret i32 %VR312
;#######################################; <- dispatch_not_void_Main_26


}
define i32 @Main__prompt(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- block -
;; -> block: linia 292
;- block -- dispatch -
;; -> dispatch: linia 293
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 293
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__32 to i32 
;; <- string_const: linia 293
;- block -- dispatch -- object -
;; -> object: linia 293
;; <- object: linia 293
  %VR2 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch27, label %dispatch_not_void_Main_27
;#######################################; <- entry


;#######################################; -> false_dispatch27
false_dispatch27:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__60 to i32))
  ret i32 0
;#######################################; <- false_dispatch27


;#######################################; -> dispatch_not_void_Main_27
dispatch_not_void_Main_27:
  %VR3 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 16
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 293
;- block -- dispatch -
;; -> dispatch: linia 294
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 294
  %VR12 = ptrtoint %struct.String_protObj_t* @str_const__33 to i32 
;; <- string_const: linia 294
;- block -- dispatch -- object -
;; -> object: linia 294
;; <- object: linia 294
  %VR13 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR13, label %false_dispatch28, label %dispatch_not_void_Main_28
;#######################################; <- dispatch_not_void_Main_27


;#######################################; -> false_dispatch28
false_dispatch28:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__61 to i32))
  ret i32 0
;#######################################; <- false_dispatch28


;#######################################; -> dispatch_not_void_Main_28
dispatch_not_void_Main_28:
  %VR14 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR15 = add i32 %VR14, 8
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
  %VR18 = add i32 %VR17, 16
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
  %VR21 = inttoptr i32 %VR20 to i32 (i32, i32)*
  %VR22 = call i32 (i32, i32)* %VR21(i32 %ARG, i32 %VR12)
;; <- dispatch: linia 294
;- block -- dispatch -
;; -> dispatch: linia 295
;;generez codul pentru apelul metodei in_string
;- block -- dispatch -- object -
;; -> object: linia 295
;; <- object: linia 295
  %VR23 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR23, label %false_dispatch29, label %dispatch_not_void_Main_29
;#######################################; <- dispatch_not_void_Main_28


;#######################################; -> false_dispatch29
false_dispatch29:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__62 to i32))
  ret i32 0
;#######################################; <- false_dispatch29


;#######################################; -> dispatch_not_void_Main_29
dispatch_not_void_Main_29:
  %VR24 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR25 = add i32 %VR24, 8
  %VR26 = inttoptr i32 %VR25 to i32*
  %VR27 = load i32* %VR26
  %VR28 = add i32 %VR27, 24
  %VR29 = inttoptr i32 %VR28 to i32*
  %VR30 = load i32* %VR29
  %VR31 = inttoptr i32 %VR30 to i32 (i32)*
  %VR32 = call i32 (i32)* %VR31(i32 %ARG)
;; <- dispatch: linia 295
;; <- block: linia 292
  ret i32 %VR32
;#######################################; <- dispatch_not_void_Main_29


}
define i32 @Main__get_int(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- block -
;; -> block: linia 300
;- block -- let -
;; -> let: linia 301
;- block -- let -- new -
;; -> new: linia 301
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.A2I_protObj_t* @A2I_protObj to i32))
  call void @A2I_init(i32 %VR1)
;; <- new: linia 301
;- block -- let -- let -
;; -> let: linia 302
;- block -- let -- let -- dispatch -
;; -> dispatch: linia 302
;;generez codul pentru apelul metodei prompt
;- block -- let -- let -- dispatch -- object -
;; -> object: linia 302
;; <- object: linia 302
  %VR2 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch30, label %dispatch_not_void_Main_30
;#######################################; <- entry


;#######################################; -> false_dispatch30
false_dispatch30:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__63 to i32))
  ret i32 0
;#######################################; <- false_dispatch30


;#######################################; -> dispatch_not_void_Main_30
dispatch_not_void_Main_30:
  %VR3 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 32
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32)*
  %VR11 = call i32 (i32)* %VR10(i32 %ARG)
;; <- dispatch: linia 302
;- block -- let -- let -- dispatch -
;; -> dispatch: linia 303
;;generez codul pentru apelul metodei a2i
;- block -- let -- let -- dispatch -- object -
;; -> object: linia 303
;; <- object: linia 303
;- block -- let -- let -- dispatch -- object -
;; -> object: linia 303
;; <- object: linia 303
  %VR12 = inttoptr i32 %VR1 to i32*
  %VR13 = icmp eq i32* %VR12,  null
  br i1 %VR13, label %false_dispatch31, label %dispatch_not_void_Main_31
;#######################################; <- dispatch_not_void_Main_30


;#######################################; -> false_dispatch31
false_dispatch31:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__64 to i32))
  ret i32 0
;#######################################; <- false_dispatch31


;#######################################; -> dispatch_not_void_Main_31
dispatch_not_void_Main_31:
  %VR14 = ptrtoint i32* %VR12 to i32 
  %VR15 = add i32 %VR14, 8
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
  %VR18 = add i32 %VR17, 20
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
  %VR21 = inttoptr i32 %VR20 to i32 (i32, i32)*
  %VR22 = call i32 (i32, i32)* %VR21(i32 %VR1, i32 %VR11)
;; <- dispatch: linia 303
;; <- let: linia 302
;; <- let: linia 301
;; <- block: linia 300
  ret i32 %VR22
;#######################################; <- dispatch_not_void_Main_31


}
define i32 @Main__is_even(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- let -
;; -> let: linia 310
;- let -- object -
;; -> object: linia 310
;; <- object: linia 310
;- let -- cond -
;; -> cond: linia 311
;;if: linia 311 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- let -- cond -- lt -
;; -> lt: linia 311
;- let -- cond -- lt -- object -
;; -> object: linia 311
;; <- object: linia 311
;- let -- cond -- lt -- int_const -
;; -> int_const: linia 311
  %VR3 = add i32 0, 0
;; <- int_const: linia 311
  %VR4 = icmp slt i32 %VR1,  %VR3
;; <- lt: linia 311
  %VR5 = icmp eq i1 %VR4,  false
  br i1 %VR5, label %false_Main_0, label %false_false_Main_0
;#######################################; <- entry


;#######################################; -> false_false_Main_0
false_false_Main_0:
;;if: linia 311 (expresia pentru then)
;- let -- cond -- dispatch -
;; -> dispatch: linia 311
;;generez codul pentru apelul metodei is_even
;- let -- cond -- dispatch -- neg -
;; -> neg: linia 311
;- let -- cond -- dispatch -- neg -- object -
;; -> object: linia 311
;; <- object: linia 311
  %VR6 = xor i32 1, %VR1
;; <- neg: linia 311
;- let -- cond -- dispatch -- object -
;; -> object: linia 311
;; <- object: linia 311
  %VR7 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR7, label %false_dispatch32, label %dispatch_not_void_Main_32
;#######################################; <- false_false_Main_0


;#######################################; -> false_dispatch32
false_dispatch32:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__65 to i32))
  ret i32 0
;#######################################; <- false_dispatch32


;#######################################; -> dispatch_not_void_Main_32
dispatch_not_void_Main_32:
  %VR8 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR9 = add i32 %VR8, 8
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = add i32 %VR11, 40
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
  %VR15 = inttoptr i32 %VR14 to i32 (i32, i32)*
  %VR16 = call i32 (i32, i32)* %VR15(i32 %ARG, i32 %VR6)
;; <- dispatch: linia 311
  br label %join_if_Main_0_true
;#######################################; <- dispatch_not_void_Main_32


;#######################################; -> join_if_Main_0_true
join_if_Main_0_true:
  %VR2.0 = add i32 %VR16, 0
  br label %join_if_Main_0
;#######################################; <- join_if_Main_0_true


;#######################################; -> false_Main_0
false_Main_0:
;;if: linia 311 (expresia pentru else)
;- let -- cond -- cond -
;; -> cond: linia 312
;;if: linia 312 (expresia pentru predicat)
;;%VR17 rezervat pentru rezultatul if-ului
;- let -- cond -- cond -- eq -
;; -> eq: linia 312
;- let -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 312
  %VR18 = add i32 0, 0
;; <- int_const: linia 312
;- let -- cond -- cond -- eq -- object -
;; -> object: linia 312
;; <- object: linia 312
;boxing to int
  %VR19 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR20 = add i32 %VR19, 12
  %VR21 = inttoptr i32 %VR20 to i32*
  store i32 %VR18, i32* %VR21
;boxing to int
  %VR22 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR23 = add i32 %VR22, 12
  %VR24 = inttoptr i32 %VR23 to i32*
  store i32 %VR1, i32* %VR24
  br label %eq_test_join_true_Main_0
;#######################################; <- false_Main_0


;#######################################; -> eq_test_join_true_Main_0
eq_test_join_true_Main_0:
  %VR25.0 = icmp eq i32 %VR19,  %VR22
  br i1 %VR25.0, label %eq_test_join_Main_0, label %eq_test_join_false_Main_0
;#######################################; <- eq_test_join_true_Main_0


;#######################################; -> eq_test_join_false_Main_0
eq_test_join_false_Main_0:
  %VR27 = call i32  @equality_test(i32 1, i32 0, i32 %VR19, i32 %VR22)
  %VR25.1 = icmp eq i32 %VR27,  1
  br label %eq_test_join_Main_0
;#######################################; <- eq_test_join_false_Main_0


;#######################################; -> eq_test_join_Main_0
eq_test_join_Main_0:
  %VR25 = phi i1 [ %VR25.0, %eq_test_join_true_Main_0 ] , [ %VR25.1, %eq_test_join_false_Main_0 ] 
;; <- eq: linia 312
  %VR28 = icmp eq i1 %VR25,  false
  br i1 %VR28, label %false_Main_1, label %false_false_Main_1
;#######################################; <- eq_test_join_Main_0


;#######################################; -> false_false_Main_1
false_false_Main_1:
;;if: linia 312 (expresia pentru then)
;- let -- cond -- cond -- bool_const -
;; -> bool_const: linia 312
  %VR29 = add i32 1, 0
;; <- bool_const: linia 312
  br label %join_if_Main_1_true
;#######################################; <- false_false_Main_1


;#######################################; -> join_if_Main_1_true
join_if_Main_1_true:
  %VR17.0 = add i32 %VR29, 0
  br label %join_if_Main_1
;#######################################; <- join_if_Main_1_true


;#######################################; -> false_Main_1
false_Main_1:
;;if: linia 312 (expresia pentru else)
;- let -- cond -- cond -- cond -
;; -> cond: linia 313
;;if: linia 313 (expresia pentru predicat)
;;%VR30 rezervat pentru rezultatul if-ului
;- let -- cond -- cond -- cond -- eq -
;; -> eq: linia 313
;- let -- cond -- cond -- cond -- eq -- int_const -
;; -> int_const: linia 313
  %VR31 = add i32 1, 0
;; <- int_const: linia 313
;- let -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 313
;; <- object: linia 313
;boxing to int
  %VR32 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR33 = add i32 %VR32, 12
  %VR34 = inttoptr i32 %VR33 to i32*
  store i32 %VR31, i32* %VR34
;boxing to int
  %VR35 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR36 = add i32 %VR35, 12
  %VR37 = inttoptr i32 %VR36 to i32*
  store i32 %VR1, i32* %VR37
  br label %eq_test_join_true_Main_1
;#######################################; <- false_Main_1


;#######################################; -> eq_test_join_true_Main_1
eq_test_join_true_Main_1:
  %VR38.0 = icmp eq i32 %VR32,  %VR35
  br i1 %VR38.0, label %eq_test_join_Main_1, label %eq_test_join_false_Main_1
;#######################################; <- eq_test_join_true_Main_1


;#######################################; -> eq_test_join_false_Main_1
eq_test_join_false_Main_1:
  %VR40 = call i32  @equality_test(i32 1, i32 0, i32 %VR32, i32 %VR35)
  %VR38.1 = icmp eq i32 %VR40,  1
  br label %eq_test_join_Main_1
;#######################################; <- eq_test_join_false_Main_1


;#######################################; -> eq_test_join_Main_1
eq_test_join_Main_1:
  %VR38 = phi i1 [ %VR38.0, %eq_test_join_true_Main_1 ] , [ %VR38.1, %eq_test_join_false_Main_1 ] 
;; <- eq: linia 313
  %VR41 = icmp eq i1 %VR38,  false
  br i1 %VR41, label %false_Main_2, label %false_false_Main_2
;#######################################; <- eq_test_join_Main_1


;#######################################; -> false_false_Main_2
false_false_Main_2:
;;if: linia 313 (expresia pentru then)
;- let -- cond -- cond -- cond -- bool_const -
;; -> bool_const: linia 313
  %VR42 = add i32 0, 0
;; <- bool_const: linia 313
  br label %join_if_Main_2_true
;#######################################; <- false_false_Main_2


;#######################################; -> join_if_Main_2_true
join_if_Main_2_true:
  %VR30.0 = add i32 %VR42, 0
  br label %join_if_Main_2
;#######################################; <- join_if_Main_2_true


;#######################################; -> false_Main_2
false_Main_2:
;;if: linia 313 (expresia pentru else)
;- let -- cond -- cond -- cond -- dispatch -
;; -> dispatch: linia 314
;;generez codul pentru apelul metodei is_even
;- let -- cond -- cond -- cond -- dispatch -- sub -
;; -> sub: linia 314
;- let -- cond -- cond -- cond -- dispatch -- sub -- object -
;; -> object: linia 314
;; <- object: linia 314
;- let -- cond -- cond -- cond -- dispatch -- sub -- int_const -
;; -> int_const: linia 314
  %VR43 = add i32 2, 0
;; <- int_const: linia 314
  %VR44 = sub i32 %VR1, %VR43
;; <- sub: linia 314
;- let -- cond -- cond -- cond -- dispatch -- object -
;; -> object: linia 314
;; <- object: linia 314
  %VR45 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR45, label %false_dispatch33, label %dispatch_not_void_Main_33
;#######################################; <- false_Main_2


;#######################################; -> false_dispatch33
false_dispatch33:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__66 to i32))
  ret i32 0
;#######################################; <- false_dispatch33


;#######################################; -> dispatch_not_void_Main_33
dispatch_not_void_Main_33:
  %VR46 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR47 = add i32 %VR46, 8
  %VR48 = inttoptr i32 %VR47 to i32*
  %VR49 = load i32* %VR48
  %VR50 = add i32 %VR49, 40
  %VR51 = inttoptr i32 %VR50 to i32*
  %VR52 = load i32* %VR51
  %VR53 = inttoptr i32 %VR52 to i32 (i32, i32)*
  %VR54 = call i32 (i32, i32)* %VR53(i32 %ARG, i32 %VR44)
;; <- dispatch: linia 314
  br label %join_if_Main_2_false
;#######################################; <- dispatch_not_void_Main_33


;#######################################; -> join_if_Main_2_false
join_if_Main_2_false:
  %VR30.1 = add i32 %VR54, 0
  br label %join_if_Main_2
;#######################################; <- join_if_Main_2_false


;#######################################; -> join_if_Main_2
join_if_Main_2:
  %VR30 = phi i32 [ %VR30.0, %join_if_Main_2_true ], [ %VR30.1, %join_if_Main_2_false ]
;; <- cond: linia 313
  br label %join_if_Main_1_false
;#######################################; <- join_if_Main_2


;#######################################; -> join_if_Main_1_false
join_if_Main_1_false:
  %VR17.1 = add i32 %VR30, 0
  br label %join_if_Main_1
;#######################################; <- join_if_Main_1_false


;#######################################; -> join_if_Main_1
join_if_Main_1:
  %VR17 = phi i32 [ %VR17.0, %join_if_Main_1_true ], [ %VR17.1, %join_if_Main_1_false ]
;; <- cond: linia 312
  br label %join_if_Main_0_false
;#######################################; <- join_if_Main_1


;#######################################; -> join_if_Main_0_false
join_if_Main_0_false:
  %VR2.1 = add i32 %VR17, 0
  br label %join_if_Main_0
;#######################################; <- join_if_Main_0_false


;#######################################; -> join_if_Main_0
join_if_Main_0:
  %VR2 = phi i32 [ %VR2.0, %join_if_Main_0_true ], [ %VR2.1, %join_if_Main_0_false ]
;; <- cond: linia 311
;; <- let: linia 310
  ret i32 %VR2
;#######################################; <- join_if_Main_0


}
define i32 @Main__class_type(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- typcase -
;; -> typcase: linia 320
;- typcase -- object -
;; -> object: linia 320
;; <- object: linia 320
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = icmp eq i32* %VR2,  null
  br i1 %VR3, label %false_typcase00, label %case_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_typcase00
false_typcase00:
  call void @_case_abort2(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__67 to i32))
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
  br i1 %VR14, label %case_A__Main_0, label %next5_case_A__Main_0
;#######################################; <- next4_case_Object__Main_0


;#######################################; -> next5_case_A__Main_0
next5_case_A__Main_0:
  %VR15 = icmp eq i32 %VR8,  6
  br i1 %VR15, label %case_B__Main_0, label %next6_case_B__Main_0
;#######################################; <- next5_case_A__Main_0


;#######################################; -> next6_case_B__Main_0
next6_case_B__Main_0:
  %VR16 = icmp eq i32 %VR8,  7
  br i1 %VR16, label %case_C__Main_0, label %next7_case_C__Main_0
;#######################################; <- next6_case_B__Main_0


;#######################################; -> next7_case_C__Main_0
next7_case_C__Main_0:
  %VR17 = icmp eq i32 %VR8,  8
  br i1 %VR17, label %case_D__Main_0, label %next8_case_D__Main_0
;#######################################; <- next7_case_C__Main_0


;#######################################; -> next8_case_D__Main_0
next8_case_D__Main_0:
  %VR18 = icmp eq i32 %VR8,  9
  br i1 %VR18, label %case_E__Main_0, label %next9_case_E__Main_0
;#######################################; <- next8_case_D__Main_0


;#######################################; -> next9_case_E__Main_0
next9_case_E__Main_0:
  %VR19 = icmp eq i32 %VR8,  10
  br i1 %VR19, label %case_Object__Main_0, label %next10_case_Object__Main_0
;#######################################; <- next9_case_E__Main_0


;#######################################; -> next10_case_Object__Main_0
next10_case_Object__Main_0:
  %VR20 = icmp eq i32 %VR8,  11
  br i1 %VR20, label %case_Object__Main_0, label %next11_case_Object__Main_0
;#######################################; <- next10_case_Object__Main_0


;#######################################; -> next11_case_Object__Main_0
next11_case_Object__Main_0:
  br label %case_A__Main_0
;#######################################; <- next11_case_Object__Main_0


;#######################################; -> case_A__Main_0
case_A__Main_0:
  %VR21 = call i32  @Object__copy(i32 %VR5)
  %VR22 = add i32 5, 0
  %VR23 = ptrtoint %struct.A_protObj_t* @A_protObj to i32 
  %VR24 = add i32 %VR23, 8
  %VR25 = inttoptr i32 %VR24 to i32*
  %VR26 = load i32* %VR25
  %VR27 = add i32 %VR21, 0
  %VR28 = inttoptr i32 %VR27 to i32*
  store i32 %VR22, i32* %VR28
  %VR29 = add i32 %VR21, 0
  %VR30 = inttoptr i32 %VR29 to i32*
  store i32 %VR26, i32* %VR30
  %VR31 = add i32 %VR21, 0
  %VR32 = inttoptr i32 %VR31 to i32*
  %VR33 = load i32* %VR32
  %VR34 = icmp eq i32 %VR33,  1
  br i1 %VR34, label %typcase_ok_Main_01, label %unboxing_0_Main_0
;#######################################; <- case_A__Main_0


;#######################################; -> typcase_ok_Main_01
typcase_ok_Main_01:
  %VR35 = icmp eq i32 %VR33,  2
  br i1 %VR35, label %typcase_ok_Main_02, label %unboxing_0_Main_0
;#######################################; <- typcase_ok_Main_01


;#######################################; -> typcase_ok_Main_02
typcase_ok_Main_02:
  br label %after_unbox_0_Main_0
;#######################################; <- typcase_ok_Main_02


;#######################################; -> unboxing_0_Main_0
unboxing_0_Main_0:
  %VR36 = add i32 %VR21, 12
  %VR37 = inttoptr i32 %VR36 to i32*
  %VR38 = load i32* %VR37
  br label %after_unbox_0_Main_0
;#######################################; <- unboxing_0_Main_0


;#######################################; -> after_unbox_0_Main_0
after_unbox_0_Main_0:
;- typcase -- dispatch -
;; -> dispatch: linia 321
;;generez codul pentru apelul metodei out_string
;- typcase -- dispatch -- string_const -
;; -> string_const: linia 321
  %VR39 = ptrtoint %struct.String_protObj_t* @str_const__34 to i32 
;; <- string_const: linia 321
;- typcase -- dispatch -- object -
;; -> object: linia 321
;; <- object: linia 321
  %VR40 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR40, label %false_dispatch34, label %dispatch_not_void_Main_34
;#######################################; <- after_unbox_0_Main_0


;#######################################; -> false_dispatch34
false_dispatch34:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__68 to i32))
  ret i32 0
;#######################################; <- false_dispatch34


;#######################################; -> dispatch_not_void_Main_34
dispatch_not_void_Main_34:
  %VR41 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR42 = add i32 %VR41, 8
  %VR43 = inttoptr i32 %VR42 to i32*
  %VR44 = load i32* %VR43
  %VR45 = add i32 %VR44, 16
  %VR46 = inttoptr i32 %VR45 to i32*
  %VR47 = load i32* %VR46
  %VR48 = inttoptr i32 %VR47 to i32 (i32, i32)*
  %VR49 = call i32 (i32, i32)* %VR48(i32 %ARG, i32 %VR39)
;; <- dispatch: linia 321
  %VR4.0 = add i32 %VR49, 0
  br label %phi_0_sfarsit_case_Main_0
;#######################################; <- dispatch_not_void_Main_34


;#######################################; -> phi_0_sfarsit_case_Main_0
phi_0_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_0_sfarsit_case_Main_0


;#######################################; -> case_B__Main_0
case_B__Main_0:
  %VR50 = call i32  @Object__copy(i32 %VR5)
  %VR51 = add i32 6, 0
  %VR52 = ptrtoint %struct.B_protObj_t* @B_protObj to i32 
  %VR53 = add i32 %VR52, 8
  %VR54 = inttoptr i32 %VR53 to i32*
  %VR55 = load i32* %VR54
  %VR56 = add i32 %VR50, 0
  %VR57 = inttoptr i32 %VR56 to i32*
  store i32 %VR51, i32* %VR57
  %VR58 = add i32 %VR50, 0
  %VR59 = inttoptr i32 %VR58 to i32*
  store i32 %VR55, i32* %VR59
  %VR60 = add i32 %VR50, 0
  %VR61 = inttoptr i32 %VR60 to i32*
  %VR62 = load i32* %VR61
  %VR63 = icmp eq i32 %VR62,  1
  br i1 %VR63, label %typcase_ok_Main_03, label %unboxing_1_Main_0
;#######################################; <- case_B__Main_0


;#######################################; -> typcase_ok_Main_03
typcase_ok_Main_03:
  %VR64 = icmp eq i32 %VR62,  2
  br i1 %VR64, label %typcase_ok_Main_04, label %unboxing_1_Main_0
;#######################################; <- typcase_ok_Main_03


;#######################################; -> typcase_ok_Main_04
typcase_ok_Main_04:
  br label %after_unbox_1_Main_0
;#######################################; <- typcase_ok_Main_04


;#######################################; -> unboxing_1_Main_0
unboxing_1_Main_0:
  %VR65 = add i32 %VR50, 12
  %VR66 = inttoptr i32 %VR65 to i32*
  %VR67 = load i32* %VR66
  br label %after_unbox_1_Main_0
;#######################################; <- unboxing_1_Main_0


;#######################################; -> after_unbox_1_Main_0
after_unbox_1_Main_0:
;- typcase -- dispatch -
;; -> dispatch: linia 322
;;generez codul pentru apelul metodei out_string
;- typcase -- dispatch -- string_const -
;; -> string_const: linia 322
  %VR68 = ptrtoint %struct.String_protObj_t* @str_const__35 to i32 
;; <- string_const: linia 322
;- typcase -- dispatch -- object -
;; -> object: linia 322
;; <- object: linia 322
  %VR69 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR69, label %false_dispatch35, label %dispatch_not_void_Main_35
;#######################################; <- after_unbox_1_Main_0


;#######################################; -> false_dispatch35
false_dispatch35:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__69 to i32))
  ret i32 0
;#######################################; <- false_dispatch35


;#######################################; -> dispatch_not_void_Main_35
dispatch_not_void_Main_35:
  %VR70 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR71 = add i32 %VR70, 8
  %VR72 = inttoptr i32 %VR71 to i32*
  %VR73 = load i32* %VR72
  %VR74 = add i32 %VR73, 16
  %VR75 = inttoptr i32 %VR74 to i32*
  %VR76 = load i32* %VR75
  %VR77 = inttoptr i32 %VR76 to i32 (i32, i32)*
  %VR78 = call i32 (i32, i32)* %VR77(i32 %ARG, i32 %VR68)
;; <- dispatch: linia 322
  %VR4.1 = add i32 %VR78, 0
  br label %phi_1_sfarsit_case_Main_0
;#######################################; <- dispatch_not_void_Main_35


;#######################################; -> phi_1_sfarsit_case_Main_0
phi_1_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_1_sfarsit_case_Main_0


;#######################################; -> case_C__Main_0
case_C__Main_0:
  %VR79 = call i32  @Object__copy(i32 %VR5)
  %VR80 = add i32 7, 0
  %VR81 = ptrtoint %struct.C_protObj_t* @C_protObj to i32 
  %VR82 = add i32 %VR81, 8
  %VR83 = inttoptr i32 %VR82 to i32*
  %VR84 = load i32* %VR83
  %VR85 = add i32 %VR79, 0
  %VR86 = inttoptr i32 %VR85 to i32*
  store i32 %VR80, i32* %VR86
  %VR87 = add i32 %VR79, 0
  %VR88 = inttoptr i32 %VR87 to i32*
  store i32 %VR84, i32* %VR88
  %VR89 = add i32 %VR79, 0
  %VR90 = inttoptr i32 %VR89 to i32*
  %VR91 = load i32* %VR90
  %VR92 = icmp eq i32 %VR91,  1
  br i1 %VR92, label %typcase_ok_Main_05, label %unboxing_2_Main_0
;#######################################; <- case_C__Main_0


;#######################################; -> typcase_ok_Main_05
typcase_ok_Main_05:
  %VR93 = icmp eq i32 %VR91,  2
  br i1 %VR93, label %typcase_ok_Main_06, label %unboxing_2_Main_0
;#######################################; <- typcase_ok_Main_05


;#######################################; -> typcase_ok_Main_06
typcase_ok_Main_06:
  br label %after_unbox_2_Main_0
;#######################################; <- typcase_ok_Main_06


;#######################################; -> unboxing_2_Main_0
unboxing_2_Main_0:
  %VR94 = add i32 %VR79, 12
  %VR95 = inttoptr i32 %VR94 to i32*
  %VR96 = load i32* %VR95
  br label %after_unbox_2_Main_0
;#######################################; <- unboxing_2_Main_0


;#######################################; -> after_unbox_2_Main_0
after_unbox_2_Main_0:
;- typcase -- dispatch -
;; -> dispatch: linia 323
;;generez codul pentru apelul metodei out_string
;- typcase -- dispatch -- string_const -
;; -> string_const: linia 323
  %VR97 = ptrtoint %struct.String_protObj_t* @str_const__36 to i32 
;; <- string_const: linia 323
;- typcase -- dispatch -- object -
;; -> object: linia 323
;; <- object: linia 323
  %VR98 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR98, label %false_dispatch36, label %dispatch_not_void_Main_36
;#######################################; <- after_unbox_2_Main_0


;#######################################; -> false_dispatch36
false_dispatch36:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__70 to i32))
  ret i32 0
;#######################################; <- false_dispatch36


;#######################################; -> dispatch_not_void_Main_36
dispatch_not_void_Main_36:
  %VR99 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR100 = add i32 %VR99, 8
  %VR101 = inttoptr i32 %VR100 to i32*
  %VR102 = load i32* %VR101
  %VR103 = add i32 %VR102, 16
  %VR104 = inttoptr i32 %VR103 to i32*
  %VR105 = load i32* %VR104
  %VR106 = inttoptr i32 %VR105 to i32 (i32, i32)*
  %VR107 = call i32 (i32, i32)* %VR106(i32 %ARG, i32 %VR97)
;; <- dispatch: linia 323
  %VR4.2 = add i32 %VR107, 0
  br label %phi_2_sfarsit_case_Main_0
;#######################################; <- dispatch_not_void_Main_36


;#######################################; -> phi_2_sfarsit_case_Main_0
phi_2_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_2_sfarsit_case_Main_0


;#######################################; -> case_D__Main_0
case_D__Main_0:
  %VR108 = call i32  @Object__copy(i32 %VR5)
  %VR109 = add i32 8, 0
  %VR110 = ptrtoint %struct.D_protObj_t* @D_protObj to i32 
  %VR111 = add i32 %VR110, 8
  %VR112 = inttoptr i32 %VR111 to i32*
  %VR113 = load i32* %VR112
  %VR114 = add i32 %VR108, 0
  %VR115 = inttoptr i32 %VR114 to i32*
  store i32 %VR109, i32* %VR115
  %VR116 = add i32 %VR108, 0
  %VR117 = inttoptr i32 %VR116 to i32*
  store i32 %VR113, i32* %VR117
  %VR118 = add i32 %VR108, 0
  %VR119 = inttoptr i32 %VR118 to i32*
  %VR120 = load i32* %VR119
  %VR121 = icmp eq i32 %VR120,  1
  br i1 %VR121, label %typcase_ok_Main_07, label %unboxing_3_Main_0
;#######################################; <- case_D__Main_0


;#######################################; -> typcase_ok_Main_07
typcase_ok_Main_07:
  %VR122 = icmp eq i32 %VR120,  2
  br i1 %VR122, label %typcase_ok_Main_08, label %unboxing_3_Main_0
;#######################################; <- typcase_ok_Main_07


;#######################################; -> typcase_ok_Main_08
typcase_ok_Main_08:
  br label %after_unbox_3_Main_0
;#######################################; <- typcase_ok_Main_08


;#######################################; -> unboxing_3_Main_0
unboxing_3_Main_0:
  %VR123 = add i32 %VR108, 12
  %VR124 = inttoptr i32 %VR123 to i32*
  %VR125 = load i32* %VR124
  br label %after_unbox_3_Main_0
;#######################################; <- unboxing_3_Main_0


;#######################################; -> after_unbox_3_Main_0
after_unbox_3_Main_0:
;- typcase -- dispatch -
;; -> dispatch: linia 324
;;generez codul pentru apelul metodei out_string
;- typcase -- dispatch -- string_const -
;; -> string_const: linia 324
  %VR126 = ptrtoint %struct.String_protObj_t* @str_const__37 to i32 
;; <- string_const: linia 324
;- typcase -- dispatch -- object -
;; -> object: linia 324
;; <- object: linia 324
  %VR127 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR127, label %false_dispatch37, label %dispatch_not_void_Main_37
;#######################################; <- after_unbox_3_Main_0


;#######################################; -> false_dispatch37
false_dispatch37:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__71 to i32))
  ret i32 0
;#######################################; <- false_dispatch37


;#######################################; -> dispatch_not_void_Main_37
dispatch_not_void_Main_37:
  %VR128 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR129 = add i32 %VR128, 8
  %VR130 = inttoptr i32 %VR129 to i32*
  %VR131 = load i32* %VR130
  %VR132 = add i32 %VR131, 16
  %VR133 = inttoptr i32 %VR132 to i32*
  %VR134 = load i32* %VR133
  %VR135 = inttoptr i32 %VR134 to i32 (i32, i32)*
  %VR136 = call i32 (i32, i32)* %VR135(i32 %ARG, i32 %VR126)
;; <- dispatch: linia 324
  %VR4.3 = add i32 %VR136, 0
  br label %phi_3_sfarsit_case_Main_0
;#######################################; <- dispatch_not_void_Main_37


;#######################################; -> phi_3_sfarsit_case_Main_0
phi_3_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_3_sfarsit_case_Main_0


;#######################################; -> case_E__Main_0
case_E__Main_0:
  %VR137 = call i32  @Object__copy(i32 %VR5)
  %VR138 = add i32 9, 0
  %VR139 = ptrtoint %struct.E_protObj_t* @E_protObj to i32 
  %VR140 = add i32 %VR139, 8
  %VR141 = inttoptr i32 %VR140 to i32*
  %VR142 = load i32* %VR141
  %VR143 = add i32 %VR137, 0
  %VR144 = inttoptr i32 %VR143 to i32*
  store i32 %VR138, i32* %VR144
  %VR145 = add i32 %VR137, 0
  %VR146 = inttoptr i32 %VR145 to i32*
  store i32 %VR142, i32* %VR146
  %VR147 = add i32 %VR137, 0
  %VR148 = inttoptr i32 %VR147 to i32*
  %VR149 = load i32* %VR148
  %VR150 = icmp eq i32 %VR149,  1
  br i1 %VR150, label %typcase_ok_Main_09, label %unboxing_4_Main_0
;#######################################; <- case_E__Main_0


;#######################################; -> typcase_ok_Main_09
typcase_ok_Main_09:
  %VR151 = icmp eq i32 %VR149,  2
  br i1 %VR151, label %typcase_ok_Main_010, label %unboxing_4_Main_0
;#######################################; <- typcase_ok_Main_09


;#######################################; -> typcase_ok_Main_010
typcase_ok_Main_010:
  br label %after_unbox_4_Main_0
;#######################################; <- typcase_ok_Main_010


;#######################################; -> unboxing_4_Main_0
unboxing_4_Main_0:
  %VR152 = add i32 %VR137, 12
  %VR153 = inttoptr i32 %VR152 to i32*
  %VR154 = load i32* %VR153
  br label %after_unbox_4_Main_0
;#######################################; <- unboxing_4_Main_0


;#######################################; -> after_unbox_4_Main_0
after_unbox_4_Main_0:
;- typcase -- dispatch -
;; -> dispatch: linia 325
;;generez codul pentru apelul metodei out_string
;- typcase -- dispatch -- string_const -
;; -> string_const: linia 325
  %VR155 = ptrtoint %struct.String_protObj_t* @str_const__38 to i32 
;; <- string_const: linia 325
;- typcase -- dispatch -- object -
;; -> object: linia 325
;; <- object: linia 325
  %VR156 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR156, label %false_dispatch38, label %dispatch_not_void_Main_38
;#######################################; <- after_unbox_4_Main_0


;#######################################; -> false_dispatch38
false_dispatch38:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__72 to i32))
  ret i32 0
;#######################################; <- false_dispatch38


;#######################################; -> dispatch_not_void_Main_38
dispatch_not_void_Main_38:
  %VR157 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR158 = add i32 %VR157, 8
  %VR159 = inttoptr i32 %VR158 to i32*
  %VR160 = load i32* %VR159
  %VR161 = add i32 %VR160, 16
  %VR162 = inttoptr i32 %VR161 to i32*
  %VR163 = load i32* %VR162
  %VR164 = inttoptr i32 %VR163 to i32 (i32, i32)*
  %VR165 = call i32 (i32, i32)* %VR164(i32 %ARG, i32 %VR155)
;; <- dispatch: linia 325
  %VR4.4 = add i32 %VR165, 0
  br label %phi_4_sfarsit_case_Main_0
;#######################################; <- dispatch_not_void_Main_38


;#######################################; -> phi_4_sfarsit_case_Main_0
phi_4_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_4_sfarsit_case_Main_0


;#######################################; -> case_Object__Main_0
case_Object__Main_0:
  %VR166 = call i32  @Object__copy(i32 %VR5)
  %VR167 = add i32 0, 0
  %VR168 = ptrtoint %struct.Object_protObj_t* @Object_protObj to i32 
  %VR169 = add i32 %VR168, 8
  %VR170 = inttoptr i32 %VR169 to i32*
  %VR171 = load i32* %VR170
  %VR172 = add i32 %VR166, 0
  %VR173 = inttoptr i32 %VR172 to i32*
  store i32 %VR167, i32* %VR173
  %VR174 = add i32 %VR166, 0
  %VR175 = inttoptr i32 %VR174 to i32*
  store i32 %VR171, i32* %VR175
  %VR176 = add i32 %VR166, 0
  %VR177 = inttoptr i32 %VR176 to i32*
  %VR178 = load i32* %VR177
  %VR179 = icmp eq i32 %VR178,  1
  br i1 %VR179, label %typcase_ok_Main_011, label %unboxing_5_Main_0
;#######################################; <- case_Object__Main_0


;#######################################; -> typcase_ok_Main_011
typcase_ok_Main_011:
  %VR180 = icmp eq i32 %VR178,  2
  br i1 %VR180, label %typcase_ok_Main_012, label %unboxing_5_Main_0
;#######################################; <- typcase_ok_Main_011


;#######################################; -> typcase_ok_Main_012
typcase_ok_Main_012:
  br label %after_unbox_5_Main_0
;#######################################; <- typcase_ok_Main_012


;#######################################; -> unboxing_5_Main_0
unboxing_5_Main_0:
  %VR181 = add i32 %VR166, 12
  %VR182 = inttoptr i32 %VR181 to i32*
  %VR183 = load i32* %VR182
  br label %after_unbox_5_Main_0
;#######################################; <- unboxing_5_Main_0


;#######################################; -> after_unbox_5_Main_0
after_unbox_5_Main_0:
;- typcase -- dispatch -
;; -> dispatch: linia 326
;;generez codul pentru apelul metodei out_string
;- typcase -- dispatch -- string_const -
;; -> string_const: linia 326
  %VR184 = ptrtoint %struct.String_protObj_t* @str_const__39 to i32 
;; <- string_const: linia 326
;- typcase -- dispatch -- object -
;; -> object: linia 326
;; <- object: linia 326
  %VR185 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR185, label %false_dispatch39, label %dispatch_not_void_Main_39
;#######################################; <- after_unbox_5_Main_0


;#######################################; -> false_dispatch39
false_dispatch39:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__73 to i32))
  ret i32 0
;#######################################; <- false_dispatch39


;#######################################; -> dispatch_not_void_Main_39
dispatch_not_void_Main_39:
  %VR186 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR187 = add i32 %VR186, 8
  %VR188 = inttoptr i32 %VR187 to i32*
  %VR189 = load i32* %VR188
  %VR190 = add i32 %VR189, 16
  %VR191 = inttoptr i32 %VR190 to i32*
  %VR192 = load i32* %VR191
  %VR193 = inttoptr i32 %VR192 to i32 (i32, i32)*
  %VR194 = call i32 (i32, i32)* %VR193(i32 %ARG, i32 %VR184)
;; <- dispatch: linia 326
  %VR4.5 = add i32 %VR194, 0
  br label %phi_5_sfarsit_case_Main_0
;#######################################; <- dispatch_not_void_Main_39


;#######################################; -> phi_5_sfarsit_case_Main_0
phi_5_sfarsit_case_Main_0:
  br label %sfarsit_case_Main_0
;#######################################; <- phi_5_sfarsit_case_Main_0


;#######################################; -> case_0_noAlternativeMain_0
case_0_noAlternativeMain_0:
  call void @_case_abort(i32 %VR5)
  ret i32 0
;#######################################; <- case_0_noAlternativeMain_0


;#######################################; -> sfarsit_case_Main_0
sfarsit_case_Main_0:
  %VR4 = phi i32 [ %VR4.0, %phi_0_sfarsit_case_Main_0] , [ %VR4.1, %phi_1_sfarsit_case_Main_0] , [ %VR4.2, %phi_2_sfarsit_case_Main_0] , [ %VR4.3, %phi_3_sfarsit_case_Main_0] , [ %VR4.4, %phi_4_sfarsit_case_Main_0] , [ %VR4.5, %phi_5_sfarsit_case_Main_0]
;; <- typcase: linia 320
  ret i32 %VR4
;#######################################; <- sfarsit_case_Main_0


}
define i32 @Main__print(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- let -
;; -> let: linia 331
;- let -- new -
;; -> new: linia 331
  %VR2 = call i32  @Object__copy(i32 ptrtoint (%struct.A2I_protObj_t* @A2I_protObj to i32))
  call void @A2I_init(i32 %VR2)
;; <- new: linia 331
;- let -- block -
;; -> block: linia 332
;- let -- block -- dispatch -
;; -> dispatch: linia 333
;;generez codul pentru apelul metodei out_string
;- let -- block -- dispatch -- dispatch -
;; -> dispatch: linia 333
;;generez codul pentru apelul metodei i2a
;- let -- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 333
;;generez codul pentru apelul metodei value
;- let -- block -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 333
;; <- object: linia 333
  %VR3 = inttoptr i32 %VR1 to i32*
  %VR4 = icmp eq i32* %VR3,  null
  br i1 %VR4, label %false_dispatch40, label %dispatch_not_void_Main_40
;#######################################; <- entry


;#######################################; -> false_dispatch40
false_dispatch40:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__74 to i32))
  ret i32 0
;#######################################; <- false_dispatch40


;#######################################; -> dispatch_not_void_Main_40
dispatch_not_void_Main_40:
  %VR5 = ptrtoint i32* %VR3 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 12
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32)*
  %VR13 = call i32 (i32)* %VR12(i32 %VR1)
;; <- dispatch: linia 333
;- let -- block -- dispatch -- dispatch -- object -
;; -> object: linia 333
;; <- object: linia 333
  %VR14 = inttoptr i32 %VR2 to i32*
  %VR15 = icmp eq i32* %VR14,  null
  br i1 %VR15, label %false_dispatch41, label %dispatch_not_void_Main_41
;#######################################; <- dispatch_not_void_Main_40


;#######################################; -> false_dispatch41
false_dispatch41:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__74 to i32))
  ret i32 0
;#######################################; <- false_dispatch41


;#######################################; -> dispatch_not_void_Main_41
dispatch_not_void_Main_41:
  %VR16 = ptrtoint i32* %VR14 to i32 
  %VR17 = add i32 %VR16, 8
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
  %VR20 = add i32 %VR19, 28
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
  %VR23 = inttoptr i32 %VR22 to i32 (i32, i32)*
  %VR24 = call i32 (i32, i32)* %VR23(i32 %VR2, i32 %VR13)
;; <- dispatch: linia 333
;- let -- block -- dispatch -- object -
;; -> object: linia 333
;; <- object: linia 333
  %VR25 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR25, label %false_dispatch42, label %dispatch_not_void_Main_42
;#######################################; <- dispatch_not_void_Main_41


;#######################################; -> false_dispatch42
false_dispatch42:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__74 to i32))
  ret i32 0
;#######################################; <- false_dispatch42


;#######################################; -> dispatch_not_void_Main_42
dispatch_not_void_Main_42:
  %VR26 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR27 = add i32 %VR26, 8
  %VR28 = inttoptr i32 %VR27 to i32*
  %VR29 = load i32* %VR28
  %VR30 = add i32 %VR29, 16
  %VR31 = inttoptr i32 %VR30 to i32*
  %VR32 = load i32* %VR31
  %VR33 = inttoptr i32 %VR32 to i32 (i32, i32)*
  %VR34 = call i32 (i32, i32)* %VR33(i32 %ARG, i32 %VR24)
;; <- dispatch: linia 333
;- let -- block -- dispatch -
;; -> dispatch: linia 334
;;generez codul pentru apelul metodei out_string
;- let -- block -- dispatch -- string_const -
;; -> string_const: linia 334
  %VR35 = ptrtoint %struct.String_protObj_t* @str_const__40 to i32 
;; <- string_const: linia 334
;- let -- block -- dispatch -- object -
;; -> object: linia 334
;; <- object: linia 334
  %VR36 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR36, label %false_dispatch43, label %dispatch_not_void_Main_43
;#######################################; <- dispatch_not_void_Main_42


;#######################################; -> false_dispatch43
false_dispatch43:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__75 to i32))
  ret i32 0
;#######################################; <- false_dispatch43


;#######################################; -> dispatch_not_void_Main_43
dispatch_not_void_Main_43:
  %VR37 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR38 = add i32 %VR37, 8
  %VR39 = inttoptr i32 %VR38 to i32*
  %VR40 = load i32* %VR39
  %VR41 = add i32 %VR40, 16
  %VR42 = inttoptr i32 %VR41 to i32*
  %VR43 = load i32* %VR42
  %VR44 = inttoptr i32 %VR43 to i32 (i32, i32)*
  %VR45 = call i32 (i32, i32)* %VR44(i32 %ARG, i32 %VR35)
;; <- dispatch: linia 334
;; <- block: linia 332
;; <- let: linia 331
  ret i32 %VR45
;#######################################; <- dispatch_not_void_Main_43


}
define i32 @Main__main(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR637a = alloca i32 
  store i32 0, i32* %VR637a
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- block -
;; -> block: linia 340
;- block -- assign -
;; -> assign: linia 341
;- block -- assign -- new -
;; -> new: linia 341
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.A_protObj_t* @A_protObj to i32))
  call void @A_init(i32 %VR1)
;; <- new: linia 341
  %VR2 = add i32 %ARG, 16
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
;; <- assign: linia 341
;- block -- loop -
;; -> loop: linia 342
;; conditie
  br label %start_loop_Main_0
;#######################################; <- entry


;#######################################; -> start_loop_Main_0
start_loop_Main_0:
;- block -- loop -- object -
;; -> object: linia 342
  %VR4 = add i32 %ARG, 24
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
;; <- object: linia 342
  %VR7 = icmp eq i32 %VR6,  0
  br i1 %VR7, label %sfarsit_loop_Main_0, label %label_next_loop_Main_0
;#######################################; <- start_loop_Main_0


;#######################################; -> label_next_loop_Main_0
label_next_loop_Main_0:
;; corp loop
;- block -- loop -- block -
;; -> block: linia 343
;- block -- loop -- block -- dispatch -
;; -> dispatch: linia 345
;;generez codul pentru apelul metodei out_string
;- block -- loop -- block -- dispatch -- string_const -
;; -> string_const: linia 345
  %VR8 = ptrtoint %struct.String_protObj_t* @str_const__41 to i32 
;; <- string_const: linia 345
;- block -- loop -- block -- dispatch -- object -
;; -> object: linia 345
;; <- object: linia 345
  %VR9 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR9, label %false_dispatch44, label %dispatch_not_void_Main_44
;#######################################; <- label_next_loop_Main_0


;#######################################; -> false_dispatch44
false_dispatch44:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__76 to i32))
  ret i32 0
;#######################################; <- false_dispatch44


;#######################################; -> dispatch_not_void_Main_44
dispatch_not_void_Main_44:
  %VR10 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR11 = add i32 %VR10, 8
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
  %VR14 = add i32 %VR13, 16
  %VR15 = inttoptr i32 %VR14 to i32*
  %VR16 = load i32* %VR15
  %VR17 = inttoptr i32 %VR16 to i32 (i32, i32)*
  %VR18 = call i32 (i32, i32)* %VR17(i32 %ARG, i32 %VR8)
;; <- dispatch: linia 345
;- block -- loop -- block -- dispatch -
;; -> dispatch: linia 346
;;generez codul pentru apelul metodei print
;- block -- loop -- block -- dispatch -- object -
;; -> object: linia 346
  %VR19 = add i32 %ARG, 16
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = load i32* %VR20
;; <- object: linia 346
;- block -- loop -- block -- dispatch -- object -
;; -> object: linia 346
;; <- object: linia 346
  %VR22 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR22, label %false_dispatch45, label %dispatch_not_void_Main_45
;#######################################; <- dispatch_not_void_Main_44


;#######################################; -> false_dispatch45
false_dispatch45:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__77 to i32))
  ret i32 0
;#######################################; <- false_dispatch45


;#######################################; -> dispatch_not_void_Main_45
dispatch_not_void_Main_45:
  %VR23 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR24 = add i32 %VR23, 8
  %VR25 = inttoptr i32 %VR24 to i32*
  %VR26 = load i32* %VR25
  %VR27 = add i32 %VR26, 48
  %VR28 = inttoptr i32 %VR27 to i32*
  %VR29 = load i32* %VR28
  %VR30 = inttoptr i32 %VR29 to i32 (i32, i32)*
  %VR31 = call i32 (i32, i32)* %VR30(i32 %ARG, i32 %VR21)
;; <- dispatch: linia 346
;- block -- loop -- block -- cond -
;; -> cond: linia 347
;;if: linia 347 (expresia pentru predicat)
;;%VR32 rezervat pentru rezultatul if-ului
;- block -- loop -- block -- cond -- dispatch -
;; -> dispatch: linia 347
;;generez codul pentru apelul metodei is_even
;- block -- loop -- block -- cond -- dispatch -- dispatch -
;; -> dispatch: linia 347
;;generez codul pentru apelul metodei value
;- block -- loop -- block -- cond -- dispatch -- dispatch -- object -
;; -> object: linia 347
  %VR33 = add i32 %ARG, 16
  %VR34 = inttoptr i32 %VR33 to i32*
  %VR35 = load i32* %VR34
;; <- object: linia 347
  %VR36 = inttoptr i32 %VR35 to i32*
  %VR37 = icmp eq i32* %VR36,  null
  br i1 %VR37, label %false_dispatch46, label %dispatch_not_void_Main_46
;#######################################; <- dispatch_not_void_Main_45


;#######################################; -> false_dispatch46
false_dispatch46:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__78 to i32))
  ret i32 0
;#######################################; <- false_dispatch46


;#######################################; -> dispatch_not_void_Main_46
dispatch_not_void_Main_46:
  %VR38 = ptrtoint i32* %VR36 to i32 
  %VR39 = add i32 %VR38, 8
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = load i32* %VR40
  %VR42 = add i32 %VR41, 12
  %VR43 = inttoptr i32 %VR42 to i32*
  %VR44 = load i32* %VR43
  %VR45 = inttoptr i32 %VR44 to i32 (i32)*
  %VR46 = call i32 (i32)* %VR45(i32 %VR35)
;; <- dispatch: linia 347
;- block -- loop -- block -- cond -- dispatch -- object -
;; -> object: linia 347
;; <- object: linia 347
  %VR47 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR47, label %false_dispatch47, label %dispatch_not_void_Main_47
;#######################################; <- dispatch_not_void_Main_46


;#######################################; -> false_dispatch47
false_dispatch47:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__78 to i32))
  ret i32 0
;#######################################; <- false_dispatch47


;#######################################; -> dispatch_not_void_Main_47
dispatch_not_void_Main_47:
  %VR48 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR49 = add i32 %VR48, 8
  %VR50 = inttoptr i32 %VR49 to i32*
  %VR51 = load i32* %VR50
  %VR52 = add i32 %VR51, 40
  %VR53 = inttoptr i32 %VR52 to i32*
  %VR54 = load i32* %VR53
  %VR55 = inttoptr i32 %VR54 to i32 (i32, i32)*
  %VR56 = call i32 (i32, i32)* %VR55(i32 %ARG, i32 %VR46)
;; <- dispatch: linia 347
  %VR57 = icmp eq i32 %VR56,  0
  br i1 %VR57, label %false_Main_3, label %false_false_Main_3
;#######################################; <- dispatch_not_void_Main_47


;#######################################; -> false_false_Main_3
false_false_Main_3:
;;if: linia 347 (expresia pentru then)
;- block -- loop -- block -- cond -- dispatch -
;; -> dispatch: linia 348
;;generez codul pentru apelul metodei out_string
;- block -- loop -- block -- cond -- dispatch -- string_const -
;; -> string_const: linia 348
  %VR58 = ptrtoint %struct.String_protObj_t* @str_const__42 to i32 
;; <- string_const: linia 348
;- block -- loop -- block -- cond -- dispatch -- object -
;; -> object: linia 348
;; <- object: linia 348
  %VR59 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR59, label %false_dispatch48, label %dispatch_not_void_Main_48
;#######################################; <- false_false_Main_3


;#######################################; -> false_dispatch48
false_dispatch48:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__79 to i32))
  ret i32 0
;#######################################; <- false_dispatch48


;#######################################; -> dispatch_not_void_Main_48
dispatch_not_void_Main_48:
  %VR60 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR61 = add i32 %VR60, 8
  %VR62 = inttoptr i32 %VR61 to i32*
  %VR63 = load i32* %VR62
  %VR64 = add i32 %VR63, 16
  %VR65 = inttoptr i32 %VR64 to i32*
  %VR66 = load i32* %VR65
  %VR67 = inttoptr i32 %VR66 to i32 (i32, i32)*
  %VR68 = call i32 (i32, i32)* %VR67(i32 %ARG, i32 %VR58)
;; <- dispatch: linia 348
  br label %join_if_Main_3_true
;#######################################; <- dispatch_not_void_Main_48


;#######################################; -> join_if_Main_3_true
join_if_Main_3_true:
  %VR32.0 = add i32 %VR68, 0
  br label %join_if_Main_3
;#######################################; <- join_if_Main_3_true


;#######################################; -> false_Main_3
false_Main_3:
;;if: linia 347 (expresia pentru else)
;- block -- loop -- block -- cond -- dispatch -
;; -> dispatch: linia 350
;;generez codul pentru apelul metodei out_string
;- block -- loop -- block -- cond -- dispatch -- string_const -
;; -> string_const: linia 350
  %VR69 = ptrtoint %struct.String_protObj_t* @str_const__43 to i32 
;; <- string_const: linia 350
;- block -- loop -- block -- cond -- dispatch -- object -
;; -> object: linia 350
;; <- object: linia 350
  %VR70 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR70, label %false_dispatch49, label %dispatch_not_void_Main_49
;#######################################; <- false_Main_3


;#######################################; -> false_dispatch49
false_dispatch49:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__80 to i32))
  ret i32 0
;#######################################; <- false_dispatch49


;#######################################; -> dispatch_not_void_Main_49
dispatch_not_void_Main_49:
  %VR71 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR72 = add i32 %VR71, 8
  %VR73 = inttoptr i32 %VR72 to i32*
  %VR74 = load i32* %VR73
  %VR75 = add i32 %VR74, 16
  %VR76 = inttoptr i32 %VR75 to i32*
  %VR77 = load i32* %VR76
  %VR78 = inttoptr i32 %VR77 to i32 (i32, i32)*
  %VR79 = call i32 (i32, i32)* %VR78(i32 %ARG, i32 %VR69)
;; <- dispatch: linia 350
  br label %join_if_Main_3_false
;#######################################; <- dispatch_not_void_Main_49


;#######################################; -> join_if_Main_3_false
join_if_Main_3_false:
  %VR32.1 = add i32 %VR79, 0
  br label %join_if_Main_3
;#######################################; <- join_if_Main_3_false


;#######################################; -> join_if_Main_3
join_if_Main_3:
  %VR32 = phi i32  [ %VR32.0 , %join_if_Main_3_true ] , [ %VR32.1 , %join_if_Main_3_false ] 
;; <- cond: linia 347
;- block -- loop -- block -- dispatch -
;; -> dispatch: linia 353
;;generez codul pentru apelul metodei class_type
;- block -- loop -- block -- dispatch -- object -
;; -> object: linia 353
  %VR80 = add i32 %ARG, 16
  %VR81 = inttoptr i32 %VR80 to i32*
  %VR82 = load i32* %VR81
;; <- object: linia 353
;- block -- loop -- block -- dispatch -- object -
;; -> object: linia 353
;; <- object: linia 353
  %VR83 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR83, label %false_dispatch50, label %dispatch_not_void_Main_50
;#######################################; <- join_if_Main_3


;#######################################; -> false_dispatch50
false_dispatch50:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__81 to i32))
  ret i32 0
;#######################################; <- false_dispatch50


;#######################################; -> dispatch_not_void_Main_50
dispatch_not_void_Main_50:
  %VR84 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR85 = add i32 %VR84, 8
  %VR86 = inttoptr i32 %VR85 to i32*
  %VR87 = load i32* %VR86
  %VR88 = add i32 %VR87, 44
  %VR89 = inttoptr i32 %VR88 to i32*
  %VR90 = load i32* %VR89
  %VR91 = inttoptr i32 %VR90 to i32 (i32, i32)*
  %VR92 = call i32 (i32, i32)* %VR91(i32 %ARG, i32 %VR82)
;; <- dispatch: linia 353
;- block -- loop -- block -- assign -
;; -> assign: linia 354
;- block -- loop -- block -- assign -- dispatch -
;; -> dispatch: linia 354
;;generez codul pentru apelul metodei menu
;- block -- loop -- block -- assign -- dispatch -- object -
;; -> object: linia 354
;; <- object: linia 354
  %VR93 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR93, label %false_dispatch51, label %dispatch_not_void_Main_51
;#######################################; <- dispatch_not_void_Main_50


;#######################################; -> false_dispatch51
false_dispatch51:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__82 to i32))
  ret i32 0
;#######################################; <- false_dispatch51


;#######################################; -> dispatch_not_void_Main_51
dispatch_not_void_Main_51:
  %VR94 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR95 = add i32 %VR94, 8
  %VR96 = inttoptr i32 %VR95 to i32*
  %VR97 = load i32* %VR96
  %VR98 = add i32 %VR97, 28
  %VR99 = inttoptr i32 %VR98 to i32*
  %VR100 = load i32* %VR99
  %VR101 = inttoptr i32 %VR100 to i32 (i32)*
  %VR102 = call i32 (i32)* %VR101(i32 %ARG)
;; <- dispatch: linia 354
  %VR103 = add i32 %ARG, 12
  %VR104 = inttoptr i32 %VR103 to i32*
  store i32 %VR102, i32* %VR104
;; <- assign: linia 354
;- block -- loop -- block -- cond -
;; -> cond: linia 355
;;if: linia 355 (expresia pentru predicat)
;;%VR105 rezervat pentru rezultatul if-ului
;- block -- loop -- block -- cond -- eq -
;; -> eq: linia 355
;- block -- loop -- block -- cond -- eq -- object -
;; -> object: linia 355
  %VR106 = add i32 %ARG, 12
  %VR107 = inttoptr i32 %VR106 to i32*
  %VR108 = load i32* %VR107
;; <- object: linia 355
;- block -- loop -- block -- cond -- eq -- string_const -
;; -> string_const: linia 355
  %VR109 = ptrtoint %struct.String_protObj_t* @str_const__44 to i32 
;; <- string_const: linia 355
  br label %eq_test_join_true_Main_2
;#######################################; <- dispatch_not_void_Main_51


;#######################################; -> eq_test_join_true_Main_2
eq_test_join_true_Main_2:
  %VR110.0 = icmp eq i32 %VR108,  %VR109
  br i1 %VR110.0, label %eq_test_join_Main_2, label %eq_test_join_false_Main_2
;#######################################; <- eq_test_join_true_Main_2


;#######################################; -> eq_test_join_false_Main_2
eq_test_join_false_Main_2:
  %VR112 = call i32  @equality_test(i32 1, i32 0, i32 %VR108, i32 %VR109)
  %VR110.1 = icmp eq i32 %VR112,  1
  br label %eq_test_join_Main_2
;#######################################; <- eq_test_join_false_Main_2


;#######################################; -> eq_test_join_Main_2
eq_test_join_Main_2:
  %VR110 = phi i1  [ %VR110.0 , %eq_test_join_true_Main_2 ] , [ %VR110.1 , %eq_test_join_false_Main_2 ] 
;; <- eq: linia 355
  %VR113 = icmp eq i1 %VR110,  false
  br i1 %VR113, label %false_Main_4, label %false_false_Main_4
;#######################################; <- eq_test_join_Main_2


;#######################################; -> false_false_Main_4
false_false_Main_4:
;;if: linia 355 (expresia pentru then)
;- block -- loop -- block -- cond -- block -
;; -> block: linia 356
;- block -- loop -- block -- cond -- block -- assign -
;; -> assign: linia 357
;- block -- loop -- block -- cond -- block -- assign -- dispatch -
;; -> dispatch: linia 357
;;generez codul pentru apelul metodei set_var
;- block -- loop -- block -- cond -- block -- assign -- dispatch -- dispatch -
;; -> dispatch: linia 357
;;generez codul pentru apelul metodei get_int
;- block -- loop -- block -- cond -- block -- assign -- dispatch -- dispatch -- object -
;; -> object: linia 357
;; <- object: linia 357
  %VR114 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR114, label %false_dispatch52, label %dispatch_not_void_Main_52
;#######################################; <- false_false_Main_4


;#######################################; -> false_dispatch52
false_dispatch52:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__83 to i32))
  ret i32 0
;#######################################; <- false_dispatch52


;#######################################; -> dispatch_not_void_Main_52
dispatch_not_void_Main_52:
  %VR115 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR116 = add i32 %VR115, 8
  %VR117 = inttoptr i32 %VR116 to i32*
  %VR118 = load i32* %VR117
  %VR119 = add i32 %VR118, 36
  %VR120 = inttoptr i32 %VR119 to i32*
  %VR121 = load i32* %VR120
  %VR122 = inttoptr i32 %VR121 to i32 (i32)*
  %VR123 = call i32 (i32)* %VR122(i32 %ARG)
;; <- dispatch: linia 357
;- block -- loop -- block -- cond -- block -- assign -- dispatch -- new -
;; -> new: linia 357
  %VR124 = call i32  @Object__copy(i32 ptrtoint (%struct.A_protObj_t* @A_protObj to i32))
  call void @A_init(i32 %VR124)
;; <- new: linia 357
  %VR125 = inttoptr i32 %VR124 to i32*
  %VR126 = icmp eq i32* %VR125,  null
  br i1 %VR126, label %false_dispatch53, label %dispatch_not_void_Main_53
;#######################################; <- dispatch_not_void_Main_52


;#######################################; -> false_dispatch53
false_dispatch53:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__83 to i32))
  ret i32 0
;#######################################; <- false_dispatch53


;#######################################; -> dispatch_not_void_Main_53
dispatch_not_void_Main_53:
  %VR127 = ptrtoint i32* %VR125 to i32 
  %VR128 = add i32 %VR127, 8
  %VR129 = inttoptr i32 %VR128 to i32*
  %VR130 = load i32* %VR129
  %VR131 = add i32 %VR130, 16
  %VR132 = inttoptr i32 %VR131 to i32*
  %VR133 = load i32* %VR132
  %VR134 = inttoptr i32 %VR133 to i32 (i32, i32)*
  %VR135 = call i32 (i32, i32)* %VR134(i32 %VR124, i32 %VR123)
;; <- dispatch: linia 357
  %VR136 = add i32 %ARG, 20
  %VR137 = inttoptr i32 %VR136 to i32*
  store i32 %VR135, i32* %VR137
;; <- assign: linia 357
;- block -- loop -- block -- cond -- block -- assign -
;; -> assign: linia 358
;- block -- loop -- block -- cond -- block -- assign -- dispatch -
;; -> dispatch: linia 358
;;generez codul pentru apelul metodei method2
;- block -- loop -- block -- cond -- block -- assign -- dispatch -- dispatch -
;; -> dispatch: linia 358
;;generez codul pentru apelul metodei value
;- block -- loop -- block -- cond -- block -- assign -- dispatch -- dispatch -- object -
;; -> object: linia 358
  %VR138 = add i32 %ARG, 16
  %VR139 = inttoptr i32 %VR138 to i32*
  %VR140 = load i32* %VR139
;; <- object: linia 358
  %VR141 = inttoptr i32 %VR140 to i32*
  %VR142 = icmp eq i32* %VR141,  null
  br i1 %VR142, label %false_dispatch54, label %dispatch_not_void_Main_54
;#######################################; <- dispatch_not_void_Main_53


;#######################################; -> false_dispatch54
false_dispatch54:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__84 to i32))
  ret i32 0
;#######################################; <- false_dispatch54


;#######################################; -> dispatch_not_void_Main_54
dispatch_not_void_Main_54:
  %VR143 = ptrtoint i32* %VR141 to i32 
  %VR144 = add i32 %VR143, 8
  %VR145 = inttoptr i32 %VR144 to i32*
  %VR146 = load i32* %VR145
  %VR147 = add i32 %VR146, 12
  %VR148 = inttoptr i32 %VR147 to i32*
  %VR149 = load i32* %VR148
  %VR150 = inttoptr i32 %VR149 to i32 (i32)*
  %VR151 = call i32 (i32)* %VR150(i32 %VR140)
;; <- dispatch: linia 358
;- block -- loop -- block -- cond -- block -- assign -- dispatch -- dispatch -
;; -> dispatch: linia 358
;;generez codul pentru apelul metodei value
;- block -- loop -- block -- cond -- block -- assign -- dispatch -- dispatch -- object -
;; -> object: linia 358
  %VR152 = add i32 %ARG, 20
  %VR153 = inttoptr i32 %VR152 to i32*
  %VR154 = load i32* %VR153
;; <- object: linia 358
  %VR155 = inttoptr i32 %VR154 to i32*
  %VR156 = icmp eq i32* %VR155,  null
  br i1 %VR156, label %false_dispatch55, label %dispatch_not_void_Main_55
;#######################################; <- dispatch_not_void_Main_54


;#######################################; -> false_dispatch55
false_dispatch55:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__84 to i32))
  ret i32 0
;#######################################; <- false_dispatch55


;#######################################; -> dispatch_not_void_Main_55
dispatch_not_void_Main_55:
  %VR157 = ptrtoint i32* %VR155 to i32 
  %VR158 = add i32 %VR157, 8
  %VR159 = inttoptr i32 %VR158 to i32*
  %VR160 = load i32* %VR159
  %VR161 = add i32 %VR160, 12
  %VR162 = inttoptr i32 %VR161 to i32*
  %VR163 = load i32* %VR162
  %VR164 = inttoptr i32 %VR163 to i32 (i32)*
  %VR165 = call i32 (i32)* %VR164(i32 %VR154)
;; <- dispatch: linia 358
;- block -- loop -- block -- cond -- block -- assign -- dispatch -- new -
;; -> new: linia 358
  %VR166 = call i32  @Object__copy(i32 ptrtoint (%struct.B_protObj_t* @B_protObj to i32))
  call void @B_init(i32 %VR166)
;; <- new: linia 358
  %VR167 = inttoptr i32 %VR166 to i32*
  %VR168 = icmp eq i32* %VR167,  null
  br i1 %VR168, label %false_dispatch56, label %dispatch_not_void_Main_56
;#######################################; <- dispatch_not_void_Main_55


;#######################################; -> false_dispatch56
false_dispatch56:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__84 to i32))
  ret i32 0
;#######################################; <- false_dispatch56


;#######################################; -> dispatch_not_void_Main_56
dispatch_not_void_Main_56:
  %VR169 = ptrtoint i32* %VR167 to i32 
  %VR170 = add i32 %VR169, 8
  %VR171 = inttoptr i32 %VR170 to i32*
  %VR172 = load i32* %VR171
  %VR173 = add i32 %VR172, 24
  %VR174 = inttoptr i32 %VR173 to i32*
  %VR175 = load i32* %VR174
  %VR176 = inttoptr i32 %VR175 to i32 (i32, i32, i32)*
  %VR177 = call i32 (i32, i32, i32)* %VR176(i32 %VR166, i32 %VR151, i32 %VR165)
;; <- dispatch: linia 358
  %VR178 = add i32 %ARG, 16
  %VR179 = inttoptr i32 %VR178 to i32*
  store i32 %VR177, i32* %VR179
;; <- assign: linia 358
;; <- block: linia 356
  br label %join_if_Main_4_true
;#######################################; <- dispatch_not_void_Main_56


;#######################################; -> join_if_Main_4_true
join_if_Main_4_true:
  %VR105.0 = add i32 %VR177, 0
  br label %join_if_Main_4
;#######################################; <- join_if_Main_4_true


;#######################################; -> false_Main_4
false_Main_4:
;;if: linia 355 (expresia pentru else)
;- block -- loop -- block -- cond -- cond -
;; -> cond: linia 360
;;if: linia 360 (expresia pentru predicat)
;;%VR180 rezervat pentru rezultatul if-ului
;- block -- loop -- block -- cond -- cond -- eq -
;; -> eq: linia 360
;- block -- loop -- block -- cond -- cond -- eq -- object -
;; -> object: linia 360
  %VR181 = add i32 %ARG, 12
  %VR182 = inttoptr i32 %VR181 to i32*
  %VR183 = load i32* %VR182
;; <- object: linia 360
;- block -- loop -- block -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 360
  %VR184 = ptrtoint %struct.String_protObj_t* @str_const__45 to i32 
;; <- string_const: linia 360
  br label %eq_test_join_true_Main_3
;#######################################; <- false_Main_4


;#######################################; -> eq_test_join_true_Main_3
eq_test_join_true_Main_3:
  %VR185.0 = icmp eq i32 %VR183,  %VR184
  br i1 %VR185.0, label %eq_test_join_Main_3, label %eq_test_join_false_Main_3
;#######################################; <- eq_test_join_true_Main_3


;#######################################; -> eq_test_join_false_Main_3
eq_test_join_false_Main_3:
  %VR187 = call i32  @equality_test(i32 1, i32 0, i32 %VR183, i32 %VR184)
  %VR185.1 = icmp eq i32 %VR187,  1
  br label %eq_test_join_Main_3
;#######################################; <- eq_test_join_false_Main_3


;#######################################; -> eq_test_join_Main_3
eq_test_join_Main_3:
  %VR185 = phi i1  [ %VR185.0 , %eq_test_join_true_Main_3 ] , [ %VR185.1 , %eq_test_join_false_Main_3 ] 
;; <- eq: linia 360
  %VR188 = icmp eq i1 %VR185,  false
  br i1 %VR188, label %false_Main_5, label %false_false_Main_5
;#######################################; <- eq_test_join_Main_3


;#######################################; -> false_false_Main_5
false_false_Main_5:
;;if: linia 360 (expresia pentru then)
;- block -- loop -- block -- cond -- cond -- typcase -
;; -> typcase: linia 361
;- block -- loop -- block -- cond -- cond -- typcase -- object -
;; -> object: linia 361
  %VR189 = add i32 %ARG, 16
  %VR190 = inttoptr i32 %VR189 to i32*
  %VR191 = load i32* %VR190
;; <- object: linia 361
  %VR192 = inttoptr i32 %VR191 to i32*
  %VR193 = icmp eq i32* %VR192,  null
  br i1 %VR193, label %false_typcase01, label %case_not_void_Main_1
;#######################################; <- false_false_Main_5


;#######################################; -> false_typcase01
false_typcase01:
  call void @_case_abort2(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__85 to i32))
  ret i32 0
;#######################################; <- false_typcase01


;#######################################; -> case_not_void_Main_1
case_not_void_Main_1:
;;rezerv %VR194 pentru rezultatul case-ului
  %VR195 = ptrtoint i32* %VR192 to i32 
  %VR196 = add i32 %VR195, 0
  %VR197 = inttoptr i32 %VR196 to i32*
  %VR198 = load i32* %VR197
  %VR199 = icmp eq i32 %VR198,  0
  br i1 %VR199, label %case_Object__Main_1, label %next0_case_Object__Main_1
;#######################################; <- case_not_void_Main_1


;#######################################; -> next0_case_Object__Main_1
next0_case_Object__Main_1:
  %VR200 = icmp eq i32 %VR198,  1
  br i1 %VR200, label %case_Object__Main_1, label %next1_case_Object__Main_1
;#######################################; <- next0_case_Object__Main_1


;#######################################; -> next1_case_Object__Main_1
next1_case_Object__Main_1:
  %VR201 = icmp eq i32 %VR198,  2
  br i1 %VR201, label %case_Object__Main_1, label %next2_case_Object__Main_1
;#######################################; <- next1_case_Object__Main_1


;#######################################; -> next2_case_Object__Main_1
next2_case_Object__Main_1:
  %VR202 = icmp eq i32 %VR198,  3
  br i1 %VR202, label %case_Object__Main_1, label %next3_case_Object__Main_1
;#######################################; <- next2_case_Object__Main_1


;#######################################; -> next3_case_Object__Main_1
next3_case_Object__Main_1:
  %VR203 = icmp eq i32 %VR198,  4
  br i1 %VR203, label %case_Object__Main_1, label %next4_case_Object__Main_1
;#######################################; <- next3_case_Object__Main_1


;#######################################; -> next4_case_Object__Main_1
next4_case_Object__Main_1:
  %VR204 = icmp eq i32 %VR198,  5
  br i1 %VR204, label %case_A__Main_1, label %next5_case_A__Main_1
;#######################################; <- next4_case_Object__Main_1


;#######################################; -> next5_case_A__Main_1
next5_case_A__Main_1:
  %VR205 = icmp eq i32 %VR198,  6
  br i1 %VR205, label %case_A__Main_1, label %next6_case_A__Main_1
;#######################################; <- next5_case_A__Main_1


;#######################################; -> next6_case_A__Main_1
next6_case_A__Main_1:
  %VR206 = icmp eq i32 %VR198,  7
  br i1 %VR206, label %case_C__Main_1, label %next7_case_C__Main_1
;#######################################; <- next6_case_A__Main_1


;#######################################; -> next7_case_C__Main_1
next7_case_C__Main_1:
  %VR207 = icmp eq i32 %VR198,  8
  br i1 %VR207, label %case_A__Main_1, label %next8_case_A__Main_1
;#######################################; <- next7_case_C__Main_1


;#######################################; -> next8_case_A__Main_1
next8_case_A__Main_1:
  %VR208 = icmp eq i32 %VR198,  9
  br i1 %VR208, label %case_A__Main_1, label %next9_case_A__Main_1
;#######################################; <- next8_case_A__Main_1


;#######################################; -> next9_case_A__Main_1
next9_case_A__Main_1:
  %VR209 = icmp eq i32 %VR198,  10
  br i1 %VR209, label %case_Object__Main_1, label %next10_case_Object__Main_1
;#######################################; <- next9_case_A__Main_1


;#######################################; -> next10_case_Object__Main_1
next10_case_Object__Main_1:
  %VR210 = icmp eq i32 %VR198,  11
  br i1 %VR210, label %case_Object__Main_1, label %next11_case_Object__Main_1
;#######################################; <- next10_case_Object__Main_1


;#######################################; -> next11_case_Object__Main_1
next11_case_Object__Main_1:
  br label %case_C__Main_1
;#######################################; <- next11_case_Object__Main_1


;#######################################; -> case_C__Main_1
case_C__Main_1:
  %VR211 = call i32  @Object__copy(i32 %VR195)
  %VR212 = add i32 7, 0
  %VR213 = ptrtoint %struct.C_protObj_t* @C_protObj to i32 
  %VR214 = add i32 %VR213, 8
  %VR215 = inttoptr i32 %VR214 to i32*
  %VR216 = load i32* %VR215
  %VR217 = add i32 %VR211, 0
  %VR218 = inttoptr i32 %VR217 to i32*
  store i32 %VR212, i32* %VR218
  %VR219 = add i32 %VR211, 0
  %VR220 = inttoptr i32 %VR219 to i32*
  store i32 %VR216, i32* %VR220
  %VR221 = add i32 %VR211, 0
  %VR222 = inttoptr i32 %VR221 to i32*
  %VR223 = load i32* %VR222
  %VR224 = icmp eq i32 %VR223,  1
  br i1 %VR224, label %typcase_ok_Main_11, label %unboxing_0_Main_1
;#######################################; <- case_C__Main_1


;#######################################; -> typcase_ok_Main_11
typcase_ok_Main_11:
  %VR225 = icmp eq i32 %VR223,  2
  br i1 %VR225, label %typcase_ok_Main_12, label %unboxing_0_Main_1
;#######################################; <- typcase_ok_Main_11


;#######################################; -> typcase_ok_Main_12
typcase_ok_Main_12:
  br label %after_unbox_0_Main_1
;#######################################; <- typcase_ok_Main_12


;#######################################; -> unboxing_0_Main_1
unboxing_0_Main_1:
  %VR226 = add i32 %VR211, 12
  %VR227 = inttoptr i32 %VR226 to i32*
  %VR228 = load i32* %VR227
  br label %after_unbox_0_Main_1
;#######################################; <- unboxing_0_Main_1


;#######################################; -> after_unbox_0_Main_1
after_unbox_0_Main_1:
;- block -- loop -- block -- cond -- cond -- typcase -- assign -
;; -> assign: linia 362
;- block -- loop -- block -- cond -- cond -- typcase -- assign -- dispatch -
;; -> dispatch: linia 362
;;generez codul pentru apelul metodei method6
;- block -- loop -- block -- cond -- cond -- typcase -- assign -- dispatch -- dispatch -
;; -> dispatch: linia 362
;;generez codul pentru apelul metodei value
;- block -- loop -- block -- cond -- cond -- typcase -- assign -- dispatch -- dispatch -- object -
;; -> object: linia 362
;; <- object: linia 362
  %VR229 = inttoptr i32 %VR195 to i32*
  %VR230 = icmp eq i32* %VR229,  null
  br i1 %VR230, label %false_dispatch57, label %dispatch_not_void_Main_57
;#######################################; <- after_unbox_0_Main_1


;#######################################; -> false_dispatch57
false_dispatch57:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__86 to i32))
  ret i32 0
;#######################################; <- false_dispatch57


;#######################################; -> dispatch_not_void_Main_57
dispatch_not_void_Main_57:
  %VR231 = ptrtoint i32* %VR229 to i32 
  %VR232 = add i32 %VR231, 8
  %VR233 = inttoptr i32 %VR232 to i32*
  %VR234 = load i32* %VR233
  %VR235 = add i32 %VR234, 12
  %VR236 = inttoptr i32 %VR235 to i32*
  %VR237 = load i32* %VR236
  %VR238 = inttoptr i32 %VR237 to i32 (i32)*
  %VR239 = call i32 (i32)* %VR238(i32 %VR195)
;; <- dispatch: linia 362
;- block -- loop -- block -- cond -- cond -- typcase -- assign -- dispatch -- object -
;; -> object: linia 362
;; <- object: linia 362
  %VR240 = inttoptr i32 %VR195 to i32*
  %VR241 = icmp eq i32* %VR240,  null
  br i1 %VR241, label %false_dispatch58, label %dispatch_not_void_Main_58
;#######################################; <- dispatch_not_void_Main_57


;#######################################; -> false_dispatch58
false_dispatch58:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__86 to i32))
  ret i32 0
;#######################################; <- false_dispatch58


;#######################################; -> dispatch_not_void_Main_58
dispatch_not_void_Main_58:
  %VR242 = ptrtoint i32* %VR240 to i32 
  %VR243 = add i32 %VR242, 8
  %VR244 = inttoptr i32 %VR243 to i32*
  %VR245 = load i32* %VR244
  %VR246 = add i32 %VR245, 40
  %VR247 = inttoptr i32 %VR246 to i32*
  %VR248 = load i32* %VR247
  %VR249 = inttoptr i32 %VR248 to i32 (i32, i32)*
  %VR250 = call i32 (i32, i32)* %VR249(i32 %VR195, i32 %VR239)
;; <- dispatch: linia 362
  %VR251 = add i32 %ARG, 16
  %VR252 = inttoptr i32 %VR251 to i32*
  store i32 %VR250, i32* %VR252
;; <- assign: linia 362
  %VR194.0 = add i32 %VR250, 0
  br label %phi_0_sfarsit_case_Main_1
;#######################################; <- dispatch_not_void_Main_58


;#######################################; -> phi_0_sfarsit_case_Main_1
phi_0_sfarsit_case_Main_1:
  br label %sfarsit_case_Main_1
;#######################################; <- phi_0_sfarsit_case_Main_1


;#######################################; -> case_A__Main_1
case_A__Main_1:
  %VR253 = call i32  @Object__copy(i32 %VR195)
  %VR254 = add i32 5, 0
  %VR255 = ptrtoint %struct.A_protObj_t* @A_protObj to i32 
  %VR256 = add i32 %VR255, 8
  %VR257 = inttoptr i32 %VR256 to i32*
  %VR258 = load i32* %VR257
  %VR259 = add i32 %VR253, 0
  %VR260 = inttoptr i32 %VR259 to i32*
  store i32 %VR254, i32* %VR260
  %VR261 = add i32 %VR253, 0
  %VR262 = inttoptr i32 %VR261 to i32*
  store i32 %VR258, i32* %VR262
  %VR263 = add i32 %VR253, 0
  %VR264 = inttoptr i32 %VR263 to i32*
  %VR265 = load i32* %VR264
  %VR266 = icmp eq i32 %VR265,  1
  br i1 %VR266, label %typcase_ok_Main_13, label %unboxing_1_Main_1
;#######################################; <- case_A__Main_1


;#######################################; -> typcase_ok_Main_13
typcase_ok_Main_13:
  %VR267 = icmp eq i32 %VR265,  2
  br i1 %VR267, label %typcase_ok_Main_14, label %unboxing_1_Main_1
;#######################################; <- typcase_ok_Main_13


;#######################################; -> typcase_ok_Main_14
typcase_ok_Main_14:
  br label %after_unbox_1_Main_1
;#######################################; <- typcase_ok_Main_14


;#######################################; -> unboxing_1_Main_1
unboxing_1_Main_1:
  %VR268 = add i32 %VR253, 12
  %VR269 = inttoptr i32 %VR268 to i32*
  %VR270 = load i32* %VR269
  br label %after_unbox_1_Main_1
;#######################################; <- unboxing_1_Main_1


;#######################################; -> after_unbox_1_Main_1
after_unbox_1_Main_1:
;- block -- loop -- block -- cond -- cond -- typcase -- assign -
;; -> assign: linia 363
;- block -- loop -- block -- cond -- cond -- typcase -- assign -- dispatch -
;; -> dispatch: linia 363
;;generez codul pentru apelul metodei method3
;- block -- loop -- block -- cond -- cond -- typcase -- assign -- dispatch -- dispatch -
;; -> dispatch: linia 363
;;generez codul pentru apelul metodei value
;- block -- loop -- block -- cond -- cond -- typcase -- assign -- dispatch -- dispatch -- object -
;; -> object: linia 363
;; <- object: linia 363
  %VR271 = inttoptr i32 %VR195 to i32*
  %VR272 = icmp eq i32* %VR271,  null
  br i1 %VR272, label %false_dispatch59, label %dispatch_not_void_Main_59
;#######################################; <- after_unbox_1_Main_1


;#######################################; -> false_dispatch59
false_dispatch59:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__87 to i32))
  ret i32 0
;#######################################; <- false_dispatch59


;#######################################; -> dispatch_not_void_Main_59
dispatch_not_void_Main_59:
  %VR273 = ptrtoint i32* %VR271 to i32 
  %VR274 = add i32 %VR273, 8
  %VR275 = inttoptr i32 %VR274 to i32*
  %VR276 = load i32* %VR275
  %VR277 = add i32 %VR276, 12
  %VR278 = inttoptr i32 %VR277 to i32*
  %VR279 = load i32* %VR278
  %VR280 = inttoptr i32 %VR279 to i32 (i32)*
  %VR281 = call i32 (i32)* %VR280(i32 %VR195)
;; <- dispatch: linia 363
;- block -- loop -- block -- cond -- cond -- typcase -- assign -- dispatch -- object -
;; -> object: linia 363
;; <- object: linia 363
  %VR282 = inttoptr i32 %VR195 to i32*
  %VR283 = icmp eq i32* %VR282,  null
  br i1 %VR283, label %false_dispatch60, label %dispatch_not_void_Main_60
;#######################################; <- dispatch_not_void_Main_59


;#######################################; -> false_dispatch60
false_dispatch60:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__87 to i32))
  ret i32 0
;#######################################; <- false_dispatch60


;#######################################; -> dispatch_not_void_Main_60
dispatch_not_void_Main_60:
  %VR284 = ptrtoint i32* %VR282 to i32 
  %VR285 = add i32 %VR284, 8
  %VR286 = inttoptr i32 %VR285 to i32*
  %VR287 = load i32* %VR286
  %VR288 = add i32 %VR287, 28
  %VR289 = inttoptr i32 %VR288 to i32*
  %VR290 = load i32* %VR289
  %VR291 = inttoptr i32 %VR290 to i32 (i32, i32)*
  %VR292 = call i32 (i32, i32)* %VR291(i32 %VR195, i32 %VR281)
;; <- dispatch: linia 363
  %VR293 = add i32 %ARG, 16
  %VR294 = inttoptr i32 %VR293 to i32*
  store i32 %VR292, i32* %VR294
;; <- assign: linia 363
  %VR194.1 = add i32 %VR292, 0
  br label %phi_1_sfarsit_case_Main_1
;#######################################; <- dispatch_not_void_Main_60


;#######################################; -> phi_1_sfarsit_case_Main_1
phi_1_sfarsit_case_Main_1:
  br label %sfarsit_case_Main_1
;#######################################; <- phi_1_sfarsit_case_Main_1


;#######################################; -> case_Object__Main_1
case_Object__Main_1:
  %VR295 = call i32  @Object__copy(i32 %VR195)
  %VR296 = add i32 0, 0
  %VR297 = ptrtoint %struct.Object_protObj_t* @Object_protObj to i32 
  %VR298 = add i32 %VR297, 8
  %VR299 = inttoptr i32 %VR298 to i32*
  %VR300 = load i32* %VR299
  %VR301 = add i32 %VR295, 0
  %VR302 = inttoptr i32 %VR301 to i32*
  store i32 %VR296, i32* %VR302
  %VR303 = add i32 %VR295, 0
  %VR304 = inttoptr i32 %VR303 to i32*
  store i32 %VR300, i32* %VR304
  %VR305 = add i32 %VR295, 0
  %VR306 = inttoptr i32 %VR305 to i32*
  %VR307 = load i32* %VR306
  %VR308 = icmp eq i32 %VR307,  1
  br i1 %VR308, label %typcase_ok_Main_15, label %unboxing_2_Main_1
;#######################################; <- case_Object__Main_1


;#######################################; -> typcase_ok_Main_15
typcase_ok_Main_15:
  %VR309 = icmp eq i32 %VR307,  2
  br i1 %VR309, label %typcase_ok_Main_16, label %unboxing_2_Main_1
;#######################################; <- typcase_ok_Main_15


;#######################################; -> typcase_ok_Main_16
typcase_ok_Main_16:
  br label %after_unbox_2_Main_1
;#######################################; <- typcase_ok_Main_16


;#######################################; -> unboxing_2_Main_1
unboxing_2_Main_1:
  %VR310 = add i32 %VR295, 12
  %VR311 = inttoptr i32 %VR310 to i32*
  %VR312 = load i32* %VR311
  br label %after_unbox_2_Main_1
;#######################################; <- unboxing_2_Main_1


;#######################################; -> after_unbox_2_Main_1
after_unbox_2_Main_1:
;- block -- loop -- block -- cond -- cond -- typcase -- block -
;; -> block: linia 364
;- block -- loop -- block -- cond -- cond -- typcase -- block -- dispatch -
;; -> dispatch: linia 365
;;generez codul pentru apelul metodei out_string
;- block -- loop -- block -- cond -- cond -- typcase -- block -- dispatch -- string_const -
;; -> string_const: linia 365
  %VR313 = ptrtoint %struct.String_protObj_t* @str_const__39 to i32 
;; <- string_const: linia 365
;- block -- loop -- block -- cond -- cond -- typcase -- block -- dispatch -- object -
;; -> object: linia 365
;; <- object: linia 365
  %VR314 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR314, label %false_dispatch61, label %dispatch_not_void_Main_61
;#######################################; <- after_unbox_2_Main_1


;#######################################; -> false_dispatch61
false_dispatch61:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__88 to i32))
  ret i32 0
;#######################################; <- false_dispatch61


;#######################################; -> dispatch_not_void_Main_61
dispatch_not_void_Main_61:
  %VR315 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR316 = add i32 %VR315, 8
  %VR317 = inttoptr i32 %VR316 to i32*
  %VR318 = load i32* %VR317
  %VR319 = add i32 %VR318, 16
  %VR320 = inttoptr i32 %VR319 to i32*
  %VR321 = load i32* %VR320
  %VR322 = inttoptr i32 %VR321 to i32 (i32, i32)*
  %VR323 = call i32 (i32, i32)* %VR322(i32 %ARG, i32 %VR313)
;; <- dispatch: linia 365
;- block -- loop -- block -- cond -- cond -- typcase -- block -- dispatch -
;; -> dispatch: linia 366
;;generez codul pentru apelul metodei abort
;- block -- loop -- block -- cond -- cond -- typcase -- block -- dispatch -- object -
;; -> object: linia 366
;; <- object: linia 366
  %VR324 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR324, label %false_dispatch62, label %dispatch_not_void_Main_62
;#######################################; <- dispatch_not_void_Main_61


;#######################################; -> false_dispatch62
false_dispatch62:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__89 to i32))
  ret i32 0
;#######################################; <- false_dispatch62


;#######################################; -> dispatch_not_void_Main_62
dispatch_not_void_Main_62:
  %VR325 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR326 = add i32 %VR325, 8
  %VR327 = inttoptr i32 %VR326 to i32*
  %VR328 = load i32* %VR327
  %VR329 = add i32 %VR328, 0
  %VR330 = inttoptr i32 %VR329 to i32*
  %VR331 = load i32* %VR330
  %VR332 = inttoptr i32 %VR331 to i32 (i32)*
  %VR333 = call i32 (i32)* %VR332(i32 %ARG)
;; <- dispatch: linia 366
;- block -- loop -- block -- cond -- cond -- typcase -- block -- int_const -
;; -> int_const: linia 366
  %VR334 = add i32 0, 0
;; <- int_const: linia 366
;; <- block: linia 364
  %VR194.2 = add i32 %VR334, 0
  br label %phi_2_sfarsit_case_Main_1
;#######################################; <- dispatch_not_void_Main_62


;#######################################; -> phi_2_sfarsit_case_Main_1
phi_2_sfarsit_case_Main_1:
  br label %sfarsit_case_Main_1
;#######################################; <- phi_2_sfarsit_case_Main_1


;#######################################; -> case_1_noAlternativeMain_1
case_1_noAlternativeMain_1:
  call void @_case_abort(i32 %VR195)
  ret i32 0
;#######################################; <- case_1_noAlternativeMain_1


;#######################################; -> sfarsit_case_Main_1
sfarsit_case_Main_1:
  %VR194 = phi i32  [ %VR194.0 , %phi_0_sfarsit_case_Main_1 ] , [ %VR194.1 , %phi_1_sfarsit_case_Main_1 ] , [ %VR194.2 , %phi_2_sfarsit_case_Main_1 ] 
;; <- typcase: linia 361
  br label %join_if_Main_5_true
;#######################################; <- sfarsit_case_Main_1


;#######################################; -> join_if_Main_5_true
join_if_Main_5_true:
  %VR180.0 = add i32 %VR194, 0
  br label %join_if_Main_5
;#######################################; <- join_if_Main_5_true


;#######################################; -> false_Main_5
false_Main_5:
;;if: linia 360 (expresia pentru else)
;- block -- loop -- block -- cond -- cond -- cond -
;; -> cond: linia 369
;;if: linia 369 (expresia pentru predicat)
;;%VR335 rezervat pentru rezultatul if-ului
;- block -- loop -- block -- cond -- cond -- cond -- eq -
;; -> eq: linia 369
;- block -- loop -- block -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 369
  %VR336 = add i32 %ARG, 12
  %VR337 = inttoptr i32 %VR336 to i32*
  %VR338 = load i32* %VR337
;; <- object: linia 369
;- block -- loop -- block -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 369
  %VR339 = ptrtoint %struct.String_protObj_t* @str_const__46 to i32 
;; <- string_const: linia 369
  br label %eq_test_join_true_Main_4
;#######################################; <- false_Main_5


;#######################################; -> eq_test_join_true_Main_4
eq_test_join_true_Main_4:
  %VR340.0 = icmp eq i32 %VR338,  %VR339
  br i1 %VR340.0, label %eq_test_join_Main_4, label %eq_test_join_false_Main_4
;#######################################; <- eq_test_join_true_Main_4


;#######################################; -> eq_test_join_false_Main_4
eq_test_join_false_Main_4:
  %VR342 = call i32  @equality_test(i32 1, i32 0, i32 %VR338, i32 %VR339)
  %VR340.1 = icmp eq i32 %VR342,  1
  br label %eq_test_join_Main_4
;#######################################; <- eq_test_join_false_Main_4


;#######################################; -> eq_test_join_Main_4
eq_test_join_Main_4:
  %VR340 = phi i1  [ %VR340.0 , %eq_test_join_true_Main_4 ] , [ %VR340.1 , %eq_test_join_false_Main_4 ] 
;; <- eq: linia 369
  %VR343 = icmp eq i1 %VR340,  false
  br i1 %VR343, label %false_Main_6, label %false_false_Main_6
;#######################################; <- eq_test_join_Main_4


;#######################################; -> false_false_Main_6
false_false_Main_6:
;;if: linia 369 (expresia pentru then)
;- block -- loop -- block -- cond -- cond -- cond -- block -
;; -> block: linia 370
;- block -- loop -- block -- cond -- cond -- cond -- block -- assign -
;; -> assign: linia 371
;- block -- loop -- block -- cond -- cond -- cond -- block -- assign -- dispatch -
;; -> dispatch: linia 371
;;generez codul pentru apelul metodei set_var
;- block -- loop -- block -- cond -- cond -- cond -- block -- assign -- dispatch -- dispatch -
;; -> dispatch: linia 371
;;generez codul pentru apelul metodei get_int
;- block -- loop -- block -- cond -- cond -- cond -- block -- assign -- dispatch -- dispatch -- object -
;; -> object: linia 371
;; <- object: linia 371
  %VR344 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR344, label %false_dispatch63, label %dispatch_not_void_Main_63
;#######################################; <- false_false_Main_6


;#######################################; -> false_dispatch63
false_dispatch63:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__90 to i32))
  ret i32 0
;#######################################; <- false_dispatch63


;#######################################; -> dispatch_not_void_Main_63
dispatch_not_void_Main_63:
  %VR345 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR346 = add i32 %VR345, 8
  %VR347 = inttoptr i32 %VR346 to i32*
  %VR348 = load i32* %VR347
  %VR349 = add i32 %VR348, 36
  %VR350 = inttoptr i32 %VR349 to i32*
  %VR351 = load i32* %VR350
  %VR352 = inttoptr i32 %VR351 to i32 (i32)*
  %VR353 = call i32 (i32)* %VR352(i32 %ARG)
;; <- dispatch: linia 371
;- block -- loop -- block -- cond -- cond -- cond -- block -- assign -- dispatch -- new -
;; -> new: linia 371
  %VR354 = call i32  @Object__copy(i32 ptrtoint (%struct.A_protObj_t* @A_protObj to i32))
  call void @A_init(i32 %VR354)
;; <- new: linia 371
  %VR355 = inttoptr i32 %VR354 to i32*
  %VR356 = icmp eq i32* %VR355,  null
  br i1 %VR356, label %false_dispatch64, label %dispatch_not_void_Main_64
;#######################################; <- dispatch_not_void_Main_63


;#######################################; -> false_dispatch64
false_dispatch64:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__90 to i32))
  ret i32 0
;#######################################; <- false_dispatch64


;#######################################; -> dispatch_not_void_Main_64
dispatch_not_void_Main_64:
  %VR357 = ptrtoint i32* %VR355 to i32 
  %VR358 = add i32 %VR357, 8
  %VR359 = inttoptr i32 %VR358 to i32*
  %VR360 = load i32* %VR359
  %VR361 = add i32 %VR360, 16
  %VR362 = inttoptr i32 %VR361 to i32*
  %VR363 = load i32* %VR362
  %VR364 = inttoptr i32 %VR363 to i32 (i32, i32)*
  %VR365 = call i32 (i32, i32)* %VR364(i32 %VR354, i32 %VR353)
;; <- dispatch: linia 371
  %VR366 = add i32 %ARG, 20
  %VR367 = inttoptr i32 %VR366 to i32*
  store i32 %VR365, i32* %VR367
;; <- assign: linia 371
;- block -- loop -- block -- cond -- cond -- cond -- block -- assign -
;; -> assign: linia 372
;- block -- loop -- block -- cond -- cond -- cond -- block -- assign -- dispatch -
;; -> dispatch: linia 372
;;generez codul pentru apelul metodei method4
;- block -- loop -- block -- cond -- cond -- cond -- block -- assign -- dispatch -- dispatch -
;; -> dispatch: linia 372
;;generez codul pentru apelul metodei value
;- block -- loop -- block -- cond -- cond -- cond -- block -- assign -- dispatch -- dispatch -- object -
;; -> object: linia 372
  %VR368 = add i32 %ARG, 16
  %VR369 = inttoptr i32 %VR368 to i32*
  %VR370 = load i32* %VR369
;; <- object: linia 372
  %VR371 = inttoptr i32 %VR370 to i32*
  %VR372 = icmp eq i32* %VR371,  null
  br i1 %VR372, label %false_dispatch65, label %dispatch_not_void_Main_65
;#######################################; <- dispatch_not_void_Main_64


;#######################################; -> false_dispatch65
false_dispatch65:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__91 to i32))
  ret i32 0
;#######################################; <- false_dispatch65


;#######################################; -> dispatch_not_void_Main_65
dispatch_not_void_Main_65:
  %VR373 = ptrtoint i32* %VR371 to i32 
  %VR374 = add i32 %VR373, 8
  %VR375 = inttoptr i32 %VR374 to i32*
  %VR376 = load i32* %VR375
  %VR377 = add i32 %VR376, 12
  %VR378 = inttoptr i32 %VR377 to i32*
  %VR379 = load i32* %VR378
  %VR380 = inttoptr i32 %VR379 to i32 (i32)*
  %VR381 = call i32 (i32)* %VR380(i32 %VR370)
;; <- dispatch: linia 372
;- block -- loop -- block -- cond -- cond -- cond -- block -- assign -- dispatch -- dispatch -
;; -> dispatch: linia 372
;;generez codul pentru apelul metodei value
;- block -- loop -- block -- cond -- cond -- cond -- block -- assign -- dispatch -- dispatch -- object -
;; -> object: linia 372
  %VR382 = add i32 %ARG, 20
  %VR383 = inttoptr i32 %VR382 to i32*
  %VR384 = load i32* %VR383
;; <- object: linia 372
  %VR385 = inttoptr i32 %VR384 to i32*
  %VR386 = icmp eq i32* %VR385,  null
  br i1 %VR386, label %false_dispatch66, label %dispatch_not_void_Main_66
;#######################################; <- dispatch_not_void_Main_65


;#######################################; -> false_dispatch66
false_dispatch66:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__91 to i32))
  ret i32 0
;#######################################; <- false_dispatch66


;#######################################; -> dispatch_not_void_Main_66
dispatch_not_void_Main_66:
  %VR387 = ptrtoint i32* %VR385 to i32 
  %VR388 = add i32 %VR387, 8
  %VR389 = inttoptr i32 %VR388 to i32*
  %VR390 = load i32* %VR389
  %VR391 = add i32 %VR390, 12
  %VR392 = inttoptr i32 %VR391 to i32*
  %VR393 = load i32* %VR392
  %VR394 = inttoptr i32 %VR393 to i32 (i32)*
  %VR395 = call i32 (i32)* %VR394(i32 %VR384)
;; <- dispatch: linia 372
;- block -- loop -- block -- cond -- cond -- cond -- block -- assign -- dispatch -- new -
;; -> new: linia 372
  %VR396 = call i32  @Object__copy(i32 ptrtoint (%struct.D_protObj_t* @D_protObj to i32))
  call void @D_init(i32 %VR396)
;; <- new: linia 372
  %VR397 = inttoptr i32 %VR396 to i32*
  %VR398 = icmp eq i32* %VR397,  null
  br i1 %VR398, label %false_dispatch67, label %dispatch_not_void_Main_67
;#######################################; <- dispatch_not_void_Main_66


;#######################################; -> false_dispatch67
false_dispatch67:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__91 to i32))
  ret i32 0
;#######################################; <- false_dispatch67


;#######################################; -> dispatch_not_void_Main_67
dispatch_not_void_Main_67:
  %VR399 = ptrtoint i32* %VR397 to i32 
  %VR400 = add i32 %VR399, 8
  %VR401 = inttoptr i32 %VR400 to i32*
  %VR402 = load i32* %VR401
  %VR403 = add i32 %VR402, 32
  %VR404 = inttoptr i32 %VR403 to i32*
  %VR405 = load i32* %VR404
  %VR406 = inttoptr i32 %VR405 to i32 (i32, i32, i32)*
  %VR407 = call i32 (i32, i32, i32)* %VR406(i32 %VR396, i32 %VR381, i32 %VR395)
;; <- dispatch: linia 372
  %VR408 = add i32 %ARG, 16
  %VR409 = inttoptr i32 %VR408 to i32*
  store i32 %VR407, i32* %VR409
;; <- assign: linia 372
;; <- block: linia 370
  br label %join_if_Main_6_true
;#######################################; <- dispatch_not_void_Main_67


;#######################################; -> join_if_Main_6_true
join_if_Main_6_true:
  %VR335.0 = add i32 %VR407, 0
  br label %join_if_Main_6
;#######################################; <- join_if_Main_6_true


;#######################################; -> false_Main_6
false_Main_6:
;;if: linia 369 (expresia pentru else)
;- block -- loop -- block -- cond -- cond -- cond -- cond -
;; -> cond: linia 374
;;if: linia 374 (expresia pentru predicat)
;;%VR410 rezervat pentru rezultatul if-ului
;- block -- loop -- block -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 374
;- block -- loop -- block -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 374
  %VR411 = add i32 %ARG, 12
  %VR412 = inttoptr i32 %VR411 to i32*
  %VR413 = load i32* %VR412
;; <- object: linia 374
;- block -- loop -- block -- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 374
  %VR414 = ptrtoint %struct.String_protObj_t* @str_const__47 to i32 
;; <- string_const: linia 374
  br label %eq_test_join_true_Main_5
;#######################################; <- false_Main_6


;#######################################; -> eq_test_join_true_Main_5
eq_test_join_true_Main_5:
  %VR415.0 = icmp eq i32 %VR413,  %VR414
  br i1 %VR415.0, label %eq_test_join_Main_5, label %eq_test_join_false_Main_5
;#######################################; <- eq_test_join_true_Main_5


;#######################################; -> eq_test_join_false_Main_5
eq_test_join_false_Main_5:
  %VR417 = call i32  @equality_test(i32 1, i32 0, i32 %VR413, i32 %VR414)
  %VR415.1 = icmp eq i32 %VR417,  1
  br label %eq_test_join_Main_5
;#######################################; <- eq_test_join_false_Main_5


;#######################################; -> eq_test_join_Main_5
eq_test_join_Main_5:
  %VR415 = phi i1  [ %VR415.0 , %eq_test_join_true_Main_5 ] , [ %VR415.1 , %eq_test_join_false_Main_5 ] 
;; <- eq: linia 374
  %VR418 = icmp eq i1 %VR415,  false
  br i1 %VR418, label %false_Main_7, label %false_false_Main_7
;#######################################; <- eq_test_join_Main_5


;#######################################; -> false_false_Main_7
false_false_Main_7:
;;if: linia 374 (expresia pentru then)
;- block -- loop -- block -- cond -- cond -- cond -- cond -- assign -
;; -> assign: linia 374
;- block -- loop -- block -- cond -- cond -- cond -- cond -- assign -- static_dispatch -
;; -> static_dispatch: linia 374
;;generez codul pentru apelul metodei method5
;- block -- loop -- block -- cond -- cond -- cond -- cond -- assign -- static_dispatch -- dispatch -
;; -> dispatch: linia 374
;;generez codul pentru apelul metodei value
;- block -- loop -- block -- cond -- cond -- cond -- cond -- assign -- static_dispatch -- dispatch -- object -
;; -> object: linia 374
  %VR419 = add i32 %ARG, 16
  %VR420 = inttoptr i32 %VR419 to i32*
  %VR421 = load i32* %VR420
;; <- object: linia 374
  %VR422 = inttoptr i32 %VR421 to i32*
  %VR423 = icmp eq i32* %VR422,  null
  br i1 %VR423, label %false_dispatch68, label %dispatch_not_void_Main_68
;#######################################; <- false_false_Main_7


;#######################################; -> false_dispatch68
false_dispatch68:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__92 to i32))
  ret i32 0
;#######################################; <- false_dispatch68


;#######################################; -> dispatch_not_void_Main_68
dispatch_not_void_Main_68:
  %VR424 = ptrtoint i32* %VR422 to i32 
  %VR425 = add i32 %VR424, 8
  %VR426 = inttoptr i32 %VR425 to i32*
  %VR427 = load i32* %VR426
  %VR428 = add i32 %VR427, 12
  %VR429 = inttoptr i32 %VR428 to i32*
  %VR430 = load i32* %VR429
  %VR431 = inttoptr i32 %VR430 to i32 (i32)*
  %VR432 = call i32 (i32)* %VR431(i32 %VR421)
;; <- dispatch: linia 374
;- block -- loop -- block -- cond -- cond -- cond -- cond -- assign -- static_dispatch -- new -
;; -> new: linia 374
  %VR433 = call i32  @Object__copy(i32 ptrtoint (%struct.C_protObj_t* @C_protObj to i32))
  call void @C_init(i32 %VR433)
;; <- new: linia 374
  %VR434 = inttoptr i32 %VR433 to i32*
  %VR435 = icmp eq i32* %VR434,  null
  br i1 %VR435, label %false_static_dispatch69, label %dispatch_not_void_Main_69
;#######################################; <- dispatch_not_void_Main_68


;#######################################; -> false_static_dispatch69
false_static_dispatch69:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__92 to i32))
  ret i32 0
;#######################################; <- false_static_dispatch69


;#######################################; -> dispatch_not_void_Main_69
dispatch_not_void_Main_69:
  %VR436 = ptrtoint %struct.A_protObj_t* @A_protObj to i32 
  %VR437 = add i32 %VR436, 8
  %VR438 = inttoptr i32 %VR437 to i32*
  %VR439 = load i32* %VR438
  %VR440 = add i32 %VR439, 36
  %VR441 = inttoptr i32 %VR440 to i32*
  %VR442 = load i32* %VR441
  %VR443 = inttoptr i32 %VR442 to i32 (i32, i32)*
  %VR444 = call i32 (i32, i32)* %VR443(i32 %VR433, i32 %VR432)
;; <- static_dispatch: linia 374
  %VR445 = add i32 %ARG, 16
  %VR446 = inttoptr i32 %VR445 to i32*
  store i32 %VR444, i32* %VR446
;; <- assign: linia 374
  br label %join_if_Main_7_true
;#######################################; <- dispatch_not_void_Main_69


;#######################################; -> join_if_Main_7_true
join_if_Main_7_true:
  %VR410.0 = add i32 %VR444, 0
  br label %join_if_Main_7
;#######################################; <- join_if_Main_7_true


;#######################################; -> false_Main_7
false_Main_7:
;;if: linia 374 (expresia pentru else)
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 376
;;if: linia 376 (expresia pentru predicat)
;;%VR447 rezervat pentru rezultatul if-ului
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 376
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 376
  %VR448 = add i32 %ARG, 12
  %VR449 = inttoptr i32 %VR448 to i32*
  %VR450 = load i32* %VR449
;; <- object: linia 376
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 376
  %VR451 = ptrtoint %struct.String_protObj_t* @str_const__48 to i32 
;; <- string_const: linia 376
  br label %eq_test_join_true_Main_6
;#######################################; <- false_Main_7


;#######################################; -> eq_test_join_true_Main_6
eq_test_join_true_Main_6:
  %VR452.0 = icmp eq i32 %VR450,  %VR451
  br i1 %VR452.0, label %eq_test_join_Main_6, label %eq_test_join_false_Main_6
;#######################################; <- eq_test_join_true_Main_6


;#######################################; -> eq_test_join_false_Main_6
eq_test_join_false_Main_6:
  %VR454 = call i32  @equality_test(i32 1, i32 0, i32 %VR450, i32 %VR451)
  %VR452.1 = icmp eq i32 %VR454,  1
  br label %eq_test_join_Main_6
;#######################################; <- eq_test_join_false_Main_6


;#######################################; -> eq_test_join_Main_6
eq_test_join_Main_6:
  %VR452 = phi i1  [ %VR452.0 , %eq_test_join_true_Main_6 ] , [ %VR452.1 , %eq_test_join_false_Main_6 ] 
;; <- eq: linia 376
  %VR455 = icmp eq i1 %VR452,  false
  br i1 %VR455, label %false_Main_8, label %false_false_Main_8
;#######################################; <- eq_test_join_Main_6


;#######################################; -> false_false_Main_8
false_false_Main_8:
;;if: linia 376 (expresia pentru then)
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- assign -
;; -> assign: linia 376
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- assign -- static_dispatch -
;; -> static_dispatch: linia 376
;;generez codul pentru apelul metodei method5
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- assign -- static_dispatch -- dispatch -
;; -> dispatch: linia 376
;;generez codul pentru apelul metodei value
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- assign -- static_dispatch -- dispatch -- object -
;; -> object: linia 376
  %VR456 = add i32 %ARG, 16
  %VR457 = inttoptr i32 %VR456 to i32*
  %VR458 = load i32* %VR457
;; <- object: linia 376
  %VR459 = inttoptr i32 %VR458 to i32*
  %VR460 = icmp eq i32* %VR459,  null
  br i1 %VR460, label %false_dispatch70, label %dispatch_not_void_Main_70
;#######################################; <- false_false_Main_8


;#######################################; -> false_dispatch70
false_dispatch70:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__93 to i32))
  ret i32 0
;#######################################; <- false_dispatch70


;#######################################; -> dispatch_not_void_Main_70
dispatch_not_void_Main_70:
  %VR461 = ptrtoint i32* %VR459 to i32 
  %VR462 = add i32 %VR461, 8
  %VR463 = inttoptr i32 %VR462 to i32*
  %VR464 = load i32* %VR463
  %VR465 = add i32 %VR464, 12
  %VR466 = inttoptr i32 %VR465 to i32*
  %VR467 = load i32* %VR466
  %VR468 = inttoptr i32 %VR467 to i32 (i32)*
  %VR469 = call i32 (i32)* %VR468(i32 %VR458)
;; <- dispatch: linia 376
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- assign -- static_dispatch -- new -
;; -> new: linia 376
  %VR470 = call i32  @Object__copy(i32 ptrtoint (%struct.C_protObj_t* @C_protObj to i32))
  call void @C_init(i32 %VR470)
;; <- new: linia 376
  %VR471 = inttoptr i32 %VR470 to i32*
  %VR472 = icmp eq i32* %VR471,  null
  br i1 %VR472, label %false_static_dispatch71, label %dispatch_not_void_Main_71
;#######################################; <- dispatch_not_void_Main_70


;#######################################; -> false_static_dispatch71
false_static_dispatch71:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__93 to i32))
  ret i32 0
;#######################################; <- false_static_dispatch71


;#######################################; -> dispatch_not_void_Main_71
dispatch_not_void_Main_71:
  %VR473 = ptrtoint %struct.B_protObj_t* @B_protObj to i32 
  %VR474 = add i32 %VR473, 8
  %VR475 = inttoptr i32 %VR474 to i32*
  %VR476 = load i32* %VR475
  %VR477 = add i32 %VR476, 36
  %VR478 = inttoptr i32 %VR477 to i32*
  %VR479 = load i32* %VR478
  %VR480 = inttoptr i32 %VR479 to i32 (i32, i32)*
  %VR481 = call i32 (i32, i32)* %VR480(i32 %VR470, i32 %VR469)
;; <- static_dispatch: linia 376
  %VR482 = add i32 %ARG, 16
  %VR483 = inttoptr i32 %VR482 to i32*
  store i32 %VR481, i32* %VR483
;; <- assign: linia 376
  br label %join_if_Main_8_true
;#######################################; <- dispatch_not_void_Main_71


;#######################################; -> join_if_Main_8_true
join_if_Main_8_true:
  %VR447.0 = add i32 %VR481, 0
  br label %join_if_Main_8
;#######################################; <- join_if_Main_8_true


;#######################################; -> false_Main_8
false_Main_8:
;;if: linia 376 (expresia pentru else)
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 378
;;if: linia 378 (expresia pentru predicat)
;;%VR484 rezervat pentru rezultatul if-ului
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 378
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 378
  %VR485 = add i32 %ARG, 12
  %VR486 = inttoptr i32 %VR485 to i32*
  %VR487 = load i32* %VR486
;; <- object: linia 378
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 378
  %VR488 = ptrtoint %struct.String_protObj_t* @str_const__49 to i32 
;; <- string_const: linia 378
  br label %eq_test_join_true_Main_7
;#######################################; <- false_Main_8


;#######################################; -> eq_test_join_true_Main_7
eq_test_join_true_Main_7:
  %VR489.0 = icmp eq i32 %VR487,  %VR488
  br i1 %VR489.0, label %eq_test_join_Main_7, label %eq_test_join_false_Main_7
;#######################################; <- eq_test_join_true_Main_7


;#######################################; -> eq_test_join_false_Main_7
eq_test_join_false_Main_7:
  %VR491 = call i32  @equality_test(i32 1, i32 0, i32 %VR487, i32 %VR488)
  %VR489.1 = icmp eq i32 %VR491,  1
  br label %eq_test_join_Main_7
;#######################################; <- eq_test_join_false_Main_7


;#######################################; -> eq_test_join_Main_7
eq_test_join_Main_7:
  %VR489 = phi i1  [ %VR489.0 , %eq_test_join_true_Main_7 ] , [ %VR489.1 , %eq_test_join_false_Main_7 ] 
;; <- eq: linia 378
  %VR492 = icmp eq i1 %VR489,  false
  br i1 %VR492, label %false_Main_9, label %false_false_Main_9
;#######################################; <- eq_test_join_Main_7


;#######################################; -> false_false_Main_9
false_false_Main_9:
;;if: linia 378 (expresia pentru then)
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- assign -
;; -> assign: linia 378
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- assign -- static_dispatch -
;; -> static_dispatch: linia 378
;;generez codul pentru apelul metodei method5
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- assign -- static_dispatch -- dispatch -
;; -> dispatch: linia 378
;;generez codul pentru apelul metodei value
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- assign -- static_dispatch -- dispatch -- object -
;; -> object: linia 378
  %VR493 = add i32 %ARG, 16
  %VR494 = inttoptr i32 %VR493 to i32*
  %VR495 = load i32* %VR494
;; <- object: linia 378
  %VR496 = inttoptr i32 %VR495 to i32*
  %VR497 = icmp eq i32* %VR496,  null
  br i1 %VR497, label %false_dispatch72, label %dispatch_not_void_Main_72
;#######################################; <- false_false_Main_9


;#######################################; -> false_dispatch72
false_dispatch72:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__94 to i32))
  ret i32 0
;#######################################; <- false_dispatch72


;#######################################; -> dispatch_not_void_Main_72
dispatch_not_void_Main_72:
  %VR498 = ptrtoint i32* %VR496 to i32 
  %VR499 = add i32 %VR498, 8
  %VR500 = inttoptr i32 %VR499 to i32*
  %VR501 = load i32* %VR500
  %VR502 = add i32 %VR501, 12
  %VR503 = inttoptr i32 %VR502 to i32*
  %VR504 = load i32* %VR503
  %VR505 = inttoptr i32 %VR504 to i32 (i32)*
  %VR506 = call i32 (i32)* %VR505(i32 %VR495)
;; <- dispatch: linia 378
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- assign -- static_dispatch -- new -
;; -> new: linia 378
  %VR507 = call i32  @Object__copy(i32 ptrtoint (%struct.C_protObj_t* @C_protObj to i32))
  call void @C_init(i32 %VR507)
;; <- new: linia 378
  %VR508 = inttoptr i32 %VR507 to i32*
  %VR509 = icmp eq i32* %VR508,  null
  br i1 %VR509, label %false_static_dispatch73, label %dispatch_not_void_Main_73
;#######################################; <- dispatch_not_void_Main_72


;#######################################; -> false_static_dispatch73
false_static_dispatch73:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__94 to i32))
  ret i32 0
;#######################################; <- false_static_dispatch73


;#######################################; -> dispatch_not_void_Main_73
dispatch_not_void_Main_73:
  %VR510 = ptrtoint %struct.C_protObj_t* @C_protObj to i32 
  %VR511 = add i32 %VR510, 8
  %VR512 = inttoptr i32 %VR511 to i32*
  %VR513 = load i32* %VR512
  %VR514 = add i32 %VR513, 36
  %VR515 = inttoptr i32 %VR514 to i32*
  %VR516 = load i32* %VR515
  %VR517 = inttoptr i32 %VR516 to i32 (i32, i32)*
  %VR518 = call i32 (i32, i32)* %VR517(i32 %VR507, i32 %VR506)
;; <- static_dispatch: linia 378
  %VR519 = add i32 %ARG, 16
  %VR520 = inttoptr i32 %VR519 to i32*
  store i32 %VR518, i32* %VR520
;; <- assign: linia 378
  br label %join_if_Main_9_true
;#######################################; <- dispatch_not_void_Main_73


;#######################################; -> join_if_Main_9_true
join_if_Main_9_true:
  %VR484.0 = add i32 %VR518, 0
  br label %join_if_Main_9
;#######################################; <- join_if_Main_9_true


;#######################################; -> false_Main_9
false_Main_9:
;;if: linia 378 (expresia pentru else)
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 380
;;if: linia 380 (expresia pentru predicat)
;;%VR521 rezervat pentru rezultatul if-ului
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 380
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 380
  %VR522 = add i32 %ARG, 12
  %VR523 = inttoptr i32 %VR522 to i32*
  %VR524 = load i32* %VR523
;; <- object: linia 380
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 380
  %VR525 = ptrtoint %struct.String_protObj_t* @str_const__50 to i32 
;; <- string_const: linia 380
  br label %eq_test_join_true_Main_8
;#######################################; <- false_Main_9


;#######################################; -> eq_test_join_true_Main_8
eq_test_join_true_Main_8:
  %VR526.0 = icmp eq i32 %VR524,  %VR525
  br i1 %VR526.0, label %eq_test_join_Main_8, label %eq_test_join_false_Main_8
;#######################################; <- eq_test_join_true_Main_8


;#######################################; -> eq_test_join_false_Main_8
eq_test_join_false_Main_8:
  %VR528 = call i32  @equality_test(i32 1, i32 0, i32 %VR524, i32 %VR525)
  %VR526.1 = icmp eq i32 %VR528,  1
  br label %eq_test_join_Main_8
;#######################################; <- eq_test_join_false_Main_8


;#######################################; -> eq_test_join_Main_8
eq_test_join_Main_8:
  %VR526 = phi i1  [ %VR526.0 , %eq_test_join_true_Main_8 ] , [ %VR526.1 , %eq_test_join_false_Main_8 ] 
;; <- eq: linia 380
  %VR529 = icmp eq i1 %VR526,  false
  br i1 %VR529, label %false_Main_10, label %false_false_Main_10
;#######################################; <- eq_test_join_Main_8


;#######################################; -> false_false_Main_10
false_false_Main_10:
;;if: linia 380 (expresia pentru then)
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 381
;;if: linia 381 (expresia pentru predicat)
;;%VR530 rezervat pentru rezultatul if-ului
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- dispatch -
;; -> dispatch: linia 381
;;generez codul pentru apelul metodei method7
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- dispatch -- dispatch -
;; -> dispatch: linia 381
;;generez codul pentru apelul metodei value
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- dispatch -- dispatch -- object -
;; -> object: linia 381
  %VR531 = add i32 %ARG, 16
  %VR532 = inttoptr i32 %VR531 to i32*
  %VR533 = load i32* %VR532
;; <- object: linia 381
  %VR534 = inttoptr i32 %VR533 to i32*
  %VR535 = icmp eq i32* %VR534,  null
  br i1 %VR535, label %false_dispatch74, label %dispatch_not_void_Main_74
;#######################################; <- false_false_Main_10


;#######################################; -> false_dispatch74
false_dispatch74:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__95 to i32))
  ret i32 0
;#######################################; <- false_dispatch74


;#######################################; -> dispatch_not_void_Main_74
dispatch_not_void_Main_74:
  %VR536 = ptrtoint i32* %VR534 to i32 
  %VR537 = add i32 %VR536, 8
  %VR538 = inttoptr i32 %VR537 to i32*
  %VR539 = load i32* %VR538
  %VR540 = add i32 %VR539, 12
  %VR541 = inttoptr i32 %VR540 to i32*
  %VR542 = load i32* %VR541
  %VR543 = inttoptr i32 %VR542 to i32 (i32)*
  %VR544 = call i32 (i32)* %VR543(i32 %VR533)
;; <- dispatch: linia 381
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- dispatch -- new -
;; -> new: linia 381
  %VR545 = call i32  @Object__copy(i32 ptrtoint (%struct.D_protObj_t* @D_protObj to i32))
  call void @D_init(i32 %VR545)
;; <- new: linia 381
  %VR546 = inttoptr i32 %VR545 to i32*
  %VR547 = icmp eq i32* %VR546,  null
  br i1 %VR547, label %false_dispatch75, label %dispatch_not_void_Main_75
;#######################################; <- dispatch_not_void_Main_74


;#######################################; -> false_dispatch75
false_dispatch75:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__95 to i32))
  ret i32 0
;#######################################; <- false_dispatch75


;#######################################; -> dispatch_not_void_Main_75
dispatch_not_void_Main_75:
  %VR548 = ptrtoint i32* %VR546 to i32 
  %VR549 = add i32 %VR548, 8
  %VR550 = inttoptr i32 %VR549 to i32*
  %VR551 = load i32* %VR550
  %VR552 = add i32 %VR551, 40
  %VR553 = inttoptr i32 %VR552 to i32*
  %VR554 = load i32* %VR553
  %VR555 = inttoptr i32 %VR554 to i32 (i32, i32)*
  %VR556 = call i32 (i32, i32)* %VR555(i32 %VR545, i32 %VR544)
;; <- dispatch: linia 381
  %VR557 = icmp eq i32 %VR556,  0
  br i1 %VR557, label %false_Main_11, label %false_false_Main_11
;#######################################; <- dispatch_not_void_Main_75


;#######################################; -> false_false_Main_11
false_false_Main_11:
;;if: linia 381 (expresia pentru then)
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -
;; -> block: linia 383
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -
;; -> dispatch: linia 384
;;generez codul pentru apelul metodei out_string
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -- string_const -
;; -> string_const: linia 384
  %VR558 = ptrtoint %struct.String_protObj_t* @str_const__41 to i32 
;; <- string_const: linia 384
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -- object -
;; -> object: linia 384
;; <- object: linia 384
  %VR559 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR559, label %false_dispatch76, label %dispatch_not_void_Main_76
;#######################################; <- false_false_Main_11


;#######################################; -> false_dispatch76
false_dispatch76:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__96 to i32))
  ret i32 0
;#######################################; <- false_dispatch76


;#######################################; -> dispatch_not_void_Main_76
dispatch_not_void_Main_76:
  %VR560 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR561 = add i32 %VR560, 8
  %VR562 = inttoptr i32 %VR561 to i32*
  %VR563 = load i32* %VR562
  %VR564 = add i32 %VR563, 16
  %VR565 = inttoptr i32 %VR564 to i32*
  %VR566 = load i32* %VR565
  %VR567 = inttoptr i32 %VR566 to i32 (i32, i32)*
  %VR568 = call i32 (i32, i32)* %VR567(i32 %ARG, i32 %VR558)
;; <- dispatch: linia 384
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -
;; -> dispatch: linia 385
;;generez codul pentru apelul metodei print
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -- object -
;; -> object: linia 385
  %VR569 = add i32 %ARG, 16
  %VR570 = inttoptr i32 %VR569 to i32*
  %VR571 = load i32* %VR570
;; <- object: linia 385
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -- object -
;; -> object: linia 385
;; <- object: linia 385
  %VR572 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR572, label %false_dispatch77, label %dispatch_not_void_Main_77
;#######################################; <- dispatch_not_void_Main_76


;#######################################; -> false_dispatch77
false_dispatch77:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__97 to i32))
  ret i32 0
;#######################################; <- false_dispatch77


;#######################################; -> dispatch_not_void_Main_77
dispatch_not_void_Main_77:
  %VR573 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR574 = add i32 %VR573, 8
  %VR575 = inttoptr i32 %VR574 to i32*
  %VR576 = load i32* %VR575
  %VR577 = add i32 %VR576, 48
  %VR578 = inttoptr i32 %VR577 to i32*
  %VR579 = load i32* %VR578
  %VR580 = inttoptr i32 %VR579 to i32 (i32, i32)*
  %VR581 = call i32 (i32, i32)* %VR580(i32 %ARG, i32 %VR571)
;; <- dispatch: linia 385
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -
;; -> dispatch: linia 386
;;generez codul pentru apelul metodei out_string
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -- string_const -
;; -> string_const: linia 386
  %VR582 = ptrtoint %struct.String_protObj_t* @str_const__51 to i32 
;; <- string_const: linia 386
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -- object -
;; -> object: linia 386
;; <- object: linia 386
  %VR583 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR583, label %false_dispatch78, label %dispatch_not_void_Main_78
;#######################################; <- dispatch_not_void_Main_77


;#######################################; -> false_dispatch78
false_dispatch78:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__98 to i32))
  ret i32 0
;#######################################; <- false_dispatch78


;#######################################; -> dispatch_not_void_Main_78
dispatch_not_void_Main_78:
  %VR584 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR585 = add i32 %VR584, 8
  %VR586 = inttoptr i32 %VR585 to i32*
  %VR587 = load i32* %VR586
  %VR588 = add i32 %VR587, 16
  %VR589 = inttoptr i32 %VR588 to i32*
  %VR590 = load i32* %VR589
  %VR591 = inttoptr i32 %VR590 to i32 (i32, i32)*
  %VR592 = call i32 (i32, i32)* %VR591(i32 %ARG, i32 %VR582)
;; <- dispatch: linia 386
;; <- block: linia 383
  br label %join_if_Main_11_true
;#######################################; <- dispatch_not_void_Main_78


;#######################################; -> join_if_Main_11_true
join_if_Main_11_true:
  %VR530.0 = add i32 %VR592, 0
  br label %join_if_Main_11
;#######################################; <- join_if_Main_11_true


;#######################################; -> false_Main_11
false_Main_11:
;;if: linia 381 (expresia pentru else)
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -
;; -> block: linia 389
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -
;; -> dispatch: linia 390
;;generez codul pentru apelul metodei out_string
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -- string_const -
;; -> string_const: linia 390
  %VR593 = ptrtoint %struct.String_protObj_t* @str_const__41 to i32 
;; <- string_const: linia 390
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -- object -
;; -> object: linia 390
;; <- object: linia 390
  %VR594 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR594, label %false_dispatch79, label %dispatch_not_void_Main_79
;#######################################; <- false_Main_11


;#######################################; -> false_dispatch79
false_dispatch79:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__99 to i32))
  ret i32 0
;#######################################; <- false_dispatch79


;#######################################; -> dispatch_not_void_Main_79
dispatch_not_void_Main_79:
  %VR595 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR596 = add i32 %VR595, 8
  %VR597 = inttoptr i32 %VR596 to i32*
  %VR598 = load i32* %VR597
  %VR599 = add i32 %VR598, 16
  %VR600 = inttoptr i32 %VR599 to i32*
  %VR601 = load i32* %VR600
  %VR602 = inttoptr i32 %VR601 to i32 (i32, i32)*
  %VR603 = call i32 (i32, i32)* %VR602(i32 %ARG, i32 %VR593)
;; <- dispatch: linia 390
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -
;; -> dispatch: linia 391
;;generez codul pentru apelul metodei print
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -- object -
;; -> object: linia 391
  %VR604 = add i32 %ARG, 16
  %VR605 = inttoptr i32 %VR604 to i32*
  %VR606 = load i32* %VR605
;; <- object: linia 391
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -- object -
;; -> object: linia 391
;; <- object: linia 391
  %VR607 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR607, label %false_dispatch80, label %dispatch_not_void_Main_80
;#######################################; <- dispatch_not_void_Main_79


;#######################################; -> false_dispatch80
false_dispatch80:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__100 to i32))
  ret i32 0
;#######################################; <- false_dispatch80


;#######################################; -> dispatch_not_void_Main_80
dispatch_not_void_Main_80:
  %VR608 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR609 = add i32 %VR608, 8
  %VR610 = inttoptr i32 %VR609 to i32*
  %VR611 = load i32* %VR610
  %VR612 = add i32 %VR611, 48
  %VR613 = inttoptr i32 %VR612 to i32*
  %VR614 = load i32* %VR613
  %VR615 = inttoptr i32 %VR614 to i32 (i32, i32)*
  %VR616 = call i32 (i32, i32)* %VR615(i32 %ARG, i32 %VR606)
;; <- dispatch: linia 391
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -
;; -> dispatch: linia 392
;;generez codul pentru apelul metodei out_string
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -- string_const -
;; -> string_const: linia 392
  %VR617 = ptrtoint %struct.String_protObj_t* @str_const__52 to i32 
;; <- string_const: linia 392
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -- object -
;; -> object: linia 392
;; <- object: linia 392
  %VR618 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR618, label %false_dispatch81, label %dispatch_not_void_Main_81
;#######################################; <- dispatch_not_void_Main_80


;#######################################; -> false_dispatch81
false_dispatch81:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__101 to i32))
  ret i32 0
;#######################################; <- false_dispatch81


;#######################################; -> dispatch_not_void_Main_81
dispatch_not_void_Main_81:
  %VR619 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR620 = add i32 %VR619, 8
  %VR621 = inttoptr i32 %VR620 to i32*
  %VR622 = load i32* %VR621
  %VR623 = add i32 %VR622, 16
  %VR624 = inttoptr i32 %VR623 to i32*
  %VR625 = load i32* %VR624
  %VR626 = inttoptr i32 %VR625 to i32 (i32, i32)*
  %VR627 = call i32 (i32, i32)* %VR626(i32 %ARG, i32 %VR617)
;; <- dispatch: linia 392
;; <- block: linia 389
  br label %join_if_Main_11_false
;#######################################; <- dispatch_not_void_Main_81


;#######################################; -> join_if_Main_11_false
join_if_Main_11_false:
  %VR530.1 = add i32 %VR627, 0
  br label %join_if_Main_11
;#######################################; <- join_if_Main_11_false


;#######################################; -> join_if_Main_11
join_if_Main_11:
  %VR530 = phi i32  [ %VR530.0 , %join_if_Main_11_true ] , [ %VR530.1 , %join_if_Main_11_false ] 
;; <- cond: linia 381
  br label %join_if_Main_10_true
;#######################################; <- join_if_Main_11


;#######################################; -> join_if_Main_10_true
join_if_Main_10_true:
  %VR521.0 = add i32 %VR530, 0
  br label %join_if_Main_10
;#######################################; <- join_if_Main_10_true


;#######################################; -> false_Main_10
false_Main_10:
;;if: linia 380 (expresia pentru else)
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 395
;;if: linia 395 (expresia pentru predicat)
;;%VR628 rezervat pentru rezultatul if-ului
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 395
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 395
  %VR629 = add i32 %ARG, 12
  %VR630 = inttoptr i32 %VR629 to i32*
  %VR631 = load i32* %VR630
;; <- object: linia 395
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 395
  %VR632 = ptrtoint %struct.String_protObj_t* @str_const__53 to i32 
;; <- string_const: linia 395
  br label %eq_test_join_true_Main_9
;#######################################; <- false_Main_10


;#######################################; -> eq_test_join_true_Main_9
eq_test_join_true_Main_9:
  %VR633.0 = icmp eq i32 %VR631,  %VR632
  br i1 %VR633.0, label %eq_test_join_Main_9, label %eq_test_join_false_Main_9
;#######################################; <- eq_test_join_true_Main_9


;#######################################; -> eq_test_join_false_Main_9
eq_test_join_false_Main_9:
  %VR635 = call i32  @equality_test(i32 1, i32 0, i32 %VR631, i32 %VR632)
  %VR633.1 = icmp eq i32 %VR635,  1
  br label %eq_test_join_Main_9
;#######################################; <- eq_test_join_false_Main_9


;#######################################; -> eq_test_join_Main_9
eq_test_join_Main_9:
  %VR633 = phi i1  [ %VR633.0 , %eq_test_join_true_Main_9 ] , [ %VR633.1 , %eq_test_join_false_Main_9 ] 
;; <- eq: linia 395
  %VR636 = icmp eq i1 %VR633,  false
  br i1 %VR636, label %false_Main_12, label %false_false_Main_12
;#######################################; <- eq_test_join_Main_9


;#######################################; -> false_false_Main_12
false_false_Main_12:
;;if: linia 395 (expresia pentru then)
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -
;; -> let: linia 396
  %VR637.a = add i32 0, 0
  store i32 %VR637.a, i32* %VR637a
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -
;; -> block: linia 397
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- assign -
;; -> assign: linia 398
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- assign -- dispatch -
;; -> dispatch: linia 398
;;generez codul pentru apelul metodei method6
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- assign -- dispatch -- dispatch -
;; -> dispatch: linia 398
;;generez codul pentru apelul metodei value
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- assign -- dispatch -- dispatch -- object -
;; -> object: linia 398
  %VR638 = add i32 %ARG, 16
  %VR639 = inttoptr i32 %VR638 to i32*
  %VR640 = load i32* %VR639
;; <- object: linia 398
  %VR641 = inttoptr i32 %VR640 to i32*
  %VR642 = icmp eq i32* %VR641,  null
  br i1 %VR642, label %false_dispatch82, label %dispatch_not_void_Main_82
;#######################################; <- false_false_Main_12


;#######################################; -> false_dispatch82
false_dispatch82:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__102 to i32))
  ret i32 0
;#######################################; <- false_dispatch82


;#######################################; -> dispatch_not_void_Main_82
dispatch_not_void_Main_82:
  %VR643 = ptrtoint i32* %VR641 to i32 
  %VR644 = add i32 %VR643, 8
  %VR645 = inttoptr i32 %VR644 to i32*
  %VR646 = load i32* %VR645
  %VR647 = add i32 %VR646, 12
  %VR648 = inttoptr i32 %VR647 to i32*
  %VR649 = load i32* %VR648
  %VR650 = inttoptr i32 %VR649 to i32 (i32)*
  %VR651 = call i32 (i32)* %VR650(i32 %VR640)
;; <- dispatch: linia 398
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- assign -- dispatch -- new -
;; -> new: linia 398
  %VR652 = call i32  @Object__copy(i32 ptrtoint (%struct.E_protObj_t* @E_protObj to i32))
  call void @E_init(i32 %VR652)
;; <- new: linia 398
  %VR653 = inttoptr i32 %VR652 to i32*
  %VR654 = icmp eq i32* %VR653,  null
  br i1 %VR654, label %false_dispatch83, label %dispatch_not_void_Main_83
;#######################################; <- dispatch_not_void_Main_82


;#######################################; -> false_dispatch83
false_dispatch83:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__102 to i32))
  ret i32 0
;#######################################; <- false_dispatch83


;#######################################; -> dispatch_not_void_Main_83
dispatch_not_void_Main_83:
  %VR655 = ptrtoint i32* %VR653 to i32 
  %VR656 = add i32 %VR655, 8
  %VR657 = inttoptr i32 %VR656 to i32*
  %VR658 = load i32* %VR657
  %VR659 = add i32 %VR658, 44
  %VR660 = inttoptr i32 %VR659 to i32*
  %VR661 = load i32* %VR660
  %VR662 = inttoptr i32 %VR661 to i32 (i32, i32)*
  %VR663 = call i32 (i32, i32)* %VR662(i32 %VR652, i32 %VR651)
;; <- dispatch: linia 398
  store i32 %VR663, i32* %VR637a
;; <- assign: linia 398
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -
;; -> let: linia 399
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- sub -
;; -> sub: linia 399
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- sub -- dispatch -
;; -> dispatch: linia 399
;;generez codul pentru apelul metodei value
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- sub -- dispatch -- object -
;; -> object: linia 399
  %VR664 = add i32 %ARG, 16
  %VR665 = inttoptr i32 %VR664 to i32*
  %VR666 = load i32* %VR665
;; <- object: linia 399
  %VR667 = inttoptr i32 %VR666 to i32*
  %VR668 = icmp eq i32* %VR667,  null
  br i1 %VR668, label %false_dispatch84, label %dispatch_not_void_Main_84
;#######################################; <- dispatch_not_void_Main_83


;#######################################; -> false_dispatch84
false_dispatch84:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__103 to i32))
  ret i32 0
;#######################################; <- false_dispatch84


;#######################################; -> dispatch_not_void_Main_84
dispatch_not_void_Main_84:
  %VR669 = ptrtoint i32* %VR667 to i32 
  %VR670 = add i32 %VR669, 8
  %VR671 = inttoptr i32 %VR670 to i32*
  %VR672 = load i32* %VR671
  %VR673 = add i32 %VR672, 12
  %VR674 = inttoptr i32 %VR673 to i32*
  %VR675 = load i32* %VR674
  %VR676 = inttoptr i32 %VR675 to i32 (i32)*
  %VR677 = call i32 (i32)* %VR676(i32 %VR666)
;; <- dispatch: linia 399
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- sub -- mul -
;; -> mul: linia 399
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- sub -- mul -- dispatch -
;; -> dispatch: linia 399
;;generez codul pentru apelul metodei value
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- sub -- mul -- dispatch -- object -
;; -> object: linia 399
;; <- object: linia 399
  %VR678 = inttoptr i32 %VR663 to i32*
  %VR679 = icmp eq i32* %VR678,  null
  br i1 %VR679, label %false_dispatch85, label %dispatch_not_void_Main_85
;#######################################; <- dispatch_not_void_Main_84


;#######################################; -> false_dispatch85
false_dispatch85:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__103 to i32))
  ret i32 0
;#######################################; <- false_dispatch85


;#######################################; -> dispatch_not_void_Main_85
dispatch_not_void_Main_85:
  %VR680 = ptrtoint i32* %VR678 to i32 
  %VR681 = add i32 %VR680, 8
  %VR682 = inttoptr i32 %VR681 to i32*
  %VR683 = load i32* %VR682
  %VR684 = add i32 %VR683, 12
  %VR685 = inttoptr i32 %VR684 to i32*
  %VR686 = load i32* %VR685
  %VR687 = inttoptr i32 %VR686 to i32 (i32)*
  %VR688 = call i32 (i32)* %VR687(i32 %VR663)
;; <- dispatch: linia 399
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- sub -- mul -- int_const -
;; -> int_const: linia 399
  %VR689 = add i32 8, 0
;; <- int_const: linia 399
  %VR690 = mul i32 %VR688, %VR689
;; <- mul: linia 399
  %VR691 = sub i32 %VR677, %VR690
;; <- sub: linia 399
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -
;; -> block: linia 400
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- dispatch -
;; -> dispatch: linia 401
;;generez codul pentru apelul metodei out_string
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 401
  %VR692 = ptrtoint %struct.String_protObj_t* @str_const__41 to i32 
;; <- string_const: linia 401
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- dispatch -- object -
;; -> object: linia 401
;; <- object: linia 401
  %VR693 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR693, label %false_dispatch86, label %dispatch_not_void_Main_86
;#######################################; <- dispatch_not_void_Main_85


;#######################################; -> false_dispatch86
false_dispatch86:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__104 to i32))
  ret i32 0
;#######################################; <- false_dispatch86


;#######################################; -> dispatch_not_void_Main_86
dispatch_not_void_Main_86:
  %VR694 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR695 = add i32 %VR694, 8
  %VR696 = inttoptr i32 %VR695 to i32*
  %VR697 = load i32* %VR696
  %VR698 = add i32 %VR697, 16
  %VR699 = inttoptr i32 %VR698 to i32*
  %VR700 = load i32* %VR699
  %VR701 = inttoptr i32 %VR700 to i32 (i32, i32)*
  %VR702 = call i32 (i32, i32)* %VR701(i32 %ARG, i32 %VR692)
;; <- dispatch: linia 401
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- dispatch -
;; -> dispatch: linia 402
;;generez codul pentru apelul metodei print
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- dispatch -- object -
;; -> object: linia 402
  %VR703 = add i32 %ARG, 16
  %VR704 = inttoptr i32 %VR703 to i32*
  %VR705 = load i32* %VR704
;; <- object: linia 402
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- dispatch -- object -
;; -> object: linia 402
;; <- object: linia 402
  %VR706 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR706, label %false_dispatch87, label %dispatch_not_void_Main_87
;#######################################; <- dispatch_not_void_Main_86


;#######################################; -> false_dispatch87
false_dispatch87:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__105 to i32))
  ret i32 0
;#######################################; <- false_dispatch87


;#######################################; -> dispatch_not_void_Main_87
dispatch_not_void_Main_87:
  %VR707 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR708 = add i32 %VR707, 8
  %VR709 = inttoptr i32 %VR708 to i32*
  %VR710 = load i32* %VR709
  %VR711 = add i32 %VR710, 48
  %VR712 = inttoptr i32 %VR711 to i32*
  %VR713 = load i32* %VR712
  %VR714 = inttoptr i32 %VR713 to i32 (i32, i32)*
  %VR715 = call i32 (i32, i32)* %VR714(i32 %ARG, i32 %VR705)
;; <- dispatch: linia 402
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- dispatch -
;; -> dispatch: linia 403
;;generez codul pentru apelul metodei out_string
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 403
  %VR716 = ptrtoint %struct.String_protObj_t* @str_const__54 to i32 
;; <- string_const: linia 403
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- dispatch -- object -
;; -> object: linia 403
;; <- object: linia 403
  %VR717 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR717, label %false_dispatch88, label %dispatch_not_void_Main_88
;#######################################; <- dispatch_not_void_Main_87


;#######################################; -> false_dispatch88
false_dispatch88:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__106 to i32))
  ret i32 0
;#######################################; <- false_dispatch88


;#######################################; -> dispatch_not_void_Main_88
dispatch_not_void_Main_88:
  %VR718 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR719 = add i32 %VR718, 8
  %VR720 = inttoptr i32 %VR719 to i32*
  %VR721 = load i32* %VR720
  %VR722 = add i32 %VR721, 16
  %VR723 = inttoptr i32 %VR722 to i32*
  %VR724 = load i32* %VR723
  %VR725 = inttoptr i32 %VR724 to i32 (i32, i32)*
  %VR726 = call i32 (i32, i32)* %VR725(i32 %ARG, i32 %VR716)
;; <- dispatch: linia 403
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- dispatch -
;; -> dispatch: linia 404
;;generez codul pentru apelul metodei print
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- dispatch -- object -
;; -> object: linia 404
;; <- object: linia 404
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- dispatch -- object -
;; -> object: linia 404
;; <- object: linia 404
  %VR727 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR727, label %false_dispatch89, label %dispatch_not_void_Main_89
;#######################################; <- dispatch_not_void_Main_88


;#######################################; -> false_dispatch89
false_dispatch89:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__107 to i32))
  ret i32 0
;#######################################; <- false_dispatch89


;#######################################; -> dispatch_not_void_Main_89
dispatch_not_void_Main_89:
  %VR728 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR729 = add i32 %VR728, 8
  %VR730 = inttoptr i32 %VR729 to i32*
  %VR731 = load i32* %VR730
  %VR732 = add i32 %VR731, 48
  %VR733 = inttoptr i32 %VR732 to i32*
  %VR734 = load i32* %VR733
  %VR735 = inttoptr i32 %VR734 to i32 (i32, i32)*
  %VR736 = call i32 (i32, i32)* %VR735(i32 %ARG, i32 %VR663)
;; <- dispatch: linia 404
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- dispatch -
;; -> dispatch: linia 405
;;generez codul pentru apelul metodei out_string
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 405
  %VR737 = ptrtoint %struct.String_protObj_t* @str_const__55 to i32 
;; <- string_const: linia 405
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- dispatch -- object -
;; -> object: linia 405
;; <- object: linia 405
  %VR738 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR738, label %false_dispatch90, label %dispatch_not_void_Main_90
;#######################################; <- dispatch_not_void_Main_89


;#######################################; -> false_dispatch90
false_dispatch90:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__108 to i32))
  ret i32 0
;#######################################; <- false_dispatch90


;#######################################; -> dispatch_not_void_Main_90
dispatch_not_void_Main_90:
  %VR739 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR740 = add i32 %VR739, 8
  %VR741 = inttoptr i32 %VR740 to i32*
  %VR742 = load i32* %VR741
  %VR743 = add i32 %VR742, 16
  %VR744 = inttoptr i32 %VR743 to i32*
  %VR745 = load i32* %VR744
  %VR746 = inttoptr i32 %VR745 to i32 (i32, i32)*
  %VR747 = call i32 (i32, i32)* %VR746(i32 %ARG, i32 %VR737)
;; <- dispatch: linia 405
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- let -
;; -> let: linia 406
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- let -- new -
;; -> new: linia 406
  %VR748 = call i32  @Object__copy(i32 ptrtoint (%struct.A2I_protObj_t* @A2I_protObj to i32))
  call void @A2I_init(i32 %VR748)
;; <- new: linia 406
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- let -- block -
;; -> block: linia 407
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- let -- block -- dispatch -
;; -> dispatch: linia 408
;;generez codul pentru apelul metodei out_string
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- let -- block -- dispatch -- dispatch -
;; -> dispatch: linia 408
;;generez codul pentru apelul metodei i2a
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- let -- block -- dispatch -- dispatch -- object -
;; -> object: linia 408
;; <- object: linia 408
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- let -- block -- dispatch -- dispatch -- object -
;; -> object: linia 408
;; <- object: linia 408
  %VR749 = inttoptr i32 %VR748 to i32*
  %VR750 = icmp eq i32* %VR749,  null
  br i1 %VR750, label %false_dispatch91, label %dispatch_not_void_Main_91
;#######################################; <- dispatch_not_void_Main_90


;#######################################; -> false_dispatch91
false_dispatch91:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__109 to i32))
  ret i32 0
;#######################################; <- false_dispatch91


;#######################################; -> dispatch_not_void_Main_91
dispatch_not_void_Main_91:
  %VR751 = ptrtoint i32* %VR749 to i32 
  %VR752 = add i32 %VR751, 8
  %VR753 = inttoptr i32 %VR752 to i32*
  %VR754 = load i32* %VR753
  %VR755 = add i32 %VR754, 28
  %VR756 = inttoptr i32 %VR755 to i32*
  %VR757 = load i32* %VR756
  %VR758 = inttoptr i32 %VR757 to i32 (i32, i32)*
  %VR759 = call i32 (i32, i32)* %VR758(i32 %VR748, i32 %VR691)
;; <- dispatch: linia 408
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- let -- block -- dispatch -- object -
;; -> object: linia 408
;; <- object: linia 408
  %VR760 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR760, label %false_dispatch92, label %dispatch_not_void_Main_92
;#######################################; <- dispatch_not_void_Main_91


;#######################################; -> false_dispatch92
false_dispatch92:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__109 to i32))
  ret i32 0
;#######################################; <- false_dispatch92


;#######################################; -> dispatch_not_void_Main_92
dispatch_not_void_Main_92:
  %VR761 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR762 = add i32 %VR761, 8
  %VR763 = inttoptr i32 %VR762 to i32*
  %VR764 = load i32* %VR763
  %VR765 = add i32 %VR764, 16
  %VR766 = inttoptr i32 %VR765 to i32*
  %VR767 = load i32* %VR766
  %VR768 = inttoptr i32 %VR767 to i32 (i32, i32)*
  %VR769 = call i32 (i32, i32)* %VR768(i32 %ARG, i32 %VR759)
;; <- dispatch: linia 408
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- let -- block -- dispatch -
;; -> dispatch: linia 409
;;generez codul pentru apelul metodei out_string
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- let -- block -- dispatch -- string_const -
;; -> string_const: linia 409
  %VR770 = ptrtoint %struct.String_protObj_t* @str_const__32 to i32 
;; <- string_const: linia 409
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- let -- block -- let -- block -- dispatch -- object -
;; -> object: linia 409
;; <- object: linia 409
  %VR771 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR771, label %false_dispatch93, label %dispatch_not_void_Main_93
;#######################################; <- dispatch_not_void_Main_92


;#######################################; -> false_dispatch93
false_dispatch93:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__110 to i32))
  ret i32 0
;#######################################; <- false_dispatch93


;#######################################; -> dispatch_not_void_Main_93
dispatch_not_void_Main_93:
  %VR772 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR773 = add i32 %VR772, 8
  %VR774 = inttoptr i32 %VR773 to i32*
  %VR775 = load i32* %VR774
  %VR776 = add i32 %VR775, 16
  %VR777 = inttoptr i32 %VR776 to i32*
  %VR778 = load i32* %VR777
  %VR779 = inttoptr i32 %VR778 to i32 (i32, i32)*
  %VR780 = call i32 (i32, i32)* %VR779(i32 %ARG, i32 %VR770)
;; <- dispatch: linia 409
;; <- block: linia 407
;; <- let: linia 406
;; <- block: linia 400
;; <- let: linia 399
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- assign -
;; -> assign: linia 414
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- let -- block -- assign -- object -
;; -> object: linia 414
;; <- object: linia 414
  %VR781 = add i32 %ARG, 16
  %VR782 = inttoptr i32 %VR781 to i32*
  store i32 %VR663, i32* %VR782
;; <- assign: linia 414
;; <- block: linia 397
;; <- let: linia 396
  br label %join_if_Main_12_true
;#######################################; <- dispatch_not_void_Main_93


;#######################################; -> join_if_Main_12_true
join_if_Main_12_true:
  %VR628.0 = add i32 %VR663, 0
  br label %join_if_Main_12
;#######################################; <- join_if_Main_12_true


;#######################################; -> false_Main_12
false_Main_12:
;;if: linia 395 (expresia pentru else)
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 418
;;if: linia 418 (expresia pentru predicat)
;;%VR783 rezervat pentru rezultatul if-ului
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 418
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 418
  %VR784 = add i32 %ARG, 12
  %VR785 = inttoptr i32 %VR784 to i32*
  %VR786 = load i32* %VR785
;; <- object: linia 418
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 418
  %VR787 = ptrtoint %struct.String_protObj_t* @str_const__56 to i32 
;; <- string_const: linia 418
  br label %eq_test_join_true_Main_10
;#######################################; <- false_Main_12


;#######################################; -> eq_test_join_true_Main_10
eq_test_join_true_Main_10:
  %VR788.0 = icmp eq i32 %VR786,  %VR787
  br i1 %VR788.0, label %eq_test_join_Main_10, label %eq_test_join_false_Main_10
;#######################################; <- eq_test_join_true_Main_10


;#######################################; -> eq_test_join_false_Main_10
eq_test_join_false_Main_10:
  %VR790 = call i32  @equality_test(i32 1, i32 0, i32 %VR786, i32 %VR787)
  %VR788.1 = icmp eq i32 %VR790,  1
  br label %eq_test_join_Main_10
;#######################################; <- eq_test_join_false_Main_10


;#######################################; -> eq_test_join_Main_10
eq_test_join_Main_10:
  %VR788 = phi i1  [ %VR788.0 , %eq_test_join_true_Main_10 ] , [ %VR788.1 , %eq_test_join_false_Main_10 ] 
;; <- eq: linia 418
  %VR791 = icmp eq i1 %VR788,  false
  br i1 %VR791, label %false_Main_13, label %false_false_Main_13
;#######################################; <- eq_test_join_Main_10


;#######################################; -> false_false_Main_13
false_false_Main_13:
;;if: linia 418 (expresia pentru then)
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- assign -
;; -> assign: linia 418
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- assign -- new -
;; -> new: linia 418
  %VR792 = call i32  @Object__copy(i32 ptrtoint (%struct.A_protObj_t* @A_protObj to i32))
  call void @A_init(i32 %VR792)
;; <- new: linia 418
  %VR793 = add i32 %ARG, 16
  %VR794 = inttoptr i32 %VR793 to i32*
  store i32 %VR792, i32* %VR794
;; <- assign: linia 418
  br label %join_if_Main_13_true
;#######################################; <- false_false_Main_13


;#######################################; -> join_if_Main_13_true
join_if_Main_13_true:
  %VR783.0 = add i32 %VR792, 0
  br label %join_if_Main_13
;#######################################; <- join_if_Main_13_true


;#######################################; -> false_Main_13
false_Main_13:
;;if: linia 418 (expresia pentru else)
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 420
;;if: linia 420 (expresia pentru predicat)
;;%VR795 rezervat pentru rezultatul if-ului
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 420
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 420
  %VR796 = add i32 %ARG, 12
  %VR797 = inttoptr i32 %VR796 to i32*
  %VR798 = load i32* %VR797
;; <- object: linia 420
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 420
  %VR799 = ptrtoint %struct.String_protObj_t* @str_const__57 to i32 
;; <- string_const: linia 420
  br label %eq_test_join_true_Main_11
;#######################################; <- false_Main_13


;#######################################; -> eq_test_join_true_Main_11
eq_test_join_true_Main_11:
  %VR800.0 = icmp eq i32 %VR798,  %VR799
  br i1 %VR800.0, label %eq_test_join_Main_11, label %eq_test_join_false_Main_11
;#######################################; <- eq_test_join_true_Main_11


;#######################################; -> eq_test_join_false_Main_11
eq_test_join_false_Main_11:
  %VR802 = call i32  @equality_test(i32 1, i32 0, i32 %VR798, i32 %VR799)
  %VR800.1 = icmp eq i32 %VR802,  1
  br label %eq_test_join_Main_11
;#######################################; <- eq_test_join_false_Main_11


;#######################################; -> eq_test_join_Main_11
eq_test_join_Main_11:
  %VR800 = phi i1  [ %VR800.0 , %eq_test_join_true_Main_11 ] , [ %VR800.1 , %eq_test_join_false_Main_11 ] 
;; <- eq: linia 420
  %VR803 = icmp eq i1 %VR800,  false
  br i1 %VR803, label %false_Main_14, label %false_false_Main_14
;#######################################; <- eq_test_join_Main_11


;#######################################; -> false_false_Main_14
false_false_Main_14:
;;if: linia 420 (expresia pentru then)
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- assign -
;; -> assign: linia 420
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- assign -- bool_const -
;; -> bool_const: linia 420
  %VR804 = add i32 0, 0
;; <- bool_const: linia 420
  %VR805 = add i32 %ARG, 24
  %VR806 = inttoptr i32 %VR805 to i32*
  store i32 %VR804, i32* %VR806
;; <- assign: linia 420
  br label %join_if_Main_14_true
;#######################################; <- false_false_Main_14


;#######################################; -> join_if_Main_14_true
join_if_Main_14_true:
  %VR795.0 = add i32 %VR804, 0
  br label %join_if_Main_14
;#######################################; <- join_if_Main_14_true


;#######################################; -> false_Main_14
false_Main_14:
;;if: linia 420 (expresia pentru else)
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- assign -
;; -> assign: linia 422
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- assign -- dispatch -
;; -> dispatch: linia 422
;;generez codul pentru apelul metodei method1
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- assign -- dispatch -- dispatch -
;; -> dispatch: linia 422
;;generez codul pentru apelul metodei value
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- assign -- dispatch -- dispatch -- object -
;; -> object: linia 422
  %VR807 = add i32 %ARG, 16
  %VR808 = inttoptr i32 %VR807 to i32*
  %VR809 = load i32* %VR808
;; <- object: linia 422
  %VR810 = inttoptr i32 %VR809 to i32*
  %VR811 = icmp eq i32* %VR810,  null
  br i1 %VR811, label %false_dispatch94, label %dispatch_not_void_Main_94
;#######################################; <- false_Main_14


;#######################################; -> false_dispatch94
false_dispatch94:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__111 to i32))
  ret i32 0
;#######################################; <- false_dispatch94


;#######################################; -> dispatch_not_void_Main_94
dispatch_not_void_Main_94:
  %VR812 = ptrtoint i32* %VR810 to i32 
  %VR813 = add i32 %VR812, 8
  %VR814 = inttoptr i32 %VR813 to i32*
  %VR815 = load i32* %VR814
  %VR816 = add i32 %VR815, 12
  %VR817 = inttoptr i32 %VR816 to i32*
  %VR818 = load i32* %VR817
  %VR819 = inttoptr i32 %VR818 to i32 (i32)*
  %VR820 = call i32 (i32)* %VR819(i32 %VR809)
;; <- dispatch: linia 422
;- block -- loop -- block -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- assign -- dispatch -- new -
;; -> new: linia 422
  %VR821 = call i32  @Object__copy(i32 ptrtoint (%struct.A_protObj_t* @A_protObj to i32))
  call void @A_init(i32 %VR821)
;; <- new: linia 422
  %VR822 = inttoptr i32 %VR821 to i32*
  %VR823 = icmp eq i32* %VR822,  null
  br i1 %VR823, label %false_dispatch95, label %dispatch_not_void_Main_95
;#######################################; <- dispatch_not_void_Main_94


;#######################################; -> false_dispatch95
false_dispatch95:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__111 to i32))
  ret i32 0
;#######################################; <- false_dispatch95


;#######################################; -> dispatch_not_void_Main_95
dispatch_not_void_Main_95:
  %VR824 = ptrtoint i32* %VR822 to i32 
  %VR825 = add i32 %VR824, 8
  %VR826 = inttoptr i32 %VR825 to i32*
  %VR827 = load i32* %VR826
  %VR828 = add i32 %VR827, 20
  %VR829 = inttoptr i32 %VR828 to i32*
  %VR830 = load i32* %VR829
  %VR831 = inttoptr i32 %VR830 to i32 (i32, i32)*
  %VR832 = call i32 (i32, i32)* %VR831(i32 %VR821, i32 %VR820)
;; <- dispatch: linia 422
  %VR833 = add i32 %ARG, 16
  %VR834 = inttoptr i32 %VR833 to i32*
  store i32 %VR832, i32* %VR834
;; <- assign: linia 422
  br label %join_if_Main_14_false
;#######################################; <- dispatch_not_void_Main_95


;#######################################; -> join_if_Main_14_false
join_if_Main_14_false:
  %VR795.1 = add i32 %VR832, 0
  br label %join_if_Main_14
;#######################################; <- join_if_Main_14_false


;#######################################; -> join_if_Main_14
join_if_Main_14:
  %VR795 = phi i32  [ %VR795.0 , %join_if_Main_14_true ] , [ %VR795.1 , %join_if_Main_14_false ] 
;; <- cond: linia 420
  br label %join_if_Main_13_false
;#######################################; <- join_if_Main_14


;#######################################; -> join_if_Main_13_false
join_if_Main_13_false:
  %VR783.1 = add i32 %VR795, 0
  br label %join_if_Main_13
;#######################################; <- join_if_Main_13_false


;#######################################; -> join_if_Main_13
join_if_Main_13:
  %VR783 = phi i32  [ %VR783.0 , %join_if_Main_13_true ] , [ %VR783.1 , %join_if_Main_13_false ] 
;; <- cond: linia 418
  br label %join_if_Main_12_false
;#######################################; <- join_if_Main_13


;#######################################; -> join_if_Main_12_false
join_if_Main_12_false:
  %VR628.1 = add i32 %VR783, 0
  br label %join_if_Main_12
;#######################################; <- join_if_Main_12_false


;#######################################; -> join_if_Main_12
join_if_Main_12:
  %VR628 = phi i32  [ %VR628.0 , %join_if_Main_12_true ] , [ %VR628.1 , %join_if_Main_12_false ] 
;; <- cond: linia 395
  br label %join_if_Main_10_false
;#######################################; <- join_if_Main_12


;#######################################; -> join_if_Main_10_false
join_if_Main_10_false:
  %VR521.1 = add i32 %VR628, 0
  br label %join_if_Main_10
;#######################################; <- join_if_Main_10_false


;#######################################; -> join_if_Main_10
join_if_Main_10:
  %VR521 = phi i32  [ %VR521.0 , %join_if_Main_10_true ] , [ %VR521.1 , %join_if_Main_10_false ] 
;; <- cond: linia 380
  br label %join_if_Main_9_false
;#######################################; <- join_if_Main_10


;#######################################; -> join_if_Main_9_false
join_if_Main_9_false:
  %VR484.1 = add i32 %VR521, 0
  br label %join_if_Main_9
;#######################################; <- join_if_Main_9_false


;#######################################; -> join_if_Main_9
join_if_Main_9:
  %VR484 = phi i32  [ %VR484.0 , %join_if_Main_9_true ] , [ %VR484.1 , %join_if_Main_9_false ] 
;; <- cond: linia 378
  br label %join_if_Main_8_false
;#######################################; <- join_if_Main_9


;#######################################; -> join_if_Main_8_false
join_if_Main_8_false:
  %VR447.1 = add i32 %VR484, 0
  br label %join_if_Main_8
;#######################################; <- join_if_Main_8_false


;#######################################; -> join_if_Main_8
join_if_Main_8:
  %VR447 = phi i32  [ %VR447.0 , %join_if_Main_8_true ] , [ %VR447.1 , %join_if_Main_8_false ] 
;; <- cond: linia 376
  br label %join_if_Main_7_false
;#######################################; <- join_if_Main_8


;#######################################; -> join_if_Main_7_false
join_if_Main_7_false:
  %VR410.1 = add i32 %VR447, 0
  br label %join_if_Main_7
;#######################################; <- join_if_Main_7_false


;#######################################; -> join_if_Main_7
join_if_Main_7:
  %VR410 = phi i32  [ %VR410.0 , %join_if_Main_7_true ] , [ %VR410.1 , %join_if_Main_7_false ] 
;; <- cond: linia 374
  br label %join_if_Main_6_false
;#######################################; <- join_if_Main_7


;#######################################; -> join_if_Main_6_false
join_if_Main_6_false:
  %VR335.1 = add i32 %VR410, 0
  br label %join_if_Main_6
;#######################################; <- join_if_Main_6_false


;#######################################; -> join_if_Main_6
join_if_Main_6:
  %VR335 = phi i32  [ %VR335.0 , %join_if_Main_6_true ] , [ %VR335.1 , %join_if_Main_6_false ] 
;; <- cond: linia 369
  br label %join_if_Main_5_false
;#######################################; <- join_if_Main_6


;#######################################; -> join_if_Main_5_false
join_if_Main_5_false:
  %VR180.1 = add i32 %VR335, 0
  br label %join_if_Main_5
;#######################################; <- join_if_Main_5_false


;#######################################; -> join_if_Main_5
join_if_Main_5:
  %VR180 = phi i32  [ %VR180.0 , %join_if_Main_5_true ] , [ %VR180.1 , %join_if_Main_5_false ] 
;; <- cond: linia 360
  br label %join_if_Main_4_false
;#######################################; <- join_if_Main_5


;#######################################; -> join_if_Main_4_false
join_if_Main_4_false:
  %VR105.1 = add i32 %VR180, 0
  br label %join_if_Main_4
;#######################################; <- join_if_Main_4_false


;#######################################; -> join_if_Main_4
join_if_Main_4:
  %VR105 = phi i32  [ %VR105.0 , %join_if_Main_4_true ] , [ %VR105.1 , %join_if_Main_4_false ] 
;; <- cond: linia 355
;; <- block: linia 343
  br label %start_loop_Main_0
;#######################################; <- join_if_Main_4


;#######################################; -> sfarsit_loop_Main_0
sfarsit_loop_Main_0:
;; <- loop: linia 342
;; <- block: linia 340
  ret i32 %ARG
;#######################################; <- sfarsit_loop_Main_0


}
@s73 = internal constant [5 x i8] c"Main\00"
@str_const__73 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__5, i8* getelementptr ([5 x i8]* @s73, i32 0, i32 0)}
@s72 = internal constant [4 x i8] c"A2I\00"
@str_const__72 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([4 x i8]* @s72, i32 0, i32 0)}
@s71 = internal constant [2 x i8] c"E\00"
@str_const__71 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s71, i32 0, i32 0)}
@s70 = internal constant [2 x i8] c"D\00"
@str_const__70 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s70, i32 0, i32 0)}
@s69 = internal constant [2 x i8] c"C\00"
@str_const__69 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s69, i32 0, i32 0)}
@s68 = internal constant [2 x i8] c"B\00"
@str_const__68 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s68, i32 0, i32 0)}
@s67 = internal constant [2 x i8] c"A\00"
@str_const__67 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s67, i32 0, i32 0)}
@s66 = internal constant [3 x i8] c"IO\00"
@str_const__66 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([3 x i8]* @s66, i32 0, i32 0)}
@s65 = internal constant [7 x i8] c"String\00"
@str_const__65 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__7, i8* getelementptr ([7 x i8]* @s65, i32 0, i32 0)}
@s64 = internal constant [5 x i8] c"Bool\00"
@str_const__64 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__5, i8* getelementptr ([5 x i8]* @s64, i32 0, i32 0)}
@s63 = internal constant [4 x i8] c"Int\00"
@str_const__63 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([4 x i8]* @s63, i32 0, i32 0)}
@s62 = internal constant [7 x i8] c"Object\00"
@str_const__62 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__7, i8* getelementptr ([7 x i8]* @s62, i32 0, i32 0)}
@s61 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__61 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([11 x i8]* @s61, i32 0, i32 0)}
@s60 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__60 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([10 x i8]* @s60, i32 0, i32 0)}
@s59 = internal constant [10 x i8] c"_no_class\00"
@str_const__59 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([10 x i8]* @s59, i32 0, i32 0)}
@s58 = internal constant [14 x i8] c"<basic class>\00"
@str_const__58 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__112, i8* getelementptr ([14 x i8]* @s58, i32 0, i32 0)}
@s57 = internal constant [2 x i8] c"q\00"
@str_const__57 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s57, i32 0, i32 0)}
@s56 = internal constant [2 x i8] c"j\00"
@str_const__56 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s56, i32 0, i32 0)}
@s55 = internal constant [29 x i8] c"times 8 with a remainder of \00"
@str_const__55 = global %struct.String_protObj_t{i32 3, i32 12, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([29 x i8]* @s55, i32 0, i32 0)}
@s54 = internal constant [13 x i8] c"is equal to \00"
@str_const__54 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__113, i8* getelementptr ([13 x i8]* @s54, i32 0, i32 0)}
@s53 = internal constant [2 x i8] c"h\00"
@str_const__53 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s53, i32 0, i32 0)}
@s52 = internal constant [24 x i8] c"is not divisible by 3.\0A\00"
@str_const__52 = global %struct.String_protObj_t{i32 3, i32 10, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__114, i8* getelementptr ([24 x i8]* @s52, i32 0, i32 0)}
@s51 = internal constant [20 x i8] c"is divisible by 3.\0A\00"
@str_const__51 = global %struct.String_protObj_t{i32 3, i32 9, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__115, i8* getelementptr ([20 x i8]* @s51, i32 0, i32 0)}
@s50 = internal constant [2 x i8] c"g\00"
@str_const__50 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s50, i32 0, i32 0)}
@s49 = internal constant [2 x i8] c"f\00"
@str_const__49 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s49, i32 0, i32 0)}
@s48 = internal constant [2 x i8] c"e\00"
@str_const__48 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s48, i32 0, i32 0)}
@s47 = internal constant [2 x i8] c"d\00"
@str_const__47 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s47, i32 0, i32 0)}
@s46 = internal constant [2 x i8] c"c\00"
@str_const__46 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s46, i32 0, i32 0)}
@s45 = internal constant [2 x i8] c"b\00"
@str_const__45 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s45, i32 0, i32 0)}
@s44 = internal constant [2 x i8] c"a\00"
@str_const__44 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s44, i32 0, i32 0)}
@s43 = internal constant [9 x i8] c"is odd!\0A\00"
@str_const__43 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([9 x i8]* @s43, i32 0, i32 0)}
@s42 = internal constant [10 x i8] c"is even!\0A\00"
@str_const__42 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([10 x i8]* @s42, i32 0, i32 0)}
@s41 = internal constant [8 x i8] c"number \00"
@str_const__41 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([8 x i8]* @s41, i32 0, i32 0)}
@s40 = internal constant [2 x i8] c" \00"
@str_const__40 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s40, i32 0, i32 0)}
@s39 = internal constant [8 x i8] c"Oooops\0A\00"
@str_const__39 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([8 x i8]* @s39, i32 0, i32 0)}
@s38 = internal constant [21 x i8] c"Class type is now E\0A\00"
@str_const__38 = global %struct.String_protObj_t{i32 3, i32 10, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__116, i8* getelementptr ([21 x i8]* @s38, i32 0, i32 0)}
@s37 = internal constant [21 x i8] c"Class type is now D\0A\00"
@str_const__37 = global %struct.String_protObj_t{i32 3, i32 10, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__116, i8* getelementptr ([21 x i8]* @s37, i32 0, i32 0)}
@s36 = internal constant [21 x i8] c"Class type is now C\0A\00"
@str_const__36 = global %struct.String_protObj_t{i32 3, i32 10, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__116, i8* getelementptr ([21 x i8]* @s36, i32 0, i32 0)}
@s35 = internal constant [21 x i8] c"Class type is now B\0A\00"
@str_const__35 = global %struct.String_protObj_t{i32 3, i32 10, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__116, i8* getelementptr ([21 x i8]* @s35, i32 0, i32 0)}
@s34 = internal constant [21 x i8] c"Class type is now A\0A\00"
@str_const__34 = global %struct.String_protObj_t{i32 3, i32 10, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__116, i8* getelementptr ([21 x i8]* @s34, i32 0, i32 0)}
@s33 = internal constant [27 x i8] c"Please enter a number...  \00"
@str_const__33 = global %struct.String_protObj_t{i32 3, i32 11, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__117, i8* getelementptr ([27 x i8]* @s33, i32 0, i32 0)}
@s32 = internal constant [2 x i8] c"\0A\00"
@str_const__32 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s32, i32 0, i32 0)}
@s31 = internal constant [22 x i8] c"	To quit...enter q:\0A\0A\00"
@str_const__31 = global %struct.String_protObj_t{i32 3, i32 10, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__118, i8* getelementptr ([22 x i8]* @s31, i32 0, i32 0)}
@s30 = internal constant [33 x i8] c"	To get a new number...enter j:\0A\00"
@str_const__30 = global %struct.String_protObj_t{i32 3, i32 13, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__119, i8* getelementptr ([33 x i8]* @s30, i32 0, i32 0)}
@s29 = internal constant [17 x i8] c"by 8...enter h:\0A\00"
@str_const__29 = global %struct.String_protObj_t{i32 3, i32 9, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__120, i8* getelementptr ([17 x i8]* @s29, i32 0, i32 0)}
@s28 = internal constant [12 x i8] c"	To divide \00"
@str_const__28 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__121, i8* getelementptr ([12 x i8]* @s28, i32 0, i32 0)}
@s27 = internal constant [31 x i8] c"is a multiple of 3...enter g:\0A\00"
@str_const__27 = global %struct.String_protObj_t{i32 3, i32 12, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__122, i8* getelementptr ([31 x i8]* @s27, i32 0, i32 0)}
@s26 = internal constant [17 x i8] c"	To find out if \00"
@str_const__26 = global %struct.String_protObj_t{i32 3, i32 9, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__120, i8* getelementptr ([17 x i8]* @s26, i32 0, i32 0)}
@s25 = internal constant [13 x i8] c"...enter f:\0A\00"
@str_const__25 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__113, i8* getelementptr ([13 x i8]* @s25, i32 0, i32 0)}
@s24 = internal constant [10 x i8] c"	To cube \00"
@str_const__24 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([10 x i8]* @s24, i32 0, i32 0)}
@s23 = internal constant [13 x i8] c"...enter e:\0A\00"
@str_const__23 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__113, i8* getelementptr ([13 x i8]* @s23, i32 0, i32 0)}
@s22 = internal constant [12 x i8] c"	To square \00"
@str_const__22 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__121, i8* getelementptr ([12 x i8]* @s22, i32 0, i32 0)}
@s21 = internal constant [13 x i8] c"...enter d:\0A\00"
@str_const__21 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__113, i8* getelementptr ([13 x i8]* @s21, i32 0, i32 0)}
@s20 = internal constant [27 x i8] c"	To find the factorial of \00"
@str_const__20 = global %struct.String_protObj_t{i32 3, i32 11, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__117, i8* getelementptr ([27 x i8]* @s20, i32 0, i32 0)}
@s19 = internal constant [31 x i8] c"and another number...enter c:\0A\00"
@str_const__19 = global %struct.String_protObj_t{i32 3, i32 12, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__122, i8* getelementptr ([31 x i8]* @s19, i32 0, i32 0)}
@s18 = internal constant [33 x i8] c"	To find the difference between \00"
@str_const__18 = global %struct.String_protObj_t{i32 3, i32 13, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__119, i8* getelementptr ([33 x i8]* @s18, i32 0, i32 0)}
@s17 = internal constant [13 x i8] c"...enter b:\0A\00"
@str_const__17 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__113, i8* getelementptr ([13 x i8]* @s17, i32 0, i32 0)}
@s16 = internal constant [12 x i8] c"	To negate \00"
@str_const__16 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__121, i8* getelementptr ([12 x i8]* @s16, i32 0, i32 0)}
@s15 = internal constant [13 x i8] c"...enter a:\0A\00"
@str_const__15 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__113, i8* getelementptr ([13 x i8]* @s15, i32 0, i32 0)}
@s14 = internal constant [22 x i8] c"\0A	To add a number to \00"
@str_const__14 = global %struct.String_protObj_t{i32 3, i32 10, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__118, i8* getelementptr ([22 x i8]* @s14, i32 0, i32 0)}
@s13 = internal constant [2 x i8] c"+\00"
@str_const__13 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s13, i32 0, i32 0)}
@s12 = internal constant [2 x i8] c"-\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [1 x i8] c"\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([1 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [2 x i8] c"9\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [2 x i8] c"8\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [2 x i8] c"7\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [2 x i8] c"6\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [2 x i8] c"5\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [2 x i8] c"4\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [2 x i8] c"3\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [2 x i8] c"2\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [2 x i8] c"1\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [2 x i8] c"0\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [15 x i8] c"/tmp/cplPWy48R\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__123, i8* getelementptr ([15 x i8]* @s0, i32 0, i32 0)}
@int_const__123 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 14}
@int_const__122 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 30}
@int_const__121 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 11}
@int_const__120 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 16}
@int_const__119 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 32}
@int_const__118 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 21}
@int_const__117 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 26}
@int_const__116 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 20}
@int_const__115 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 19}
@int_const__114 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 23}
@int_const__113 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 12}
@int_const__112 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__111 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 422}
@int_const__110 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 409}
@int_const__109 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 408}
@int_const__108 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 405}
@int_const__107 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 404}
@int_const__106 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 403}
@int_const__105 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 402}
@int_const__104 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 401}
@int_const__103 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 399}
@int_const__102 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 398}
@int_const__101 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 392}
@int_const__100 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 391}
@int_const__99 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 390}
@int_const__98 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 386}
@int_const__97 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 385}
@int_const__96 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 384}
@int_const__95 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 381}
@int_const__94 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 378}
@int_const__93 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 376}
@int_const__92 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 374}
@int_const__91 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 372}
@int_const__90 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 371}
@int_const__89 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 366}
@int_const__88 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 365}
@int_const__87 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 363}
@int_const__86 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 362}
@int_const__85 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 361}
@int_const__84 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 358}
@int_const__83 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 357}
@int_const__82 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 354}
@int_const__81 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 353}
@int_const__80 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 350}
@int_const__79 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 348}
@int_const__78 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 347}
@int_const__77 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 346}
@int_const__76 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 345}
@int_const__75 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 334}
@int_const__74 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 333}
@int_const__73 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 326}
@int_const__72 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 325}
@int_const__71 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 324}
@int_const__70 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 323}
@int_const__69 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 322}
@int_const__68 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 321}
@int_const__67 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 320}
@int_const__66 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 314}
@int_const__65 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 311}
@int_const__64 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 303}
@int_const__63 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 302}
@int_const__62 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 295}
@int_const__61 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 294}
@int_const__60 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 293}
@int_const__59 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 287}
@int_const__58 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 286}
@int_const__57 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 285}
@int_const__56 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 284}
@int_const__55 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 283}
@int_const__54 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 282}
@int_const__53 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 281}
@int_const__52 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 280}
@int_const__51 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 279}
@int_const__50 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 278}
@int_const__49 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 277}
@int_const__48 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 276}
@int_const__47 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 275}
@int_const__46 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 274}
@int_const__45 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 273}
@int_const__44 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 272}
@int_const__43 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 271}
@int_const__42 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 270}
@int_const__41 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 269}
@int_const__40 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 268}
@int_const__39 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 267}
@int_const__38 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 266}
@int_const__37 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 265}
@int_const__36 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 264}
@int_const__35 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 263}
@int_const__34 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 262}
@int_const__33 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 261}
@int_const__32 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 244}
@int_const__31 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 235}
@int_const__30 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 234}
@int_const__29 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 218}
@int_const__28 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 214}
@int_const__27 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 203}
@int_const__26 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 202}
@int_const__25 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 201}
@int_const__24 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 200}
@int_const__23 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 187}
@int_const__22 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 168}
@int_const__21 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 134}
@int_const__20 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 121}
@int_const__19 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 117}
@int_const__18 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 106}
@int_const__17 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 97}
@int_const__16 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 84}
@int_const__15 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 71}
@int_const__14 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 54}
@int_const__13 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 47}
@int_const__12 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 37}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 28}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 7}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 5}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 8}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
%struct.A_protObj_t = type { i32, i32, %struct.A_dispTab_t*, i32 }
@A_protObj = global %struct.A_protObj_t {i32 5, i32 4, %struct.A_dispTab_t* @A_dispTab, i32 0}
%struct.B_protObj_t = type { i32, i32, %struct.B_dispTab_t*, i32 }
@B_protObj = global %struct.B_protObj_t {i32 6, i32 4, %struct.B_dispTab_t* @B_dispTab, i32 0}
%struct.C_protObj_t = type { i32, i32, %struct.C_dispTab_t*, i32 }
@C_protObj = global %struct.C_protObj_t {i32 7, i32 4, %struct.C_dispTab_t* @C_dispTab, i32 0}
%struct.D_protObj_t = type { i32, i32, %struct.D_dispTab_t*, i32 }
@D_protObj = global %struct.D_protObj_t {i32 8, i32 4, %struct.D_dispTab_t* @D_dispTab, i32 0}
%struct.E_protObj_t = type { i32, i32, %struct.E_dispTab_t*, i32 }
@E_protObj = global %struct.E_protObj_t {i32 9, i32 4, %struct.E_dispTab_t* @E_dispTab, i32 0}
%struct.A2I_protObj_t = type { i32, i32, %struct.A2I_dispTab_t* }
@A2I_protObj = global %struct.A2I_protObj_t {i32 10, i32 3, %struct.A2I_dispTab_t* @A2I_dispTab}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t*, i32, i32, i32, i32 }
@Main_protObj = global %struct.Main_protObj_t {i32 11, i32 7, %struct.Main_dispTab_t* @Main_dispTab, i32 0, i32 0, i32 0, i32 0}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__62, %struct.String_protObj_t* @str_const__63, %struct.String_protObj_t* @str_const__64, %struct.String_protObj_t* @str_const__65, %struct.String_protObj_t* @str_const__66, %struct.String_protObj_t* @str_const__67, %struct.String_protObj_t* @str_const__68, %struct.String_protObj_t* @str_const__69, %struct.String_protObj_t* @str_const__70, %struct.String_protObj_t* @str_const__71, %struct.String_protObj_t* @str_const__72, %struct.String_protObj_t* @str_const__73 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @A_init to i8*), i8* bitcast (void (i32)* @B_init to i8*), i8* bitcast (void (i32)* @C_init to i8*), i8* bitcast (void (i32)* @D_init to i8*), i8* bitcast (void (i32)* @E_init to i8*), i8* bitcast (void (i32)* @A2I_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.A_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@A_dispTab = global %struct.A_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @A__value to i8*), i8* bitcast (i32 (i32,i32)* @A__set_var to i8*), i8* bitcast (i32 (i32,i32)* @A__method1 to i8*), i8* bitcast (i32 (i32,i32,i32)* @A__method2 to i8*), i8* bitcast (i32 (i32,i32)* @A__method3 to i8*), i8* bitcast (i32 (i32,i32,i32)* @A__method4 to i8*), i8* bitcast (i32 (i32,i32)* @A__method5 to i8*)}

%struct.B_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@B_dispTab = global %struct.B_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @A__value to i8*), i8* bitcast (i32 (i32,i32)* @A__set_var to i8*), i8* bitcast (i32 (i32,i32)* @A__method1 to i8*), i8* bitcast (i32 (i32,i32,i32)* @A__method2 to i8*), i8* bitcast (i32 (i32,i32)* @A__method3 to i8*), i8* bitcast (i32 (i32,i32,i32)* @A__method4 to i8*), i8* bitcast (i32 (i32,i32)* @B__method5 to i8*)}

%struct.C_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@C_dispTab = global %struct.C_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @A__value to i8*), i8* bitcast (i32 (i32,i32)* @A__set_var to i8*), i8* bitcast (i32 (i32,i32)* @A__method1 to i8*), i8* bitcast (i32 (i32,i32,i32)* @A__method2 to i8*), i8* bitcast (i32 (i32,i32)* @A__method3 to i8*), i8* bitcast (i32 (i32,i32,i32)* @A__method4 to i8*), i8* bitcast (i32 (i32,i32)* @C__method5 to i8*), i8* bitcast (i32 (i32,i32)* @C__method6 to i8*)}

%struct.D_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@D_dispTab = global %struct.D_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @A__value to i8*), i8* bitcast (i32 (i32,i32)* @A__set_var to i8*), i8* bitcast (i32 (i32,i32)* @A__method1 to i8*), i8* bitcast (i32 (i32,i32,i32)* @A__method2 to i8*), i8* bitcast (i32 (i32,i32)* @A__method3 to i8*), i8* bitcast (i32 (i32,i32,i32)* @A__method4 to i8*), i8* bitcast (i32 (i32,i32)* @B__method5 to i8*), i8* bitcast (i32 (i32,i32)* @D__method7 to i8*)}

%struct.E_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@E_dispTab = global %struct.E_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @A__value to i8*), i8* bitcast (i32 (i32,i32)* @A__set_var to i8*), i8* bitcast (i32 (i32,i32)* @A__method1 to i8*), i8* bitcast (i32 (i32,i32,i32)* @A__method2 to i8*), i8* bitcast (i32 (i32,i32)* @A__method3 to i8*), i8* bitcast (i32 (i32,i32,i32)* @A__method4 to i8*), i8* bitcast (i32 (i32,i32)* @B__method5 to i8*), i8* bitcast (i32 (i32,i32)* @D__method7 to i8*), i8* bitcast (i32 (i32,i32)* @E__method6 to i8*)}

%struct.A2I_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@A2I_dispTab = global %struct.A2I_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @A2I__c2i to i8*), i8* bitcast (i32 (i32,i32)* @A2I__i2c to i8*), i8* bitcast (i32 (i32,i32)* @A2I__a2i to i8*), i8* bitcast (i32 (i32,i32)* @A2I__a2i_aux to i8*), i8* bitcast (i32 (i32,i32)* @A2I__i2a to i8*), i8* bitcast (i32 (i32,i32)* @A2I__i2a_aux to i8*)}

%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Main__menu to i8*), i8* bitcast (i32 (i32)* @Main__prompt to i8*), i8* bitcast (i32 (i32)* @Main__get_int to i8*), i8* bitcast (i32 (i32,i32)* @Main__is_even to i8*), i8* bitcast (i32 (i32,i32)* @Main__class_type to i8*), i8* bitcast (i32 (i32,i32)* @Main__print to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}


