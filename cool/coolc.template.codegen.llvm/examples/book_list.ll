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
define void @Book_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.String_protObj_t* @String_protObj to i32))
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
define i32 @Book__initBook(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Book_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- block -
;; -> block: linia 7
;- block -- assign -
;; -> assign: linia 8
;- block -- assign -- object -
;; -> object: linia 8
;; <- object: linia 8
  %VR3 = add i32 %ARG, 12
  %VR4 = inttoptr i32 %VR3 to i32*
  store i32 %VR1, i32* %VR4
;; <- assign: linia 8
;- block -- assign -
;; -> assign: linia 9
;- block -- assign -- object -
;; -> object: linia 9
;; <- object: linia 9
  %VR5 = add i32 %ARG, 16
  %VR6 = inttoptr i32 %VR5 to i32*
  store i32 %VR2, i32* %VR6
;; <- assign: linia 9
;- block -- object -
;; -> object: linia 10
;; <- object: linia 10
;; <- block: linia 7
  ret i32 %ARG
;#######################################; <- entry


}
define i32 @Book__print(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Book_protObj_t*
;- block -
;; -> block: linia 15
;- block -- dispatch -
;; -> dispatch: linia 16
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 16
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 16
;- block -- dispatch -- dispatch -
;; -> dispatch: linia 16
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 16
  %VR2 = add i32 %ARG, 12
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = load i32* %VR3
;; <- object: linia 16
;- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 16
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- dispatch -- dispatch -- string_const -
;; -> string_const: linia 16
  %VR5 = ptrtoint %struct.String_protObj_t* @str_const__1 to i32 
;; <- string_const: linia 16
;- block -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 16
;; <- object: linia 16
  %VR6 = icmp eq %struct.Book_protObj_t* %VR0,  null
  br i1 %VR6, label %false_dispatch0, label %dispatch_not_void_Book_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__2 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Book_0
dispatch_not_void_Book_0:
  %VR7 = ptrtoint %struct.Book_protObj_t* %VR0 to i32 
  %VR8 = add i32 %VR7, 8
  %VR9 = inttoptr i32 %VR8 to i32*
  %VR10 = load i32* %VR9
  %VR11 = add i32 %VR10, 16
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
  %VR14 = inttoptr i32 %VR13 to i32 (i32, i32)*
  %VR15 = call i32 (i32, i32)* %VR14(i32 %ARG, i32 %VR5)
;; <- dispatch: linia 16
  %VR16 = inttoptr i32 %VR15 to i32*
  %VR17 = icmp eq i32* %VR16,  null
  br i1 %VR17, label %false_dispatch1, label %dispatch_not_void_Book_1
;#######################################; <- dispatch_not_void_Book_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__2 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Book_1
dispatch_not_void_Book_1:
  %VR18 = ptrtoint i32* %VR16 to i32 
  %VR19 = add i32 %VR18, 8
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = load i32* %VR20
  %VR22 = add i32 %VR21, 16
  %VR23 = inttoptr i32 %VR22 to i32*
  %VR24 = load i32* %VR23
  %VR25 = inttoptr i32 %VR24 to i32 (i32, i32)*
  %VR26 = call i32 (i32, i32)* %VR25(i32 %VR15, i32 %VR4)
;; <- dispatch: linia 16
  %VR27 = inttoptr i32 %VR26 to i32*
  %VR28 = icmp eq i32* %VR27,  null
  br i1 %VR28, label %false_dispatch2, label %dispatch_not_void_Book_2
;#######################################; <- dispatch_not_void_Book_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__2 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Book_2
dispatch_not_void_Book_2:
  %VR29 = ptrtoint i32* %VR27 to i32 
  %VR30 = add i32 %VR29, 8
  %VR31 = inttoptr i32 %VR30 to i32*
  %VR32 = load i32* %VR31
  %VR33 = add i32 %VR32, 16
  %VR34 = inttoptr i32 %VR33 to i32*
  %VR35 = load i32* %VR34
  %VR36 = inttoptr i32 %VR35 to i32 (i32, i32)*
  %VR37 = call i32 (i32, i32)* %VR36(i32 %VR26, i32 %VR1)
;; <- dispatch: linia 16
;- block -- dispatch -
;; -> dispatch: linia 17
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 17
  %VR38 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 17
;- block -- dispatch -- dispatch -
;; -> dispatch: linia 17
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 17
  %VR39 = add i32 %ARG, 16
  %VR40 = inttoptr i32 %VR39 to i32*
  %VR41 = load i32* %VR40
;; <- object: linia 17
;- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 17
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- dispatch -- dispatch -- string_const -
;; -> string_const: linia 17
  %VR42 = ptrtoint %struct.String_protObj_t* @str_const__3 to i32 
;; <- string_const: linia 17
;- block -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 17
;; <- object: linia 17
  %VR43 = icmp eq %struct.Book_protObj_t* %VR0,  null
  br i1 %VR43, label %false_dispatch3, label %dispatch_not_void_Book_3
;#######################################; <- dispatch_not_void_Book_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__3 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Book_3
dispatch_not_void_Book_3:
  %VR44 = ptrtoint %struct.Book_protObj_t* %VR0 to i32 
  %VR45 = add i32 %VR44, 8
  %VR46 = inttoptr i32 %VR45 to i32*
  %VR47 = load i32* %VR46
  %VR48 = add i32 %VR47, 16
  %VR49 = inttoptr i32 %VR48 to i32*
  %VR50 = load i32* %VR49
  %VR51 = inttoptr i32 %VR50 to i32 (i32, i32)*
  %VR52 = call i32 (i32, i32)* %VR51(i32 %ARG, i32 %VR42)
;; <- dispatch: linia 17
  %VR53 = inttoptr i32 %VR52 to i32*
  %VR54 = icmp eq i32* %VR53,  null
  br i1 %VR54, label %false_dispatch4, label %dispatch_not_void_Book_4
;#######################################; <- dispatch_not_void_Book_3


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__3 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Book_4
dispatch_not_void_Book_4:
  %VR55 = ptrtoint i32* %VR53 to i32 
  %VR56 = add i32 %VR55, 8
  %VR57 = inttoptr i32 %VR56 to i32*
  %VR58 = load i32* %VR57
  %VR59 = add i32 %VR58, 16
  %VR60 = inttoptr i32 %VR59 to i32*
  %VR61 = load i32* %VR60
  %VR62 = inttoptr i32 %VR61 to i32 (i32, i32)*
  %VR63 = call i32 (i32, i32)* %VR62(i32 %VR52, i32 %VR41)
;; <- dispatch: linia 17
  %VR64 = inttoptr i32 %VR63 to i32*
  %VR65 = icmp eq i32* %VR64,  null
  br i1 %VR65, label %false_dispatch5, label %dispatch_not_void_Book_5
;#######################################; <- dispatch_not_void_Book_4


;#######################################; -> false_dispatch5
false_dispatch5:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__3 to i32))
  ret i32 0
;#######################################; <- false_dispatch5


;#######################################; -> dispatch_not_void_Book_5
dispatch_not_void_Book_5:
  %VR66 = ptrtoint i32* %VR64 to i32 
  %VR67 = add i32 %VR66, 8
  %VR68 = inttoptr i32 %VR67 to i32*
  %VR69 = load i32* %VR68
  %VR70 = add i32 %VR69, 16
  %VR71 = inttoptr i32 %VR70 to i32*
  %VR72 = load i32* %VR71
  %VR73 = inttoptr i32 %VR72 to i32 (i32, i32)*
  %VR74 = call i32 (i32, i32)* %VR73(i32 %VR63, i32 %VR38)
;; <- dispatch: linia 17
;- block -- object -
;; -> object: linia 18
;; <- object: linia 18
;; <- block: linia 15
  ret i32 %ARG
;#######################################; <- dispatch_not_void_Book_5


}
define void @Article_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @Book_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  %VR1 = call i32  @Object__copy(i32 ptrtoint (%struct.String_protObj_t* @String_protObj to i32))
  %VR2 = add i32 %ARG, 20
  %VR3 = inttoptr i32 %VR2 to i32*
  store i32 %VR1, i32* %VR3
  ret void
;#######################################; <- entry


}
define i32 @Article__initArticle(i32 %ARG, i32 %ARG0, i32 %ARG1, i32 %ARG2)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Article_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
  %VR3 = add i32 %ARG2, 0
;- block -
;; -> block: linia 28
;- block -- dispatch -
;; -> dispatch: linia 29
;;generez codul pentru apelul metodei initBook
;- block -- dispatch -- object -
;; -> object: linia 29
;; <- object: linia 29
;- block -- dispatch -- object -
;; -> object: linia 29
;; <- object: linia 29
;- block -- dispatch -- object -
;; -> object: linia 29
;; <- object: linia 29
  %VR4 = icmp eq %struct.Article_protObj_t* %VR0,  null
  br i1 %VR4, label %false_dispatch0, label %dispatch_not_void_Article_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__4 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Article_0
dispatch_not_void_Article_0:
  %VR5 = ptrtoint %struct.Article_protObj_t* %VR0 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 28
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32, i32, i32)*
  %VR13 = call i32 (i32, i32, i32)* %VR12(i32 %ARG, i32 %VR1, i32 %VR2)
;; <- dispatch: linia 29
;- block -- assign -
;; -> assign: linia 30
;- block -- assign -- object -
;; -> object: linia 30
;; <- object: linia 30
  %VR14 = add i32 %ARG, 20
  %VR15 = inttoptr i32 %VR14 to i32*
  store i32 %VR3, i32* %VR15
;; <- assign: linia 30
;- block -- object -
;; -> object: linia 31
;; <- object: linia 31
;; <- block: linia 28
  ret i32 %ARG
;#######################################; <- dispatch_not_void_Article_0


}
define i32 @Article__print(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Article_protObj_t*
;- block -
;; -> block: linia 36
;- block -- static_dispatch -
;; -> static_dispatch: linia 37
;;generez codul pentru apelul metodei print
;- block -- static_dispatch -- object -
;; -> object: linia 37
;; <- object: linia 37
  %VR1 = icmp eq %struct.Article_protObj_t* %VR0,  null
  br i1 %VR1, label %false_static_dispatch1, label %dispatch_not_void_Article_1
;#######################################; <- entry


;#######################################; -> false_static_dispatch1
false_static_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__5 to i32))
  ret i32 0
;#######################################; <- false_static_dispatch1


;#######################################; -> dispatch_not_void_Article_1
dispatch_not_void_Article_1:
  %VR2 = ptrtoint %struct.Book_protObj_t* @Book_protObj to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 32
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- static_dispatch: linia 37
;- block -- dispatch -
;; -> dispatch: linia 38
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- string_const -
;; -> string_const: linia 38
  %VR11 = ptrtoint %struct.String_protObj_t* @str_const__2 to i32 
;; <- string_const: linia 38
;- block -- dispatch -- dispatch -
;; -> dispatch: linia 38
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- dispatch -- object -
;; -> object: linia 38
  %VR12 = add i32 %ARG, 20
  %VR13 = inttoptr i32 %VR12 to i32*
  %VR14 = load i32* %VR13
;; <- object: linia 38
;- block -- dispatch -- dispatch -- dispatch -
;; -> dispatch: linia 38
;;generez codul pentru apelul metodei out_string
;- block -- dispatch -- dispatch -- dispatch -- string_const -
;; -> string_const: linia 38
  %VR15 = ptrtoint %struct.String_protObj_t* @str_const__4 to i32 
;; <- string_const: linia 38
;- block -- dispatch -- dispatch -- dispatch -- object -
;; -> object: linia 38
;; <- object: linia 38
  %VR16 = icmp eq %struct.Article_protObj_t* %VR0,  null
  br i1 %VR16, label %false_dispatch2, label %dispatch_not_void_Article_2
;#######################################; <- dispatch_not_void_Article_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Article_2
dispatch_not_void_Article_2:
  %VR17 = ptrtoint %struct.Article_protObj_t* %VR0 to i32 
  %VR18 = add i32 %VR17, 8
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
  %VR21 = add i32 %VR20, 16
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = load i32* %VR22
  %VR24 = inttoptr i32 %VR23 to i32 (i32, i32)*
  %VR25 = call i32 (i32, i32)* %VR24(i32 %ARG, i32 %VR15)
;; <- dispatch: linia 38
  %VR26 = inttoptr i32 %VR25 to i32*
  %VR27 = icmp eq i32* %VR26,  null
  br i1 %VR27, label %false_dispatch3, label %dispatch_not_void_Article_3
;#######################################; <- dispatch_not_void_Article_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Article_3
dispatch_not_void_Article_3:
  %VR28 = ptrtoint i32* %VR26 to i32 
  %VR29 = add i32 %VR28, 8
  %VR30 = inttoptr i32 %VR29 to i32*
  %VR31 = load i32* %VR30
  %VR32 = add i32 %VR31, 16
  %VR33 = inttoptr i32 %VR32 to i32*
  %VR34 = load i32* %VR33
  %VR35 = inttoptr i32 %VR34 to i32 (i32, i32)*
  %VR36 = call i32 (i32, i32)* %VR35(i32 %VR25, i32 %VR14)
;; <- dispatch: linia 38
  %VR37 = inttoptr i32 %VR36 to i32*
  %VR38 = icmp eq i32* %VR37,  null
  br i1 %VR38, label %false_dispatch4, label %dispatch_not_void_Article_4
;#######################################; <- dispatch_not_void_Article_3


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__6 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Article_4
dispatch_not_void_Article_4:
  %VR39 = ptrtoint i32* %VR37 to i32 
  %VR40 = add i32 %VR39, 8
  %VR41 = inttoptr i32 %VR40 to i32*
  %VR42 = load i32* %VR41
  %VR43 = add i32 %VR42, 16
  %VR44 = inttoptr i32 %VR43 to i32*
  %VR45 = load i32* %VR44
  %VR46 = inttoptr i32 %VR45 to i32 (i32, i32)*
  %VR47 = call i32 (i32, i32)* %VR46(i32 %VR36, i32 %VR11)
;; <- dispatch: linia 38
;- block -- object -
;; -> object: linia 39
;; <- object: linia 39
;; <- block: linia 36
  ret i32 %ARG
;#######################################; <- dispatch_not_void_Article_4


}
define void @BookList_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @IO_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @BookList__isNil(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.BookList_protObj_t*
;- block -
;; -> block: linia 49
;- block -- dispatch -
;; -> dispatch: linia 49
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 49
;; <- object: linia 49
  %VR1 = icmp eq %struct.BookList_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch0, label %dispatch_not_void_BookList_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__7 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_BookList_0
dispatch_not_void_BookList_0:
  %VR2 = ptrtoint %struct.BookList_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 0
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 49
;- block -- bool_const -
;; -> bool_const: linia 49
  %VR11 = add i32 1, 0
;; <- bool_const: linia 49
;; <- block: linia 49
  ret i32 %VR11
;#######################################; <- dispatch_not_void_BookList_0


}
define i32 @BookList__cons(i32 %ARG, i32 %ARG0)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.BookList_protObj_t*
  %VR1 = add i32 %ARG0, 0
;- let -
;; -> let: linia 52
;- let -- new -
;; -> new: linia 52
  %VR2 = call i32  @Object__copy(i32 ptrtoint (%struct.Cons_protObj_t* @Cons_protObj to i32))
  call void @Cons_init(i32 %VR2)
;; <- new: linia 52
;- let -- dispatch -
;; -> dispatch: linia 53
;;generez codul pentru apelul metodei init
;- let -- dispatch -- object -
;; -> object: linia 53
;; <- object: linia 53
;- let -- dispatch -- object -
;; -> object: linia 53
;; <- object: linia 53
;- let -- dispatch -- object -
;; -> object: linia 53
;; <- object: linia 53
  %VR3 = inttoptr i32 %VR2 to i32*
  %VR4 = icmp eq i32* %VR3,  null
  br i1 %VR4, label %false_dispatch1, label %dispatch_not_void_BookList_1
;#######################################; <- entry


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__8 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_BookList_1
dispatch_not_void_BookList_1:
  %VR5 = ptrtoint i32* %VR3 to i32 
  %VR6 = add i32 %VR5, 8
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = add i32 %VR8, 48
  %VR10 = inttoptr i32 %VR9 to i32*
  %VR11 = load i32* %VR10
  %VR12 = inttoptr i32 %VR11 to i32 (i32, i32, i32)*
  %VR13 = call i32 (i32, i32, i32)* %VR12(i32 %VR2, i32 %VR1, i32 %ARG)
;; <- dispatch: linia 53
;; <- let: linia 52
  ret i32 %VR13
;#######################################; <- dispatch_not_void_BookList_1


}
define i32 @BookList__car(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.BookList_protObj_t*
;- block -
;; -> block: linia 61
;- block -- dispatch -
;; -> dispatch: linia 61
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 61
;; <- object: linia 61
  %VR1 = icmp eq %struct.BookList_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch2, label %dispatch_not_void_BookList_2
;#######################################; <- entry


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__9 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_BookList_2
dispatch_not_void_BookList_2:
  %VR2 = ptrtoint %struct.BookList_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 0
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 61
;- block -- new -
;; -> new: linia 61
  %VR11 = call i32  @Object__copy(i32 ptrtoint (%struct.Book_protObj_t* @Book_protObj to i32))
  call void @Book_init(i32 %VR11)
;; <- new: linia 61
;; <- block: linia 61
  ret i32 %VR11
;#######################################; <- dispatch_not_void_BookList_2


}
define i32 @BookList__cdr(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.BookList_protObj_t*
;- block -
;; -> block: linia 67
;- block -- dispatch -
;; -> dispatch: linia 67
;;generez codul pentru apelul metodei abort
;- block -- dispatch -- object -
;; -> object: linia 67
;; <- object: linia 67
  %VR1 = icmp eq %struct.BookList_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch3, label %dispatch_not_void_BookList_3
;#######################################; <- entry


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__10 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_BookList_3
dispatch_not_void_BookList_3:
  %VR2 = ptrtoint %struct.BookList_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 0
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 67
;- block -- new -
;; -> new: linia 67
  %VR11 = call i32  @Object__copy(i32 ptrtoint (%struct.BookList_protObj_t* @BookList_protObj to i32))
  call void @BookList_init(i32 %VR11)
;; <- new: linia 67
;; <- block: linia 67
  ret i32 %VR11
;#######################################; <- dispatch_not_void_BookList_3


}
define i32 @BookList__print_list(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.BookList_protObj_t*
;- dispatch -
;; -> dispatch: linia 69
;;generez codul pentru apelul metodei abort
;- dispatch -- object -
;; -> object: linia 69
;; <- object: linia 69
  %VR1 = icmp eq %struct.BookList_protObj_t* %VR0,  null
  br i1 %VR1, label %false_dispatch4, label %dispatch_not_void_BookList_4
;#######################################; <- entry


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__11 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_BookList_4
dispatch_not_void_BookList_4:
  %VR2 = ptrtoint %struct.BookList_protObj_t* %VR0 to i32 
  %VR3 = add i32 %VR2, 8
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = load i32* %VR4
  %VR6 = add i32 %VR5, 0
  %VR7 = inttoptr i32 %VR6 to i32*
  %VR8 = load i32* %VR7
  %VR9 = inttoptr i32 %VR8 to i32 (i32)*
  %VR10 = call i32 (i32)* %VR9(i32 %ARG)
;; <- dispatch: linia 69
  ret i32 %VR10
;#######################################; <- dispatch_not_void_BookList_4


}
define void @Cons_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @BookList_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @Cons__isNil(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Cons_protObj_t*
;- bool_const -
;; -> bool_const: linia 78
  %VR1 = add i32 0, 0
;; <- bool_const: linia 78
  ret i32 %VR1
;#######################################; <- entry


}
define i32 @Cons__init(i32 %ARG, i32 %ARG0, i32 %ARG1)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Cons_protObj_t*
  %VR1 = add i32 %ARG0, 0
  %VR2 = add i32 %ARG1, 0
;- block -
;; -> block: linia 81
;- block -- assign -
;; -> assign: linia 82
;- block -- assign -- object -
;; -> object: linia 82
;; <- object: linia 82
  %VR3 = add i32 %ARG, 12
  %VR4 = inttoptr i32 %VR3 to i32*
  store i32 %VR1, i32* %VR4
;; <- assign: linia 82
;- block -- assign -
;; -> assign: linia 83
;- block -- assign -- object -
;; -> object: linia 83
;; <- object: linia 83
  %VR5 = add i32 %ARG, 16
  %VR6 = inttoptr i32 %VR5 to i32*
  store i32 %VR2, i32* %VR6
;; <- assign: linia 83
;- block -- object -
;; -> object: linia 84
;; <- object: linia 84
;; <- block: linia 81
  ret i32 %ARG
;#######################################; <- entry


}
define i32 @Cons__car(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Cons_protObj_t*
;- object -
;; -> object: linia 88
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 88
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @Cons__cdr(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Cons_protObj_t*
;- object -
;; -> object: linia 90
  %VR1 = add i32 %ARG, 16
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 90
  ret i32 %VR3
;#######################################; <- entry


}
define i32 @Cons__print_list(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Cons_protObj_t*
;- block -
;; -> block: linia 93
;- block -- typcase -
;; -> typcase: linia 94
;- block -- typcase -- dispatch -
;; -> dispatch: linia 94
;;generez codul pentru apelul metodei print
;- block -- typcase -- dispatch -- object -
;; -> object: linia 94
  %VR1 = add i32 %ARG, 12
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
;; <- object: linia 94
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_dispatch0, label %dispatch_not_void_Cons_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__12 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Cons_0
dispatch_not_void_Cons_0:
  %VR6 = ptrtoint i32* %VR4 to i32 
  %VR7 = add i32 %VR6, 8
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = add i32 %VR9, 32
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = inttoptr i32 %VR12 to i32 (i32)*
  %VR14 = call i32 (i32)* %VR13(i32 %VR3)
;; <- dispatch: linia 94
  %VR15 = inttoptr i32 %VR14 to i32*
  %VR16 = icmp eq i32* %VR15,  null
  br i1 %VR16, label %false_typcase00, label %case_not_void_Cons_0
;#######################################; <- dispatch_not_void_Cons_0


;#######################################; -> false_typcase00
false_typcase00:
  call void @_case_abort2(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__12 to i32))
  ret i32 0
;#######################################; <- false_typcase00


;#######################################; -> case_not_void_Cons_0
case_not_void_Cons_0:
;;rezerv %VR17 pentru rezultatul case-ului
  %VR18 = ptrtoint i32* %VR15 to i32 
  %VR19 = add i32 %VR18, 0
  %VR20 = inttoptr i32 %VR19 to i32*
  %VR21 = load i32* %VR20
  %VR22 = icmp eq i32 %VR21,  0
  br i1 %VR22, label %case_0_noAlternativeCons_0, label %next0_case_0_noAlternativeCons_0
;#######################################; <- case_not_void_Cons_0


;#######################################; -> next0_case_0_noAlternativeCons_0
next0_case_0_noAlternativeCons_0:
  %VR23 = icmp eq i32 %VR21,  1
  br i1 %VR23, label %case_0_noAlternativeCons_0, label %next1_case_0_noAlternativeCons_0
;#######################################; <- next0_case_0_noAlternativeCons_0


;#######################################; -> next1_case_0_noAlternativeCons_0
next1_case_0_noAlternativeCons_0:
  %VR24 = icmp eq i32 %VR21,  2
  br i1 %VR24, label %case_0_noAlternativeCons_0, label %next2_case_0_noAlternativeCons_0
;#######################################; <- next1_case_0_noAlternativeCons_0


;#######################################; -> next2_case_0_noAlternativeCons_0
next2_case_0_noAlternativeCons_0:
  %VR25 = icmp eq i32 %VR21,  3
  br i1 %VR25, label %case_0_noAlternativeCons_0, label %next3_case_0_noAlternativeCons_0
;#######################################; <- next2_case_0_noAlternativeCons_0


;#######################################; -> next3_case_0_noAlternativeCons_0
next3_case_0_noAlternativeCons_0:
  %VR26 = icmp eq i32 %VR21,  4
  br i1 %VR26, label %case_0_noAlternativeCons_0, label %next4_case_0_noAlternativeCons_0
;#######################################; <- next3_case_0_noAlternativeCons_0


;#######################################; -> next4_case_0_noAlternativeCons_0
next4_case_0_noAlternativeCons_0:
  %VR27 = icmp eq i32 %VR21,  5
  br i1 %VR27, label %case_Book__Cons_0, label %next5_case_Book__Cons_0
;#######################################; <- next4_case_0_noAlternativeCons_0


;#######################################; -> next5_case_Book__Cons_0
next5_case_Book__Cons_0:
  %VR28 = icmp eq i32 %VR21,  6
  br i1 %VR28, label %case_Article__Cons_0, label %next6_case_Article__Cons_0
;#######################################; <- next5_case_Book__Cons_0


;#######################################; -> next6_case_Article__Cons_0
next6_case_Article__Cons_0:
  %VR29 = icmp eq i32 %VR21,  7
  br i1 %VR29, label %case_0_noAlternativeCons_0, label %next7_case_0_noAlternativeCons_0
;#######################################; <- next6_case_Article__Cons_0


;#######################################; -> next7_case_0_noAlternativeCons_0
next7_case_0_noAlternativeCons_0:
  %VR30 = icmp eq i32 %VR21,  8
  br i1 %VR30, label %case_0_noAlternativeCons_0, label %next8_case_0_noAlternativeCons_0
;#######################################; <- next7_case_0_noAlternativeCons_0


;#######################################; -> next8_case_0_noAlternativeCons_0
next8_case_0_noAlternativeCons_0:
  %VR31 = icmp eq i32 %VR21,  9
  br i1 %VR31, label %case_0_noAlternativeCons_0, label %next9_case_0_noAlternativeCons_0
;#######################################; <- next8_case_0_noAlternativeCons_0


;#######################################; -> next9_case_0_noAlternativeCons_0
next9_case_0_noAlternativeCons_0:
  %VR32 = icmp eq i32 %VR21,  10
  br i1 %VR32, label %case_0_noAlternativeCons_0, label %next10_case_0_noAlternativeCons_0
;#######################################; <- next9_case_0_noAlternativeCons_0


;#######################################; -> next10_case_0_noAlternativeCons_0
next10_case_0_noAlternativeCons_0:
  br label %case_Book__Cons_0
;#######################################; <- next10_case_0_noAlternativeCons_0


;#######################################; -> case_Book__Cons_0
case_Book__Cons_0:
  %VR33 = call i32  @Object__copy(i32 %VR18)
  %VR34 = add i32 5, 0
  %VR35 = ptrtoint %struct.Book_protObj_t* @Book_protObj to i32 
  %VR36 = add i32 %VR35, 8
  %VR37 = inttoptr i32 %VR36 to i32*
  %VR38 = load i32* %VR37
  %VR39 = add i32 %VR33, 0
  %VR40 = inttoptr i32 %VR39 to i32*
  store i32 %VR34, i32* %VR40
  %VR41 = add i32 %VR33, 0
  %VR42 = inttoptr i32 %VR41 to i32*
  store i32 %VR38, i32* %VR42
  %VR43 = add i32 %VR33, 0
  %VR44 = inttoptr i32 %VR43 to i32*
  %VR45 = load i32* %VR44
  %VR46 = icmp eq i32 %VR45,  1
  br i1 %VR46, label %typcase_ok_Cons_01, label %unboxing_0_Cons_0
;#######################################; <- case_Book__Cons_0


;#######################################; -> typcase_ok_Cons_01
typcase_ok_Cons_01:
  %VR47 = icmp eq i32 %VR45,  2
  br i1 %VR47, label %typcase_ok_Cons_02, label %unboxing_0_Cons_0
;#######################################; <- typcase_ok_Cons_01


;#######################################; -> typcase_ok_Cons_02
typcase_ok_Cons_02:
  br label %after_unbox_0_Cons_0
;#######################################; <- typcase_ok_Cons_02


;#######################################; -> unboxing_0_Cons_0
unboxing_0_Cons_0:
  %VR48 = add i32 %VR33, 12
  %VR49 = inttoptr i32 %VR48 to i32*
  %VR50 = load i32* %VR49
  br label %after_unbox_0_Cons_0
;#######################################; <- unboxing_0_Cons_0


;#######################################; -> after_unbox_0_Cons_0
after_unbox_0_Cons_0:
;- block -- typcase -- dispatch -
;; -> dispatch: linia 95
;;generez codul pentru apelul metodei out_string
;- block -- typcase -- dispatch -- string_const -
;; -> string_const: linia 95
  %VR51 = ptrtoint %struct.String_protObj_t* @str_const__5 to i32 
;; <- string_const: linia 95
;- block -- typcase -- dispatch -- object -
;; -> object: linia 95
;; <- object: linia 95
  %VR52 = icmp eq %struct.Cons_protObj_t* %VR0,  null
  br i1 %VR52, label %false_dispatch1, label %dispatch_not_void_Cons_1
;#######################################; <- after_unbox_0_Cons_0


;#######################################; -> false_dispatch1
false_dispatch1:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__13 to i32))
  ret i32 0
;#######################################; <- false_dispatch1


;#######################################; -> dispatch_not_void_Cons_1
dispatch_not_void_Cons_1:
  %VR53 = ptrtoint %struct.Cons_protObj_t* %VR0 to i32 
  %VR54 = add i32 %VR53, 8
  %VR55 = inttoptr i32 %VR54 to i32*
  %VR56 = load i32* %VR55
  %VR57 = add i32 %VR56, 16
  %VR58 = inttoptr i32 %VR57 to i32*
  %VR59 = load i32* %VR58
  %VR60 = inttoptr i32 %VR59 to i32 (i32, i32)*
  %VR61 = call i32 (i32, i32)* %VR60(i32 %ARG, i32 %VR51)
;; <- dispatch: linia 95
  %VR17.0 = add i32 %VR61, 0
  br label %phi_0_sfarsit_case_Cons_0
;#######################################; <- dispatch_not_void_Cons_1


;#######################################; -> phi_0_sfarsit_case_Cons_0
phi_0_sfarsit_case_Cons_0:
  br label %sfarsit_case_Cons_0
;#######################################; <- phi_0_sfarsit_case_Cons_0


;#######################################; -> case_Article__Cons_0
case_Article__Cons_0:
  %VR62 = call i32  @Object__copy(i32 %VR18)
  %VR63 = add i32 6, 0
  %VR64 = ptrtoint %struct.Article_protObj_t* @Article_protObj to i32 
  %VR65 = add i32 %VR64, 8
  %VR66 = inttoptr i32 %VR65 to i32*
  %VR67 = load i32* %VR66
  %VR68 = add i32 %VR62, 0
  %VR69 = inttoptr i32 %VR68 to i32*
  store i32 %VR63, i32* %VR69
  %VR70 = add i32 %VR62, 0
  %VR71 = inttoptr i32 %VR70 to i32*
  store i32 %VR67, i32* %VR71
  %VR72 = add i32 %VR62, 0
  %VR73 = inttoptr i32 %VR72 to i32*
  %VR74 = load i32* %VR73
  %VR75 = icmp eq i32 %VR74,  1
  br i1 %VR75, label %typcase_ok_Cons_03, label %unboxing_1_Cons_0
;#######################################; <- case_Article__Cons_0


;#######################################; -> typcase_ok_Cons_03
typcase_ok_Cons_03:
  %VR76 = icmp eq i32 %VR74,  2
  br i1 %VR76, label %typcase_ok_Cons_04, label %unboxing_1_Cons_0
;#######################################; <- typcase_ok_Cons_03


;#######################################; -> typcase_ok_Cons_04
typcase_ok_Cons_04:
  br label %after_unbox_1_Cons_0
;#######################################; <- typcase_ok_Cons_04


;#######################################; -> unboxing_1_Cons_0
unboxing_1_Cons_0:
  %VR77 = add i32 %VR62, 12
  %VR78 = inttoptr i32 %VR77 to i32*
  %VR79 = load i32* %VR78
  br label %after_unbox_1_Cons_0
;#######################################; <- unboxing_1_Cons_0


;#######################################; -> after_unbox_1_Cons_0
after_unbox_1_Cons_0:
;- block -- typcase -- dispatch -
;; -> dispatch: linia 96
;;generez codul pentru apelul metodei out_string
;- block -- typcase -- dispatch -- string_const -
;; -> string_const: linia 96
  %VR80 = ptrtoint %struct.String_protObj_t* @str_const__6 to i32 
;; <- string_const: linia 96
;- block -- typcase -- dispatch -- object -
;; -> object: linia 96
;; <- object: linia 96
  %VR81 = icmp eq %struct.Cons_protObj_t* %VR0,  null
  br i1 %VR81, label %false_dispatch2, label %dispatch_not_void_Cons_2
;#######################################; <- after_unbox_1_Cons_0


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__14 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Cons_2
dispatch_not_void_Cons_2:
  %VR82 = ptrtoint %struct.Cons_protObj_t* %VR0 to i32 
  %VR83 = add i32 %VR82, 8
  %VR84 = inttoptr i32 %VR83 to i32*
  %VR85 = load i32* %VR84
  %VR86 = add i32 %VR85, 16
  %VR87 = inttoptr i32 %VR86 to i32*
  %VR88 = load i32* %VR87
  %VR89 = inttoptr i32 %VR88 to i32 (i32, i32)*
  %VR90 = call i32 (i32, i32)* %VR89(i32 %ARG, i32 %VR80)
;; <- dispatch: linia 96
  %VR17.1 = add i32 %VR90, 0
  br label %phi_1_sfarsit_case_Cons_0
;#######################################; <- dispatch_not_void_Cons_2


;#######################################; -> phi_1_sfarsit_case_Cons_0
phi_1_sfarsit_case_Cons_0:
  br label %sfarsit_case_Cons_0
;#######################################; <- phi_1_sfarsit_case_Cons_0


;#######################################; -> case_0_noAlternativeCons_0
case_0_noAlternativeCons_0:
  call void @_case_abort(i32 %VR18)
  ret i32 0
;#######################################; <- case_0_noAlternativeCons_0


;#######################################; -> sfarsit_case_Cons_0
sfarsit_case_Cons_0:
  %VR17 = phi i32 [ %VR17.0, %phi_0_sfarsit_case_Cons_0] , [ %VR17.1, %phi_1_sfarsit_case_Cons_0]
;; <- typcase: linia 94
;- block -- dispatch -
;; -> dispatch: linia 98
;;generez codul pentru apelul metodei print_list
;- block -- dispatch -- object -
;; -> object: linia 98
  %VR91 = add i32 %ARG, 16
  %VR92 = inttoptr i32 %VR91 to i32*
  %VR93 = load i32* %VR92
;; <- object: linia 98
  %VR94 = inttoptr i32 %VR93 to i32*
  %VR95 = icmp eq i32* %VR94,  null
  br i1 %VR95, label %false_dispatch3, label %dispatch_not_void_Cons_3
;#######################################; <- sfarsit_case_Cons_0


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__15 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Cons_3
dispatch_not_void_Cons_3:
  %VR96 = ptrtoint i32* %VR94 to i32 
  %VR97 = add i32 %VR96, 8
  %VR98 = inttoptr i32 %VR97 to i32*
  %VR99 = load i32* %VR98
  %VR100 = add i32 %VR99, 44
  %VR101 = inttoptr i32 %VR100 to i32*
  %VR102 = load i32* %VR101
  %VR103 = inttoptr i32 %VR102 to i32 (i32)*
  %VR104 = call i32 (i32)* %VR103(i32 %VR93)
;; <- dispatch: linia 98
;; <- block: linia 93
  ret i32 %VR104
;#######################################; <- dispatch_not_void_Cons_3


}
define void @Nil_init(i32 %ARG) 
{

;#######################################; -> entry
entry:
  call void @BookList_init(i32 %ARG)
  %VR0 = inttoptr i32 %ARG to i32*
  ret void
;#######################################; <- entry


}
define i32 @Nil__isNil(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Nil_protObj_t*
;- bool_const -
;; -> bool_const: linia 104
  %VR1 = add i32 1, 0
;; <- bool_const: linia 104
  ret i32 %VR1
;#######################################; <- entry


}
define i32 @Nil__print_list(i32 %ARG)
{

;#######################################; -> entry
entry:
  %VR0 = inttoptr i32 %ARG to %struct.Nil_protObj_t*
;- bool_const -
;; -> bool_const: linia 106
  %VR1 = add i32 1, 0
;; <- bool_const: linia 106
;boxing to bool
  %VR2 = call i32  @Object__copy(i32 ptrtoint (%struct.Bool_protObj_t* @Bool_protObj to i32))
  %VR3 = add i32 %VR2, 12
  %VR4 = inttoptr i32 %VR3 to i32*
  store i32 %VR1, i32* %VR4
  ret i32 %VR2
;#######################################; <- entry


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
;- let -
;; -> let: linia 115
;- let -- dispatch -
;; -> dispatch: linia 116
;;generez codul pentru apelul metodei initBook
;- let -- dispatch -- string_const -
;; -> string_const: linia 116
  %VR1 = ptrtoint %struct.String_protObj_t* @str_const__7 to i32 
;; <- string_const: linia 116
;- let -- dispatch -- string_const -
;; -> string_const: linia 117
  %VR2 = ptrtoint %struct.String_protObj_t* @str_const__8 to i32 
;; <- string_const: linia 117
;- let -- dispatch -- new -
;; -> new: linia 116
  %VR3 = call i32  @Object__copy(i32 ptrtoint (%struct.Book_protObj_t* @Book_protObj to i32))
  call void @Book_init(i32 %VR3)
;; <- new: linia 116
  %VR4 = inttoptr i32 %VR3 to i32*
  %VR5 = icmp eq i32* %VR4,  null
  br i1 %VR5, label %false_dispatch0, label %dispatch_not_void_Main_0
;#######################################; <- entry


;#######################################; -> false_dispatch0
false_dispatch0:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__16 to i32))
  ret i32 0
;#######################################; <- false_dispatch0


;#######################################; -> dispatch_not_void_Main_0
dispatch_not_void_Main_0:
  %VR6 = ptrtoint i32* %VR4 to i32 
  %VR7 = add i32 %VR6, 8
  %VR8 = inttoptr i32 %VR7 to i32*
  %VR9 = load i32* %VR8
  %VR10 = add i32 %VR9, 28
  %VR11 = inttoptr i32 %VR10 to i32*
  %VR12 = load i32* %VR11
  %VR13 = inttoptr i32 %VR12 to i32 (i32, i32, i32)*
  %VR14 = call i32 (i32, i32, i32)* %VR13(i32 %VR3, i32 %VR1, i32 %VR2)
;; <- dispatch: linia 116
;- let -- let -
;; -> let: linia 119
;- let -- let -- dispatch -
;; -> dispatch: linia 120
;;generez codul pentru apelul metodei initArticle
;- let -- let -- dispatch -- string_const -
;; -> string_const: linia 120
  %VR15 = ptrtoint %struct.String_protObj_t* @str_const__9 to i32 
;; <- string_const: linia 120
;- let -- let -- dispatch -- string_const -
;; -> string_const: linia 121
  %VR16 = ptrtoint %struct.String_protObj_t* @str_const__10 to i32 
;; <- string_const: linia 121
;- let -- let -- dispatch -- string_const -
;; -> string_const: linia 122
  %VR17 = ptrtoint %struct.String_protObj_t* @str_const__11 to i32 
;; <- string_const: linia 122
;- let -- let -- dispatch -- new -
;; -> new: linia 120
  %VR18 = call i32  @Object__copy(i32 ptrtoint (%struct.Article_protObj_t* @Article_protObj to i32))
  call void @Article_init(i32 %VR18)
;; <- new: linia 120
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
  %VR25 = add i32 %VR24, 36
  %VR26 = inttoptr i32 %VR25 to i32*
  %VR27 = load i32* %VR26
  %VR28 = inttoptr i32 %VR27 to i32 (i32, i32, i32, i32)*
  %VR29 = call i32 (i32, i32, i32, i32)* %VR28(i32 %VR18, i32 %VR15, i32 %VR16, i32 %VR17)
;; <- dispatch: linia 120
;- let -- let -- block -
;; -> block: linia 124
;- let -- let -- block -- assign -
;; -> assign: linia 125
;- let -- let -- block -- assign -- dispatch -
;; -> dispatch: linia 125
;;generez codul pentru apelul metodei cons
;- let -- let -- block -- assign -- dispatch -- object -
;; -> object: linia 125
;; <- object: linia 125
;- let -- let -- block -- assign -- dispatch -- dispatch -
;; -> dispatch: linia 125
;;generez codul pentru apelul metodei cons
;- let -- let -- block -- assign -- dispatch -- dispatch -- object -
;; -> object: linia 125
;; <- object: linia 125
;- let -- let -- block -- assign -- dispatch -- dispatch -- new -
;; -> new: linia 125
  %VR30 = call i32  @Object__copy(i32 ptrtoint (%struct.Nil_protObj_t* @Nil_protObj to i32))
  call void @Nil_init(i32 %VR30)
;; <- new: linia 125
  %VR31 = inttoptr i32 %VR30 to i32*
  %VR32 = icmp eq i32* %VR31,  null
  br i1 %VR32, label %false_dispatch2, label %dispatch_not_void_Main_2
;#######################################; <- dispatch_not_void_Main_1


;#######################################; -> false_dispatch2
false_dispatch2:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__18 to i32))
  ret i32 0
;#######################################; <- false_dispatch2


;#######################################; -> dispatch_not_void_Main_2
dispatch_not_void_Main_2:
  %VR33 = ptrtoint i32* %VR31 to i32 
  %VR34 = add i32 %VR33, 8
  %VR35 = inttoptr i32 %VR34 to i32*
  %VR36 = load i32* %VR35
  %VR37 = add i32 %VR36, 32
  %VR38 = inttoptr i32 %VR37 to i32*
  %VR39 = load i32* %VR38
  %VR40 = inttoptr i32 %VR39 to i32 (i32, i32)*
  %VR41 = call i32 (i32, i32)* %VR40(i32 %VR30, i32 %VR14)
;; <- dispatch: linia 125
  %VR42 = inttoptr i32 %VR41 to i32*
  %VR43 = icmp eq i32* %VR42,  null
  br i1 %VR43, label %false_dispatch3, label %dispatch_not_void_Main_3
;#######################################; <- dispatch_not_void_Main_2


;#######################################; -> false_dispatch3
false_dispatch3:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__18 to i32))
  ret i32 0
;#######################################; <- false_dispatch3


;#######################################; -> dispatch_not_void_Main_3
dispatch_not_void_Main_3:
  %VR44 = ptrtoint i32* %VR42 to i32 
  %VR45 = add i32 %VR44, 8
  %VR46 = inttoptr i32 %VR45 to i32*
  %VR47 = load i32* %VR46
  %VR48 = add i32 %VR47, 32
  %VR49 = inttoptr i32 %VR48 to i32*
  %VR50 = load i32* %VR49
  %VR51 = inttoptr i32 %VR50 to i32 (i32, i32)*
  %VR52 = call i32 (i32, i32)* %VR51(i32 %VR41, i32 %VR29)
;; <- dispatch: linia 125
  %VR53 = add i32 %ARG, 12
  %VR54 = inttoptr i32 %VR53 to i32*
  store i32 %VR52, i32* %VR54
;; <- assign: linia 125
;- let -- let -- block -- dispatch -
;; -> dispatch: linia 126
;;generez codul pentru apelul metodei print_list
;- let -- let -- block -- dispatch -- object -
;; -> object: linia 126
  %VR55 = add i32 %ARG, 12
  %VR56 = inttoptr i32 %VR55 to i32*
  %VR57 = load i32* %VR56
;; <- object: linia 126
  %VR58 = inttoptr i32 %VR57 to i32*
  %VR59 = icmp eq i32* %VR58,  null
  br i1 %VR59, label %false_dispatch4, label %dispatch_not_void_Main_4
;#######################################; <- dispatch_not_void_Main_3


;#######################################; -> false_dispatch4
false_dispatch4:
  call void @_dispatch_abort(i32 ptrtoint (%struct.String_protObj_t* @str_const__0 to i32), i32 ptrtoint (%struct.Int_protObj_t* @int_const__19 to i32))
  ret i32 0
;#######################################; <- false_dispatch4


;#######################################; -> dispatch_not_void_Main_4
dispatch_not_void_Main_4:
  %VR60 = ptrtoint i32* %VR58 to i32 
  %VR61 = add i32 %VR60, 8
  %VR62 = inttoptr i32 %VR61 to i32*
  %VR63 = load i32* %VR62
  %VR64 = add i32 %VR63, 44
  %VR65 = inttoptr i32 %VR64 to i32*
  %VR66 = load i32* %VR65
  %VR67 = inttoptr i32 %VR66 to i32 (i32)*
  %VR68 = call i32 (i32)* %VR67(i32 %VR57)
;; <- dispatch: linia 126
;; <- block: linia 124
;; <- let: linia 119
;; <- let: linia 115
  ret i32 %VR68
;#######################################; <- dispatch_not_void_Main_4


}
@s27 = internal constant [1 x i8] c"\00"
@str_const__27 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__1, i8* getelementptr ([1 x i8]* @s27, i32 0, i32 0)}
@s26 = internal constant [5 x i8] c"Main\00"
@str_const__26 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__20, i8* getelementptr ([5 x i8]* @s26, i32 0, i32 0)}
@s25 = internal constant [4 x i8] c"Nil\00"
@str_const__25 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__21, i8* getelementptr ([4 x i8]* @s25, i32 0, i32 0)}
@s24 = internal constant [5 x i8] c"Cons\00"
@str_const__24 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__20, i8* getelementptr ([5 x i8]* @s24, i32 0, i32 0)}
@s23 = internal constant [9 x i8] c"BookList\00"
@str_const__23 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__22, i8* getelementptr ([9 x i8]* @s23, i32 0, i32 0)}
@s22 = internal constant [8 x i8] c"Article\00"
@str_const__22 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__23, i8* getelementptr ([8 x i8]* @s22, i32 0, i32 0)}
@s21 = internal constant [5 x i8] c"Book\00"
@str_const__21 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__20, i8* getelementptr ([5 x i8]* @s21, i32 0, i32 0)}
@s20 = internal constant [3 x i8] c"IO\00"
@str_const__20 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__24, i8* getelementptr ([3 x i8]* @s20, i32 0, i32 0)}
@s19 = internal constant [7 x i8] c"String\00"
@str_const__19 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__25, i8* getelementptr ([7 x i8]* @s19, i32 0, i32 0)}
@s18 = internal constant [5 x i8] c"Bool\00"
@str_const__18 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__20, i8* getelementptr ([5 x i8]* @s18, i32 0, i32 0)}
@s17 = internal constant [4 x i8] c"Int\00"
@str_const__17 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__21, i8* getelementptr ([4 x i8]* @s17, i32 0, i32 0)}
@s16 = internal constant [7 x i8] c"Object\00"
@str_const__16 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__25, i8* getelementptr ([7 x i8]* @s16, i32 0, i32 0)}
@s15 = internal constant [11 x i8] c"_prim_slot\00"
@str_const__15 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__26, i8* getelementptr ([11 x i8]* @s15, i32 0, i32 0)}
@s14 = internal constant [10 x i8] c"SELF_TYPE\00"
@str_const__14 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__27, i8* getelementptr ([10 x i8]* @s14, i32 0, i32 0)}
@s13 = internal constant [10 x i8] c"_no_class\00"
@str_const__13 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__27, i8* getelementptr ([10 x i8]* @s13, i32 0, i32 0)}
@s12 = internal constant [14 x i8] c"<basic class>\00"
@str_const__12 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__28, i8* getelementptr ([14 x i8]* @s12, i32 0, i32 0)}
@s11 = internal constant [12 x i8] c"PC Magazine\00"
@str_const__11 = global %struct.String_protObj_t{i32 3, i32 7, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__29, i8* getelementptr ([12 x i8]* @s11, i32 0, i32 0)}
@s10 = internal constant [8 x i8] c"Ulanoff\00"
@str_const__10 = global %struct.String_protObj_t{i32 3, i32 6, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__23, i8* getelementptr ([8 x i8]* @s10, i32 0, i32 0)}
@s9 = internal constant [20 x i8] c"The Top 100 CD_ROMs\00"
@str_const__9 = global %struct.String_protObj_t{i32 3, i32 9, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__30, i8* getelementptr ([20 x i8]* @s9, i32 0, i32 0)}
@s8 = internal constant [23 x i8] c"Aho, Sethi, and Ullman\00"
@str_const__8 = global %struct.String_protObj_t{i32 3, i32 10, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__31, i8* getelementptr ([23 x i8]* @s8, i32 0, i32 0)}
@s7 = internal constant [45 x i8] c"Compilers, Principles, Techniques, and Tools\00"
@str_const__7 = global %struct.String_protObj_t{i32 3, i32 16, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__32, i8* getelementptr ([45 x i8]* @s7, i32 0, i32 0)}
@s6 = internal constant [30 x i8] c"- dynamic type was Article -\0A\00"
@str_const__6 = global %struct.String_protObj_t{i32 3, i32 12, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__4, i8* getelementptr ([30 x i8]* @s6, i32 0, i32 0)}
@s5 = internal constant [27 x i8] c"- dynamic type was Book -\0A\00"
@str_const__5 = global %struct.String_protObj_t{i32 3, i32 11, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__33, i8* getelementptr ([27 x i8]* @s5, i32 0, i32 0)}
@s4 = internal constant [14 x i8] c"periodical:  \00"
@str_const__4 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__28, i8* getelementptr ([14 x i8]* @s4, i32 0, i32 0)}
@s3 = internal constant [13 x i8] c"author:     \00"
@str_const__3 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__34, i8* getelementptr ([13 x i8]* @s3, i32 0, i32 0)}
@s2 = internal constant [2 x i8] c"\0A\00"
@str_const__2 = global %struct.String_protObj_t{i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__0, i8* getelementptr ([2 x i8]* @s2, i32 0, i32 0)}
@s1 = internal constant [13 x i8] c"title:      \00"
@str_const__1 = global %struct.String_protObj_t{i32 3, i32 8, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__34, i8* getelementptr ([13 x i8]* @s1, i32 0, i32 0)}
@s0 = internal constant [29 x i8] c"_tests/advanced/book_list.cl\00"
@str_const__0 = global %struct.String_protObj_t{i32 3, i32 12, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @int_const__35, i8* getelementptr ([29 x i8]* @s0, i32 0, i32 0)}
@int_const__35 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 28}
@int_const__34 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 12}
@int_const__33 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 26}
@int_const__32 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 44}
@int_const__31 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 22}
@int_const__30 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 19}
@int_const__29 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 11}
@int_const__28 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 13}
@int_const__27 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 9}
@int_const__26 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 10}
@int_const__25 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 6}
@int_const__24 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 2}
@int_const__23 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 7}
@int_const__22 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 8}
@int_const__21 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 3}
@int_const__20 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 4}
@int_const__19 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 126}
@int_const__18 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 125}
@int_const__17 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 120}
@int_const__16 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 116}
@int_const__15 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 98}
@int_const__14 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 96}
@int_const__13 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 95}
@int_const__12 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 94}
@int_const__11 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 69}
@int_const__10 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 67}
@int_const__9 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 61}
@int_const__8 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 53}
@int_const__7 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 49}
@int_const__6 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 38}
@int_const__5 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 37}
@int_const__4 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 29}
@int_const__3 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 17}
@int_const__2 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 16}
@int_const__1 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@int_const__0 = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 1}
%struct.Book_protObj_t = type { i32, i32, %struct.Book_dispTab_t*, i32, i32 }
@Book_protObj = global %struct.Book_protObj_t {i32 5, i32 5, %struct.Book_dispTab_t* @Book_dispTab, i32 0, i32 0}
%struct.Article_protObj_t = type { i32, i32, %struct.Article_dispTab_t*, i32, i32, i32 }
@Article_protObj = global %struct.Article_protObj_t {i32 6, i32 6, %struct.Article_dispTab_t* @Article_dispTab, i32 0, i32 0, i32 0}
%struct.BookList_protObj_t = type { i32, i32, %struct.BookList_dispTab_t* }
@BookList_protObj = global %struct.BookList_protObj_t {i32 7, i32 3, %struct.BookList_dispTab_t* @BookList_dispTab}
%struct.Cons_protObj_t = type { i32, i32, %struct.Cons_dispTab_t*, i32, i32 }
@Cons_protObj = global %struct.Cons_protObj_t {i32 8, i32 5, %struct.Cons_dispTab_t* @Cons_dispTab, i32 0, i32 0}
%struct.Nil_protObj_t = type { i32, i32, %struct.Nil_dispTab_t* }
@Nil_protObj = global %struct.Nil_protObj_t {i32 9, i32 3, %struct.Nil_dispTab_t* @Nil_dispTab}
%struct.Main_protObj_t = type { i32, i32, %struct.Main_dispTab_t*, i32 }
@Main_protObj = global %struct.Main_protObj_t {i32 10, i32 4, %struct.Main_dispTab_t* @Main_dispTab, i32 0}
%struct.class_nameTab_t = type { %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t*, %struct.String_protObj_t* }
@class_nameTab = global %struct.class_nameTab_t { %struct.String_protObj_t* @str_const__16, %struct.String_protObj_t* @str_const__17, %struct.String_protObj_t* @str_const__18, %struct.String_protObj_t* @str_const__19, %struct.String_protObj_t* @str_const__20, %struct.String_protObj_t* @str_const__21, %struct.String_protObj_t* @str_const__22, %struct.String_protObj_t* @str_const__23, %struct.String_protObj_t* @str_const__24, %struct.String_protObj_t* @str_const__25, %struct.String_protObj_t* @str_const__26 }
%struct.class_initTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
@class_initTab = global %struct.class_initTab_t { i8* bitcast (void (i32)* @Object_init to i8*), i8* bitcast (void (i32)* @Int_init to i8*), i8* bitcast (void (i32)* @Bool_init to i8*), i8* bitcast (void (i32)* @String_init to i8*), i8* bitcast (void (i32)* @IO_init to i8*), i8* bitcast (void (i32)* @Book_init to i8*), i8* bitcast (void (i32)* @Article_init to i8*), i8* bitcast (void (i32)* @BookList_init to i8*), i8* bitcast (void (i32)* @Cons_init to i8*), i8* bitcast (void (i32)* @Nil_init to i8*), i8* bitcast (void (i32)* @Main_init to i8*) }
%struct.Book_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Book_dispTab = global %struct.Book_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32,i32,i32)* @Book__initBook to i8*), i8* bitcast (i32 (i32)* @Book__print to i8*)}

%struct.Article_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Article_dispTab = global %struct.Article_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32,i32,i32)* @Book__initBook to i8*), i8* bitcast (i32 (i32)* @Article__print to i8*), i8* bitcast (i32 (i32,i32,i32,i32)* @Article__initArticle to i8*)}

%struct.BookList_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@BookList_dispTab = global %struct.BookList_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @BookList__isNil to i8*), i8* bitcast (i32 (i32,i32)* @BookList__cons to i8*), i8* bitcast (i32 (i32)* @BookList__car to i8*), i8* bitcast (i32 (i32)* @BookList__cdr to i8*), i8* bitcast (i32 (i32)* @BookList__print_list to i8*)}

%struct.Cons_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Cons_dispTab = global %struct.Cons_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Cons__isNil to i8*), i8* bitcast (i32 (i32,i32)* @BookList__cons to i8*), i8* bitcast (i32 (i32)* @Cons__car to i8*), i8* bitcast (i32 (i32)* @Cons__cdr to i8*), i8* bitcast (i32 (i32)* @Cons__print_list to i8*), i8* bitcast (i32 (i32,i32,i32)* @Cons__init to i8*)}

%struct.Nil_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*}
@Nil_dispTab = global %struct.Nil_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32,i32)* @IO__out_string to i8*), i8* bitcast (i32 (i32)* @IO__in_int to i8*), i8* bitcast (i32 (i32)* @IO__in_string to i8*), i8* bitcast (i32 (i32)* @Nil__isNil to i8*), i8* bitcast (i32 (i32,i32)* @BookList__cons to i8*), i8* bitcast (i32 (i32)* @BookList__car to i8*), i8* bitcast (i32 (i32)* @BookList__cdr to i8*), i8* bitcast (i32 (i32)* @Nil__print_list to i8*)}

%struct.Main_dispTab_t = type { i8*, i8*, i8*, i8*}
@Main_dispTab = global %struct.Main_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32)* @Main__main to i8*)}

