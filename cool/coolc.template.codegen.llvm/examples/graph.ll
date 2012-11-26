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
define void @Graph_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Object_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- new -
;; -> new: linia 40
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.VList_protObj_t* @VList_protObj to i32))
  call void @VList_init(i32 %VR1)
;; <- new: linia 40
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
;- new -
;; -> new: linia 41
  %VR4 = call i32  @Object__copy(i32 ptrtoint (%struct.EList_protObj_t* @EList_protObj to i32))
  call void @EList_init(i32 %VR4)
;; <- new: linia 41
  %VR5 = add i32 %ARG, 16
  %VR6 = inttoptr i32 %VR5 to i32*
  store i32 %VR4, i32* %VR6
  ret void
;#######################################; <- entry


}
define i32 @Graph__add_vertice(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Graph_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- block -
;; -> block: linia 43
;- block -- assign -
;; -> assign: linia 44
;- block -- assign -- dispatch -
;; -> dispatch: linia 44
;;generez codul pentru apelul metodei append
;- block -- assign -- dispatch -- object -
;; -> object: linia 44
  %VR2 = add i32 %ARG, 16
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = load i32* %VR3
;; <- object: linia 44
;- block -- assign -- dispatch -- dispatch -
;; -> dispatch: linia 44
;;generez codul pentru apelul metodei outgoing
;- block -- assign -- dispatch -- dispatch -- object -
;; -> object: linia 44
;; <- object: linia 44
  %VR5 = inttoptr i32 %VR1 to i32*
  %VR6 = icmp eq i32* %VR5,  null
  br i1 %VR6, label %false_dispatch0, label %dispatch_not_void_Graph_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__11 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Graph_0
dispatch_not_void_Graph_0:
  %VR7 = ptrtoint i32* %VR5 to i32 
  %VR8 = add i32 %VR7, 8
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = add i32 %VR10, 28
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
  %VR14 = inttoptr i32 %VR13 to i32 (i32)*
  %VR15 = call i32 (i32)* %VR14(i32 %VR1)
;; <- dispatch: linia 44
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = icmp eq i32* %VR16,  null
  br i1 %VR17, label %false_dispatch1, label %dispatch_not_void_Graph_1
;#######################################; <- dispatch_not_void_Graph_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__11 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Graph_1
dispatch_not_void_Graph_1:
  %VR18 = ptrtoint i32* %VR16 to i32 
  %VR19 = add i32 %VR18, 8
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = load i32* %VR20
  %VR22 = add i32 %VR21, 44
  %VR23 = inttoptr i32 %VR22 to i32*
  %VR24 = load i32* %VR23
  %VR25 = inttoptr i32 %VR24 to i32 (i32, i32)*
  %VR26 = call i32 (i32, i32)* %VR25(i32 %VR15, i32 %VR4)
;; <- dispatch: linia 44
  %VR27 = add i32 %ARG, 16
  %VR28 = inttoptr i32 %VR27 to i32*
  store i32 %VR26, i32* %VR28
;; <- assign: linia 44
;- block -- assign -
;; -> assign: linia 45
;- block -- assign -- dispatch -
;; -> dispatch: linia 45
;;generez codul pentru apelul metodei cons
;- block -- assign -- dispatch -- object -
;; -> object: linia 45
;; <- object: linia 45
;- block -- assign -- dispatch -- object -
;; -> object: linia 45
  %VR29 = add i32 %ARG, 12
  %VR30 = inttoptr i32 %VR29 to i32*
  %VR31 = load i32* %VR30
;; <- object: linia 45
  %VR32 = inttoptr i32 %VR31 to i32*
  %VR33 = icmp eq i32* %VR32,  null
  br i1 %VR33, label %false_dispatch2, label %dispatch_not_void_Graph_2
;#######################################; <- dispatch_not_void_Graph_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__12 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Graph_2
dispatch_not_void_Graph_2:
  %VR34 = ptrtoint i32* %VR32 to i32 
  %VR35 = add i32 %VR34, 8
  %VR36 = inttoptr i32 %VR35 to i32*
  %VR37 = load i32* %VR36
  %VR38 = add i32 %VR37, 40
  %VR39 = inttoptr i32 %VR38 to i32*
  %VR40 = load i32* %VR39
  %VR41 = inttoptr i32 %VR40 to i32 (i32, i32)*
  %VR42 = call i32 (i32, i32)* %VR41(i32 %VR31, i32 %VR1)
;; <- dispatch: linia 45
  %VR43 = add i32 %ARG, 12
  %VR44 = inttoptr i32 %VR43 to i32*
  store i32 %VR42, i32* %VR44
;; <- assign: linia 45
;; <- block: linia 43
  ret i32 %VR42
;#######################################; <- dispatch_not_void_Graph_2


}
define i32 @Graph__print_E(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Graph_protObj_t*
;- dispatch -
;; -> dispatch: linia 48
;;generez codul pentru apelul metodei print
;- dispatch -- object -
;; -> object: linia 48
  %VR1 = add i32 %ARG, 16
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 48
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_dispatch3, label %dispatch_not_void_Graph_3
;#######################################; <- entry


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__13 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Graph_3
dispatch_not_void_Graph_3:
  %VR6 = ptrtoint i32* %VR4 to i32 
  %VR7 = add i32 %VR6, 8
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = add i32 %VR9, 48
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = inttoptr i32 %VR12 to i32 (i32)*
  %VR14 = call i32 (i32)* %VR13(i32 %VR3)
;; <- dispatch: linia 48
  ret i32 %VR14
;#######################################; <- dispatch_not_void_Graph_3


}
define i32 @Graph__print_V(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Graph_protObj_t*
;- dispatch -
;; -> dispatch: linia 49
;;generez codul pentru apelul metodei print
;- dispatch -- object -
;; -> object: linia 49
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 49
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_dispatch4, label %dispatch_not_void_Graph_4
;#######################################; <- entry


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__14 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Graph_4
dispatch_not_void_Graph_4:
  %VR6 = ptrtoint i32* %VR4 to i32 
  %VR7 = add i32 %VR6, 8
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = add i32 %VR9, 44
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = inttoptr i32 %VR12 to i32 (i32)*
  %VR14 = call i32 (i32)* %VR13(i32 %VR3)
;; <- dispatch: linia 49
  ret i32 %VR14
;#######################################; <- dispatch_not_void_Graph_4


}
define void @Vertice_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- new -
;; -> new: linia 56
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.EList_protObj_t* @EList_protObj to i32))
  call void @EList_init(i32 %VR1)
;; <- new: linia 56
  %VR2 = add i32 %ARG, 16
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
  ret void
;#######################################; <- entry


}
define i32 @Vertice__outgoing(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Vertice_protObj_t*
;- object -
;; -> object: linia 58
  %VR1 = add i32 %ARG, 16
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 58
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @Vertice__number(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Vertice_protObj_t*
;- object -
;; -> object: linia 60
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 60
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @Vertice__init(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Vertice_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- block -
;; -> block: linia 63
;- block -- assign -
;; -> assign: linia 64
;- block -- assign -- object -
;; -> object: linia 64
;; <- object: linia 64
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
;; <- assign: linia 64
;- block -- object -
;; -> object: linia 65
;; <- object: linia 65
;; <- block: linia 63
  ret i32 %ARG
;#######################################; <- entry


}
define i32 @Vertice__add_out(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Vertice_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- block -
;; -> block: linia 71
;- block -- assign -
;; -> assign: linia 72
;- block -- assign -- dispatch -
;; -> dispatch: linia 72
;;generez codul pentru apelul metodei cons
;- block -- assign -- dispatch -- object -
;; -> object: linia 72
;; <- object: linia 72
;- block -- assign -- dispatch -- object -
;; -> object: linia 72
  %VR2 = add i32 %ARG, 16
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = load i32* %VR3
;; <- object: linia 72
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = icmp eq i32* %VR5,  null
  br i1 %VR6, label %false_dispatch0, label %dispatch_not_void_Vertice_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__15 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Vertice_0
dispatch_not_void_Vertice_0:
  %VR7 = ptrtoint i32* %VR5 to i32 
  %VR8 = add i32 %VR7, 8
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = add i32 %VR10, 40
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
  %VR14 = inttoptr i32 %VR13 to i32 (i32, i32)*
  %VR15 = call i32 (i32, i32)* %VR14(i32 %VR4, i32 %VR1)
;; <- dispatch: linia 72
  %VR16 = add i32 %ARG, 16
  %VR17 = inttoptr i32 %VR16 to i32*
  store i32 %VR15, i32* %VR17
;; <- assign: linia 72
;- block -- object -
;; -> object: linia 73
;; <- object: linia 73
;; <- block: linia 71
  ret i32 %ARG
;#######################################; <- dispatch_not_void_Vertice_0


}
define i32 @Vertice__print(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Vertice_protObj_t*
;- block -
;; -> block: linia 78
;- block -- dispatch -
;; -> dispatch: linia 79
;;generez codul pentru apelul metodei out_int
;- block -- dispatch -- object -
;; -> object: linia 79
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 79
;- block -- dispatch -- object -
;; -> object: linia 79
;; <- object: linia 79
  %VR4 = icmp eq %struct.Vertice_protObj_t* %VR0,  null
  br i1 %VR4, label %false_dispatch1, label %dispatch_not_void_Vertice_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__16 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Vertice_1
dispatch_not_void_Vertice_1:
  %VR5 = ptrtoint %struct.Vertice_protObj_t* %VR0 to i32 
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
;; <- dispatch: linia 79
;- block -- dispatch -
;; -> dispatch: linia 80
;;generez codul pentru apelul metodei print
;- block -- dispatch -- object -
;; -> object: linia 80
  %VR17 = add i32 %ARG, 16
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
;; <- object: linia 80
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = icmp eq i32* %VR20,  null
  br i1 %VR21, label %false_dispatch2, label %dispatch_not_void_Vertice_2
;#######################################; <- dispatch_not_void_Vertice_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__17 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Vertice_2
dispatch_not_void_Vertice_2:
  %VR22 = ptrtoint i32* %VR20 to i32 
  %VR23 = add i32 %VR22, 8
  %VR24 = inttoptr i32 %VR23 to i32*
  %VR25 = load i32* %VR24
  %VR26 = add i32 %VR25, 48
  %VR27 = inttoptr i32 %VR26 to i32*
  %VR28 = load i32* %VR27
  %VR29 = inttoptr i32 %VR28 to i32 (i32)*
  %VR30 = call i32 (i32)* %VR29(i32 %VR19)
;; <- dispatch: linia 80
;; <- block: linia 78
  ret i32 %VR30
;#######################################; <- dispatch_not_void_Vertice_2


}
define void @Edge_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @Edge__init(i32 %ARG, i32 %ARG0, i32 %ARG1, i32 %ARG2)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Edge_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
  %VR3 = add i32 %ARG2, 0
;- block -
;; -> block: linia 93
;- block -- assign -
;; -> assign: linia 94
;- block -- assign -- object -
;; -> object: linia 94
;; <- object: linia 94
  %VR4 = add i32 %ARG, 12
  %VR5 = inttoptr i32 %VR4 to i32*
  store i32 %VR1, i32* %VR5
;; <- assign: linia 94
;- block -- assign -
;; -> assign: linia 95
;- block -- assign -- object -
;; -> object: linia 95
;; <- object: linia 95
  %VR6 = add i32 %ARG, 16
  %VR7 = inttoptr i32 %VR6 to i32*
  store i32 %VR2, i32* %VR7
;; <- assign: linia 95
;- block -- assign -
;; -> assign: linia 96
;- block -- assign -- object -
;; -> object: linia 96
;; <- object: linia 96
  %VR8 = add i32 %ARG, 20
  %VR9 = inttoptr i32 %VR8 to i32*
  store i32 %VR3, i32* %VR9
;; <- assign: linia 96
;- block -- object -
;; -> object: linia 97
;; <- object: linia 97
;; <- block: linia 93
  ret i32 %ARG
;#######################################; <- entry


}
define i32 @Edge__print(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Edge_protObj_t*
;- block -
;; -> block: linia 102
;- block -- dispatch -
;; -> dispatch: linia 103
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 103
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 103
;- block -- dispatch -- object -
;; -> object: linia 103
;; <- object: linia 103
  %VR2 = icmp eq %struct.Edge_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch0, label %dispatch_not_void_Edge_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__18 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Edge_0
dispatch_not_void_Edge_0:
  %VR3 = ptrtoint %struct.Edge_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 16
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 103
;- block -- dispatch -
;; -> dispatch: linia 104
;;generez codul pentru apelul metodei out_int
;- block -- dispatch -- object -
;; -> object: linia 104
  %VR12 = add i32 %ARG, 12
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
;; <- object: linia 104
;- block -- dispatch -- object -
;; -> object: linia 104
;; <- object: linia 104
  %VR15 = icmp eq %struct.Edge_protObj_t* %VR0,  null
  br i1 %VR15, label %false_dispatch1, label %dispatch_not_void_Edge_1
;#######################################; <- dispatch_not_void_Edge_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__19 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Edge_1
dispatch_not_void_Edge_1:
  %VR16 = ptrtoint %struct.Edge_protObj_t* %VR0 to i32 
  %VR17 = add i32 %VR16, 8
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
  %VR20 = add i32 %VR19, 12
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
;boxing to int
  %VR23 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR24 = add i32 %VR23, 12
  %VR25 = inttoptr i32 %VR24 to i32*
  store i32 %VR14, i32* %VR25
  %VR26 = inttoptr i32 %VR22 to i32 (i32, i32)*
  %VR27 = call i32 (i32, i32)* %VR26(i32 %ARG, i32 %VR23)
;; <- dispatch: linia 104
;- block -- dispatch -
;; -> dispatch: linia 105
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 105
  %VR28 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 105
;- block -- dispatch -- object -
;; -> object: linia 105
;; <- object: linia 105
  %VR29 = icmp eq %struct.Edge_protObj_t* %VR0,  null
  br i1 %VR29, label %false_dispatch2, label %dispatch_not_void_Edge_2
;#######################################; <- dispatch_not_void_Edge_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__20 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Edge_2
dispatch_not_void_Edge_2:
  %VR30 = ptrtoint %struct.Edge_protObj_t* %VR0 to i32 
  %VR31 = add i32 %VR30, 8
  %VR32 = inttoptr i32 %VR31 to i32*
  %VR33 = load i32* %VR32
  %VR34 = add i32 %VR33, 16
  %VR35 = inttoptr i32 %VR34 to i32*
  %VR36 = load i32* %VR35
  %VR37 = inttoptr i32 %VR36 to i32 (i32, i32)*
  %VR38 = call i32 (i32, i32)* %VR37(i32 %ARG, i32 %VR28)
;; <- dispatch: linia 105
;- block -- dispatch -
;; -> dispatch: linia 106
;;generez codul pentru apelul metodei out_int
;- block -- dispatch -- object -
;; -> object: linia 106
  %VR39 = add i32 %ARG, 16
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = load i32* %VR40
;; <- object: linia 106
;- block -- dispatch -- object -
;; -> object: linia 106
;; <- object: linia 106
  %VR42 = icmp eq %struct.Edge_protObj_t* %VR0,  null
  br i1 %VR42, label %false_dispatch3, label %dispatch_not_void_Edge_3
;#######################################; <- dispatch_not_void_Edge_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__21 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Edge_3
dispatch_not_void_Edge_3:
  %VR43 = ptrtoint %struct.Edge_protObj_t* %VR0 to i32 
  %VR44 = add i32 %VR43, 8
  %VR45 = inttoptr i32 %VR44 to i32*
  %VR46 = load i32* %VR45
  %VR47 = add i32 %VR46, 12
  %VR48 = inttoptr i32 %VR47 to i32*
  %VR49 = load i32* %VR48
;boxing to int
  %VR50 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR51 = add i32 %VR50, 12
  %VR52 = inttoptr i32 %VR51 to i32*
  store i32 %VR41, i32* %VR52
  %VR53 = inttoptr i32 %VR49 to i32 (i32, i32)*
  %VR54 = call i32 (i32, i32)* %VR53(i32 %ARG, i32 %VR50)
;; <- dispatch: linia 106
;- block -- dispatch -
;; -> dispatch: linia 107
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 107
  %VR55 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 107
;- block -- dispatch -- object -
;; -> object: linia 107
;; <- object: linia 107
  %VR56 = icmp eq %struct.Edge_protObj_t* %VR0,  null
  br i1 %VR56, label %false_dispatch4, label %dispatch_not_void_Edge_4
;#######################################; <- dispatch_not_void_Edge_3


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__22 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Edge_4
dispatch_not_void_Edge_4:
  %VR57 = ptrtoint %struct.Edge_protObj_t* %VR0 to i32 
  %VR58 = add i32 %VR57, 8
  %VR59 = inttoptr i32 %VR58 to i32*
  %VR60 = load i32* %VR59
  %VR61 = add i32 %VR60, 16
  %VR62 = inttoptr i32 %VR61 to i32*
  %VR63 = load i32* %VR62
  %VR64 = inttoptr i32 %VR63 to i32 (i32, i32)*
  %VR65 = call i32 (i32, i32)* %VR64(i32 %ARG, i32 %VR55)
;; <- dispatch: linia 107
;- block -- dispatch -
;; -> dispatch: linia 108
;;generez codul pentru apelul metodei out_int
;- block -- dispatch -- object -
;; -> object: linia 108
  %VR66 = add i32 %ARG, 20
  %VR67 = inttoptr i32 %VR66 to i32*
  %VR68 = load i32* %VR67
;; <- object: linia 108
;- block -- dispatch -- object -
;; -> object: linia 108
;; <- object: linia 108
  %VR69 = icmp eq %struct.Edge_protObj_t* %VR0,  null
  br i1 %VR69, label %false_dispatch5, label %dispatch_not_void_Edge_5
;#######################################; <- dispatch_not_void_Edge_4


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__23 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_Edge_5
dispatch_not_void_Edge_5:
  %VR70 = ptrtoint %struct.Edge_protObj_t* %VR0 to i32 
  %VR71 = add i32 %VR70, 8
  %VR72 = inttoptr i32 %VR71 to i32*
  %VR73 = load i32* %VR72
  %VR74 = add i32 %VR73, 12
  %VR75 = inttoptr i32 %VR74 to i32*
  %VR76 = load i32* %VR75
;boxing to int
  %VR77 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR78 = add i32 %VR77, 12
  %VR79 = inttoptr i32 %VR78 to i32*
  store i32 %VR68, i32* %VR79
  %VR80 = inttoptr i32 %VR76 to i32 (i32, i32)*
  %VR81 = call i32 (i32, i32)* %VR80(i32 %ARG, i32 %VR77)
;; <- dispatch: linia 108
;; <- block: linia 102
  ret i32 %VR81
;#######################################; <- dispatch_not_void_Edge_5


}
define void @EList_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @EList__isNil(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.EList_protObj_t*
;- bool_const -
;; -> bool_const: linia 121
  %VR1 = add i32 1, 0
;; <- bool_const: linia 121
  ret i32 %VR1
;#######################################; <- entry


}
define i32 @EList__head(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.EList_protObj_t*
;- block -
;; -> block: linia 123
;- block -- dispatch -
;; -> dispatch: linia 123
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 123
;; <- object: linia 123
  %VR1 = icmp eq %struct.EList_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch0, label %dispatch_not_void_EList_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__24 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_EList_0
dispatch_not_void_EList_0:
  %VR2 = ptrtoint %struct.EList_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 0
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 123
;- block -- object -
;; -> object: linia 123
  %VR11 = add i32 %ARG, 12
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
;; <- object: linia 123
;; <- block: linia 123
  ret i32 %VR13
;#######################################; <- dispatch_not_void_EList_0


}
define i32 @EList__tail(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.EList_protObj_t*
;- block -
;; -> block: linia 125
;- block -- dispatch -
;; -> dispatch: linia 125
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 125
;; <- object: linia 125
  %VR1 = icmp eq %struct.EList_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch1, label %dispatch_not_void_EList_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__25 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_EList_1
dispatch_not_void_EList_1:
  %VR2 = ptrtoint %struct.EList_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 0
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 125
;- block -- object -
;; -> object: linia 125
;; <- object: linia 125
;; <- block: linia 125
  ret i32 %ARG
;#######################################; <- dispatch_not_void_EList_1


}
define i32 @EList__cons(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.EList_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- dispatch -
;; -> dispatch: linia 135
;;generez codul pentru apelul metodei init
;- dispatch -- object -
;; -> object: linia 135
;; <- object: linia 135
;- dispatch -- object -
;; -> object: linia 135
;; <- object: linia 135
;- dispatch -- new -
;; -> new: linia 135
  %VR2 = call i32  @Object__copy(i32 ptrtoint (%struct.ECons_protObj_t* @ECons_protObj to i32))
  call void @ECons_init(i32 %VR2)
;; <- new: linia 135
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = icmp eq i32* %VR3,  null
  br i1 %VR4, label %false_dispatch2, label %dispatch_not_void_EList_2
;#######################################; <- entry


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__26 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_EList_2
dispatch_not_void_EList_2:
  %VR5 = ptrtoint i32* %VR3 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 52
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32, i32, i32)*
  %VR13 = call i32 (i32, i32, i32)* %VR12(i32 %VR2, i32 %VR1, i32 %ARG)
;; <- dispatch: linia 135
  ret i32 %VR13
;#######################################; <- dispatch_not_void_EList_2


}
define i32 @EList__append(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.EList_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 139
;;if: linia 139 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- dispatch -
;; -> dispatch: linia 139
;;generez codul pentru apelul metodei isNil
;- cond -- dispatch -- object -
;; -> object: linia 139
;; <- object: linia 139
  %VR3 = icmp eq %struct.EList_protObj_t* %VR0,  null
  br i1 %VR3, label %false_dispatch3, label %dispatch_not_void_EList_3
;#######################################; <- entry


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__27 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_EList_3
dispatch_not_void_EList_3:
  %VR4 = ptrtoint %struct.EList_protObj_t* %VR0 to i32 
  %VR5 = add i32 %VR4, 8
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = load i32* %VR6
  %VR8 = add i32 %VR7, 28
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = inttoptr i32 %VR10 to i32 (i32)*
  %VR12 = call i32 (i32)* %VR11(i32 %ARG)
;; <- dispatch: linia 139
  %VR13 = icmp eq i32 %VR12,  0
  br i1 %VR13, label %false_EList_0, label %false_false_EList_0
;#######################################; <- dispatch_not_void_EList_3


;#######################################; -> false_false_EList_0
false_false_EList_0:
;;if: linia 139 (expresia pentru then)
;- cond -- object -
;; -> object: linia 139
;; <- object: linia 139
  br label %join_if_EList_0_true
;#######################################; <- false_false_EList_0


;#######################################; -> join_if_EList_0_true
join_if_EList_0_true:
  %VR2.0 = add i32 %VR1, 0
  br label %join_if_EList_0
;#######################################; <- join_if_EList_0_true


;#######################################; -> false_EList_0
false_EList_0:
;;if: linia 139 (expresia pentru else)
;- cond -- dispatch -
;; -> dispatch: linia 140
;;generez codul pentru apelul metodei cons
;- cond -- dispatch -- dispatch -
;; -> dispatch: linia 140
;;generez codul pentru apelul metodei head
;- cond -- dispatch -- dispatch -- object -
;; -> object: linia 140
;; <- object: linia 140
  %VR14 = icmp eq %struct.EList_protObj_t* %VR0,  null
  br i1 %VR14, label %false_dispatch4, label %dispatch_not_void_EList_4
;#######################################; <- false_EList_0


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__28 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_EList_4
dispatch_not_void_EList_4:
  %VR15 = ptrtoint %struct.EList_protObj_t* %VR0 to i32 
  %VR16 = add i32 %VR15, 8
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = load i32* %VR17
  %VR19 = add i32 %VR18, 32
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = load i32* %VR20
  %VR22 = inttoptr i32 %VR21 to i32 (i32)*
  %VR23 = call i32 (i32)* %VR22(i32 %ARG)
;; <- dispatch: linia 140
;- cond -- dispatch -- dispatch -
;; -> dispatch: linia 140
;;generez codul pentru apelul metodei append
;- cond -- dispatch -- dispatch -- object -
;; -> object: linia 140
;; <- object: linia 140
;- cond -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 140
;;generez codul pentru apelul metodei tail
;- cond -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 140
;; <- object: linia 140
  %VR24 = icmp eq %struct.EList_protObj_t* %VR0,  null
  br i1 %VR24, label %false_dispatch5, label %dispatch_not_void_EList_5
;#######################################; <- dispatch_not_void_EList_4


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__28 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_EList_5
dispatch_not_void_EList_5:
  %VR25 = ptrtoint %struct.EList_protObj_t* %VR0 to i32 
  %VR26 = add i32 %VR25, 8
  %VR27 = inttoptr i32 %VR26 to i32*
  %VR28 = load i32* %VR27
  %VR29 = add i32 %VR28, 36
  %VR30 = inttoptr i32 %VR29 to i32*
  %VR31 = load i32* %VR30
  %VR32 = inttoptr i32 %VR31 to i32 (i32)*
  %VR33 = call i32 (i32)* %VR32(i32 %ARG)
;; <- dispatch: linia 140
  %VR34 = inttoptr i32 %VR33 to i32*
  %VR35 = icmp eq i32* %VR34,  null
  br i1 %VR35, label %false_dispatch6, label %dispatch_not_void_EList_6
;#######################################; <- dispatch_not_void_EList_5


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__28 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_EList_6
dispatch_not_void_EList_6:
  %VR36 = ptrtoint i32* %VR34 to i32 
  %VR37 = add i32 %VR36, 8
  %VR38 = inttoptr i32 %VR37 to i32*
  %VR39 = load i32* %VR38
  %VR40 = add i32 %VR39, 44
  %VR41 = inttoptr i32 %VR40 to i32*
  %VR42 = load i32* %VR41
  %VR43 = inttoptr i32 %VR42 to i32 (i32, i32)*
  %VR44 = call i32 (i32, i32)* %VR43(i32 %VR33, i32 %VR1)
;; <- dispatch: linia 140
  %VR45 = inttoptr i32 %VR44 to i32*
  %VR46 = icmp eq i32* %VR45,  null
  br i1 %VR46, label %false_dispatch7, label %dispatch_not_void_EList_7
;#######################################; <- dispatch_not_void_EList_6


;#######################################; -> false_dispatch7
false_dispatch7:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__28 to i32))
  ret i32 0
;#######################################; <- false_dispatch7


;#######################################; -> dispatch_not_void_EList_7
dispatch_not_void_EList_7:
  %VR47 = ptrtoint i32* %VR45 to i32 
  %VR48 = add i32 %VR47, 8
  %VR49 = inttoptr i32 %VR48 to i32*
  %VR50 = load i32* %VR49
  %VR51 = add i32 %VR50, 40
  %VR52 = inttoptr i32 %VR51 to i32*
  %VR53 = load i32* %VR52
  %VR54 = inttoptr i32 %VR53 to i32 (i32, i32)*
  %VR55 = call i32 (i32, i32)* %VR54(i32 %VR44, i32 %VR23)
;; <- dispatch: linia 140
  br label %join_if_EList_0_false
;#######################################; <- dispatch_not_void_EList_7


;#######################################; -> join_if_EList_0_false
join_if_EList_0_false:
  %VR2.1 = add i32 %VR55, 0
  br label %join_if_EList_0
;#######################################; <- join_if_EList_0_false


;#######################################; -> join_if_EList_0
join_if_EList_0:
  %VR2 = phi i32 [ %VR2.0, %join_if_EList_0_true ], [ %VR2.1, %join_if_EList_0_false ]
;; <- cond: linia 139
  ret i32 %VR2
;#######################################; <- join_if_EList_0


}
define i32 @EList__print(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.EList_protObj_t*
;- dispatch -
;; -> dispatch: linia 145
;;generez codul pentru apelul metodei out_string
;- dispatch -- string_const -
;; -> string_const: linia 145
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__4 to i32 
;; <- string_const: linia 145
;- dispatch -- object -
;; -> object: linia 145
;; <- object: linia 145
  %VR2 = icmp eq %struct.EList_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch8, label %dispatch_not_void_EList_8
;#######################################; <- entry


;#######################################; -> false_dispatch8
false_dispatch8:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__29 to i32))
  ret i32 0
;#######################################; <- false_dispatch8


;#######################################; -> dispatch_not_void_EList_8
dispatch_not_void_EList_8:
  %VR3 = ptrtoint %struct.EList_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 16
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 145
  ret i32 %VR11
;#######################################; <- dispatch_not_void_EList_8


}
define void @ECons_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @EList_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @ECons__isNil(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.ECons_protObj_t*
;- bool_const -
;; -> bool_const: linia 168
  %VR1 = add i32 0, 0
;; <- bool_const: linia 168
  ret i32 %VR1
;#######################################; <- entry


}
define i32 @ECons__head(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.ECons_protObj_t*
;- object -
;; -> object: linia 170
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 170
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @ECons__tail(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.ECons_protObj_t*
;- object -
;; -> object: linia 172
  %VR1 = add i32 %ARG, 16
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 172
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @ECons__init(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.ECons_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- block -
;; -> block: linia 175
;- block -- assign -
;; -> assign: linia 176
;- block -- assign -- object -
;; -> object: linia 176
;; <- object: linia 176
  %VR3 = add i32 %ARG, 12
  %VR4 = inttoptr i32 %VR3 to i32*
  store i32 %VR1, i32* %VR4
;; <- assign: linia 176
;- block -- assign -
;; -> assign: linia 177
;- block -- assign -- object -
;; -> object: linia 177
;; <- object: linia 177
  %VR5 = add i32 %ARG, 16
  %VR6 = inttoptr i32 %VR5 to i32*
  store i32 %VR2, i32* %VR6
;; <- assign: linia 177
;- block -- object -
;; -> object: linia 178
;; <- object: linia 178
;; <- block: linia 175
  ret i32 %ARG
;#######################################; <- entry


}
define i32 @ECons__print(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.ECons_protObj_t*
;- block -
;; -> block: linia 183
;- block -- dispatch -
;; -> dispatch: linia 184
;;generez codul pentru apelul metodei print
;- block -- dispatch -- object -
;; -> object: linia 184
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 184
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_dispatch0, label %dispatch_not_void_ECons_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__30 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_ECons_0
dispatch_not_void_ECons_0:
  %VR6 = ptrtoint i32* %VR4 to i32 
  %VR7 = add i32 %VR6, 8
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = add i32 %VR9, 32
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = inttoptr i32 %VR12 to i32 (i32)*
  %VR14 = call i32 (i32)* %VR13(i32 %VR3)
;; <- dispatch: linia 184
;- block -- dispatch -
;; -> dispatch: linia 185
;;generez codul pentru apelul metodei print
;- block -- dispatch -- object -
;; -> object: linia 185
  %VR15 = add i32 %ARG, 16
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
;; <- object: linia 185
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = icmp eq i32* %VR18,  null
  br i1 %VR19, label %false_dispatch1, label %dispatch_not_void_ECons_1
;#######################################; <- dispatch_not_void_ECons_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__31 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_ECons_1
dispatch_not_void_ECons_1:
  %VR20 = ptrtoint i32* %VR18 to i32 
  %VR21 = add i32 %VR20, 8
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = load i32* %VR22
  %VR24 = add i32 %VR23, 48
  %VR25 = inttoptr i32 %VR24 to i32*
  %VR26 = load i32* %VR25
  %VR27 = inttoptr i32 %VR26 to i32 (i32)*
  %VR28 = call i32 (i32)* %VR27(i32 %VR17)
;; <- dispatch: linia 185
;; <- block: linia 183
  ret i32 %VR28
;#######################################; <- dispatch_not_void_ECons_1


}
define void @VList_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @VList__isNil(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.VList_protObj_t*
;- bool_const -
;; -> bool_const: linia 199
  %VR1 = add i32 1, 0
;; <- bool_const: linia 199
  ret i32 %VR1
;#######################################; <- entry


}
define i32 @VList__head(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.VList_protObj_t*
;- block -
;; -> block: linia 201
;- block -- dispatch -
;; -> dispatch: linia 201
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 201
;; <- object: linia 201
  %VR1 = icmp eq %struct.VList_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch0, label %dispatch_not_void_VList_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__32 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_VList_0
dispatch_not_void_VList_0:
  %VR2 = ptrtoint %struct.VList_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 0
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 201
;- block -- object -
;; -> object: linia 201
  %VR11 = add i32 %ARG, 12
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
;; <- object: linia 201
;; <- block: linia 201
  ret i32 %VR13
;#######################################; <- dispatch_not_void_VList_0


}
define i32 @VList__tail(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.VList_protObj_t*
;- block -
;; -> block: linia 203
;- block -- dispatch -
;; -> dispatch: linia 203
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 203
;; <- object: linia 203
  %VR1 = icmp eq %struct.VList_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch1, label %dispatch_not_void_VList_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__33 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_VList_1
dispatch_not_void_VList_1:
  %VR2 = ptrtoint %struct.VList_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 0
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 203
;- block -- object -
;; -> object: linia 203
;; <- object: linia 203
;; <- block: linia 203
  ret i32 %ARG
;#######################################; <- dispatch_not_void_VList_1


}
define i32 @VList__cons(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.VList_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- dispatch -
;; -> dispatch: linia 213
;;generez codul pentru apelul metodei init
;- dispatch -- object -
;; -> object: linia 213
;; <- object: linia 213
;- dispatch -- object -
;; -> object: linia 213
;; <- object: linia 213
;- dispatch -- new -
;; -> new: linia 213
  %VR2 = call i32  @Object__copy(i32 ptrtoint (%struct.VCons_protObj_t* @VCons_protObj to i32))
  call void @VCons_init(i32 %VR2)
;; <- new: linia 213
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = icmp eq i32* %VR3,  null
  br i1 %VR4, label %false_dispatch2, label %dispatch_not_void_VList_2
;#######################################; <- entry


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__34 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_VList_2
dispatch_not_void_VList_2:
  %VR5 = ptrtoint i32* %VR3 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 48
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32, i32, i32)*
  %VR13 = call i32 (i32, i32, i32)* %VR12(i32 %VR2, i32 %VR1, i32 %ARG)
;; <- dispatch: linia 213
  ret i32 %VR13
;#######################################; <- dispatch_not_void_VList_2


}
define i32 @VList__print(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.VList_protObj_t*
;- dispatch -
;; -> dispatch: linia 216
;;generez codul pentru apelul metodei out_string
;- dispatch -- string_const -
;; -> string_const: linia 216
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__4 to i32 
;; <- string_const: linia 216
;- dispatch -- object -
;; -> object: linia 216
;; <- object: linia 216
  %VR2 = icmp eq %struct.VList_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch3, label %dispatch_not_void_VList_3
;#######################################; <- entry


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__35 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_VList_3
dispatch_not_void_VList_3:
  %VR3 = ptrtoint %struct.VList_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 16
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 216
  ret i32 %VR11
;#######################################; <- dispatch_not_void_VList_3


}
define void @VCons_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @VList_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @VCons__isNil(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.VCons_protObj_t*
;- bool_const -
;; -> bool_const: linia 225
  %VR1 = add i32 0, 0
;; <- bool_const: linia 225
  ret i32 %VR1
;#######################################; <- entry


}
define i32 @VCons__head(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.VCons_protObj_t*
;- object -
;; -> object: linia 227
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 227
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @VCons__tail(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.VCons_protObj_t*
;- object -
;; -> object: linia 229
  %VR1 = add i32 %ARG, 16
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 229
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @VCons__init(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.VCons_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- block -
;; -> block: linia 232
;- block -- assign -
;; -> assign: linia 233
;- block -- assign -- object -
;; -> object: linia 233
;; <- object: linia 233
  %VR3 = add i32 %ARG, 12
  %VR4 = inttoptr i32 %VR3 to i32*
  store i32 %VR1, i32* %VR4
;; <- assign: linia 233
;- block -- assign -
;; -> assign: linia 234
;- block -- assign -- object -
;; -> object: linia 234
;; <- object: linia 234
  %VR5 = add i32 %ARG, 16
  %VR6 = inttoptr i32 %VR5 to i32*
  store i32 %VR2, i32* %VR6
;; <- assign: linia 234
;- block -- object -
;; -> object: linia 235
;; <- object: linia 235
;; <- block: linia 232
  ret i32 %ARG
;#######################################; <- entry


}
define i32 @VCons__print(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.VCons_protObj_t*
;- block -
;; -> block: linia 240
;- block -- dispatch -
;; -> dispatch: linia 241
;;generez codul pentru apelul metodei print
;- block -- dispatch -- object -
;; -> object: linia 241
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 241
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_dispatch0, label %dispatch_not_void_VCons_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__36 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_VCons_0
dispatch_not_void_VCons_0:
  %VR6 = ptrtoint i32* %VR4 to i32 
  %VR7 = add i32 %VR6, 8
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = add i32 %VR9, 44
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = inttoptr i32 %VR12 to i32 (i32)*
  %VR14 = call i32 (i32)* %VR13(i32 %VR3)
;; <- dispatch: linia 241
;- block -- dispatch -
;; -> dispatch: linia 242
;;generez codul pentru apelul metodei print
;- block -- dispatch -- object -
;; -> object: linia 242
  %VR15 = add i32 %ARG, 16
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
;; <- object: linia 242
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = icmp eq i32* %VR18,  null
  br i1 %VR19, label %false_dispatch1, label %dispatch_not_void_VCons_1
;#######################################; <- dispatch_not_void_VCons_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__37 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_VCons_1
dispatch_not_void_VCons_1:
  %VR20 = ptrtoint i32* %VR18 to i32 
  %VR21 = add i32 %VR20, 8
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = load i32* %VR22
  %VR24 = add i32 %VR23, 44
  %VR25 = inttoptr i32 %VR24 to i32*
  %VR26 = load i32* %VR25
  %VR27 = inttoptr i32 %VR26 to i32 (i32)*
  %VR28 = call i32 (i32)* %VR27(i32 %VR17)
;; <- dispatch: linia 242
;; <- block: linia 240
  ret i32 %VR28
;#######################################; <- dispatch_not_void_VCons_1


}
define void @Parse_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- new -
;; -> new: linia 252
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.BoolOp_protObj_t* @BoolOp_protObj to i32))
  call void @BoolOp_init(i32 %VR1)
;; <- new: linia 252
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
  %VR4 = call i32  @Object__copy(i32 ptrtoint (%struct.String_protObj_t* @String_protObj to i32))
  %VR5 = add i32 %ARG, 16
  %VR6 = inttoptr i32 %VR5 to i32*
  store i32 %VR4, i32* %VR6
  ret void
;#######################################; <- entry


}
define i32 @Parse__read_input(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR11a = alloca i32 
  store i32 0, i32* %VR11a
  %VR0 = inttoptr i32 %ARG to %struct.Parse_protObj_t*
;- let -
;; -> let: linia 258
;- let -- new -
;; -> new: linia 258
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.Graph_protObj_t* @Graph_protObj to i32))
  call void @Graph_init(i32 %VR1)
;; <- new: linia 258
;- let -- block -
;; -> block: linia 258
;- let -- block -- let -
;; -> let: linia 259
;- let -- block -- let -- dispatch -
;; -> dispatch: linia 259
;;generez codul pentru apelul metodei in_string
;- let -- block -- let -- dispatch -- object -
;; -> object: linia 259
;; <- object: linia 259
  %VR2 = icmp eq %struct.Parse_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch0, label %dispatch_not_void_Parse_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__38 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Parse_0
dispatch_not_void_Parse_0:
  %VR3 = ptrtoint %struct.Parse_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 24
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32)*
  %VR11.a = call i32 (i32)* %VR10(i32 %ARG)
  store i32 %VR11.a, i32* %VR11a
;; <- dispatch: linia 259
;- let -- block -- let -- loop -
;; -> loop: linia 260
;; conditie
  br label %start_loop_Parse_0
;#######################################; <- dispatch_not_void_Parse_0


;#######################################; -> start_loop_Parse_0
start_loop_Parse_0:
;- let -- block -- let -- loop -- dispatch -
;; -> dispatch: linia 260
;;generez codul pentru apelul metodei and
;- let -- block -- let -- loop -- dispatch -- comp -
;; -> comp: linia 260
;- let -- block -- let -- loop -- dispatch -- comp -- eq -
;; -> eq: linia 260
;- let -- block -- let -- loop -- dispatch -- comp -- eq -- object -
;; -> object: linia 260
;; <- object: linia 260
;- let -- block -- let -- loop -- dispatch -- comp -- eq -- string_const -
;; -> string_const: linia 260
  %VR12 = ptrtoint %struct.String_protObj_t* @str_const__4 to i32 
;; <- string_const: linia 260
  br label %eq_test_join_true_Parse_0
;#######################################; <- start_loop_Parse_0


;#######################################; -> eq_test_join_true_Parse_0
eq_test_join_true_Parse_0:
  %VR11_tmp0 = load i32* %VR11a
  %VR13.0 = icmp eq i32 %VR11_tmp0,  %VR12
  br i1 %VR13.0, label %eq_test_join_Parse_0, label %eq_test_join_false_Parse_0
;#######################################; <- eq_test_join_true_Parse_0


;#######################################; -> eq_test_join_false_Parse_0
eq_test_join_false_Parse_0:
  %VR11_tmp1 = load i32* %VR11a
  %VR15 = call i32  @equality_test(i32 1, i32 0, i32 %VR11_tmp1, i32 %VR12)
  %VR13.1 = icmp eq i32 %VR15,  1
  br label %eq_test_join_Parse_0
;#######################################; <- eq_test_join_false_Parse_0


;#######################################; -> eq_test_join_Parse_0
eq_test_join_Parse_0:
  %VR13 = phi i1  [ %VR13.0 , %eq_test_join_true_Parse_0 ] , [ %VR13.1 , %eq_test_join_false_Parse_0 ] 
;; <- eq: linia 260
  %VR16 = select i1 %VR13, i32 1, i32 0
  %VR17 = sub i32 1, %VR16
;; <- comp: linia 260
;- let -- block -- let -- loop -- dispatch -- comp -
;; -> comp: linia 260
;- let -- block -- let -- loop -- dispatch -- comp -- eq -
;; -> eq: linia 260
;- let -- block -- let -- loop -- dispatch -- comp -- eq -- object -
;; -> object: linia 260
;; <- object: linia 260
;- let -- block -- let -- loop -- dispatch -- comp -- eq -- string_const -
;; -> string_const: linia 260
  %VR18 = ptrtoint %struct.String_protObj_t* @str_const__5 to i32 
;; <- string_const: linia 260
  br label %eq_test_join_true_Parse_1
;#######################################; <- eq_test_join_Parse_0


;#######################################; -> eq_test_join_true_Parse_1
eq_test_join_true_Parse_1:
  %VR11_tmp2 = load i32* %VR11a
  %VR19.0 = icmp eq i32 %VR11_tmp2,  %VR18
  br i1 %VR19.0, label %eq_test_join_Parse_1, label %eq_test_join_false_Parse_1
;#######################################; <- eq_test_join_true_Parse_1


;#######################################; -> eq_test_join_false_Parse_1
eq_test_join_false_Parse_1:
  %VR11_tmp3 = load i32* %VR11a
  %VR21 = call i32  @equality_test(i32 1, i32 0, i32 %VR11_tmp3, i32 %VR18)
  %VR19.1 = icmp eq i32 %VR21,  1
  br label %eq_test_join_Parse_1
;#######################################; <- eq_test_join_false_Parse_1


;#######################################; -> eq_test_join_Parse_1
eq_test_join_Parse_1:
  %VR19 = phi i1  [ %VR19.0 , %eq_test_join_true_Parse_1 ] , [ %VR19.1 , %eq_test_join_false_Parse_1 ] 
;; <- eq: linia 260
  %VR22 = select i1 %VR19, i32 1, i32 0
  %VR23 = sub i32 1, %VR22
;; <- comp: linia 260
;- let -- block -- let -- loop -- dispatch -- object -
;; -> object: linia 260
  %VR24 = add i32 %ARG, 12
  %VR25 = inttoptr i32 %VR24 to i32*
  %VR26 = load i32* %VR25
;; <- object: linia 260
  %VR27 = inttoptr i32 %VR26 to i32*
  %VR28 = icmp eq i32* %VR27,  null
  br i1 %VR28, label %false_dispatch1, label %dispatch_not_void_Parse_1
;#######################################; <- eq_test_join_Parse_1


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__39 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Parse_1
dispatch_not_void_Parse_1:
  %VR29 = ptrtoint i32* %VR27 to i32 
  %VR30 = add i32 %VR29, 8
  %VR31 = inttoptr i32 %VR30 to i32*
  %VR32 = load i32* %VR31
  %VR33 = add i32 %VR32, 12
  %VR34 = inttoptr i32 %VR33 to i32*
  %VR35 = load i32* %VR34
  %VR36 = inttoptr i32 %VR35 to i32 (i32, i32, i32)*
  %VR37 = call i32 (i32, i32, i32)* %VR36(i32 %VR26, i32 %VR17, i32 %VR23)
;; <- dispatch: linia 260
  %VR38 = icmp eq i32 %VR37,  0
  br i1 %VR38, label %sfarsit_loop_Parse_0, label %label_next_loop_Parse_0
;#######################################; <- dispatch_not_void_Parse_1


;#######################################; -> label_next_loop_Parse_0
label_next_loop_Parse_0:
;; corp loop
;- let -- block -- let -- loop -- block -
;; -> block: linia 260
;- let -- block -- let -- loop -- block -- dispatch -
;; -> dispatch: linia 263
;;generez codul pentru apelul metodei add_vertice
;- let -- block -- let -- loop -- block -- dispatch -- dispatch -
;; -> dispatch: linia 263
;;generez codul pentru apelul metodei parse_line
;- let -- block -- let -- loop -- block -- dispatch -- dispatch -- object -
;; -> object: linia 263
;; <- object: linia 263
;- let -- block -- let -- loop -- block -- dispatch -- dispatch -- object -
;; -> object: linia 263
;; <- object: linia 263
  %VR39 = icmp eq %struct.Parse_protObj_t* %VR0,  null
  br i1 %VR39, label %false_dispatch2, label %dispatch_not_void_Parse_2
;#######################################; <- label_next_loop_Parse_0


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__40 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Parse_2
dispatch_not_void_Parse_2:
  %VR11_tmp4 = load i32* %VR11a
  %VR40 = ptrtoint %struct.Parse_protObj_t* %VR0 to i32 
  %VR41 = add i32 %VR40, 8
  %VR42 = inttoptr i32 %VR41 to i32*
  %VR43 = load i32* %VR42
  %VR44 = add i32 %VR43, 32
  %VR45 = inttoptr i32 %VR44 to i32*
  %VR46 = load i32* %VR45
  %VR47 = inttoptr i32 %VR46 to i32 (i32, i32)*
  %VR48 = call i32 (i32, i32)* %VR47(i32 %ARG, i32 %VR11_tmp4)
;; <- dispatch: linia 263
;- let -- block -- let -- loop -- block -- dispatch -- object -
;; -> object: linia 263
;; <- object: linia 263
  %VR49 = inttoptr i32 %VR1 to i32*
  %VR50 = icmp eq i32* %VR49,  null
  br i1 %VR50, label %false_dispatch3, label %dispatch_not_void_Parse_3
;#######################################; <- dispatch_not_void_Parse_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__40 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Parse_3
dispatch_not_void_Parse_3:
  %VR51 = ptrtoint i32* %VR49 to i32 
  %VR52 = add i32 %VR51, 8
  %VR53 = inttoptr i32 %VR52 to i32*
  %VR54 = load i32* %VR53
  %VR55 = add i32 %VR54, 12
  %VR56 = inttoptr i32 %VR55 to i32*
  %VR57 = load i32* %VR56
  %VR58 = inttoptr i32 %VR57 to i32 (i32, i32)*
  %VR59 = call i32 (i32, i32)* %VR58(i32 %VR1, i32 %VR48)
;; <- dispatch: linia 263
;- let -- block -- let -- loop -- block -- assign -
;; -> assign: linia 264
;- let -- block -- let -- loop -- block -- assign -- dispatch -
;; -> dispatch: linia 264
;;generez codul pentru apelul metodei in_string
;- let -- block -- let -- loop -- block -- assign -- dispatch -- object -
;; -> object: linia 264
;; <- object: linia 264
  %VR60 = icmp eq %struct.Parse_protObj_t* %VR0,  null
  br i1 %VR60, label %false_dispatch4, label %dispatch_not_void_Parse_4
;#######################################; <- dispatch_not_void_Parse_3


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__41 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Parse_4
dispatch_not_void_Parse_4:
  %VR61 = ptrtoint %struct.Parse_protObj_t* %VR0 to i32 
  %VR62 = add i32 %VR61, 8
  %VR63 = inttoptr i32 %VR62 to i32*
  %VR64 = load i32* %VR63
  %VR65 = add i32 %VR64, 24
  %VR66 = inttoptr i32 %VR65 to i32*
  %VR67 = load i32* %VR66
  %VR68 = inttoptr i32 %VR67 to i32 (i32)*
  %VR69 = call i32 (i32)* %VR68(i32 %ARG)
;; <- dispatch: linia 264
  store i32 %VR69, i32* %VR11a
;; <- assign: linia 264
;; <- block: linia 260
  br label %start_loop_Parse_0
;#######################################; <- dispatch_not_void_Parse_4


;#######################################; -> sfarsit_loop_Parse_0
sfarsit_loop_Parse_0:
;; <- loop: linia 260
;; <- let: linia 259
;- let -- block -- object -
;; -> object: linia 267
;; <- object: linia 267
;; <- block: linia 258
;; <- let: linia 258
  ret i32 %VR1
;#######################################; <- sfarsit_loop_Parse_0


}
define i32 @Parse__parse_line(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Parse_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- let -
;; -> let: linia 273
;- let -- dispatch -
;; -> dispatch: linia 273
;;generez codul pentru apelul metodei init
;- let -- dispatch -- dispatch -
;; -> dispatch: linia 273
;;generez codul pentru apelul metodei a2i
;- let -- dispatch -- dispatch -- object -
;; -> object: linia 273
;; <- object: linia 273
;- let -- dispatch -- dispatch -- object -
;; -> object: linia 273
;; <- object: linia 273
  %VR2 = icmp eq %struct.Parse_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch5, label %dispatch_not_void_Parse_5
;#######################################; <- entry


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__42 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_Parse_5
dispatch_not_void_Parse_5:
  %VR3 = ptrtoint %struct.Parse_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 40
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 273
;- let -- dispatch -- new -
;; -> new: linia 273
  %VR12 = call i32  @Object__copy(i32 ptrtoint (%struct.Vertice_protObj_t* @Vertice_protObj to i32))
  call void @Vertice_init(i32 %VR12)
;; <- new: linia 273
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = icmp eq i32* %VR13,  null
  br i1 %VR14, label %false_dispatch6, label %dispatch_not_void_Parse_6
;#######################################; <- dispatch_not_void_Parse_5


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__42 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_Parse_6
dispatch_not_void_Parse_6:
  %VR15 = ptrtoint i32* %VR13 to i32 
  %VR16 = add i32 %VR15, 8
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = load i32* %VR17
  %VR19 = add i32 %VR18, 36
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = load i32* %VR20
  %VR22 = inttoptr i32 %VR21 to i32 (i32, i32)*
  %VR23 = call i32 (i32, i32)* %VR22(i32 %VR12, i32 %VR11)
;; <- dispatch: linia 273
;- let -- block -
;; -> block: linia 273
;- let -- block -- loop -
;; -> loop: linia 274
;; conditie
  br label %start_loop_Parse_1
;#######################################; <- dispatch_not_void_Parse_6


;#######################################; -> start_loop_Parse_1
start_loop_Parse_1:
;- let -- block -- loop -- comp -
;; -> comp: linia 274
;- let -- block -- loop -- comp -- eq -
;; -> eq: linia 274
;- let -- block -- loop -- comp -- eq -- dispatch -
;; -> dispatch: linia 274
;;generez codul pentru apelul metodei length
;- let -- block -- loop -- comp -- eq -- dispatch -- object -
;; -> object: linia 274
  %VR24 = add i32 %ARG, 16
  %VR25 = inttoptr i32 %VR24 to i32*
  %VR26 = load i32* %VR25
;; <- object: linia 274
  %VR27 = inttoptr i32 %VR26 to i32*
  %VR28 = icmp eq i32* %VR27,  null
  br i1 %VR28, label %false_dispatch7, label %dispatch_not_void_Parse_7
;#######################################; <- start_loop_Parse_1


;#######################################; -> false_dispatch7
false_dispatch7:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__43 to i32))
  ret i32 0
;#######################################; <- false_dispatch7


;#######################################; -> dispatch_not_void_Parse_7
dispatch_not_void_Parse_7:
  %VR29 = ptrtoint i32* %VR27 to i32 
  %VR30 = add i32 %VR29, 8
  %VR31 = inttoptr i32 %VR30 to i32*
  %VR32 = load i32* %VR31
  %VR33 = add i32 %VR32, 16
  %VR34 = inttoptr i32 %VR33 to i32*
  %VR35 = load i32* %VR34
  %VR36 = inttoptr i32 %VR35 to i32 (i32)*
  %VR37 = call i32 (i32)* %VR36(i32 %VR26)
  %VR38 = add i32 %VR37, 12
  %VR39 = inttoptr i32 %VR38 to i32*
  %VR40 = load i32* %VR39
;; <- dispatch: linia 274
;- let -- block -- loop -- comp -- eq -- int_const -
;; -> int_const: linia 274
  %VR41 = add i32 0, 0
;; <- int_const: linia 274
;boxing to int
  %VR42 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR43 = add i32 %VR42, 12
  %VR44 = inttoptr i32 %VR43 to i32*
  store i32 %VR40, i32* %VR44
;boxing to int
  %VR45 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR46 = add i32 %VR45, 12
  %VR47 = inttoptr i32 %VR46 to i32*
  store i32 %VR41, i32* %VR47
  br label %eq_test_join_true_Parse_2
;#######################################; <- dispatch_not_void_Parse_7


;#######################################; -> eq_test_join_true_Parse_2
eq_test_join_true_Parse_2:
  %VR48.0 = icmp eq i32 %VR42,  %VR45
  br i1 %VR48.0, label %eq_test_join_Parse_2, label %eq_test_join_false_Parse_2
;#######################################; <- eq_test_join_true_Parse_2


;#######################################; -> eq_test_join_false_Parse_2
eq_test_join_false_Parse_2:
  %VR50 = call i32  @equality_test(i32 1, i32 0, i32 %VR42, i32 %VR45)
  %VR48.1 = icmp eq i32 %VR50,  1
  br label %eq_test_join_Parse_2
;#######################################; <- eq_test_join_false_Parse_2


;#######################################; -> eq_test_join_Parse_2
eq_test_join_Parse_2:
  %VR48 = phi i1 [ %VR48.0, %eq_test_join_true_Parse_2 ] , [ %VR48.1, %eq_test_join_false_Parse_2 ] 
;; <- eq: linia 274
  %VR51 = select i1 %VR48, i32 1, i32 0
  %VR52 = sub i32 1, %VR51
;; <- comp: linia 274
  %VR53 = icmp eq i32 %VR52,  0
  br i1 %VR53, label %sfarsit_loop_Parse_1, label %label_next_loop_Parse_1
;#######################################; <- eq_test_join_Parse_2


;#######################################; -> label_next_loop_Parse_1
label_next_loop_Parse_1:
;; corp loop
;- let -- block -- loop -- block -
;; -> block: linia 274
;- let -- block -- loop -- block -- let -
;; -> let: linia 277
;- let -- block -- loop -- block -- let -- dispatch -
;; -> dispatch: linia 277
;;generez codul pentru apelul metodei a2i
;- let -- block -- loop -- block -- let -- dispatch -- object -
;; -> object: linia 277
  %VR54 = add i32 %ARG, 16
  %VR55 = inttoptr i32 %VR54 to i32*
  %VR56 = load i32* %VR55
;; <- object: linia 277
;- let -- block -- loop -- block -- let -- dispatch -- object -
;; -> object: linia 277
;; <- object: linia 277
  %VR57 = icmp eq %struct.Parse_protObj_t* %VR0,  null
  br i1 %VR57, label %false_dispatch8, label %dispatch_not_void_Parse_8
;#######################################; <- label_next_loop_Parse_1


;#######################################; -> false_dispatch8
false_dispatch8:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__44 to i32))
  ret i32 0
;#######################################; <- false_dispatch8


;#######################################; -> dispatch_not_void_Parse_8
dispatch_not_void_Parse_8:
  %VR58 = ptrtoint %struct.Parse_protObj_t* %VR0 to i32 
  %VR59 = add i32 %VR58, 8
  %VR60 = inttoptr i32 %VR59 to i32*
  %VR61 = load i32* %VR60
  %VR62 = add i32 %VR61, 40
  %VR63 = inttoptr i32 %VR62 to i32*
  %VR64 = load i32* %VR63
  %VR65 = inttoptr i32 %VR64 to i32 (i32, i32)*
  %VR66 = call i32 (i32, i32)* %VR65(i32 %ARG, i32 %VR56)
;; <- dispatch: linia 277
;- let -- block -- loop -- block -- let -- let -
;; -> let: linia 278
;- let -- block -- loop -- block -- let -- let -- dispatch -
;; -> dispatch: linia 278
;;generez codul pentru apelul metodei a2i
;- let -- block -- loop -- block -- let -- let -- dispatch -- object -
;; -> object: linia 278
  %VR67 = add i32 %ARG, 16
  %VR68 = inttoptr i32 %VR67 to i32*
  %VR69 = load i32* %VR68
;; <- object: linia 278
;- let -- block -- loop -- block -- let -- let -- dispatch -- object -
;; -> object: linia 278
;; <- object: linia 278
  %VR70 = icmp eq %struct.Parse_protObj_t* %VR0,  null
  br i1 %VR70, label %false_dispatch9, label %dispatch_not_void_Parse_9
;#######################################; <- dispatch_not_void_Parse_8


;#######################################; -> false_dispatch9
false_dispatch9:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__45 to i32))
  ret i32 0
;#######################################; <- false_dispatch9


;#######################################; -> dispatch_not_void_Parse_9
dispatch_not_void_Parse_9:
  %VR71 = ptrtoint %struct.Parse_protObj_t* %VR0 to i32 
  %VR72 = add i32 %VR71, 8
  %VR73 = inttoptr i32 %VR72 to i32*
  %VR74 = load i32* %VR73
  %VR75 = add i32 %VR74, 40
  %VR76 = inttoptr i32 %VR75 to i32*
  %VR77 = load i32* %VR76
  %VR78 = inttoptr i32 %VR77 to i32 (i32, i32)*
  %VR79 = call i32 (i32, i32)* %VR78(i32 %ARG, i32 %VR69)
;; <- dispatch: linia 278
;- let -- block -- loop -- block -- let -- let -- dispatch -
;; -> dispatch: linia 280
;;generez codul pentru apelul metodei add_out
;- let -- block -- loop -- block -- let -- let -- dispatch -- dispatch -
;; -> dispatch: linia 280
;;generez codul pentru apelul metodei init
;- let -- block -- loop -- block -- let -- let -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 280
;;generez codul pentru apelul metodei number
;- let -- block -- loop -- block -- let -- let -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 280
;; <- object: linia 280
  %VR80 = inttoptr i32 %VR23 to i32*
  %VR81 = icmp eq i32* %VR80,  null
  br i1 %VR81, label %false_dispatch10, label %dispatch_not_void_Parse_10
;#######################################; <- dispatch_not_void_Parse_9


;#######################################; -> false_dispatch10
false_dispatch10:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__46 to i32))
  ret i32 0
;#######################################; <- false_dispatch10


;#######################################; -> dispatch_not_void_Parse_10
dispatch_not_void_Parse_10:
  %VR82 = ptrtoint i32* %VR80 to i32 
  %VR83 = add i32 %VR82, 8
  %VR84 = inttoptr i32 %VR83 to i32*
  %VR85 = load i32* %VR84
  %VR86 = add i32 %VR85, 32
  %VR87 = inttoptr i32 %VR86 to i32*
  %VR88 = load i32* %VR87
  %VR89 = inttoptr i32 %VR88 to i32 (i32)*
  %VR90 = call i32 (i32)* %VR89(i32 %VR23)
;; <- dispatch: linia 280
;- let -- block -- loop -- block -- let -- let -- dispatch -- dispatch -- object -
;; -> object: linia 281
;; <- object: linia 281
;- let -- block -- loop -- block -- let -- let -- dispatch -- dispatch -- object -
;; -> object: linia 282
;; <- object: linia 282
;- let -- block -- loop -- block -- let -- let -- dispatch -- dispatch -- new -
;; -> new: linia 280
  %VR91 = call i32  @Object__copy(i32 ptrtoint (%struct.Edge_protObj_t* @Edge_protObj to i32))
  call void @Edge_init(i32 %VR91)
;; <- new: linia 280
  %VR92 = inttoptr i32 %VR91 to i32*
  %VR93 = icmp eq i32* %VR92,  null
  br i1 %VR93, label %false_dispatch11, label %dispatch_not_void_Parse_11
;#######################################; <- dispatch_not_void_Parse_10


;#######################################; -> false_dispatch11
false_dispatch11:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__46 to i32))
  ret i32 0
;#######################################; <- false_dispatch11


;#######################################; -> dispatch_not_void_Parse_11
dispatch_not_void_Parse_11:
  %VR94 = ptrtoint i32* %VR92 to i32 
  %VR95 = add i32 %VR94, 8
  %VR96 = inttoptr i32 %VR95 to i32*
  %VR97 = load i32* %VR96
  %VR98 = add i32 %VR97, 28
  %VR99 = inttoptr i32 %VR98 to i32*
  %VR100 = load i32* %VR99
  %VR101 = inttoptr i32 %VR100 to i32 (i32, i32, i32, i32)*
  %VR102 = call i32 (i32, i32, i32, i32)* %VR101(i32 %VR91, i32 %VR90, i32 %VR66, i32 %VR79)
;; <- dispatch: linia 280
;- let -- block -- loop -- block -- let -- let -- dispatch -- object -
;; -> object: linia 280
;; <- object: linia 280
  %VR103 = inttoptr i32 %VR23 to i32*
  %VR104 = icmp eq i32* %VR103,  null
  br i1 %VR104, label %false_dispatch12, label %dispatch_not_void_Parse_12
;#######################################; <- dispatch_not_void_Parse_11


;#######################################; -> false_dispatch12
false_dispatch12:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__46 to i32))
  ret i32 0
;#######################################; <- false_dispatch12


;#######################################; -> dispatch_not_void_Parse_12
dispatch_not_void_Parse_12:
  %VR105 = ptrtoint i32* %VR103 to i32 
  %VR106 = add i32 %VR105, 8
  %VR107 = inttoptr i32 %VR106 to i32*
  %VR108 = load i32* %VR107
  %VR109 = add i32 %VR108, 40
  %VR110 = inttoptr i32 %VR109 to i32*
  %VR111 = load i32* %VR110
  %VR112 = inttoptr i32 %VR111 to i32 (i32, i32)*
  %VR113 = call i32 (i32, i32)* %VR112(i32 %VR23, i32 %VR102)
;; <- dispatch: linia 280
;; <- let: linia 278
;; <- let: linia 277
;; <- block: linia 274
  br label %start_loop_Parse_1
;#######################################; <- dispatch_not_void_Parse_12


;#######################################; -> sfarsit_loop_Parse_1
sfarsit_loop_Parse_1:
;; <- loop: linia 274
;- let -- block -- object -
;; -> object: linia 285
;; <- object: linia 285
;; <- block: linia 273
;; <- let: linia 273
  ret i32 %VR23
;#######################################; <- sfarsit_loop_Parse_1


}
define i32 @Parse__c2i(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Parse_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 291
;;if: linia 291 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- eq -
;; -> eq: linia 291
;- cond -- eq -- object -
;; -> object: linia 291
;; <- object: linia 291
;- cond -- eq -- string_const -
;; -> string_const: linia 291
  %VR3 = ptrtoint %struct.String_protObj_t* @str_const__6 to i32 
;; <- string_const: linia 291
  br label %eq_test_join_true_Parse_3
;#######################################; <- entry


;#######################################; -> eq_test_join_true_Parse_3
eq_test_join_true_Parse_3:
  %VR4.0 = icmp eq i32 %VR1,  %VR3
  br i1 %VR4.0, label %eq_test_join_Parse_3, label %eq_test_join_false_Parse_3
;#######################################; <- eq_test_join_true_Parse_3


;#######################################; -> eq_test_join_false_Parse_3
eq_test_join_false_Parse_3:
  %VR6 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR3)
  %VR4.1 = icmp eq i32 %VR6,  1
  br label %eq_test_join_Parse_3
;#######################################; <- eq_test_join_false_Parse_3


;#######################################; -> eq_test_join_Parse_3
eq_test_join_Parse_3:
  %VR4 = phi i1 [ %VR4.0, %eq_test_join_true_Parse_3 ] , [ %VR4.1, %eq_test_join_false_Parse_3 ] 
;; <- eq: linia 291
  %VR7 = icmp eq i1 %VR4,  false
  br i1 %VR7, label %false_Parse_0, label %false_false_Parse_0
;#######################################; <- eq_test_join_Parse_3


;#######################################; -> false_false_Parse_0
false_false_Parse_0:
;;if: linia 291 (expresia pentru then)
;- cond -- int_const -
;; -> int_const: linia 291
  %VR8 = add i32 0, 0
;; <- int_const: linia 291
  br label %join_if_Parse_0_true
;#######################################; <- false_false_Parse_0


;#######################################; -> join_if_Parse_0_true
join_if_Parse_0_true:
  %VR2.0 = add i32 %VR8, 0
  br label %join_if_Parse_0
;#######################################; <- join_if_Parse_0_true


;#######################################; -> false_Parse_0
false_Parse_0:
;;if: linia 291 (expresia pentru else)
;- cond -- cond -
;; -> cond: linia 292
;;if: linia 292 (expresia pentru predicat)
;;%VR9 rezervat pentru rezultatul if-ului
;- cond -- cond -- eq -
;; -> eq: linia 292
;- cond -- cond -- eq -- object -
;; -> object: linia 292
;; <- object: linia 292
;- cond -- cond -- eq -- string_const -
;; -> string_const: linia 292
  %VR10 = ptrtoint %struct.String_protObj_t* @str_const__7 to i32 
;; <- string_const: linia 292
  br label %eq_test_join_true_Parse_4
;#######################################; <- false_Parse_0


;#######################################; -> eq_test_join_true_Parse_4
eq_test_join_true_Parse_4:
  %VR11.0 = icmp eq i32 %VR1,  %VR10
  br i1 %VR11.0, label %eq_test_join_Parse_4, label %eq_test_join_false_Parse_4
;#######################################; <- eq_test_join_true_Parse_4


;#######################################; -> eq_test_join_false_Parse_4
eq_test_join_false_Parse_4:
  %VR13 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR10)
  %VR11.1 = icmp eq i32 %VR13,  1
  br label %eq_test_join_Parse_4
;#######################################; <- eq_test_join_false_Parse_4


;#######################################; -> eq_test_join_Parse_4
eq_test_join_Parse_4:
  %VR11 = phi i1 [ %VR11.0, %eq_test_join_true_Parse_4 ] , [ %VR11.1, %eq_test_join_false_Parse_4 ] 
;; <- eq: linia 292
  %VR14 = icmp eq i1 %VR11,  false
  br i1 %VR14, label %false_Parse_1, label %false_false_Parse_1
;#######################################; <- eq_test_join_Parse_4


;#######################################; -> false_false_Parse_1
false_false_Parse_1:
;;if: linia 292 (expresia pentru then)
;- cond -- cond -- int_const -
;; -> int_const: linia 292
  %VR15 = add i32 1, 0
;; <- int_const: linia 292
  br label %join_if_Parse_1_true
;#######################################; <- false_false_Parse_1


;#######################################; -> join_if_Parse_1_true
join_if_Parse_1_true:
  %VR9.0 = add i32 %VR15, 0
  br label %join_if_Parse_1
;#######################################; <- join_if_Parse_1_true


;#######################################; -> false_Parse_1
false_Parse_1:
;;if: linia 292 (expresia pentru else)
;- cond -- cond -- cond -
;; -> cond: linia 293
;;if: linia 293 (expresia pentru predicat)
;;%VR16 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- eq -
;; -> eq: linia 293
;- cond -- cond -- cond -- eq -- object -
;; -> object: linia 293
;; <- object: linia 293
;- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 293
  %VR17 = ptrtoint %struct.String_protObj_t* @str_const__8 to i32 
;; <- string_const: linia 293
  br label %eq_test_join_true_Parse_5
;#######################################; <- false_Parse_1


;#######################################; -> eq_test_join_true_Parse_5
eq_test_join_true_Parse_5:
  %VR18.0 = icmp eq i32 %VR1,  %VR17
  br i1 %VR18.0, label %eq_test_join_Parse_5, label %eq_test_join_false_Parse_5
;#######################################; <- eq_test_join_true_Parse_5


;#######################################; -> eq_test_join_false_Parse_5
eq_test_join_false_Parse_5:
  %VR20 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR17)
  %VR18.1 = icmp eq i32 %VR20,  1
  br label %eq_test_join_Parse_5
;#######################################; <- eq_test_join_false_Parse_5


;#######################################; -> eq_test_join_Parse_5
eq_test_join_Parse_5:
  %VR18 = phi i1 [ %VR18.0, %eq_test_join_true_Parse_5 ] , [ %VR18.1, %eq_test_join_false_Parse_5 ] 
;; <- eq: linia 293
  %VR21 = icmp eq i1 %VR18,  false
  br i1 %VR21, label %false_Parse_2, label %false_false_Parse_2
;#######################################; <- eq_test_join_Parse_5


;#######################################; -> false_false_Parse_2
false_false_Parse_2:
;;if: linia 293 (expresia pentru then)
;- cond -- cond -- cond -- int_const -
;; -> int_const: linia 293
  %VR22 = add i32 2, 0
;; <- int_const: linia 293
  br label %join_if_Parse_2_true
;#######################################; <- false_false_Parse_2


;#######################################; -> join_if_Parse_2_true
join_if_Parse_2_true:
  %VR16.0 = add i32 %VR22, 0
  br label %join_if_Parse_2
;#######################################; <- join_if_Parse_2_true


;#######################################; -> false_Parse_2
false_Parse_2:
;;if: linia 293 (expresia pentru else)
;- cond -- cond -- cond -- cond -
;; -> cond: linia 294
;;if: linia 294 (expresia pentru predicat)
;;%VR23 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 294
;- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 294
;; <- object: linia 294
;- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 294
  %VR24 = ptrtoint %struct.String_protObj_t* @str_const__9 to i32 
;; <- string_const: linia 294
  br label %eq_test_join_true_Parse_6
;#######################################; <- false_Parse_2


;#######################################; -> eq_test_join_true_Parse_6
eq_test_join_true_Parse_6:
  %VR25.0 = icmp eq i32 %VR1,  %VR24
  br i1 %VR25.0, label %eq_test_join_Parse_6, label %eq_test_join_false_Parse_6
;#######################################; <- eq_test_join_true_Parse_6


;#######################################; -> eq_test_join_false_Parse_6
eq_test_join_false_Parse_6:
  %VR27 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR24)
  %VR25.1 = icmp eq i32 %VR27,  1
  br label %eq_test_join_Parse_6
;#######################################; <- eq_test_join_false_Parse_6


;#######################################; -> eq_test_join_Parse_6
eq_test_join_Parse_6:
  %VR25 = phi i1 [ %VR25.0, %eq_test_join_true_Parse_6 ] , [ %VR25.1, %eq_test_join_false_Parse_6 ] 
;; <- eq: linia 294
  %VR28 = icmp eq i1 %VR25,  false
  br i1 %VR28, label %false_Parse_3, label %false_false_Parse_3
;#######################################; <- eq_test_join_Parse_6


;#######################################; -> false_false_Parse_3
false_false_Parse_3:
;;if: linia 294 (expresia pentru then)
;- cond -- cond -- cond -- cond -- int_const -
;; -> int_const: linia 294
  %VR29 = add i32 3, 0
;; <- int_const: linia 294
  br label %join_if_Parse_3_true
;#######################################; <- false_false_Parse_3


;#######################################; -> join_if_Parse_3_true
join_if_Parse_3_true:
  %VR23.0 = add i32 %VR29, 0
  br label %join_if_Parse_3
;#######################################; <- join_if_Parse_3_true


;#######################################; -> false_Parse_3
false_Parse_3:
;;if: linia 294 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 295
;;if: linia 295 (expresia pentru predicat)
;;%VR30 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 295
;- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 295
;; <- object: linia 295
;- cond -- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 295
  %VR31 = ptrtoint %struct.String_protObj_t* @str_const__10 to i32 
;; <- string_const: linia 295
  br label %eq_test_join_true_Parse_7
;#######################################; <- false_Parse_3


;#######################################; -> eq_test_join_true_Parse_7
eq_test_join_true_Parse_7:
  %VR32.0 = icmp eq i32 %VR1,  %VR31
  br i1 %VR32.0, label %eq_test_join_Parse_7, label %eq_test_join_false_Parse_7
;#######################################; <- eq_test_join_true_Parse_7


;#######################################; -> eq_test_join_false_Parse_7
eq_test_join_false_Parse_7:
  %VR34 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR31)
  %VR32.1 = icmp eq i32 %VR34,  1
  br label %eq_test_join_Parse_7
;#######################################; <- eq_test_join_false_Parse_7


;#######################################; -> eq_test_join_Parse_7
eq_test_join_Parse_7:
  %VR32 = phi i1 [ %VR32.0, %eq_test_join_true_Parse_7 ] , [ %VR32.1, %eq_test_join_false_Parse_7 ] 
;; <- eq: linia 295
  %VR35 = icmp eq i1 %VR32,  false
  br i1 %VR35, label %false_Parse_4, label %false_false_Parse_4
;#######################################; <- eq_test_join_Parse_7


;#######################################; -> false_false_Parse_4
false_false_Parse_4:
;;if: linia 295 (expresia pentru then)
;- cond -- cond -- cond -- cond -- cond -- int_const -
;; -> int_const: linia 295
  %VR36 = add i32 4, 0
;; <- int_const: linia 295
  br label %join_if_Parse_4_true
;#######################################; <- false_false_Parse_4


;#######################################; -> join_if_Parse_4_true
join_if_Parse_4_true:
  %VR30.0 = add i32 %VR36, 0
  br label %join_if_Parse_4
;#######################################; <- join_if_Parse_4_true


;#######################################; -> false_Parse_4
false_Parse_4:
;;if: linia 295 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 296
;;if: linia 296 (expresia pentru predicat)
;;%VR37 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 296
;- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 296
;; <- object: linia 296
;- cond -- cond -- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 296
  %VR38 = ptrtoint %struct.String_protObj_t* @str_const__11 to i32 
;; <- string_const: linia 296
  br label %eq_test_join_true_Parse_8
;#######################################; <- false_Parse_4


;#######################################; -> eq_test_join_true_Parse_8
eq_test_join_true_Parse_8:
  %VR39.0 = icmp eq i32 %VR1,  %VR38
  br i1 %VR39.0, label %eq_test_join_Parse_8, label %eq_test_join_false_Parse_8
;#######################################; <- eq_test_join_true_Parse_8


;#######################################; -> eq_test_join_false_Parse_8
eq_test_join_false_Parse_8:
  %VR41 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR38)
  %VR39.1 = icmp eq i32 %VR41,  1
  br label %eq_test_join_Parse_8
;#######################################; <- eq_test_join_false_Parse_8


;#######################################; -> eq_test_join_Parse_8
eq_test_join_Parse_8:
  %VR39 = phi i1 [ %VR39.0, %eq_test_join_true_Parse_8 ] , [ %VR39.1, %eq_test_join_false_Parse_8 ] 
;; <- eq: linia 296
  %VR42 = icmp eq i1 %VR39,  false
  br i1 %VR42, label %false_Parse_5, label %false_false_Parse_5
;#######################################; <- eq_test_join_Parse_8


;#######################################; -> false_false_Parse_5
false_false_Parse_5:
;;if: linia 296 (expresia pentru then)
;- cond -- cond -- cond -- cond -- cond -- cond -- int_const -
;; -> int_const: linia 296
  %VR43 = add i32 5, 0
;; <- int_const: linia 296
  br label %join_if_Parse_5_true
;#######################################; <- false_false_Parse_5


;#######################################; -> join_if_Parse_5_true
join_if_Parse_5_true:
  %VR37.0 = add i32 %VR43, 0
  br label %join_if_Parse_5
;#######################################; <- join_if_Parse_5_true


;#######################################; -> false_Parse_5
false_Parse_5:
;;if: linia 296 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 297
;;if: linia 297 (expresia pentru predicat)
;;%VR44 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 297
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 297
;; <- object: linia 297
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 297
  %VR45 = ptrtoint %struct.String_protObj_t* @str_const__12 to i32 
;; <- string_const: linia 297
  br label %eq_test_join_true_Parse_9
;#######################################; <- false_Parse_5


;#######################################; -> eq_test_join_true_Parse_9
eq_test_join_true_Parse_9:
  %VR46.0 = icmp eq i32 %VR1,  %VR45
  br i1 %VR46.0, label %eq_test_join_Parse_9, label %eq_test_join_false_Parse_9
;#######################################; <- eq_test_join_true_Parse_9


;#######################################; -> eq_test_join_false_Parse_9
eq_test_join_false_Parse_9:
  %VR48 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR45)
  %VR46.1 = icmp eq i32 %VR48,  1
  br label %eq_test_join_Parse_9
;#######################################; <- eq_test_join_false_Parse_9


;#######################################; -> eq_test_join_Parse_9
eq_test_join_Parse_9:
  %VR46 = phi i1 [ %VR46.0, %eq_test_join_true_Parse_9 ] , [ %VR46.1, %eq_test_join_false_Parse_9 ] 
;; <- eq: linia 297
  %VR49 = icmp eq i1 %VR46,  false
  br i1 %VR49, label %false_Parse_6, label %false_false_Parse_6
;#######################################; <- eq_test_join_Parse_9


;#######################################; -> false_false_Parse_6
false_false_Parse_6:
;;if: linia 297 (expresia pentru then)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- int_const -
;; -> int_const: linia 297
  %VR50 = add i32 6, 0
;; <- int_const: linia 297
  br label %join_if_Parse_6_true
;#######################################; <- false_false_Parse_6


;#######################################; -> join_if_Parse_6_true
join_if_Parse_6_true:
  %VR44.0 = add i32 %VR50, 0
  br label %join_if_Parse_6
;#######################################; <- join_if_Parse_6_true


;#######################################; -> false_Parse_6
false_Parse_6:
;;if: linia 297 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 298
;;if: linia 298 (expresia pentru predicat)
;;%VR51 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 298
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 298
;; <- object: linia 298
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 298
  %VR52 = ptrtoint %struct.String_protObj_t* @str_const__13 to i32 
;; <- string_const: linia 298
  br label %eq_test_join_true_Parse_10
;#######################################; <- false_Parse_6


;#######################################; -> eq_test_join_true_Parse_10
eq_test_join_true_Parse_10:
  %VR53.0 = icmp eq i32 %VR1,  %VR52
  br i1 %VR53.0, label %eq_test_join_Parse_10, label %eq_test_join_false_Parse_10
;#######################################; <- eq_test_join_true_Parse_10


;#######################################; -> eq_test_join_false_Parse_10
eq_test_join_false_Parse_10:
  %VR55 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR52)
  %VR53.1 = icmp eq i32 %VR55,  1
  br label %eq_test_join_Parse_10
;#######################################; <- eq_test_join_false_Parse_10


;#######################################; -> eq_test_join_Parse_10
eq_test_join_Parse_10:
  %VR53 = phi i1 [ %VR53.0, %eq_test_join_true_Parse_10 ] , [ %VR53.1, %eq_test_join_false_Parse_10 ] 
;; <- eq: linia 298
  %VR56 = icmp eq i1 %VR53,  false
  br i1 %VR56, label %false_Parse_7, label %false_false_Parse_7
;#######################################; <- eq_test_join_Parse_10


;#######################################; -> false_false_Parse_7
false_false_Parse_7:
;;if: linia 298 (expresia pentru then)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- int_const -
;; -> int_const: linia 298
  %VR57 = add i32 7, 0
;; <- int_const: linia 298
  br label %join_if_Parse_7_true
;#######################################; <- false_false_Parse_7


;#######################################; -> join_if_Parse_7_true
join_if_Parse_7_true:
  %VR51.0 = add i32 %VR57, 0
  br label %join_if_Parse_7
;#######################################; <- join_if_Parse_7_true


;#######################################; -> false_Parse_7
false_Parse_7:
;;if: linia 298 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 299
;;if: linia 299 (expresia pentru predicat)
;;%VR58 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 299
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 299
;; <- object: linia 299
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 299
  %VR59 = ptrtoint %struct.String_protObj_t* @str_const__14 to i32 
;; <- string_const: linia 299
  br label %eq_test_join_true_Parse_11
;#######################################; <- false_Parse_7


;#######################################; -> eq_test_join_true_Parse_11
eq_test_join_true_Parse_11:
  %VR60.0 = icmp eq i32 %VR1,  %VR59
  br i1 %VR60.0, label %eq_test_join_Parse_11, label %eq_test_join_false_Parse_11
;#######################################; <- eq_test_join_true_Parse_11


;#######################################; -> eq_test_join_false_Parse_11
eq_test_join_false_Parse_11:
  %VR62 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR59)
  %VR60.1 = icmp eq i32 %VR62,  1
  br label %eq_test_join_Parse_11
;#######################################; <- eq_test_join_false_Parse_11


;#######################################; -> eq_test_join_Parse_11
eq_test_join_Parse_11:
  %VR60 = phi i1 [ %VR60.0, %eq_test_join_true_Parse_11 ] , [ %VR60.1, %eq_test_join_false_Parse_11 ] 
;; <- eq: linia 299
  %VR63 = icmp eq i1 %VR60,  false
  br i1 %VR63, label %false_Parse_8, label %false_false_Parse_8
;#######################################; <- eq_test_join_Parse_11


;#######################################; -> false_false_Parse_8
false_false_Parse_8:
;;if: linia 299 (expresia pentru then)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- int_const -
;; -> int_const: linia 299
  %VR64 = add i32 8, 0
;; <- int_const: linia 299
  br label %join_if_Parse_8_true
;#######################################; <- false_false_Parse_8


;#######################################; -> join_if_Parse_8_true
join_if_Parse_8_true:
  %VR58.0 = add i32 %VR64, 0
  br label %join_if_Parse_8
;#######################################; <- join_if_Parse_8_true


;#######################################; -> false_Parse_8
false_Parse_8:
;;if: linia 299 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -
;; -> cond: linia 300
;;if: linia 300 (expresia pentru predicat)
;;%VR65 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -
;; -> eq: linia 300
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- object -
;; -> object: linia 300
;; <- object: linia 300
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 300
  %VR66 = ptrtoint %struct.String_protObj_t* @str_const__15 to i32 
;; <- string_const: linia 300
  br label %eq_test_join_true_Parse_12
;#######################################; <- false_Parse_8


;#######################################; -> eq_test_join_true_Parse_12
eq_test_join_true_Parse_12:
  %VR67.0 = icmp eq i32 %VR1,  %VR66
  br i1 %VR67.0, label %eq_test_join_Parse_12, label %eq_test_join_false_Parse_12
;#######################################; <- eq_test_join_true_Parse_12


;#######################################; -> eq_test_join_false_Parse_12
eq_test_join_false_Parse_12:
  %VR69 = call i32  @equality_test(i32 1, i32 0, i32 %VR1, i32 %VR66)
  %VR67.1 = icmp eq i32 %VR69,  1
  br label %eq_test_join_Parse_12
;#######################################; <- eq_test_join_false_Parse_12


;#######################################; -> eq_test_join_Parse_12
eq_test_join_Parse_12:
  %VR67 = phi i1 [ %VR67.0, %eq_test_join_true_Parse_12 ] , [ %VR67.1, %eq_test_join_false_Parse_12 ] 
;; <- eq: linia 300
  %VR70 = icmp eq i1 %VR67,  false
  br i1 %VR70, label %false_Parse_9, label %false_false_Parse_9
;#######################################; <- eq_test_join_Parse_12


;#######################################; -> false_false_Parse_9
false_false_Parse_9:
;;if: linia 300 (expresia pentru then)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- int_const -
;; -> int_const: linia 300
  %VR71 = add i32 9, 0
;; <- int_const: linia 300
  br label %join_if_Parse_9_true
;#######################################; <- false_false_Parse_9


;#######################################; -> join_if_Parse_9_true
join_if_Parse_9_true:
  %VR65.0 = add i32 %VR71, 0
  br label %join_if_Parse_9
;#######################################; <- join_if_Parse_9_true


;#######################################; -> false_Parse_9
false_Parse_9:
;;if: linia 300 (expresia pentru else)
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -
;; -> block: linia 301
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -
;; -> dispatch: linia 301
;;generez codul pentru apelul metodei abort
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- dispatch -- object -
;; -> object: linia 301
;; <- object: linia 301
  %VR72 = icmp eq %struct.Parse_protObj_t* %VR0,  null
  br i1 %VR72, label %false_dispatch13, label %dispatch_not_void_Parse_13
;#######################################; <- false_Parse_9


;#######################################; -> false_dispatch13
false_dispatch13:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__47 to i32))
  ret i32 0
;#######################################; <- false_dispatch13


;#######################################; -> dispatch_not_void_Parse_13
dispatch_not_void_Parse_13:
  %VR73 = ptrtoint %struct.Parse_protObj_t* %VR0 to i32 
  %VR74 = add i32 %VR73, 8
  %VR75 = inttoptr i32 %VR74 to i32*
  %VR76 = load i32* %VR75
  %VR77 = add i32 %VR76, 0
  %VR78 = inttoptr i32 %VR77 to i32*
  %VR79 = load i32* %VR78
  %VR80 = inttoptr i32 %VR79 to i32 (i32)*
  %VR81 = call i32 (i32)* %VR80(i32 %ARG)
;; <- dispatch: linia 301
;- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- cond -- block -- int_const -
;; -> int_const: linia 301
  %VR82 = add i32 0, 0
;; <- int_const: linia 301
;; <- block: linia 301
  br label %join_if_Parse_9_false
;#######################################; <- dispatch_not_void_Parse_13


;#######################################; -> join_if_Parse_9_false
join_if_Parse_9_false:
  %VR65.1 = add i32 %VR82, 0
  br label %join_if_Parse_9
;#######################################; <- join_if_Parse_9_false


;#######################################; -> join_if_Parse_9
join_if_Parse_9:
  %VR65 = phi i32 [ %VR65.0, %join_if_Parse_9_true ], [ %VR65.1, %join_if_Parse_9_false ]
;; <- cond: linia 300
  br label %join_if_Parse_8_false
;#######################################; <- join_if_Parse_9


;#######################################; -> join_if_Parse_8_false
join_if_Parse_8_false:
  %VR58.1 = add i32 %VR65, 0
  br label %join_if_Parse_8
;#######################################; <- join_if_Parse_8_false


;#######################################; -> join_if_Parse_8
join_if_Parse_8:
  %VR58 = phi i32 [ %VR58.0, %join_if_Parse_8_true ], [ %VR58.1, %join_if_Parse_8_false ]
;; <- cond: linia 299
  br label %join_if_Parse_7_false
;#######################################; <- join_if_Parse_8


;#######################################; -> join_if_Parse_7_false
join_if_Parse_7_false:
  %VR51.1 = add i32 %VR58, 0
  br label %join_if_Parse_7
;#######################################; <- join_if_Parse_7_false


;#######################################; -> join_if_Parse_7
join_if_Parse_7:
  %VR51 = phi i32 [ %VR51.0, %join_if_Parse_7_true ], [ %VR51.1, %join_if_Parse_7_false ]
;; <- cond: linia 298
  br label %join_if_Parse_6_false
;#######################################; <- join_if_Parse_7


;#######################################; -> join_if_Parse_6_false
join_if_Parse_6_false:
  %VR44.1 = add i32 %VR51, 0
  br label %join_if_Parse_6
;#######################################; <- join_if_Parse_6_false


;#######################################; -> join_if_Parse_6
join_if_Parse_6:
  %VR44 = phi i32 [ %VR44.0, %join_if_Parse_6_true ], [ %VR44.1, %join_if_Parse_6_false ]
;; <- cond: linia 297
  br label %join_if_Parse_5_false
;#######################################; <- join_if_Parse_6


;#######################################; -> join_if_Parse_5_false
join_if_Parse_5_false:
  %VR37.1 = add i32 %VR44, 0
  br label %join_if_Parse_5
;#######################################; <- join_if_Parse_5_false


;#######################################; -> join_if_Parse_5
join_if_Parse_5:
  %VR37 = phi i32 [ %VR37.0, %join_if_Parse_5_true ], [ %VR37.1, %join_if_Parse_5_false ]
;; <- cond: linia 296
  br label %join_if_Parse_4_false
;#######################################; <- join_if_Parse_5


;#######################################; -> join_if_Parse_4_false
join_if_Parse_4_false:
  %VR30.1 = add i32 %VR37, 0
  br label %join_if_Parse_4
;#######################################; <- join_if_Parse_4_false


;#######################################; -> join_if_Parse_4
join_if_Parse_4:
  %VR30 = phi i32 [ %VR30.0, %join_if_Parse_4_true ], [ %VR30.1, %join_if_Parse_4_false ]
;; <- cond: linia 295
  br label %join_if_Parse_3_false
;#######################################; <- join_if_Parse_4


;#######################################; -> join_if_Parse_3_false
join_if_Parse_3_false:
  %VR23.1 = add i32 %VR30, 0
  br label %join_if_Parse_3
;#######################################; <- join_if_Parse_3_false


;#######################################; -> join_if_Parse_3
join_if_Parse_3:
  %VR23 = phi i32 [ %VR23.0, %join_if_Parse_3_true ], [ %VR23.1, %join_if_Parse_3_false ]
;; <- cond: linia 294
  br label %join_if_Parse_2_false
;#######################################; <- join_if_Parse_3


;#######################################; -> join_if_Parse_2_false
join_if_Parse_2_false:
  %VR16.1 = add i32 %VR23, 0
  br label %join_if_Parse_2
;#######################################; <- join_if_Parse_2_false


;#######################################; -> join_if_Parse_2
join_if_Parse_2:
  %VR16 = phi i32 [ %VR16.0, %join_if_Parse_2_true ], [ %VR16.1, %join_if_Parse_2_false ]
;; <- cond: linia 293
  br label %join_if_Parse_1_false
;#######################################; <- join_if_Parse_2


;#######################################; -> join_if_Parse_1_false
join_if_Parse_1_false:
  %VR9.1 = add i32 %VR16, 0
  br label %join_if_Parse_1
;#######################################; <- join_if_Parse_1_false


;#######################################; -> join_if_Parse_1
join_if_Parse_1:
  %VR9 = phi i32 [ %VR9.0, %join_if_Parse_1_true ], [ %VR9.1, %join_if_Parse_1_false ]
;; <- cond: linia 292
  br label %join_if_Parse_0_false
;#######################################; <- join_if_Parse_1


;#######################################; -> join_if_Parse_0_false
join_if_Parse_0_false:
  %VR2.1 = add i32 %VR9, 0
  br label %join_if_Parse_0
;#######################################; <- join_if_Parse_0_false


;#######################################; -> join_if_Parse_0
join_if_Parse_0:
  %VR2 = phi i32 [ %VR2.0, %join_if_Parse_0_true ], [ %VR2.1, %join_if_Parse_0_false ]
;; <- cond: linia 291
  ret i32 %VR2
;#######################################; <- join_if_Parse_0


}
define i32 @Parse__a2i(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Parse_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- cond -
;; -> cond: linia 308
;;if: linia 308 (expresia pentru predicat)
;;%VR2 rezervat pentru rezultatul if-ului
;- cond -- eq -
;; -> eq: linia 308
;- cond -- eq -- dispatch -
;; -> dispatch: linia 308
;;generez codul pentru apelul metodei length
;- cond -- eq -- dispatch -- object -
;; -> object: linia 308
;; <- object: linia 308
  %VR3 = inttoptr i32 %VR1 to i32*
  %VR4 = icmp eq i32* %VR3,  null
  br i1 %VR4, label %false_dispatch14, label %dispatch_not_void_Parse_14
;#######################################; <- entry


;#######################################; -> false_dispatch14
false_dispatch14:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__48 to i32))
  ret i32 0
;#######################################; <- false_dispatch14


;#######################################; -> dispatch_not_void_Parse_14
dispatch_not_void_Parse_14:
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
;; <- dispatch: linia 308
;- cond -- eq -- int_const -
;; -> int_const: linia 308
  %VR17 = add i32 0, 0
;; <- int_const: linia 308
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
  br label %eq_test_join_true_Parse_13
;#######################################; <- dispatch_not_void_Parse_14


;#######################################; -> eq_test_join_true_Parse_13
eq_test_join_true_Parse_13:
  %VR24.0 = icmp eq i32 %VR18,  %VR21
  br i1 %VR24.0, label %eq_test_join_Parse_13, label %eq_test_join_false_Parse_13
;#######################################; <- eq_test_join_true_Parse_13


;#######################################; -> eq_test_join_false_Parse_13
eq_test_join_false_Parse_13:
  %VR26 = call i32  @equality_test(i32 1, i32 0, i32 %VR18, i32 %VR21)
  %VR24.1 = icmp eq i32 %VR26,  1
  br label %eq_test_join_Parse_13
;#######################################; <- eq_test_join_false_Parse_13


;#######################################; -> eq_test_join_Parse_13
eq_test_join_Parse_13:
  %VR24 = phi i1 [ %VR24.0, %eq_test_join_true_Parse_13 ] , [ %VR24.1, %eq_test_join_false_Parse_13 ] 
;; <- eq: linia 308
  %VR27 = icmp eq i1 %VR24,  false
  br i1 %VR27, label %false_Parse_10, label %false_false_Parse_10
;#######################################; <- eq_test_join_Parse_13


;#######################################; -> false_false_Parse_10
false_false_Parse_10:
;;if: linia 308 (expresia pentru then)
;- cond -- int_const -
;; -> int_const: linia 308
  %VR28 = add i32 0, 0
;; <- int_const: linia 308
  br label %join_if_Parse_10_true
;#######################################; <- false_false_Parse_10


;#######################################; -> join_if_Parse_10_true
join_if_Parse_10_true:
  %VR2.0 = add i32 %VR28, 0
  br label %join_if_Parse_10
;#######################################; <- join_if_Parse_10_true


;#######################################; -> false_Parse_10
false_Parse_10:
;;if: linia 308 (expresia pentru else)
;- cond -- cond -
;; -> cond: linia 309
;;if: linia 309 (expresia pentru predicat)
;;%VR29 rezervat pentru rezultatul if-ului
;- cond -- cond -- eq -
;; -> eq: linia 309
;- cond -- cond -- eq -- dispatch -
;; -> dispatch: linia 309
;;generez codul pentru apelul metodei substr
;- cond -- cond -- eq -- dispatch -- int_const -
;; -> int_const: linia 309
  %VR30 = add i32 0, 0
;; <- int_const: linia 309
;- cond -- cond -- eq -- dispatch -- int_const -
;; -> int_const: linia 309
  %VR31 = add i32 1, 0
;; <- int_const: linia 309
;- cond -- cond -- eq -- dispatch -- object -
;; -> object: linia 309
;; <- object: linia 309
  %VR32 = inttoptr i32 %VR1 to i32*
  %VR33 = icmp eq i32* %VR32,  null
  br i1 %VR33, label %false_dispatch15, label %dispatch_not_void_Parse_15
;#######################################; <- false_Parse_10


;#######################################; -> false_dispatch15
false_dispatch15:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__49 to i32))
  ret i32 0
;#######################################; <- false_dispatch15


;#######################################; -> dispatch_not_void_Parse_15
dispatch_not_void_Parse_15:
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
;; <- dispatch: linia 309
;- cond -- cond -- eq -- string_const -
;; -> string_const: linia 309
  %VR49 = ptrtoint %struct.String_protObj_t* @str_const__16 to i32 
;; <- string_const: linia 309
  br label %eq_test_join_true_Parse_14
;#######################################; <- dispatch_not_void_Parse_15


;#######################################; -> eq_test_join_true_Parse_14
eq_test_join_true_Parse_14:
  %VR50.0 = icmp eq i32 %VR48,  %VR49
  br i1 %VR50.0, label %eq_test_join_Parse_14, label %eq_test_join_false_Parse_14
;#######################################; <- eq_test_join_true_Parse_14


;#######################################; -> eq_test_join_false_Parse_14
eq_test_join_false_Parse_14:
  %VR52 = call i32  @equality_test(i32 1, i32 0, i32 %VR48, i32 %VR49)
  %VR50.1 = icmp eq i32 %VR52,  1
  br label %eq_test_join_Parse_14
;#######################################; <- eq_test_join_false_Parse_14


;#######################################; -> eq_test_join_Parse_14
eq_test_join_Parse_14:
  %VR50 = phi i1 [ %VR50.0, %eq_test_join_true_Parse_14 ] , [ %VR50.1, %eq_test_join_false_Parse_14 ] 
;; <- eq: linia 309
  %VR53 = icmp eq i1 %VR50,  false
  br i1 %VR53, label %false_Parse_11, label %false_false_Parse_11
;#######################################; <- eq_test_join_Parse_14


;#######################################; -> false_false_Parse_11
false_false_Parse_11:
;;if: linia 309 (expresia pentru then)
;- cond -- cond -- neg -
;; -> neg: linia 309
;- cond -- cond -- neg -- dispatch -
;; -> dispatch: linia 309
;;generez codul pentru apelul metodei a2i_aux
;- cond -- cond -- neg -- dispatch -- dispatch -
;; -> dispatch: linia 309
;;generez codul pentru apelul metodei substr
;- cond -- cond -- neg -- dispatch -- dispatch -- int_const -
;; -> int_const: linia 309
  %VR54 = add i32 1, 0
;; <- int_const: linia 309
;- cond -- cond -- neg -- dispatch -- dispatch -- sub -
;; -> sub: linia 309
;- cond -- cond -- neg -- dispatch -- dispatch -- sub -- dispatch -
;; -> dispatch: linia 309
;;generez codul pentru apelul metodei length
;- cond -- cond -- neg -- dispatch -- dispatch -- sub -- dispatch -- object -
;; -> object: linia 309
;; <- object: linia 309
  %VR55 = inttoptr i32 %VR1 to i32*
  %VR56 = icmp eq i32* %VR55,  null
  br i1 %VR56, label %false_dispatch16, label %dispatch_not_void_Parse_16
;#######################################; <- false_false_Parse_11


;#######################################; -> false_dispatch16
false_dispatch16:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__49 to i32))
  ret i32 0
;#######################################; <- false_dispatch16


;#######################################; -> dispatch_not_void_Parse_16
dispatch_not_void_Parse_16:
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
;; <- dispatch: linia 309
;- cond -- cond -- neg -- dispatch -- dispatch -- sub -- int_const -
;; -> int_const: linia 309
  %VR69 = add i32 1, 0
;; <- int_const: linia 309
  %VR70 = sub i32 %VR68, %VR69
;; <- sub: linia 309
;- cond -- cond -- neg -- dispatch -- dispatch -- object -
;; -> object: linia 309
;; <- object: linia 309
  %VR71 = inttoptr i32 %VR1 to i32*
  %VR72 = icmp eq i32* %VR71,  null
  br i1 %VR72, label %false_dispatch17, label %dispatch_not_void_Parse_17
;#######################################; <- dispatch_not_void_Parse_16


;#######################################; -> false_dispatch17
false_dispatch17:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__49 to i32))
  ret i32 0
;#######################################; <- false_dispatch17


;#######################################; -> dispatch_not_void_Parse_17
dispatch_not_void_Parse_17:
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
;; <- dispatch: linia 309
;- cond -- cond -- neg -- dispatch -- object -
;; -> object: linia 309
;; <- object: linia 309
  %VR88 = icmp eq %struct.Parse_protObj_t* %VR0,  null
  br i1 %VR88, label %false_dispatch18, label %dispatch_not_void_Parse_18
;#######################################; <- dispatch_not_void_Parse_17


;#######################################; -> false_dispatch18
false_dispatch18:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__49 to i32))
  ret i32 0
;#######################################; <- false_dispatch18


;#######################################; -> dispatch_not_void_Parse_18
dispatch_not_void_Parse_18:
  %VR89 = ptrtoint %struct.Parse_protObj_t* %VR0 to i32 
  %VR90 = add i32 %VR89, 8
  %VR91 = inttoptr i32 %VR90 to i32*
  %VR92 = load i32* %VR91
  %VR93 = add i32 %VR92, 44
  %VR94 = inttoptr i32 %VR93 to i32*
  %VR95 = load i32* %VR94
  %VR96 = inttoptr i32 %VR95 to i32 (i32, i32)*
  %VR97 = call i32 (i32, i32)* %VR96(i32 %ARG, i32 %VR87)
;; <- dispatch: linia 309
  %VR98 = xor i32 1, %VR97
;; <- neg: linia 309
  br label %join_if_Parse_11_true
;#######################################; <- dispatch_not_void_Parse_18


;#######################################; -> join_if_Parse_11_true
join_if_Parse_11_true:
  %VR29.0 = add i32 %VR98, 0
  br label %join_if_Parse_11
;#######################################; <- join_if_Parse_11_true


;#######################################; -> false_Parse_11
false_Parse_11:
;;if: linia 309 (expresia pentru else)
;- cond -- cond -- cond -
;; -> cond: linia 310
;;if: linia 310 (expresia pentru predicat)
;;%VR99 rezervat pentru rezultatul if-ului
;- cond -- cond -- cond -- eq -
;; -> eq: linia 310
;- cond -- cond -- cond -- eq -- dispatch -
;; -> dispatch: linia 310
;;generez codul pentru apelul metodei substr
;- cond -- cond -- cond -- eq -- dispatch -- int_const -
;; -> int_const: linia 310
  %VR100 = add i32 0, 0
;; <- int_const: linia 310
;- cond -- cond -- cond -- eq -- dispatch -- int_const -
;; -> int_const: linia 310
  %VR101 = add i32 1, 0
;; <- int_const: linia 310
;- cond -- cond -- cond -- eq -- dispatch -- object -
;; -> object: linia 310
;; <- object: linia 310
  %VR102 = inttoptr i32 %VR1 to i32*
  %VR103 = icmp eq i32* %VR102,  null
  br i1 %VR103, label %false_dispatch19, label %dispatch_not_void_Parse_19
;#######################################; <- false_Parse_11


;#######################################; -> false_dispatch19
false_dispatch19:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__50 to i32))
  ret i32 0
;#######################################; <- false_dispatch19


;#######################################; -> dispatch_not_void_Parse_19
dispatch_not_void_Parse_19:
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
;; <- dispatch: linia 310
;- cond -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 310
  %VR119 = ptrtoint %struct.String_protObj_t* @str_const__17 to i32 
;; <- string_const: linia 310
  br label %eq_test_join_true_Parse_15
;#######################################; <- dispatch_not_void_Parse_19


;#######################################; -> eq_test_join_true_Parse_15
eq_test_join_true_Parse_15:
  %VR120.0 = icmp eq i32 %VR118,  %VR119
  br i1 %VR120.0, label %eq_test_join_Parse_15, label %eq_test_join_false_Parse_15
;#######################################; <- eq_test_join_true_Parse_15


;#######################################; -> eq_test_join_false_Parse_15
eq_test_join_false_Parse_15:
  %VR122 = call i32  @equality_test(i32 1, i32 0, i32 %VR118, i32 %VR119)
  %VR120.1 = icmp eq i32 %VR122,  1
  br label %eq_test_join_Parse_15
;#######################################; <- eq_test_join_false_Parse_15


;#######################################; -> eq_test_join_Parse_15
eq_test_join_Parse_15:
  %VR120 = phi i1 [ %VR120.0, %eq_test_join_true_Parse_15 ] , [ %VR120.1, %eq_test_join_false_Parse_15 ] 
;; <- eq: linia 310
  %VR123 = icmp eq i1 %VR120,  false
  br i1 %VR123, label %false_Parse_12, label %false_false_Parse_12
;#######################################; <- eq_test_join_Parse_15


;#######################################; -> false_false_Parse_12
false_false_Parse_12:
;;if: linia 310 (expresia pentru then)
;- cond -- cond -- cond -- dispatch -
;; -> dispatch: linia 310
;;generez codul pentru apelul metodei a2i
;- cond -- cond -- cond -- dispatch -- dispatch -
;; -> dispatch: linia 310
;;generez codul pentru apelul metodei substr
;- cond -- cond -- cond -- dispatch -- dispatch -- int_const -
;; -> int_const: linia 310
  %VR124 = add i32 1, 0
;; <- int_const: linia 310
;- cond -- cond -- cond -- dispatch -- dispatch -- sub -
;; -> sub: linia 310
;- cond -- cond -- cond -- dispatch -- dispatch -- sub -- dispatch -
;; -> dispatch: linia 310
;;generez codul pentru apelul metodei length
;- cond -- cond -- cond -- dispatch -- dispatch -- sub -- dispatch -- object -
;; -> object: linia 310
;; <- object: linia 310
  %VR125 = inttoptr i32 %VR1 to i32*
  %VR126 = icmp eq i32* %VR125,  null
  br i1 %VR126, label %false_dispatch20, label %dispatch_not_void_Parse_20
;#######################################; <- false_false_Parse_12


;#######################################; -> false_dispatch20
false_dispatch20:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__50 to i32))
  ret i32 0
;#######################################; <- false_dispatch20


;#######################################; -> dispatch_not_void_Parse_20
dispatch_not_void_Parse_20:
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
;; <- dispatch: linia 310
;- cond -- cond -- cond -- dispatch -- dispatch -- sub -- int_const -
;; -> int_const: linia 310
  %VR139 = add i32 1, 0
;; <- int_const: linia 310
  %VR140 = sub i32 %VR138, %VR139
;; <- sub: linia 310
;- cond -- cond -- cond -- dispatch -- dispatch -- object -
;; -> object: linia 310
;; <- object: linia 310
  %VR141 = inttoptr i32 %VR1 to i32*
  %VR142 = icmp eq i32* %VR141,  null
  br i1 %VR142, label %false_dispatch21, label %dispatch_not_void_Parse_21
;#######################################; <- dispatch_not_void_Parse_20


;#######################################; -> false_dispatch21
false_dispatch21:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__50 to i32))
  ret i32 0
;#######################################; <- false_dispatch21


;#######################################; -> dispatch_not_void_Parse_21
dispatch_not_void_Parse_21:
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
;; <- dispatch: linia 310
;- cond -- cond -- cond -- dispatch -- object -
;; -> object: linia 310
;; <- object: linia 310
  %VR158 = icmp eq %struct.Parse_protObj_t* %VR0,  null
  br i1 %VR158, label %false_dispatch22, label %dispatch_not_void_Parse_22
;#######################################; <- dispatch_not_void_Parse_21


;#######################################; -> false_dispatch22
false_dispatch22:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__50 to i32))
  ret i32 0
;#######################################; <- false_dispatch22


;#######################################; -> dispatch_not_void_Parse_22
dispatch_not_void_Parse_22:
  %VR159 = ptrtoint %struct.Parse_protObj_t* %VR0 to i32 
  %VR160 = add i32 %VR159, 8
  %VR161 = inttoptr i32 %VR160 to i32*
  %VR162 = load i32* %VR161
  %VR163 = add i32 %VR162, 40
  %VR164 = inttoptr i32 %VR163 to i32*
  %VR165 = load i32* %VR164
  %VR166 = inttoptr i32 %VR165 to i32 (i32, i32)*
  %VR167 = call i32 (i32, i32)* %VR166(i32 %ARG, i32 %VR157)
;; <- dispatch: linia 310
  br label %join_if_Parse_12_true
;#######################################; <- dispatch_not_void_Parse_22


;#######################################; -> join_if_Parse_12_true
join_if_Parse_12_true:
  %VR99.0 = add i32 %VR167, 0
  br label %join_if_Parse_12
;#######################################; <- join_if_Parse_12_true


;#######################################; -> false_Parse_12
false_Parse_12:
;;if: linia 310 (expresia pentru else)
;- cond -- cond -- cond -- dispatch -
;; -> dispatch: linia 311
;;generez codul pentru apelul metodei a2i_aux
;- cond -- cond -- cond -- dispatch -- object -
;; -> object: linia 311
;; <- object: linia 311
;- cond -- cond -- cond -- dispatch -- object -
;; -> object: linia 311
;; <- object: linia 311
  %VR168 = icmp eq %struct.Parse_protObj_t* %VR0,  null
  br i1 %VR168, label %false_dispatch23, label %dispatch_not_void_Parse_23
;#######################################; <- false_Parse_12


;#######################################; -> false_dispatch23
false_dispatch23:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__51 to i32))
  ret i32 0
;#######################################; <- false_dispatch23


;#######################################; -> dispatch_not_void_Parse_23
dispatch_not_void_Parse_23:
  %VR169 = ptrtoint %struct.Parse_protObj_t* %VR0 to i32 
  %VR170 = add i32 %VR169, 8
  %VR171 = inttoptr i32 %VR170 to i32*
  %VR172 = load i32* %VR171
  %VR173 = add i32 %VR172, 44
  %VR174 = inttoptr i32 %VR173 to i32*
  %VR175 = load i32* %VR174
  %VR176 = inttoptr i32 %VR175 to i32 (i32, i32)*
  %VR177 = call i32 (i32, i32)* %VR176(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 311
  br label %join_if_Parse_12_false
;#######################################; <- dispatch_not_void_Parse_23


;#######################################; -> join_if_Parse_12_false
join_if_Parse_12_false:
  %VR99.1 = add i32 %VR177, 0
  br label %join_if_Parse_12
;#######################################; <- join_if_Parse_12_false


;#######################################; -> join_if_Parse_12
join_if_Parse_12:
  %VR99 = phi i32 [ %VR99.0, %join_if_Parse_12_true ], [ %VR99.1, %join_if_Parse_12_false ]
;; <- cond: linia 310
  br label %join_if_Parse_11_false
;#######################################; <- join_if_Parse_12


;#######################################; -> join_if_Parse_11_false
join_if_Parse_11_false:
  %VR29.1 = add i32 %VR99, 0
  br label %join_if_Parse_11
;#######################################; <- join_if_Parse_11_false


;#######################################; -> join_if_Parse_11
join_if_Parse_11:
  %VR29 = phi i32 [ %VR29.0, %join_if_Parse_11_true ], [ %VR29.1, %join_if_Parse_11_false ]
;; <- cond: linia 309
  br label %join_if_Parse_10_false
;#######################################; <- join_if_Parse_11


;#######################################; -> join_if_Parse_10_false
join_if_Parse_10_false:
  %VR2.1 = add i32 %VR29, 0
  br label %join_if_Parse_10
;#######################################; <- join_if_Parse_10_false


;#######################################; -> join_if_Parse_10
join_if_Parse_10:
  %VR2 = phi i32 [ %VR2.0, %join_if_Parse_10_true ], [ %VR2.1, %join_if_Parse_10_false ]
;; <- cond: linia 308
  ret i32 %VR2
;#######################################; <- join_if_Parse_10


}
define i32 @Parse__a2i_aux(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR17a = alloca i32 
  store i32 0, i32* %VR17a
  %VR2a = alloca i32 
  store i32 0, i32* %VR2a
  %VR0 = inttoptr i32 %ARG to %struct.Parse_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- let -
;; -> let: linia 322
;- let -- int_const -
;; -> int_const: linia 322
  %VR2.a = add i32 0, 0
  store i32 %VR2.a, i32* %VR2a
;; <- int_const: linia 322
;- let -- block -
;; -> block: linia 323
;- let -- block -- let -
;; -> let: linia 324
;- let -- block -- let -- dispatch -
;; -> dispatch: linia 324
;;generez codul pentru apelul metodei length
;- let -- block -- let -- dispatch -- object -
;; -> object: linia 324
;; <- object: linia 324
  %VR3 = inttoptr i32 %VR1 to i32*
  %VR4 = icmp eq i32* %VR3,  null
  br i1 %VR4, label %false_dispatch24, label %dispatch_not_void_Parse_24
;#######################################; <- entry


;#######################################; -> false_dispatch24
false_dispatch24:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__52 to i32))
  ret i32 0
;#######################################; <- false_dispatch24


;#######################################; -> dispatch_not_void_Parse_24
dispatch_not_void_Parse_24:
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
;; <- dispatch: linia 324
;- let -- block -- let -- let -
;; -> let: linia 325
;- let -- block -- let -- let -- int_const -
;; -> int_const: linia 325
  %VR17.a = add i32 0, 0
  store i32 %VR17.a, i32* %VR17a
;; <- int_const: linia 325
;- let -- block -- let -- let -- loop -
;; -> loop: linia 326
;; conditie
  br label %start_loop_Parse_2
;#######################################; <- dispatch_not_void_Parse_24


;#######################################; -> start_loop_Parse_2
start_loop_Parse_2:
  %VR17_tmp2 = load i32* %VR17a
;- let -- block -- let -- let -- loop -- lt -
;; -> lt: linia 326
;- let -- block -- let -- let -- loop -- lt -- object -
;; -> object: linia 326
;; <- object: linia 326
;- let -- block -- let -- let -- loop -- lt -- object -
;; -> object: linia 326
;; <- object: linia 326
  %VR18 = icmp slt i32 %VR17_tmp2,  %VR16
;; <- lt: linia 326
  %VR19 = icmp eq i1 %VR18,  false
  br i1 %VR19, label %sfarsit_loop_Parse_2, label %label_next_loop_Parse_2
;#######################################; <- start_loop_Parse_2


;#######################################; -> label_next_loop_Parse_2
label_next_loop_Parse_2:
;; corp loop
;- let -- block -- let -- let -- loop -- let -
;; -> let: linia 327
;- let -- block -- let -- let -- loop -- let -- dispatch -
;; -> dispatch: linia 327
;;generez codul pentru apelul metodei substr
;- let -- block -- let -- let -- loop -- let -- dispatch -- object -
;; -> object: linia 327
;; <- object: linia 327
;- let -- block -- let -- let -- loop -- let -- dispatch -- int_const -
;; -> int_const: linia 327
  %VR20 = add i32 1, 0
;; <- int_const: linia 327
;- let -- block -- let -- let -- loop -- let -- dispatch -- object -
;; -> object: linia 327
;; <- object: linia 327
  %VR21 = inttoptr i32 %VR1 to i32*
  %VR22 = icmp eq i32* %VR21,  null
  br i1 %VR22, label %false_dispatch25, label %dispatch_not_void_Parse_25
;#######################################; <- label_next_loop_Parse_2


;#######################################; -> false_dispatch25
false_dispatch25:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__53 to i32))
  ret i32 0
;#######################################; <- false_dispatch25


;#######################################; -> dispatch_not_void_Parse_25
dispatch_not_void_Parse_25:
  %VR17_tmp3 = load i32* %VR17a
  %VR23 = ptrtoint i32* %VR21 to i32 
  %VR24 = add i32 %VR23, 8
  %VR25 = inttoptr i32 %VR24 to i32*
  %VR26 = load i32* %VR25
  %VR27 = add i32 %VR26, 20
  %VR28 = inttoptr i32 %VR27 to i32*
  %VR29 = load i32* %VR28
;boxing to int
  %VR30 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR31 = add i32 %VR30, 12
  %VR32 = inttoptr i32 %VR31 to i32*
  store i32 %VR17_tmp3, i32* %VR32
;boxing to int
  %VR33 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR34 = add i32 %VR33, 12
  %VR35 = inttoptr i32 %VR34 to i32*
  store i32 %VR20, i32* %VR35
  %VR36 = inttoptr i32 %VR29 to i32 (i32, i32, i32)*
  %VR37 = call i32 (i32, i32, i32)* %VR36(i32 %VR1, i32 %VR30, i32 %VR33)
;; <- dispatch: linia 327
;- let -- block -- let -- let -- loop -- let -- cond -
;; -> cond: linia 328
;;if: linia 328 (expresia pentru predicat)
;;%VR38 rezervat pentru rezultatul if-ului
;- let -- block -- let -- let -- loop -- let -- cond -- eq -
;; -> eq: linia 328
;- let -- block -- let -- let -- loop -- let -- cond -- eq -- object -
;; -> object: linia 328
;; <- object: linia 328
;- let -- block -- let -- let -- loop -- let -- cond -- eq -- string_const -
;; -> string_const: linia 328
  %VR39 = ptrtoint %struct.String_protObj_t* @str_const__17 to i32 
;; <- string_const: linia 328
  br label %eq_test_join_true_Parse_16
;#######################################; <- dispatch_not_void_Parse_25


;#######################################; -> eq_test_join_true_Parse_16
eq_test_join_true_Parse_16:
  %VR40.0 = icmp eq i32 %VR37,  %VR39
  br i1 %VR40.0, label %eq_test_join_Parse_16, label %eq_test_join_false_Parse_16
;#######################################; <- eq_test_join_true_Parse_16


;#######################################; -> eq_test_join_false_Parse_16
eq_test_join_false_Parse_16:
  %VR42 = call i32  @equality_test(i32 1, i32 0, i32 %VR37, i32 %VR39)
  %VR40.1 = icmp eq i32 %VR42,  1
  br label %eq_test_join_Parse_16
;#######################################; <- eq_test_join_false_Parse_16


;#######################################; -> eq_test_join_Parse_16
eq_test_join_Parse_16:
  %VR40 = phi i1  [ %VR40.0 , %eq_test_join_true_Parse_16 ] , [ %VR40.1 , %eq_test_join_false_Parse_16 ] 
;; <- eq: linia 328
  %VR43 = icmp eq i1 %VR40,  false
  br i1 %VR43, label %false_Parse_13, label %false_false_Parse_13
;#######################################; <- eq_test_join_Parse_16


;#######################################; -> false_false_Parse_13
false_false_Parse_13:
  %VR17_tmp4 = load i32* %VR17a
;;if: linia 328 (expresia pentru then)
;- let -- block -- let -- let -- loop -- let -- cond -- block -
;; -> block: linia 329
;- let -- block -- let -- let -- loop -- let -- cond -- block -- assign -
;; -> assign: linia 330
;- let -- block -- let -- let -- loop -- let -- cond -- block -- assign -- dispatch -
;; -> dispatch: linia 330
;;generez codul pentru apelul metodei substr
;- let -- block -- let -- let -- loop -- let -- cond -- block -- assign -- dispatch -- plus -
;; -> plus: linia 330
;- let -- block -- let -- let -- loop -- let -- cond -- block -- assign -- dispatch -- plus -- object -
;; -> object: linia 330
;; <- object: linia 330
;- let -- block -- let -- let -- loop -- let -- cond -- block -- assign -- dispatch -- plus -- int_const -
;; -> int_const: linia 330
  %VR44 = add i32 1, 0
;; <- int_const: linia 330
  %VR45 = add i32 %VR17_tmp4, %VR44
;; <- plus: linia 330
;- let -- block -- let -- let -- loop -- let -- cond -- block -- assign -- dispatch -- sub -
;; -> sub: linia 330
;- let -- block -- let -- let -- loop -- let -- cond -- block -- assign -- dispatch -- sub -- sub -
;; -> sub: linia 330
;- let -- block -- let -- let -- loop -- let -- cond -- block -- assign -- dispatch -- sub -- sub -- dispatch -
;; -> dispatch: linia 330
;;generez codul pentru apelul metodei length
;- let -- block -- let -- let -- loop -- let -- cond -- block -- assign -- dispatch -- sub -- sub -- dispatch -- object -
;; -> object: linia 330
;; <- object: linia 330
  %VR46 = inttoptr i32 %VR1 to i32*
  %VR47 = icmp eq i32* %VR46,  null
  br i1 %VR47, label %false_dispatch26, label %dispatch_not_void_Parse_26
;#######################################; <- false_false_Parse_13


;#######################################; -> false_dispatch26
false_dispatch26:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__54 to i32))
  ret i32 0
;#######################################; <- false_dispatch26


;#######################################; -> dispatch_not_void_Parse_26
dispatch_not_void_Parse_26:
  %VR17_tmp5 = load i32* %VR17a
  %VR48 = ptrtoint i32* %VR46 to i32 
  %VR49 = add i32 %VR48, 8
  %VR50 = inttoptr i32 %VR49 to i32*
  %VR51 = load i32* %VR50
  %VR52 = add i32 %VR51, 16
  %VR53 = inttoptr i32 %VR52 to i32*
  %VR54 = load i32* %VR53
  %VR55 = inttoptr i32 %VR54 to i32 (i32)*
  %VR56 = call i32 (i32)* %VR55(i32 %VR1)
  %VR57 = add i32 %VR56, 12
  %VR58 = inttoptr i32 %VR57 to i32*
  %VR59 = load i32* %VR58
;; <- dispatch: linia 330
;- let -- block -- let -- let -- loop -- let -- cond -- block -- assign -- dispatch -- sub -- sub -- object -
;; -> object: linia 330
;; <- object: linia 330
  %VR60 = sub i32 %VR59, %VR17_tmp5
;; <- sub: linia 330
;- let -- block -- let -- let -- loop -- let -- cond -- block -- assign -- dispatch -- sub -- int_const -
;; -> int_const: linia 330
  %VR61 = add i32 1, 0
;; <- int_const: linia 330
  %VR62 = sub i32 %VR60, %VR61
;; <- sub: linia 330
;- let -- block -- let -- let -- loop -- let -- cond -- block -- assign -- dispatch -- object -
;; -> object: linia 330
;; <- object: linia 330
  %VR63 = inttoptr i32 %VR1 to i32*
  %VR64 = icmp eq i32* %VR63,  null
  br i1 %VR64, label %false_dispatch27, label %dispatch_not_void_Parse_27
;#######################################; <- dispatch_not_void_Parse_26


;#######################################; -> false_dispatch27
false_dispatch27:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__54 to i32))
  ret i32 0
;#######################################; <- false_dispatch27


;#######################################; -> dispatch_not_void_Parse_27
dispatch_not_void_Parse_27:
  %VR65 = ptrtoint i32* %VR63 to i32 
  %VR66 = add i32 %VR65, 8
  %VR67 = inttoptr i32 %VR66 to i32*
  %VR68 = load i32* %VR67
  %VR69 = add i32 %VR68, 20
  %VR70 = inttoptr i32 %VR69 to i32*
  %VR71 = load i32* %VR70
;boxing to int
  %VR72 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR73 = add i32 %VR72, 12
  %VR74 = inttoptr i32 %VR73 to i32*
  store i32 %VR45, i32* %VR74
;boxing to int
  %VR75 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR76 = add i32 %VR75, 12
  %VR77 = inttoptr i32 %VR76 to i32*
  store i32 %VR62, i32* %VR77
  %VR78 = inttoptr i32 %VR71 to i32 (i32, i32, i32)*
  %VR79 = call i32 (i32, i32, i32)* %VR78(i32 %VR1, i32 %VR72, i32 %VR75)
;; <- dispatch: linia 330
  %VR80 = add i32 %ARG, 16
  %VR81 = inttoptr i32 %VR80 to i32*
  store i32 %VR79, i32* %VR81
;; <- assign: linia 330
;- let -- block -- let -- let -- loop -- let -- cond -- block -- assign -
;; -> assign: linia 331
;- let -- block -- let -- let -- loop -- let -- cond -- block -- assign -- object -
;; -> object: linia 331
;; <- object: linia 331
  store i32 %VR16, i32* %VR17a
;; <- assign: linia 331
;; <- block: linia 329
  br label %join_if_Parse_13_true
;#######################################; <- dispatch_not_void_Parse_27


;#######################################; -> join_if_Parse_13_true
join_if_Parse_13_true:
  %VR38.0 = add i32 %VR16, 0
  br label %join_if_Parse_13
;#######################################; <- join_if_Parse_13_true


;#######################################; -> false_Parse_13
false_Parse_13:
;;if: linia 328 (expresia pentru else)
;- let -- block -- let -- let -- loop -- let -- cond -- cond -
;; -> cond: linia 333
;;if: linia 333 (expresia pentru predicat)
;;%VR82 rezervat pentru rezultatul if-ului
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- eq -
;; -> eq: linia 333
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- eq -- object -
;; -> object: linia 333
;; <- object: linia 333
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- eq -- string_const -
;; -> string_const: linia 333
  %VR83 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 333
  br label %eq_test_join_true_Parse_17
;#######################################; <- false_Parse_13


;#######################################; -> eq_test_join_true_Parse_17
eq_test_join_true_Parse_17:
  %VR84.0 = icmp eq i32 %VR37,  %VR83
  br i1 %VR84.0, label %eq_test_join_Parse_17, label %eq_test_join_false_Parse_17
;#######################################; <- eq_test_join_true_Parse_17


;#######################################; -> eq_test_join_false_Parse_17
eq_test_join_false_Parse_17:
  %VR86 = call i32  @equality_test(i32 1, i32 0, i32 %VR37, i32 %VR83)
  %VR84.1 = icmp eq i32 %VR86,  1
  br label %eq_test_join_Parse_17
;#######################################; <- eq_test_join_false_Parse_17


;#######################################; -> eq_test_join_Parse_17
eq_test_join_Parse_17:
  %VR84 = phi i1  [ %VR84.0 , %eq_test_join_true_Parse_17 ] , [ %VR84.1 , %eq_test_join_false_Parse_17 ] 
;; <- eq: linia 333
  %VR87 = icmp eq i1 %VR84,  false
  br i1 %VR87, label %false_Parse_14, label %false_false_Parse_14
;#######################################; <- eq_test_join_Parse_17


;#######################################; -> false_false_Parse_14
false_false_Parse_14:
  %VR17_tmp6 = load i32* %VR17a
;;if: linia 333 (expresia pentru then)
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -
;; -> block: linia 334
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -
;; -> assign: linia 335
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- dispatch -
;; -> dispatch: linia 335
;;generez codul pentru apelul metodei substr
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- dispatch -- plus -
;; -> plus: linia 335
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- dispatch -- plus -- object -
;; -> object: linia 335
;; <- object: linia 335
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- dispatch -- plus -- int_const -
;; -> int_const: linia 335
  %VR88 = add i32 1, 0
;; <- int_const: linia 335
  %VR89 = add i32 %VR17_tmp6, %VR88
;; <- plus: linia 335
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- dispatch -- sub -
;; -> sub: linia 335
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- dispatch -- sub -- sub -
;; -> sub: linia 335
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- dispatch -- sub -- sub -- dispatch -
;; -> dispatch: linia 335
;;generez codul pentru apelul metodei length
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- dispatch -- sub -- sub -- dispatch -- object -
;; -> object: linia 335
;; <- object: linia 335
  %VR90 = inttoptr i32 %VR1 to i32*
  %VR91 = icmp eq i32* %VR90,  null
  br i1 %VR91, label %false_dispatch28, label %dispatch_not_void_Parse_28
;#######################################; <- false_false_Parse_14


;#######################################; -> false_dispatch28
false_dispatch28:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__55 to i32))
  ret i32 0
;#######################################; <- false_dispatch28


;#######################################; -> dispatch_not_void_Parse_28
dispatch_not_void_Parse_28:
  %VR17_tmp7 = load i32* %VR17a
  %VR92 = ptrtoint i32* %VR90 to i32 
  %VR93 = add i32 %VR92, 8
  %VR94 = inttoptr i32 %VR93 to i32*
  %VR95 = load i32* %VR94
  %VR96 = add i32 %VR95, 16
  %VR97 = inttoptr i32 %VR96 to i32*
  %VR98 = load i32* %VR97
  %VR99 = inttoptr i32 %VR98 to i32 (i32)*
  %VR100 = call i32 (i32)* %VR99(i32 %VR1)
  %VR101 = add i32 %VR100, 12
  %VR102 = inttoptr i32 %VR101 to i32*
  %VR103 = load i32* %VR102
;; <- dispatch: linia 335
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- dispatch -- sub -- sub -- object -
;; -> object: linia 335
;; <- object: linia 335
  %VR104 = sub i32 %VR103, %VR17_tmp7
;; <- sub: linia 335
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- dispatch -- sub -- int_const -
;; -> int_const: linia 335
  %VR105 = add i32 1, 0
;; <- int_const: linia 335
  %VR106 = sub i32 %VR104, %VR105
;; <- sub: linia 335
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- dispatch -- object -
;; -> object: linia 335
;; <- object: linia 335
  %VR107 = inttoptr i32 %VR1 to i32*
  %VR108 = icmp eq i32* %VR107,  null
  br i1 %VR108, label %false_dispatch29, label %dispatch_not_void_Parse_29
;#######################################; <- dispatch_not_void_Parse_28


;#######################################; -> false_dispatch29
false_dispatch29:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__55 to i32))
  ret i32 0
;#######################################; <- false_dispatch29


;#######################################; -> dispatch_not_void_Parse_29
dispatch_not_void_Parse_29:
  %VR109 = ptrtoint i32* %VR107 to i32 
  %VR110 = add i32 %VR109, 8
  %VR111 = inttoptr i32 %VR110 to i32*
  %VR112 = load i32* %VR111
  %VR113 = add i32 %VR112, 20
  %VR114 = inttoptr i32 %VR113 to i32*
  %VR115 = load i32* %VR114
;boxing to int
  %VR116 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR117 = add i32 %VR116, 12
  %VR118 = inttoptr i32 %VR117 to i32*
  store i32 %VR89, i32* %VR118
;boxing to int
  %VR119 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR120 = add i32 %VR119, 12
  %VR121 = inttoptr i32 %VR120 to i32*
  store i32 %VR106, i32* %VR121
  %VR122 = inttoptr i32 %VR115 to i32 (i32, i32, i32)*
  %VR123 = call i32 (i32, i32, i32)* %VR122(i32 %VR1, i32 %VR116, i32 %VR119)
;; <- dispatch: linia 335
  %VR124 = add i32 %ARG, 16
  %VR125 = inttoptr i32 %VR124 to i32*
  store i32 %VR123, i32* %VR125
;; <- assign: linia 335
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -
;; -> assign: linia 336
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- object -
;; -> object: linia 336
;; <- object: linia 336
  store i32 %VR16, i32* %VR17a
;; <- assign: linia 336
;; <- block: linia 334
  br label %join_if_Parse_14_true
;#######################################; <- dispatch_not_void_Parse_29


;#######################################; -> join_if_Parse_14_true
join_if_Parse_14_true:
  %VR82.0 = add i32 %VR16, 0
  br label %join_if_Parse_14
;#######################################; <- join_if_Parse_14_true


;#######################################; -> false_Parse_14
false_Parse_14:
  %VR2_tmp0 = load i32* %VR2a
;;if: linia 333 (expresia pentru else)
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -
;; -> block: linia 339
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -
;; -> assign: linia 340
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- plus -
;; -> plus: linia 340
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- plus -- mul -
;; -> mul: linia 340
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- plus -- mul -- object -
;; -> object: linia 340
;; <- object: linia 340
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- plus -- mul -- int_const -
;; -> int_const: linia 340
  %VR126 = add i32 10, 0
;; <- int_const: linia 340
  %VR127 = mul i32 %VR2_tmp0, %VR126
;; <- mul: linia 340
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- plus -- dispatch -
;; -> dispatch: linia 340
;;generez codul pentru apelul metodei c2i
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- plus -- dispatch -- dispatch -
;; -> dispatch: linia 340
;;generez codul pentru apelul metodei substr
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- plus -- dispatch -- dispatch -- object -
;; -> object: linia 340
;; <- object: linia 340
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- plus -- dispatch -- dispatch -- int_const -
;; -> int_const: linia 340
  %VR128 = add i32 1, 0
;; <- int_const: linia 340
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- plus -- dispatch -- dispatch -- object -
;; -> object: linia 340
;; <- object: linia 340
  %VR129 = inttoptr i32 %VR1 to i32*
  %VR130 = icmp eq i32* %VR129,  null
  br i1 %VR130, label %false_dispatch30, label %dispatch_not_void_Parse_30
;#######################################; <- false_Parse_14


;#######################################; -> false_dispatch30
false_dispatch30:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__56 to i32))
  ret i32 0
;#######################################; <- false_dispatch30


;#######################################; -> dispatch_not_void_Parse_30
dispatch_not_void_Parse_30:
  %VR17_tmp8 = load i32* %VR17a
  %VR131 = ptrtoint i32* %VR129 to i32 
  %VR132 = add i32 %VR131, 8
  %VR133 = inttoptr i32 %VR132 to i32*
  %VR134 = load i32* %VR133
  %VR135 = add i32 %VR134, 20
  %VR136 = inttoptr i32 %VR135 to i32*
  %VR137 = load i32* %VR136
;boxing to int
  %VR138 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR139 = add i32 %VR138, 12
  %VR140 = inttoptr i32 %VR139 to i32*
  store i32 %VR17_tmp8, i32* %VR140
;boxing to int
  %VR141 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR142 = add i32 %VR141, 12
  %VR143 = inttoptr i32 %VR142 to i32*
  store i32 %VR128, i32* %VR143
  %VR144 = inttoptr i32 %VR137 to i32 (i32, i32, i32)*
  %VR145 = call i32 (i32, i32, i32)* %VR144(i32 %VR1, i32 %VR138, i32 %VR141)
;; <- dispatch: linia 340
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- plus -- dispatch -- object -
;; -> object: linia 340
;; <- object: linia 340
  %VR146 = icmp eq %struct.Parse_protObj_t* %VR0,  null
  br i1 %VR146, label %false_dispatch31, label %dispatch_not_void_Parse_31
;#######################################; <- dispatch_not_void_Parse_30


;#######################################; -> false_dispatch31
false_dispatch31:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__56 to i32))
  ret i32 0
;#######################################; <- false_dispatch31


;#######################################; -> dispatch_not_void_Parse_31
dispatch_not_void_Parse_31:
  %VR17_tmp9 = load i32* %VR17a
  %VR147 = ptrtoint %struct.Parse_protObj_t* %VR0 to i32 
  %VR148 = add i32 %VR147, 8
  %VR149 = inttoptr i32 %VR148 to i32*
  %VR150 = load i32* %VR149
  %VR151 = add i32 %VR150, 36
  %VR152 = inttoptr i32 %VR151 to i32*
  %VR153 = load i32* %VR152
  %VR154 = inttoptr i32 %VR153 to i32 (i32, i32)*
  %VR155 = call i32 (i32, i32)* %VR154(i32 %ARG, i32 %VR145)
;; <- dispatch: linia 340
  %VR156 = add i32 %VR127, %VR155
;; <- plus: linia 340
  store i32 %VR156, i32* %VR2a
;; <- assign: linia 340
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -
;; -> assign: linia 341
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- plus -
;; -> plus: linia 341
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- plus -- object -
;; -> object: linia 341
;; <- object: linia 341
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- assign -- plus -- int_const -
;; -> int_const: linia 341
  %VR157 = add i32 1, 0
;; <- int_const: linia 341
  %VR158 = add i32 %VR17_tmp9, %VR157
;; <- plus: linia 341
  store i32 %VR158, i32* %VR17a
;; <- assign: linia 341
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- cond -
;; -> cond: linia 342
;;if: linia 342 (expresia pentru predicat)
;;%VR159 rezervat pentru rezultatul if-ului
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- cond -- eq -
;; -> eq: linia 342
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- cond -- eq -- object -
;; -> object: linia 342
;; <- object: linia 342
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- cond -- eq -- object -
;; -> object: linia 342
;; <- object: linia 342
;boxing to int
  %VR160 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR161 = add i32 %VR160, 12
  %VR162 = inttoptr i32 %VR161 to i32*
  store i32 %VR158, i32* %VR162
;boxing to int
  %VR163 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR164 = add i32 %VR163, 12
  %VR165 = inttoptr i32 %VR164 to i32*
  store i32 %VR16, i32* %VR165
  br label %eq_test_join_true_Parse_18
;#######################################; <- dispatch_not_void_Parse_31


;#######################################; -> eq_test_join_true_Parse_18
eq_test_join_true_Parse_18:
  %VR166.0 = icmp eq i32 %VR160,  %VR163
  br i1 %VR166.0, label %eq_test_join_Parse_18, label %eq_test_join_false_Parse_18
;#######################################; <- eq_test_join_true_Parse_18


;#######################################; -> eq_test_join_false_Parse_18
eq_test_join_false_Parse_18:
  %VR168 = call i32  @equality_test(i32 1, i32 0, i32 %VR160, i32 %VR163)
  %VR166.1 = icmp eq i32 %VR168,  1
  br label %eq_test_join_Parse_18
;#######################################; <- eq_test_join_false_Parse_18


;#######################################; -> eq_test_join_Parse_18
eq_test_join_Parse_18:
  %VR166 = phi i1  [ %VR166.0 , %eq_test_join_true_Parse_18 ] , [ %VR166.1 , %eq_test_join_false_Parse_18 ] 
;; <- eq: linia 342
  %VR169 = icmp eq i1 %VR166,  false
  br i1 %VR169, label %false_Parse_15, label %false_false_Parse_15
;#######################################; <- eq_test_join_Parse_18


;#######################################; -> false_false_Parse_15
false_false_Parse_15:
;;if: linia 342 (expresia pentru then)
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- cond -- assign -
;; -> assign: linia 342
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- cond -- assign -- string_const -
;; -> string_const: linia 342
  %VR170 = ptrtoint %struct.String_protObj_t* @str_const__5 to i32 
;; <- string_const: linia 342
  %VR171 = add i32 %ARG, 16
  %VR172 = inttoptr i32 %VR171 to i32*
  store i32 %VR170, i32* %VR172
;; <- assign: linia 342
  br label %join_if_Parse_15_true
;#######################################; <- false_false_Parse_15


;#######################################; -> join_if_Parse_15_true
join_if_Parse_15_true:
  %VR159.0 = add i32 %VR170, 0
  br label %join_if_Parse_15
;#######################################; <- join_if_Parse_15_true


;#######################################; -> false_Parse_15
false_Parse_15:
;;if: linia 342 (expresia pentru else)
;- let -- block -- let -- let -- loop -- let -- cond -- cond -- block -- cond -- string_const -
;; -> string_const: linia 342
  %VR173 = ptrtoint %struct.String_protObj_t* @str_const__5 to i32 
;; <- string_const: linia 342
  br label %join_if_Parse_15_false
;#######################################; <- false_Parse_15


;#######################################; -> join_if_Parse_15_false
join_if_Parse_15_false:
  %VR159.1 = add i32 %VR173, 0
  br label %join_if_Parse_15
;#######################################; <- join_if_Parse_15_false


;#######################################; -> join_if_Parse_15
join_if_Parse_15:
  %VR159 = phi i32  [ %VR159.0 , %join_if_Parse_15_true ] , [ %VR159.1 , %join_if_Parse_15_false ] 
;; <- cond: linia 342
;; <- block: linia 339
  br label %join_if_Parse_14_false
;#######################################; <- join_if_Parse_15


;#######################################; -> join_if_Parse_14_false
join_if_Parse_14_false:
  %VR82.1 = add i32 %VR159, 0
  br label %join_if_Parse_14
;#######################################; <- join_if_Parse_14_false


;#######################################; -> join_if_Parse_14
join_if_Parse_14:
  %VR82 = phi i32  [ %VR82.0 , %join_if_Parse_14_true ] , [ %VR82.1 , %join_if_Parse_14_false ] 
;; <- cond: linia 333
  br label %join_if_Parse_13_false
;#######################################; <- join_if_Parse_14


;#######################################; -> join_if_Parse_13_false
join_if_Parse_13_false:
  %VR38.1 = add i32 %VR82, 0
  br label %join_if_Parse_13
;#######################################; <- join_if_Parse_13_false


;#######################################; -> join_if_Parse_13
join_if_Parse_13:
  %VR38 = phi i32  [ %VR38.0 , %join_if_Parse_13_true ] , [ %VR38.1 , %join_if_Parse_13_false ] 
;; <- cond: linia 328
;; <- let: linia 327
  br label %start_loop_Parse_2
;#######################################; <- join_if_Parse_13


;#######################################; -> sfarsit_loop_Parse_2
sfarsit_loop_Parse_2:
  %VR2_tmp1 = load i32* %VR2a
;; <- loop: linia 326
;; <- let: linia 325
;; <- let: linia 324
;- let -- block -- object -
;; -> object: linia 349
;; <- object: linia 349
;; <- block: linia 323
;; <- let: linia 322
  ret i32 %VR2_tmp1
;#######################################; <- sfarsit_loop_Parse_2


}
define void @Main_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Parse_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- dispatch -
;; -> dispatch: linia 359
;;generez codul pentru apelul metodei read_input
;- dispatch -- object -
;; -> object: linia 359
;; <- object: linia 359
  %VR1 = icmp eq i32* %VR0,  null
  br i1 %VR1, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__57 to i32))
  ret void
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR2 = ptrtoint i32* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 28
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 359
  %VR11 = add i32 %ARG, 20
  %VR12 = inttoptr i32 %VR11 to i32*
  store i32 %VR10, i32* %VR12
  ret void
;#######################################; <- dispatch_not_void_Main_0


}
define i32 @Main__main(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- block -
;; -> block: linia 362
;- block -- dispatch -
;; -> dispatch: linia 363
;;generez codul pentru apelul metodei print_V
;- block -- dispatch -- object -
;; -> object: linia 363
  %VR1 = add i32 %ARG, 20
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 363
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__58 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Main_1
dispatch_not_void_Main_1:
  %VR6 = ptrtoint i32* %VR4 to i32 
  %VR7 = add i32 %VR6, 8
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = add i32 %VR9, 20
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = inttoptr i32 %VR12 to i32 (i32)*
  %VR14 = call i32 (i32)* %VR13(i32 %VR3)
;; <- dispatch: linia 363
;- block -- dispatch -
;; -> dispatch: linia 364
;;generez codul pentru apelul metodei print_E
;- block -- dispatch -- object -
;; -> object: linia 364
  %VR15 = add i32 %ARG, 20
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
;; <- object: linia 364
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = icmp eq i32* %VR18,  null
  br i1 %VR19, label %false_dispatch2, label %dispatch_not_void_Main_2
;#######################################; <- dispatch_not_void_Main_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__59 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Main_2
dispatch_not_void_Main_2:
  %VR20 = ptrtoint i32* %VR18 to i32 
  %VR21 = add i32 %VR20, 8
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = load i32* %VR22
  %VR24 = add i32 %VR23, 16
  %VR25 = inttoptr i32 %VR24 to i32*
  %VR26 = load i32* %VR25
  %VR27 = inttoptr i32 %VR26 to i32 (i32)*
  %VR28 = call i32 (i32)* %VR27(i32 %VR17)
;; <- dispatch: linia 364
;; <- block: linia 362
  ret i32 %VR28
;#######################################; <- dispatch_not_void_Main_2


}
define void @BoolOp_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Object_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @BoolOp__and(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.BoolOp_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- cond -
;; -> cond: linia 373
;;if: linia 373 (expresia pentru predicat)
;;%VR3 rezervat pentru rezultatul if-ului
;- cond -- object -
;; -> object: linia 373
;; <- object: linia 373
  %VR4 = icmp eq i32 %VR1,  0
  br i1 %VR4, label %false_BoolOp_0, label %false_false_BoolOp_0
;#######################################; <- entry


;#######################################; -> false_false_BoolOp_0
false_false_BoolOp_0:
;;if: linia 373 (expresia pentru then)
;- cond -- object -
;; -> object: linia 373
;; <- object: linia 373
  br label %join_if_BoolOp_0_true
;#######################################; <- false_false_BoolOp_0


;#######################################; -> join_if_BoolOp_0_true
join_if_BoolOp_0_true:
  %VR3.0 = add i32 %VR2, 0
  br label %join_if_BoolOp_0
;#######################################; <- join_if_BoolOp_0_true


;#######################################; -> false_BoolOp_0
false_BoolOp_0:
;;if: linia 373 (expresia pentru else)
;- cond -- bool_const -
;; -> bool_const: linia 373
  %VR5 = add i32 0, 0
;; <- bool_const: linia 373
  br label %join_if_BoolOp_0_false
;#######################################; <- false_BoolOp_0


;#######################################; -> join_if_BoolOp_0_false
join_if_BoolOp_0_false:
  %VR3.1 = add i32 %VR5, 0
  br label %join_if_BoolOp_0
;#######################################; <- join_if_BoolOp_0_false


;#######################################; -> join_if_BoolOp_0
join_if_BoolOp_0:
  %VR3 = phi i32 [ %VR3.0, %join_if_BoolOp_0_true ], [ %VR3.1, %join_if_BoolOp_0_false ]
;; <- cond: linia 373
  ret i32 %VR3
;#######################################; <- join_if_BoolOp_0


}
define i32 @BoolOp__or(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.BoolOp_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- cond -
;; -> cond: linia 378
;;if: linia 378 (expresia pentru predicat)
;;%VR3 rezervat pentru rezultatul if-ului
;- cond -- object -
;; -> object: linia 378
;; <- object: linia 378
  %VR4 = icmp eq i32 %VR1,  0
  br i1 %VR4, label %false_BoolOp_1, label %false_false_BoolOp_1
;#######################################; <- entry


;#######################################; -> false_false_BoolOp_1
false_false_BoolOp_1:
;;if: linia 378 (expresia pentru then)
;- cond -- bool_const -
;; -> bool_const: linia 378
  %VR5 = add i32 1, 0
;; <- bool_const: linia 378
  br label %join_if_BoolOp_1_true
;#######################################; <- false_false_BoolOp_1


;#######################################; -> join_if_BoolOp_1_true
join_if_BoolOp_1_true:
  %VR3.0 = add i32 %VR5, 0
  br label %join_if_BoolOp_1
;#######################################; <- join_if_BoolOp_1_true


;#######################################; -> false_BoolOp_1
false_BoolOp_1:
;;if: linia 378 (expresia pentru else)
;- cond -- object -
;; -> object: linia 378
;; <- object: linia 378
  br label %join_if_BoolOp_1_false
;#######################################; <- false_BoolOp_1


;#######################################; -> join_if_BoolOp_1_false
join_if_BoolOp_1_false:
  %VR3.1 = add i32 %VR2, 0
  br label %join_if_BoolOp_1
;#######################################; <- join_if_BoolOp_1_false


;#######################################; -> join_if_BoolOp_1
join_if_BoolOp_1:
  %VR3 = phi i32 [ %VR3.0, %join_if_BoolOp_1_true ], [ %VR3.1, %join_if_BoolOp_1_false ]
;; <- cond: linia 378
  ret i32 %VR3
;#######################################; <- join_if_BoolOp_1


}
@s36 = internal constant [7 x i8] c"BoolOp\00"
@str_const__36 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__6, i8* getelementptr ([7 x i8]* @s36, i32 0, i32 0)}
@s35 = internal constant [5 x i8] c"Main\00"
@str_const__35 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([5 x i8]* @s35, i32 0, i32 0)}
@s34 = internal constant [6 x i8] c"Parse\00"
@str_const__34 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__5, i8* getelementptr ([6 x i8]* @s34, i32 0, i32 0)}
@s33 = internal constant [6 x i8] c"VCons\00"
@str_const__33 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__5, i8* getelementptr ([6 x i8]* @s33, i32 0, i32 0)}
@s32 = internal constant [6 x i8] c"VList\00"
@str_const__32 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__5, i8* getelementptr ([6 x i8]* @s32, i32 0, i32 0)}
@s31 = internal constant [6 x i8] c"ECons\00"
@str_const__31 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__5, i8* getelementptr ([6 x i8]* @s31, i32 0, i32 0)}
@s30 = internal constant [6 x i8] c"EList\00"
@str_const__30 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__5, i8* getelementptr ([6 x i8]* @s30, i32 0, i32 0)}
@s29 = internal constant [5 x i8] c"Edge\00"
@str_const__29 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([5 x i8]* @s29, i32 0, i32 0)}
@s28 = internal constant [8 x i8] c"Vertice\00"
@str_const__28 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__7, i8* getelementptr ([8 x i8]* @s28, i32 0, i32 0)}
@s27 = internal constant [6 x i8] c"Graph\00"
@str_const__27 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__5, i8* getelementptr ([6 x i8]* @s27, i32 0, i32 0)}
@s26 = internal constant [3 x i8] c"IO\00"
@str_const__26 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([3 x i8]* @s26, i32 0, i32 0)}
@s25 = internal constant [7 x i8] c"String\00"
@str_const__25 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__6, i8* getelementptr ([7 x i8]* @s25, i32 0, i32 0)}
@s24 = internal constant [5 x i8] c"Bool\00"
@str_const__24 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([5 x i8]* @s24, i32 0, i32 0)}
@s23 = internal constant [4 x i8] c"Int\00"
@str_const__23 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([4 x i8]* @s23, i32 0, i32 0)}
@s22 = internal constant [7 x i8] c"Object\00"
@str_const__22 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__6, i8* getelementptr ([7 x i8]* @s22, i32 0, i32 0)}
@s21 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__21 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([11 x i8]* @s21, i32 0, i32 0)}
@s20 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__20 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([10 x i8]* @s20, i32 0, i32 0)}
@s19 = internal constant [10 x i8] c"_no_class\00"
@str_const__19 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([10 x i8]* @s19, i32 0, i32 0)}
@s18 = internal constant [14 x i8] c"<basic class>\00"
@str_const__18 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__60, i8* getelementptr ([14 x i8]* @s18, i32 0, i32 0)}
@s17 = internal constant [2 x i8] c" \00"
@str_const__17 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s17, i32 0, i32 0)}
@s16 = internal constant [2 x i8] c"-\00"
@str_const__16 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s16, i32 0, i32 0)}
@s15 = internal constant [2 x i8] c"9\00"
@str_const__15 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s15, i32 0, i32 0)}
@s14 = internal constant [2 x i8] c"8\00"
@str_const__14 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s14, i32 0, i32 0)}
@s13 = internal constant [2 x i8] c"7\00"
@str_const__13 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s13, i32 0, i32 0)}
@s12 = internal constant [2 x i8] c"6\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [2 x i8] c"5\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [2 x i8] c"4\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [2 x i8] c"3\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [2 x i8] c"2\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [2 x i8] c"1\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [2 x i8] c"0\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [1 x i8] c"\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([1 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [2 x i8] c"\0A\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [2 x i8] c")\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [2 x i8] c",\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [3 x i8] c" (\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([3 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [15 x i8] c"/tmp/cplI9b7Xz\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__61, i8* getelementptr ([15 x i8]* @s0, i32 0, i32 0)}
@int_const__61 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 14}
@int_const__60 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__59 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 364}
@int_const__58 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 363}
@int_const__57 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 359}
@int_const__56 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 340}
@int_const__55 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 335}
@int_const__54 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 330}
@int_const__53 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 327}
@int_const__52 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 324}
@int_const__51 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 311}
@int_const__50 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 310}
@int_const__49 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 309}
@int_const__48 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 308}
@int_const__47 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 301}
@int_const__46 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 280}
@int_const__45 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 278}
@int_const__44 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 277}
@int_const__43 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 274}
@int_const__42 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 273}
@int_const__41 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 264}
@int_const__40 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 263}
@int_const__39 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 260}
@int_const__38 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 259}
@int_const__37 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 242}
@int_const__36 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 241}
@int_const__35 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 216}
@int_const__34 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 213}
@int_const__33 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 203}
@int_const__32 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 201}
@int_const__31 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 185}
@int_const__30 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 184}
@int_const__29 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 145}
@int_const__28 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 140}
@int_const__27 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 139}
@int_const__26 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 135}
@int_const__25 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 125}
@int_const__24 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 123}
@int_const__23 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 108}
@int_const__22 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 107}
@int_const__21 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 106}
@int_const__20 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 105}
@int_const__19 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 104}
@int_const__18 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 103}
@int_const__17 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 80}
@int_const__16 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 79}
@int_const__15 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 72}
@int_const__14 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 49}
@int_const__13 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 48}
@int_const__12 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 45}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 44}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 8}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 7}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 5}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
%struct.Graph_protObj_t = type { i32, i32, %struct.Graph_dispTab_t*, i32, i32 }
@Graph_protObj = global %struct.Graph_protObj_t {i32 5, i32 5, %struct.Graph_dispTab_t* @Graph_dispTab, i32 0, i32 0}
%struct.Vertice_protObj_t = type { i32, i32, %struct.Vertice_dispTab_t*, i32, i32 }
@Vertice_protObj = global %struct.Vertice_protObj_t {i32 6, i32 5, %struct.Vertice_dispTab_t* @Vertice_dispTab, i32 0, i32 0}
%struct.Edge_protObj_t = type { i32, i32, %struct.Edge_dispTab_t*, i32, i32, i32 }
@Edge_protObj = global %struct.Edge_protObj_t {i32 7, i32 6, %struct.Edge_dispTab_t* @Edge_dispTab, i32 0, i32 0, i32 0}
%struct.EList_protObj_t = type { i32, i32, %struct.EList_dispTab_t*, i32 }
@EList_protObj = global %struct.EList_protObj_t {i32 8, i32 4, %struct.EList_dispTab_t* @EList_dispTab, i32 0}
%struct.ECons_protObj_t = type { i32, i32, %struct.ECons_dispTab_t*, i32, i32 }
@ECons_protObj = global %struct.ECons_protObj_t {i32 9, i32 5, %struct.ECons_dispTab_t* @ECons_dispTab, i32 0, i32 0}
%struct.VList_protObj_t = type { i32, i32, %struct.VList_dispTab_t*, i32 }
@VList_protObj = global %struct.VList_protObj_t {i32 10, i32 4, %struct.VList_dispTab_t* @VList_dispTab, i32 0}
%struct.VCons_protObj_t = type { i32, i32, %struct.VCons_dispTab_t*, i32, i32 }
@VCons_protObj = global %struct.VCons_protObj_t {i32 11, i32 5, %struct.VCons_dispTab_t* @VCons_dispTab, i32 0, i32 0}
%struct.Parse_protObj_t = type { i32, i32, %struct.Parse_dispTab_t*, i32, i32 }
@Parse_protObj = global %struct.Parse_protObj_t {i32 12, i32 5, %struct.Parse_dispTab_t* @Parse_dispTab, i32 0, i32 0}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t*, i32, i32, i32 }
@Main_protObj = global %struct.Main_protObj_t {i32 13, i32 6, %struct.Main_dispTab_t* @Main_dispTab, i32 0, i32 0, i32 0}
%struct.BoolOp_protObj_t = type { i32, i32, %struct.BoolOp_dispTab_t* }
@BoolOp_protObj = global %struct.BoolOp_protObj_t {i32 14, i32 3, %struct.BoolOp_dispTab_t* @BoolOp_dispTab}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__22, %struct.String_protObj_t* @str_const__23, %struct.String_protObj_t* @str_const__24, %struct.String_protObj_t* @str_const__25, %struct.String_protObj_t* @str_const__26, %struct.String_protObj_t* @str_const__27, %struct.String_protObj_t* @str_const__28, %struct.String_protObj_t* @str_const__29, %struct.String_protObj_t* @str_const__30, %struct.String_protObj_t* @str_const__31, %struct.String_protObj_t* @str_const__32, %struct.String_protObj_t* @str_const__33, %struct.String_protObj_t* @str_const__34, %struct.String_protObj_t* @str_const__35, %struct.String_protObj_t* @str_const__36 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @Graph_init to i8*), i8* bitcast (void (i32)* @Vertice_init to i8*), i8* bitcast (void (i32)* @Edge_init to i8*), i8* bitcast (void (i32)* @EList_init to i8*), i8* bitcast (void (i32)* @ECons_init to i8*), i8* bitcast (void (i32)* @VList_init to i8*), i8* bitcast (void (i32)* @VCons_init to i8*), i8* bitcast (void (i32)* @Parse_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*), i8* bitcast (void (i32)* @BoolOp_init to i8*) }
%struct.Graph_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*}
@Graph_dispTab = global %struct.Graph_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @Graph__add_vertice to i8*), i8* bitcast (i32 (i32)* @Graph__print_E to i8*), i8* bitcast (i32 (i32)* @Graph__print_V to i8*)}

%struct.Vertice_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Vertice_dispTab = global %struct.Vertice_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Vertice__outgoing to i8*), i8* bitcast (i32 (i32)* @Vertice__number to i8*), i8* bitcast (i32 (i32,i32)* @Vertice__init to i8*), i8* bitcast (i32 (i32,i32)* @Vertice__add_out to i8*), i8* bitcast (i32 (i32)* @Vertice__print to i8*)}

%struct.Edge_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Edge_dispTab = global %struct.Edge_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32,i32,i32,i32)* @Edge__init to i8*), i8* bitcast (i32 (i32)* @Edge__print to i8*)}

%struct.EList_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@EList_dispTab = global %struct.EList_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @EList__isNil to i8*), i8* bitcast (i32 (i32)* @EList__head to i8*), i8* bitcast (i32 (i32)* @EList__tail to i8*), i8* bitcast (i32 (i32,i32)* @EList__cons to i8*), i8* bitcast (i32 (i32,i32)* @EList__append to i8*), i8* bitcast (i32 (i32)* @EList__print to i8*)}

%struct.ECons_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@ECons_dispTab = global %struct.ECons_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @ECons__isNil to i8*), i8* bitcast (i32 (i32)* @ECons__head to i8*), i8* bitcast (i32 (i32)* @ECons__tail to i8*), i8* bitcast (i32 (i32,i32)* @EList__cons to i8*), i8* bitcast (i32 (i32,i32)* @EList__append to i8*), i8* bitcast (i32 (i32)* @ECons__print to i8*), i8* bitcast (i32 (i32,i32,i32)* @ECons__init to i8*)}

%struct.VList_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@VList_dispTab = global %struct.VList_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @VList__isNil to i8*), i8* bitcast (i32 (i32)* @VList__head to i8*), i8* bitcast (i32 (i32)* @VList__tail to i8*), i8* bitcast (i32 (i32,i32)* @VList__cons to i8*), i8* bitcast (i32 (i32)* @VList__print to i8*)}

%struct.VCons_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@VCons_dispTab = global %struct.VCons_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @VCons__isNil to i8*), i8* bitcast (i32 (i32)* @VCons__head to i8*), i8* bitcast (i32 (i32)* @VCons__tail to i8*), i8* bitcast (i32 (i32,i32)* @VList__cons to i8*), i8* bitcast (i32 (i32)* @VCons__print to i8*), i8* bitcast (i32 (i32,i32,i32)* @VCons__init to i8*)}

%struct.Parse_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Parse_dispTab = global %struct.Parse_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Parse__read_input to i8*), i8* bitcast (i32 (i32,i32)* @Parse__parse_line to i8*), i8* bitcast (i32 (i32,i32)* @Parse__c2i to i8*), i8* bitcast (i32 (i32,i32)* @Parse__a2i to i8*), i8* bitcast (i32 (i32,i32)* @Parse__a2i_aux to i8*)}

%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Parse__read_input to i8*), i8* bitcast (i32 (i32,i32)* @Parse__parse_line to i8*), i8* bitcast (i32 (i32,i32)* @Parse__c2i to i8*), i8* bitcast (i32 (i32,i32)* @Parse__a2i to i8*), i8* bitcast (i32 (i32,i32)* @Parse__a2i_aux to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}

%struct.BoolOp_dispTab_t = type { i8*, i8*, i8*, i8*, i8*}
@BoolOp_dispTab = global %struct.BoolOp_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32,i32)* @BoolOp__and to i8*), i8* bitcast (i32 (i32,i32,i32)* @BoolOp__or to i8*)}

