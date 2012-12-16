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
;- loop -
;; -> loop: linia 5
;; conditie
  br label %start_loop_Main_0
;#######################################; <- entry


;#######################################; -> start_loop_Main_0
start_loop_Main_0:
;- loop -- lt -
;; -> lt: linia 5
;- loop -- lt -- object -
;; -> object: linia 5
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 5
;- loop -- lt -- int_const -
;; -> int_const: linia 5
  %VR4 = add i32 9000, 0
;; <- int_const: linia 5
  %VR5 = icmp slt i32 %VR3,  %VR4
;; <- lt: linia 5
  %VR6 = icmp eq i1 %VR5,  false
  br i1 %VR6, label %sfarsit_loop_Main_0, label %label_next_loop_Main_0
;#######################################; <- start_loop_Main_0


;#######################################; -> label_next_loop_Main_0
label_next_loop_Main_0:
;; corp loop
;- loop -- dispatch -
;; -> dispatch: linia 5
;;generez codul pentru apelul metodei out_int
;- loop -- dispatch -- assign -
;; -> assign: linia 5
;- loop -- dispatch -- assign -- plus -
;; -> plus: linia 5
;- loop -- dispatch -- assign -- plus -- object -
;; -> object: linia 5
  %VR7 = add i32 %ARG, 12
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
;; <- object: linia 5
;- loop -- dispatch -- assign -- plus -- int_const -
;; -> int_const: linia 5
  %VR10 = add i32 1, 0
;; <- int_const: linia 5
  %VR11 = add i32 %VR9, %VR10
;; <- plus: linia 5
  %VR12 = add i32 %ARG, 12
  %VR13 = inttoptr i32 %VR12 to i32*
  store i32 %VR11, i32* %VR13
;; <- assign: linia 5
;- loop -- dispatch -- object -
;; -> object: linia 5
;; <- object: linia 5
  %VR14 = icmp eq %struct.Main_protObj_t* %VR0,  null
  br i1 %VR14, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- label_next_loop_Main_0


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__2 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR15 = ptrtoint %struct.Main_protObj_t* %VR0 to i32 
  %VR16 = add i32 %VR15, 8
  %VR17 = inttoptr i32 %VR16 to i32*
  %VR18 = load i32* %VR17
  %VR19 = add i32 %VR18, 12
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = load i32* %VR20
;boxing to int
  %VR22 = call i32  @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %VR23 = add i32 %VR22, 12
  %VR24 = inttoptr i32 %VR23 to i32*
  store i32 %VR11, i32* %VR24
  %VR25 = inttoptr i32 %VR21 to i32 (i32, i32)*
  %VR26 = call i32 (i32, i32)* %VR25(i32 %ARG, i32 %VR22)
;; <- dispatch: linia 5
  br label %start_loop_Main_0
;#######################################; <- dispatch_not_void_Main_0


;#######################################; -> sfarsit_loop_Main_0
sfarsit_loop_Main_0:
;; <- loop: linia 5
  ret i32 %ARG
;#######################################; <- sfarsit_loop_Main_0


}
@s11 = internal constant [1 x i8] c"\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__3, i8* getelementptr ([1 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [5 x i8] c"Main\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([5 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [3 x i8] c"IO\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__5, i8* getelementptr ([3 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [7 x i8] c"String\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__6, i8* getelementptr ([7 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [5 x i8] c"Bool\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([5 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [4 x i8] c"Int\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__7, i8* getelementptr ([4 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [7 x i8] c"Object\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__6, i8* getelementptr ([7 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__8, i8* getelementptr ([11 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([10 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [10 x i8] c"_no_class\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__9, i8* getelementptr ([10 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [14 x i8] c"<basic class>\00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__10, i8* getelementptr ([14 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [15 x i8] c"/tmp/cplGYEVRa\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__11, i8* getelementptr ([15 x i8]* @s0, i32 0, i32 0)}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 14}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 5}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9000}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t*, i32 }
@Main_protObj = global %struct.Main_protObj_t {i32 5, i32 4, %struct.Main_dispTab_t* @Main_dispTab, i32 0}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__5, %struct.String_protObj_t* @str_const__6, %struct.String_protObj_t* @str_const__7, %struct.String_protObj_t* @str_const__8, %struct.String_protObj_t* @str_const__9, %struct.String_protObj_t* @str_const__10 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}

