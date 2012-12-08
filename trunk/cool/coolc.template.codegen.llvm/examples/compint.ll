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
;;generez codul pentru apelul metodei in_int
;- let -- dispatch -- object -
;; -> object: linia 3
;; <- object: linia 3
  %VR1 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__2 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR2 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 20
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
  %VR11 = add i32 %VR10, 12
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
;; <- dispatch: linia 3
;boxing to int
  %VR14 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR15 = add i32 %VR14, 12
  %VR16 = inttoptr i32 %VR15 to i32*
  store i32 %VR13, i32* %VR16
;- let -- let -
;; -> let: linia 4
;- let -- let -- dispatch -
;; -> dispatch: linia 4
;;generez codul pentru apelul metodei in_int
;- let -- let -- dispatch -- object -
;; -> object: linia 4
;; <- object: linia 4
  %VR17 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR17, label %false_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- dispatch_not_void_Main_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__3 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Main_1
dispatch_not_void_Main_1:
  %VR18 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR19 = add i32 %VR18, 8
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = load i32* %VR20
  %VR22 = add i32 %VR21, 20
  %VR23 = inttoptr i32 %VR22 to i32*
  %VR24 = load i32* %VR23
  %VR25 = inttoptr i32 %VR24 to i32 (i32)*
  %VR26 = call i32 (i32)* %VR25(i32 %ARG)
  %VR27 = add i32 %VR26, 12
  %VR28 = inttoptr i32 %VR27 to i32*
  %VR29 = load i32* %VR28
;; <- dispatch: linia 4
;boxing to int
  %VR30 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR31 = add i32 %VR30, 12
  %VR32 = inttoptr i32 %VR31 to i32*
  store i32 %VR29, i32* %VR32
;- let -- let -- let -
;; -> let: linia 5
;- let -- let -- let -- cond -
;; -> cond: linia 5
;;if: linia 5 (expresia pentru predicat)
;;%VR33 rezervat pentru rezultatul if-ului
;- let -- let -- let -- cond -- eq -
;; -> eq: linia 5
;- let -- let -- let -- cond -- eq -- object -
;; -> object: linia 5
;; <- object: linia 5
;- let -- let -- let -- cond -- eq -- object -
;; -> object: linia 5
;; <- object: linia 5
  br label %eq_test_join_true_Main_0
;#######################################; <- dispatch_not_void_Main_1


;#######################################; -> eq_test_join_true_Main_0
eq_test_join_true_Main_0:
  %VR34.0 = icmp eq i32 %VR14,  %VR30
  br i1 %VR34.0, label %eq_test_join_Main_0, label %eq_test_join_false_Main_0
;#######################################; <- eq_test_join_true_Main_0


;#######################################; -> eq_test_join_false_Main_0
eq_test_join_false_Main_0:
  %VR36 = call i32  @equality_test(i32 1, i32 0, i32 %VR14, i32 %VR30)
  %VR34.1 = icmp eq i32 %VR36,  1
  br label %eq_test_join_Main_0
;#######################################; <- eq_test_join_false_Main_0


;#######################################; -> eq_test_join_Main_0
eq_test_join_Main_0:
  %VR34 = phi i1 [ %VR34.0, %eq_test_join_true_Main_0 ] , [ %VR34.1, %eq_test_join_false_Main_0 ] 
;; <- eq: linia 5
  %VR37 = icmp eq i1 %VR34,  false
  br i1 %VR37, label %false_Main_0, label %false_false_Main_0
;#######################################; <- eq_test_join_Main_0


;#######################################; -> false_false_Main_0
false_false_Main_0:
;;if: linia 5 (expresia pentru then)
;- let -- let -- let -- cond -- int_const -
;; -> int_const: linia 5
  %VR38 = add i32 1, 0
;; <- int_const: linia 5
  br label %join_if_Main_0_true
;#######################################; <- false_false_Main_0


;#######################################; -> join_if_Main_0_true
join_if_Main_0_true:
  %VR33.0 = add i32 %VR38, 0
  br label %join_if_Main_0
;#######################################; <- join_if_Main_0_true


;#######################################; -> false_Main_0
false_Main_0:
;;if: linia 5 (expresia pentru else)
;- let -- let -- let -- cond -- int_const -
;; -> int_const: linia 5
  %VR39 = add i32 0, 0
;; <- int_const: linia 5
  br label %join_if_Main_0_false
;#######################################; <- false_Main_0


;#######################################; -> join_if_Main_0_false
join_if_Main_0_false:
  %VR33.1 = add i32 %VR39, 0
  br label %join_if_Main_0
;#######################################; <- join_if_Main_0_false


;#######################################; -> join_if_Main_0
join_if_Main_0:
  %VR33 = phi i32 [ %VR33.0, %join_if_Main_0_true ], [ %VR33.1, %join_if_Main_0_false ]
;; <- cond: linia 5
;- let -- let -- let -- block -
;; -> block: linia 6
;- let -- let -- let -- block -- dispatch -
;; -> dispatch: linia 6
;;generez codul pentru apelul metodei out_int
;- let -- let -- let -- block -- dispatch -- object -
;; -> object: linia 6
;; <- object: linia 6
;- let -- let -- let -- block -- dispatch -- object -
;; -> object: linia 6
;; <- object: linia 6
  %VR40 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR40, label %false_dispatch2, label %dispatch_not_void_Main_2
;#######################################; <- join_if_Main_0


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Main_2
dispatch_not_void_Main_2:
  %VR41 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
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
  store i32 %VR33, i32* %VR50
  %VR51 = inttoptr i32 %VR47 to i32 (i32, i32)*
  %VR52 = call i32 (i32, i32)* %VR51(i32 %ARG, i32 %VR48)
;; <- dispatch: linia 6
;- let -- let -- let -- block -- object -
;; -> object: linia 6
;; <- object: linia 6
;; <- block: linia 6
;; <- let: linia 5
;; <- let: linia 4
;; <- let: linia 3
  ret i32 %VR33
;#######################################; <- dispatch_not_void_Main_2


}
@s11 = internal constant [1 x i8] c"\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([1 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [5 x i8] c"Main\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([5 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [3 x i8] c"IO\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__5, i8* getelementptr ([3 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [7 x i8] c"String\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([7 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [5 x i8] c"Bool\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([5 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [4 x i8] c"Int\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([4 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [7 x i8] c"Object\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([7 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__6, i8* getelementptr ([11 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__7, i8* getelementptr ([10 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [10 x i8] c"_no_class\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__7, i8* getelementptr ([10 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [14 x i8] c"<basic class>\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([14 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [19 x i8] c"library/compint.cl\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([19 x i8]* @s0, i32 0, i32 0)}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 18}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t* }
@Main_protObj = global %struct.Main_protObj_t {i32 5, i32 3, %struct.Main_dispTab_t* @Main_dispTab}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__5, %struct.String_protObj_t* @str_const__6, %struct.String_protObj_t* @str_const__7, %struct.String_protObj_t* @str_const__8, %struct.String_protObj_t* @str_const__9, %struct.String_protObj_t* @str_const__10 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}


