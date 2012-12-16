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
  call void @Object_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
;- new -
;; -> new: linia 3
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.IO_protObj_t* @IO_protObj to i32))
  call void @IO_init(i32 %VR1)
;; <- new: linia 3
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
;; -> block: linia 5
;- block -- dispatch -
;; -> dispatch: linia 6
;;generez codul pentru apelul metodei out_int
;- block -- dispatch -- dispatch -
;; -> dispatch: linia 6
;;generez codul pentru apelul metodei f
;- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 6
;;generez codul pentru apelul metodei g
;- block -- dispatch -- dispatch -- dispatch -- int_const -
;; -> int_const: linia 6
  %VR1 = add i32 1, 0
;; <- int_const: linia 6
;- block -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 6
;; <- object: linia 6
  %VR2 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR2, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR3 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = add i32 %VR6, 20
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = inttoptr i32 %VR9 to i32 (i32, i32)*
  %VR11 = call i32 (i32, i32)* %VR10(i32 %ARG, i32 %VR1)
;; <- dispatch: linia 6
;- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 6
;;generez codul pentru apelul metodei h
;- block -- dispatch -- dispatch -- dispatch -- int_const -
;; -> int_const: linia 6
  %VR12 = add i32 2, 0
;; <- int_const: linia 6
;- block -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 6
;; <- object: linia 6
  %VR13 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR13, label %false_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- dispatch_not_void_Main_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Main_1
dispatch_not_void_Main_1:
  %VR14 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR15 = add i32 %VR14, 8
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
  %VR18 = add i32 %VR17, 24
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
  %VR21 = inttoptr i32 %VR20 to i32 (i32, i32)*
  %VR22 = call i32 (i32, i32)* %VR21(i32 %ARG, i32 %VR12)
;; <- dispatch: linia 6
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 6
;; <- object: linia 6
  %VR23 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR23, label %false_dispatch2, label %dispatch_not_void_Main_2
;#######################################; <- dispatch_not_void_Main_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Main_2
dispatch_not_void_Main_2:
  %VR24 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR25 = add i32 %VR24, 8
  %VR26 = inttoptr i32 %VR25 to i32*
  %VR27 = load i32* %VR26
  %VR28 = add i32 %VR27, 16
  %VR29 = inttoptr i32 %VR28 to i32*
  %VR30 = load i32* %VR29
  %VR31 = inttoptr i32 %VR30 to i32 (i32, i32, i32)*
  %VR32 = call i32 (i32, i32, i32)* %VR31(i32 %ARG, i32 %VR11, i32 %VR22)
;; <- dispatch: linia 6
;- block -- dispatch -- object -
;; -> object: linia 6
  %VR33 = add i32 %ARG, 12
  %VR34 = inttoptr i32 %VR33 to i32*
  %VR35 = load i32* %VR34
;; <- object: linia 6
  %VR36 = inttoptr i32 %VR35 to i32*
  %VR37 = icmp eq i32* %VR36,  null
  br i1 %VR37, label %false_dispatch3, label %dispatch_not_void_Main_3
;#######################################; <- dispatch_not_void_Main_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Main_3
dispatch_not_void_Main_3:
  %VR38 = ptrtoint i32* %VR36 to i32 
  %VR39 = add i32 %VR38, 8
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = load i32* %VR40
  %VR42 = add i32 %VR41, 12
  %VR43 = inttoptr i32 %VR42 to i32*
  %VR44 = load i32* %VR43
;boxing to int
  %VR45 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR46 = add i32 %VR45, 12
  %VR47 = inttoptr i32 %VR46 to i32*
  store i32 %VR32, i32* %VR47
  %VR48 = inttoptr i32 %VR44 to i32 (i32, i32)*
  %VR49 = call i32 (i32, i32)* %VR48(i32 %VR35, i32 %VR45)
;; <- dispatch: linia 6
;- block -- dispatch -
;; -> dispatch: linia 7
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 7
  %VR50 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 7
;- block -- dispatch -- object -
;; -> object: linia 7
  %VR51 = add i32 %ARG, 12
  %VR52 = inttoptr i32 %VR51 to i32*
  %VR53 = load i32* %VR52
;; <- object: linia 7
  %VR54 = inttoptr i32 %VR53 to i32*
  %VR55 = icmp eq i32* %VR54,  null
  br i1 %VR55, label %false_dispatch4, label %dispatch_not_void_Main_4
;#######################################; <- dispatch_not_void_Main_3


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__3 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Main_4
dispatch_not_void_Main_4:
  %VR56 = ptrtoint i32* %VR54 to i32 
  %VR57 = add i32 %VR56, 8
  %VR58 = inttoptr i32 %VR57 to i32*
  %VR59 = load i32* %VR58
  %VR60 = add i32 %VR59, 16
  %VR61 = inttoptr i32 %VR60 to i32*
  %VR62 = load i32* %VR61
  %VR63 = inttoptr i32 %VR62 to i32 (i32, i32)*
  %VR64 = call i32 (i32, i32)* %VR63(i32 %VR53, i32 %VR50)
;; <- dispatch: linia 7
;; <- block: linia 5
  ret i32 %VR64
;#######################################; <- dispatch_not_void_Main_4


}
define i32 @Main__f(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- plus -
;; -> plus: linia 10
;- plus -- object -
;; -> object: linia 10
;; <- object: linia 10
;- plus -- object -
;; -> object: linia 10
;; <- object: linia 10
  %VR3 = add i32 %VR1, %VR2
;; <- plus: linia 10
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @Main__g(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- plus -
;; -> plus: linia 11
;- plus -- object -
;; -> object: linia 11
;; <- object: linia 11
;- plus -- int_const -
;; -> int_const: linia 11
  %VR2 = add i32 5, 0
;; <- int_const: linia 11
  %VR3 = add i32 %VR1, %VR2
;; <- plus: linia 11
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @Main__h(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Main_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- plus -
;; -> plus: linia 12
;- plus -- object -
;; -> object: linia 12
;; <- object: linia 12
;- plus -- int_const -
;; -> int_const: linia 12
  %VR2 = add i32 7, 0
;; <- int_const: linia 12
  %VR3 = add i32 %VR1, %VR2
;; <- plus: linia 12
  ret i32 %VR3
;#######################################; <- entry


}
@s12 = internal constant [1 x i8] c"\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__5, i8* getelementptr ([1 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [5 x i8] c"Main\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__6, i8* getelementptr ([5 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [3 x i8] c"IO\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([3 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [7 x i8] c"String\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([7 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [5 x i8] c"Bool\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__6, i8* getelementptr ([5 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [4 x i8] c"Int\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__7, i8* getelementptr ([4 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [7 x i8] c"Object\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([7 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([11 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([10 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [10 x i8] c"_no_class\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([10 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [14 x i8] c"<basic class>\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([14 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [2 x i8] c"\0A\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [23 x i8] c"_tests/simple/calls.cl\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([23 x i8]* @s0, i32 0, i32 0)}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 22}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 7}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 5}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t*, i32 }
@Main_protObj = global %struct.Main_protObj_t {i32 5, i32 4, %struct.Main_dispTab_t* @Main_dispTab, i32 0}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__6, %struct.String_protObj_t* @str_const__7, %struct.String_protObj_t* @str_const__8, %struct.String_protObj_t* @str_const__9, %struct.String_protObj_t* @str_const__10, %struct.String_protObj_t* @str_const__11 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*), i8* bitcast (i32 (i32,i32,i32)* @Main__f to i8*), i8* bitcast (i32 (i32,i32)* @Main__g to i8*), i8* bitcast (i32 (i32,i32)* @Main__h to i8*)}

