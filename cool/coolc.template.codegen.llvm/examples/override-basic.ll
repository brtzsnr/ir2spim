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
define void @Base_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @Base__identify(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Base_protObj_t*
;- block -
;; -> block: linia 4
;- block -- dispatch -
;; -> dispatch: linia 5
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- dispatch -
;; -> dispatch: linia 5
;;generez codul pentru apelul metodei type_name
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 5
;; <- object: linia 5
  %VR1 = icmp eq %struct.Base_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch0, label %dispatch_not_void_Base_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__0 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Base_0
dispatch_not_void_Base_0:
  %VR2 = ptrtoint %struct.Base_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 5
;- block -- dispatch -- object -
;; -> object: linia 5
;; <- object: linia 5
  %VR11 = icmp eq %struct.Base_protObj_t* %VR0,  null
  br i1 %VR11, label %false_dispatch1, label %dispatch_not_void_Base_1
;#######################################; <- dispatch_not_void_Base_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__0 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Base_1
dispatch_not_void_Base_1:
  %VR12 = ptrtoint %struct.Base_protObj_t* %VR0 to i32 
  %VR13 = add i32 %VR12, 8
  %VR14 = inttoptr i32 %VR13 to i32*
  %VR15 = load i32* %VR14
  %VR16 = add i32 %VR15, 16
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = load i32* %VR17
  %VR19 = inttoptr i32 %VR18 to i32 (i32, i32)*
  %VR20 = call i32 (i32, i32)* %VR19(i32 %ARG, i32 %VR10)
;; <- dispatch: linia 5
;- block -- static_dispatch -
;; -> static_dispatch: linia 6
;;generez codul pentru apelul metodei out_string
;- block -- static_dispatch -- string_const -
;; -> string_const: linia 6
  %VR21 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 6
;- block -- static_dispatch -- object -
;; -> object: linia 6
;; <- object: linia 6
  %VR22 = icmp eq %struct.Base_protObj_t* %VR0,  null
  br i1 %VR22, label %false_static_dispatch2, label %dispatch_not_void_Base_2
;#######################################; <- dispatch_not_void_Base_1


;#######################################; -> false_static_dispatch2
false_static_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__1 to i32))
  ret i32 0
;#######################################; <- false_static_dispatch2


;#######################################; -> dispatch_not_void_Base_2
dispatch_not_void_Base_2:
  %VR23 = ptrtoint %struct.Base_protObj_t* @Base_protObj to i32 
  %VR24 = add i32 %VR23, 8
  %VR25 = inttoptr i32 %VR24 to i32*
  %VR26 = load i32* %VR25
  %VR27 = add i32 %VR26, 16
  %VR28 = inttoptr i32 %VR27 to i32*
  %VR29 = load i32* %VR28
  %VR30 = inttoptr i32 %VR29 to i32 (i32, i32)*
  %VR31 = call i32 (i32, i32)* %VR30(i32 %ARG, i32 %VR21)
;; <- static_dispatch: linia 6
;; <- block: linia 4
  ret i32 %VR31
;#######################################; <- dispatch_not_void_Base_2


}
define void @Derived_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Base_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @Derived__out_string(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Derived_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- block -
;; -> block: linia 15
;- block -- static_dispatch -
;; -> static_dispatch: linia 16
;;generez codul pentru apelul metodei out_string
;- block -- static_dispatch -- string_const -
;; -> string_const: linia 16
  %VR2 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 16
;- block -- static_dispatch -- object -
;; -> object: linia 16
;; <- object: linia 16
  %VR3 = icmp eq %struct.Derived_protObj_t* %VR0,  null
  br i1 %VR3, label %false_static_dispatch0, label %dispatch_not_void_Derived_0
;#######################################; <- entry


;#######################################; -> false_static_dispatch0
false_static_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__2 to i32))
  ret i32 0
;#######################################; <- false_static_dispatch0


;#######################################; -> dispatch_not_void_Derived_0
dispatch_not_void_Derived_0:
  %VR4 = ptrtoint %struct.Base_protObj_t* @Base_protObj to i32 
  %VR5 = add i32 %VR4, 8
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = load i32* %VR6
  %VR8 = add i32 %VR7, 16
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = inttoptr i32 %VR10 to i32 (i32, i32)*
  %VR12 = call i32 (i32, i32)* %VR11(i32 %ARG, i32 %VR2)
;; <- static_dispatch: linia 16
;- block -- static_dispatch -
;; -> static_dispatch: linia 17
;;generez codul pentru apelul metodei out_string
;- block -- static_dispatch -- object -
;; -> object: linia 17
;; <- object: linia 17
;- block -- static_dispatch -- object -
;; -> object: linia 17
;; <- object: linia 17
  %VR13 = icmp eq %struct.Derived_protObj_t* %VR0,  null
  br i1 %VR13, label %false_static_dispatch1, label %dispatch_not_void_Derived_1
;#######################################; <- dispatch_not_void_Derived_0


;#######################################; -> false_static_dispatch1
false_static_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__3 to i32))
  ret i32 0
;#######################################; <- false_static_dispatch1


;#######################################; -> dispatch_not_void_Derived_1
dispatch_not_void_Derived_1:
  %VR14 = ptrtoint %struct.Base_protObj_t* @Base_protObj to i32 
  %VR15 = add i32 %VR14, 8
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
  %VR18 = add i32 %VR17, 16
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
  %VR21 = inttoptr i32 %VR20 to i32 (i32, i32)*
  %VR22 = call i32 (i32, i32)* %VR21(i32 %ARG, i32 %VR1)
;; <- static_dispatch: linia 17
;- block -- static_dispatch -
;; -> static_dispatch: linia 18
;;generez codul pentru apelul metodei out_string
;- block -- static_dispatch -- string_const -
;; -> string_const: linia 18
  %VR23 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 18
;- block -- static_dispatch -- object -
;; -> object: linia 18
;; <- object: linia 18
  %VR24 = icmp eq %struct.Derived_protObj_t* %VR0,  null
  br i1 %VR24, label %false_static_dispatch2, label %dispatch_not_void_Derived_2
;#######################################; <- dispatch_not_void_Derived_1


;#######################################; -> false_static_dispatch2
false_static_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret i32 0
;#######################################; <- false_static_dispatch2


;#######################################; -> dispatch_not_void_Derived_2
dispatch_not_void_Derived_2:
  %VR25 = ptrtoint %struct.Base_protObj_t* @Base_protObj to i32 
  %VR26 = add i32 %VR25, 8
  %VR27 = inttoptr i32 %VR26 to i32*
  %VR28 = load i32* %VR27
  %VR29 = add i32 %VR28, 16
  %VR30 = inttoptr i32 %VR29 to i32*
  %VR31 = load i32* %VR30
  %VR32 = inttoptr i32 %VR31 to i32 (i32, i32)*
  %VR33 = call i32 (i32, i32)* %VR32(i32 %ARG, i32 %VR23)
;; <- static_dispatch: linia 18
;; <- block: linia 15
  ret i32 %VR33
;#######################################; <- dispatch_not_void_Derived_2


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
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
;- block -
;; -> block: linia 28
;- block -- let -
;; -> let: linia 29
;- block -- let -- new -
;; -> new: linia 29
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.Base_protObj_t* @Base_protObj to i32))
  call void @Base_init(i32 %VR1)
;; <- new: linia 29
;- block -- let -- static_dispatch -
;; -> static_dispatch: linia 30
;;generez codul pentru apelul metodei identify
;- block -- let -- static_dispatch -- object -
;; -> object: linia 30
;; <- object: linia 30
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = icmp eq i32* %VR2,  null
  br i1 %VR3, label %false_static_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_static_dispatch0
false_static_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__5 to i32))
  ret i32 0
;#######################################; <- false_static_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR4 = ptrtoint %struct.Base_protObj_t* @Base_protObj to i32 
  %VR5 = add i32 %VR4, 8
  %VR6 = inttoptr i32 %VR5 to i32*
  %VR7 = load i32* %VR6
  %VR8 = add i32 %VR7, 28
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = inttoptr i32 %VR10 to i32 (i32)*
  %VR12 = call i32 (i32)* %VR11(i32 %VR1)
;; <- static_dispatch: linia 30
;; <- let: linia 29
;- block -- let -
;; -> let: linia 32
;- block -- let -- new -
;; -> new: linia 32
  %VR13 = call i32  @Object__copy(i32 ptrtoint (%struct.Derived_protObj_t* @Derived_protObj to i32))
  call void @Derived_init(i32 %VR13)
;; <- new: linia 32
;- block -- let -- static_dispatch -
;; -> static_dispatch: linia 33
;;generez codul pentru apelul metodei identify
;- block -- let -- static_dispatch -- object -
;; -> object: linia 33
;; <- object: linia 33
  %VR14 = inttoptr i32 %VR13 to i32*
  %VR15 = icmp eq i32* %VR14,  null
  br i1 %VR15, label %false_static_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- dispatch_not_void_Main_0


;#######################################; -> false_static_dispatch1
false_static_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_static_dispatch1


;#######################################; -> dispatch_not_void_Main_1
dispatch_not_void_Main_1:
  %VR16 = ptrtoint %struct.Base_protObj_t* @Base_protObj to i32 
  %VR17 = add i32 %VR16, 8
  %VR18 = inttoptr i32 %VR17 to i32*
  %VR19 = load i32* %VR18
  %VR20 = add i32 %VR19, 28
  %VR21 = inttoptr i32 %VR20 to i32*
  %VR22 = load i32* %VR21
  %VR23 = inttoptr i32 %VR22 to i32 (i32)*
  %VR24 = call i32 (i32)* %VR23(i32 %VR13)
;; <- static_dispatch: linia 33
;; <- let: linia 32
;- block -- let -
;; -> let: linia 35
;- block -- let -- new -
;; -> new: linia 35
  %VR25 = call i32  @Object__copy(i32 ptrtoint (%struct.Derived_protObj_t* @Derived_protObj to i32))
  call void @Derived_init(i32 %VR25)
;; <- new: linia 35
;- block -- let -- block -
;; -> block: linia 36
;- block -- let -- block -- static_dispatch -
;; -> static_dispatch: linia 37
;;generez codul pentru apelul metodei identify
;- block -- let -- block -- static_dispatch -- object -
;; -> object: linia 37
;; <- object: linia 37
  %VR26 = inttoptr i32 %VR25 to i32*
  %VR27 = icmp eq i32* %VR26,  null
  br i1 %VR27, label %false_static_dispatch2, label %dispatch_not_void_Main_2
;#######################################; <- dispatch_not_void_Main_1


;#######################################; -> false_static_dispatch2
false_static_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__7 to i32))
  ret i32 0
;#######################################; <- false_static_dispatch2


;#######################################; -> dispatch_not_void_Main_2
dispatch_not_void_Main_2:
  %VR28 = ptrtoint %struct.Base_protObj_t* @Base_protObj to i32 
  %VR29 = add i32 %VR28, 8
  %VR30 = inttoptr i32 %VR29 to i32*
  %VR31 = load i32* %VR30
  %VR32 = add i32 %VR31, 28
  %VR33 = inttoptr i32 %VR32 to i32*
  %VR34 = load i32* %VR33
  %VR35 = inttoptr i32 %VR34 to i32 (i32)*
  %VR36 = call i32 (i32)* %VR35(i32 %VR25)
;; <- static_dispatch: linia 37
;- block -- let -- block -- static_dispatch -
;; -> static_dispatch: linia 38
;;generez codul pentru apelul metodei identify
;- block -- let -- block -- static_dispatch -- object -
;; -> object: linia 38
;; <- object: linia 38
  %VR37 = inttoptr i32 %VR25 to i32*
  %VR38 = icmp eq i32* %VR37,  null
  br i1 %VR38, label %false_static_dispatch3, label %dispatch_not_void_Main_3
;#######################################; <- dispatch_not_void_Main_2


;#######################################; -> false_static_dispatch3
false_static_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__8 to i32))
  ret i32 0
;#######################################; <- false_static_dispatch3


;#######################################; -> dispatch_not_void_Main_3
dispatch_not_void_Main_3:
  %VR39 = ptrtoint %struct.Derived_protObj_t* @Derived_protObj to i32 
  %VR40 = add i32 %VR39, 8
  %VR41 = inttoptr i32 %VR40 to i32*
  %VR42 = load i32* %VR41
  %VR43 = add i32 %VR42, 28
  %VR44 = inttoptr i32 %VR43 to i32*
  %VR45 = load i32* %VR44
  %VR46 = inttoptr i32 %VR45 to i32 (i32)*
  %VR47 = call i32 (i32)* %VR46(i32 %VR25)
;; <- static_dispatch: linia 38
;; <- block: linia 36
;; <- let: linia 35
;; <- block: linia 28
  ret i32 %VR47
;#######################################; <- dispatch_not_void_Main_3


}
@s15 = internal constant [1 x i8] c"\00"
@str_const__15 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([1 x i8]* @s15, i32 0, i32 0)}
@s14 = internal constant [5 x i8] c"Main\00"
@str_const__14 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([5 x i8]* @s14, i32 0, i32 0)}
@s13 = internal constant [8 x i8] c"Derived\00"
@str_const__13 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([8 x i8]* @s13, i32 0, i32 0)}
@s12 = internal constant [5 x i8] c"Base\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([5 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [3 x i8] c"IO\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__12, i8* getelementptr ([3 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [7 x i8] c"String\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([7 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [5 x i8] c"Bool\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([5 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [4 x i8] c"Int\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__13, i8* getelementptr ([4 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [7 x i8] c"Object\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([7 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__14, i8* getelementptr ([11 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__15, i8* getelementptr ([10 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [10 x i8] c"_no_class\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__15, i8* getelementptr ([10 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [14 x i8] c"<basic class>\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__16, i8* getelementptr ([14 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [9 x i8] c"derived \00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__17, i8* getelementptr ([9 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [2 x i8] c"\0A\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__18, i8* getelementptr ([2 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [25 x i8] c"simple/override-basic.cl\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__19, i8* getelementptr ([25 x i8]* @s0, i32 0, i32 0)}
@int_const__19 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 24}
@int_const__18 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
@int_const__17 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 8}
@int_const__16 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__15 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__14 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__13 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__12 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 7}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 38}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 37}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 33}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 30}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 18}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 17}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 16}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 5}
%struct.Base_protObj_t = type { i32, i32, %struct.Base_dispTab_t* }
@Base_protObj = global %struct.Base_protObj_t {i32 5, i32 3, %struct.Base_dispTab_t* @Base_dispTab}
%struct.Derived_protObj_t = type { i32, i32, %struct.Derived_dispTab_t* }
@Derived_protObj = global %struct.Derived_protObj_t {i32 6, i32 3, %struct.Derived_dispTab_t* @Derived_dispTab}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t* }
@Main_protObj = global %struct.Main_protObj_t {i32 7, i32 3, %struct.Main_dispTab_t* @Main_dispTab}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__7, %struct.String_protObj_t* @str_const__8, %struct.String_protObj_t* @str_const__9, %struct.String_protObj_t* @str_const__10, %struct.String_protObj_t* @str_const__11, %struct.String_protObj_t* @str_const__12, %struct.String_protObj_t* @str_const__13, %struct.String_protObj_t* @str_const__14 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @Base_init to i8*), i8* bitcast (void (i32)* @Derived_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.Base_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Base_dispTab = global %struct.Base_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Base__identify to i8*)}

%struct.Derived_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Derived_dispTab = global %struct.Derived_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @Derived__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Base__identify to i8*)}

%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}


