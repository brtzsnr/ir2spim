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
;- block -
;; -> block: linia 3
;- block -- dispatch -
;; -> dispatch: linia 4
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- dispatch -
;; -> dispatch: linia 5
;;generez codul pentru apelul metodei substr
;- block -- dispatch -- dispatch -- int_const -
;; -> int_const: linia 5
  %VR1 = add i32 1, 0
;; <- int_const: linia 5
;- block -- dispatch -- dispatch -- int_const -
;; -> int_const: linia 5
  %VR2 = add i32 3, 0
;; <- int_const: linia 5
;- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 5
;;generez codul pentru apelul metodei type_name
;- block -- dispatch -- dispatch -- dispatch -- isvoid -
;; -> isvoid: linia 5
;- block -- dispatch -- dispatch -- dispatch -- isvoid -- object -
;; -> object: linia 5
;; <- object: linia 5
  %VR3 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR3, label %void_Main_0, label %not_void_Main_0
;#######################################; <- entry


;#######################################; -> void_Main_0
void_Main_0:
  %VR4.0 = add i32 0, 1
  br label %join_void_Main_0
;#######################################; <- void_Main_0


;#######################################; -> not_void_Main_0
not_void_Main_0:
  %VR4.1 = add i32 0, 0
  br label %join_void_Main_0
;#######################################; <- not_void_Main_0


;#######################################; -> join_void_Main_0
join_void_Main_0:
  %VR5 = phi i32 [ %VR4.0, %void_Main_0 ], [ %VR4.1, %not_void_Main_0 ]
;; <- isvoid: linia 5
;boxing to bool
  %VR6 = call i32  @Object__copy(i32 ptrtoint (%struct.Bool_protObj_t* @Bool_protObj to i32))
  %VR7 = add i32 %VR6, 12
  %VR8 = inttoptr i32 %VR7 to i32*
  store i32 %VR5, i32* %VR8
  %VR9 = inttoptr i32 %VR6 to i32*
  %VR10 = icmp eq i32* %VR9,  null
  br i1 %VR10, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- join_void_Main_0


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__3 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR11 = ptrtoint i32* %VR9 to i32 
  %VR12 = add i32 %VR11, 8
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
  %VR15 = add i32 %VR14, 8
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = load i32* %VR16
  %VR18 = inttoptr i32 %VR17 to i32 (i32)*
  %VR19 = call i32 (i32)* %VR18(i32 %VR6)
;; <- dispatch: linia 5
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = icmp eq i32* %VR20,  null
  br i1 %VR21, label %false_dispatch1, label %dispatch_not_void_Main_1
;#######################################; <- dispatch_not_void_Main_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__3 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Main_1
dispatch_not_void_Main_1:
  %VR22 = ptrtoint i32* %VR20 to i32 
  %VR23 = add i32 %VR22, 8
  %VR24 = inttoptr i32 %VR23 to i32*
  %VR25 = load i32* %VR24
  %VR26 = add i32 %VR25, 20
  %VR27 = inttoptr i32 %VR26 to i32*
  %VR28 = load i32* %VR27
;boxing to int
  %VR29 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR30 = add i32 %VR29, 12
  %VR31 = inttoptr i32 %VR30 to i32*
  store i32 %VR1, i32* %VR31
;boxing to int
  %VR32 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR33 = add i32 %VR32, 12
  %VR34 = inttoptr i32 %VR33 to i32*
  store i32 %VR2, i32* %VR34
  %VR35 = inttoptr i32 %VR28 to i32 (i32, i32, i32)*
  %VR36 = call i32 (i32, i32, i32)* %VR35(i32 %VR19, i32 %VR29, i32 %VR32)
;; <- dispatch: linia 5
;- block -- dispatch -- dispatch -
;; -> dispatch: linia 4
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 4
;;generez codul pentru apelul metodei substr
;- block -- dispatch -- dispatch -- dispatch -- int_const -
;; -> int_const: linia 4
  %VR37 = add i32 4, 0
;; <- int_const: linia 4
;- block -- dispatch -- dispatch -- dispatch -- int_const -
;; -> int_const: linia 4
  %VR38 = add i32 1, 0
;; <- int_const: linia 4
;- block -- dispatch -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 4
;;generez codul pentru apelul metodei type_name
;- block -- dispatch -- dispatch -- dispatch -- dispatch -- new -
;; -> new: linia 4
  %VR39 = call i32  @Object__copy(i32 ptrtoint (%struct.Object_protObj_t* @Object_protObj to i32))
  call void @Object_init(i32 %VR39)
;; <- new: linia 4
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = icmp eq i32* %VR40,  null
  br i1 %VR41, label %false_dispatch2, label %dispatch_not_void_Main_2
;#######################################; <- dispatch_not_void_Main_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__0 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Main_2
dispatch_not_void_Main_2:
  %VR42 = ptrtoint i32* %VR40 to i32 
  %VR43 = add i32 %VR42, 8
  %VR44 = inttoptr i32 %VR43 to i32*
  %VR45 = load i32* %VR44
  %VR46 = add i32 %VR45, 8
  %VR47 = inttoptr i32 %VR46 to i32*
  %VR48 = load i32* %VR47
  %VR49 = inttoptr i32 %VR48 to i32 (i32)*
  %VR50 = call i32 (i32)* %VR49(i32 %VR39)
;; <- dispatch: linia 4
  %VR51 = inttoptr i32 %VR50 to i32*
  %VR52 = icmp eq i32* %VR51,  null
  br i1 %VR52, label %false_dispatch3, label %dispatch_not_void_Main_3
;#######################################; <- dispatch_not_void_Main_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__0 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Main_3
dispatch_not_void_Main_3:
  %VR53 = ptrtoint i32* %VR51 to i32 
  %VR54 = add i32 %VR53, 8
  %VR55 = inttoptr i32 %VR54 to i32*
  %VR56 = load i32* %VR55
  %VR57 = add i32 %VR56, 20
  %VR58 = inttoptr i32 %VR57 to i32*
  %VR59 = load i32* %VR58
;boxing to int
  %VR60 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR61 = add i32 %VR60, 12
  %VR62 = inttoptr i32 %VR61 to i32*
  store i32 %VR37, i32* %VR62
;boxing to int
  %VR63 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR64 = add i32 %VR63, 12
  %VR65 = inttoptr i32 %VR64 to i32*
  store i32 %VR38, i32* %VR65
  %VR66 = inttoptr i32 %VR59 to i32 (i32, i32, i32)*
  %VR67 = call i32 (i32, i32, i32)* %VR66(i32 %VR50, i32 %VR60, i32 %VR63)
;; <- dispatch: linia 4
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 4
;; <- object: linia 4
  %VR68 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR68, label %false_dispatch4, label %dispatch_not_void_Main_4
;#######################################; <- dispatch_not_void_Main_3


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__0 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Main_4
dispatch_not_void_Main_4:
  %VR69 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR70 = add i32 %VR69, 8
  %VR71 = inttoptr i32 %VR70 to i32*
  %VR72 = load i32* %VR71
  %VR73 = add i32 %VR72, 16
  %VR74 = inttoptr i32 %VR73 to i32*
  %VR75 = load i32* %VR74
  %VR76 = inttoptr i32 %VR75 to i32 (i32, i32)*
  %VR77 = call i32 (i32, i32)* %VR76(i32 %ARG, i32 %VR67)
;; <- dispatch: linia 4
  %VR78 = inttoptr i32 %VR77 to i32*
  %VR79 = icmp eq i32* %VR78,  null
  br i1 %VR79, label %false_dispatch5, label %dispatch_not_void_Main_5
;#######################################; <- dispatch_not_void_Main_4


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__0 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_Main_5
dispatch_not_void_Main_5:
  %VR80 = ptrtoint i32* %VR78 to i32 
  %VR81 = add i32 %VR80, 8
  %VR82 = inttoptr i32 %VR81 to i32*
  %VR83 = load i32* %VR82
  %VR84 = add i32 %VR83, 16
  %VR85 = inttoptr i32 %VR84 to i32*
  %VR86 = load i32* %VR85
  %VR87 = inttoptr i32 %VR86 to i32 (i32, i32)*
  %VR88 = call i32 (i32, i32)* %VR87(i32 %VR77, i32 %VR36)
;; <- dispatch: linia 4
;- block -- dispatch -
;; -> dispatch: linia 6
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 6
  %VR89 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 6
;- block -- dispatch -- object -
;; -> object: linia 6
;; <- object: linia 6
  %VR90 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR90, label %false_dispatch6, label %dispatch_not_void_Main_6
;#######################################; <- dispatch_not_void_Main_5


;#######################################; -> false_dispatch6
false_dispatch6:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret i32 0
;#######################################; <- false_dispatch6


;#######################################; -> dispatch_not_void_Main_6
dispatch_not_void_Main_6:
  %VR91 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR92 = add i32 %VR91, 8
  %VR93 = inttoptr i32 %VR92 to i32*
  %VR94 = load i32* %VR93
  %VR95 = add i32 %VR94, 16
  %VR96 = inttoptr i32 %VR95 to i32*
  %VR97 = load i32* %VR96
  %VR98 = inttoptr i32 %VR97 to i32 (i32, i32)*
  %VR99 = call i32 (i32, i32)* %VR98(i32 %ARG, i32 %VR89)
;; <- dispatch: linia 6
;; <- block: linia 3
  ret i32 %VR99
;#######################################; <- dispatch_not_void_Main_6


}
@s12 = internal constant [1 x i8] c"\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__5, i8* getelementptr ([1 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [5 x i8] c"Main\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([5 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [3 x i8] c"IO\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__6, i8* getelementptr ([3 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [7 x i8] c"String\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([7 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [5 x i8] c"Bool\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([5 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [4 x i8] c"Int\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__2, i8* getelementptr ([4 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [7 x i8] c"Object\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([7 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__7, i8* getelementptr ([11 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([10 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [10 x i8] c"_no_class\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([10 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [14 x i8] c"<basic class>\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([14 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [2 x i8] c"\0A\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([2 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [15 x i8] c"/tmp/cplinLiPE\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([15 x i8]* @s0, i32 0, i32 0)}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 14}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 5}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t* }
@Main_protObj = global %struct.Main_protObj_t {i32 5, i32 3, %struct.Main_dispTab_t* @Main_dispTab}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__6, %struct.String_protObj_t* @str_const__7, %struct.String_protObj_t* @str_const__8, %struct.String_protObj_t* @str_const__9, %struct.String_protObj_t* @str_const__10, %struct.String_protObj_t* @str_const__11 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}

