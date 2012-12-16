%struct.Object_dispTab_t = type { i8*, i8*, i8* }
%struct.Object_protObj_t = type { i32, i32, %struct.Object_dispTab_t* }
%struct.String_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.String_protObj_t = type { i32, i32, %struct.String_dispTab_t*, %struct.Int_protObj_t*, i8* }
%struct.Int_protObj_t = type { i32, i32, %struct.Object_dispTab_t*, i32 }
%struct.IO_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.IO_protObj_t = type { i32, i32, %struct.IO_dispTab_t* }
%struct.Bool_dispTab_t = type { i8*, i8*, i8* }
%struct.Bool_protObj_t = type { i32, i32, %struct.Bool_dispTab_t*, i32 }

%struct._IO_FILE = type opaque

@instring = common global [1000 x i8] zeroinitializer
@memorie = common global [1000000 x i8] zeroinitializer
@offset = global i32 0
@i = common global i32 0

@Object_dispTab = global %struct.Object_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*)}
@String_dispTab = global %struct.String_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32,i32)* @String__concat to i8*), i8* bitcast (i32 (i32)* @String__length to i8*), i8* bitcast (i32 (i32,i32,i32)* @String__substr to i8*)}
@IO_dispTab = global %struct.IO_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*), i8* bitcast (i32 (i32, i32)* @IO__out_int to i8*), i8* bitcast (i32 (i32, i32)* @IO__out_string to i8*), i8* bitcast (i32(i32)* @IO__in_int to i8*), i8* bitcast (i32(i32)* @IO__in_string to i8*)}
@Bool_dispTab = global %struct.Bool_dispTab_t {i8* bitcast (i32 (i32)* @Object__abort to i8*), i8* bitcast (i32 (i32)* @Object__copy to i8*), i8* bitcast (i32 (i32)* @Object__type_name to i8*)}

%struct.Main_protObj_t = type { i32, i32, i8* }

@Object_protObj = global %struct.Object_protObj_t {i32 0, i32 3, %struct.Object_dispTab_t* @Object_dispTab}
@String_protObj = global %struct.String_protObj_t {i32 3, i32 5, %struct.String_dispTab_t* @String_dispTab, %struct.Int_protObj_t* @Int_protObj, i8* null}
@Int_protObj = global %struct.Int_protObj_t {i32 1, i32 4, %struct.Object_dispTab_t* @Object_dispTab, i32 0}
@IO_protObj = global %struct.IO_protObj_t {i32 4, i32 3, %struct.IO_dispTab_t* @IO_dispTab}
@Bool_protObj = global %struct.Bool_protObj_t {i32 2, i32 4, %struct.Bool_dispTab_t* @Bool_dispTab, i32 0}
@Main_protObj = external global %struct.Main_protObj_t

%struct.class_nameTab_t = type opaque
@class_nameTab = external global %struct.class_nameTab_t

@.str = constant [3 x i8] c"%d\00"
@s1 = constant [36 x i8] c"COOL program successfully executed\0A\00"
@s3 = constant [2 x i8] c":\00"
@s5 = constant [21 x i8] c": Dispatch to void.\0A\00"
@s7 = constant [34 x i8] c"Match on void in case statement.\0A\00"
@s9 = constant [38 x i8] c"No match in case statement for Class \00"
@s11 = constant [2 x i8] c"\0A\00"
@s13 = constant [25 x i8] c"Abort called from class \00"

@.str1 = private unnamed_addr constant [24 x i8] c"Invalid number entered\0A\00"

declare i32 @putchar(i32)
declare void @exit(i32) noreturn
declare i32 @printf(i8*, ...)
declare i8* @gets(i8*)
declare i64 @strlen(i8*)
declare void @llvm.memset.p0i8.i32(i8*, i8, i32, i32, i1)
declare void @Main__main(i32)
declare void @Main_init(i32)
declare i32 @strtol(i8*, i8**, i32)
declare i32 @puts(i8*)

declare i32 @fflush(%struct._IO_FILE*)

define i32 @__alloc__(i32 %X) {
entry:
  %0 = load i32* @offset
  %1 = add i32 %0, 0
  %2 = add i32 %1, %X
  %3 = srem i32 %2, 1000000
  store i32 %3, i32* @offset
  %4 = add i32 %0, 0
  %5 = getelementptr inbounds [1000000 x i8]* @memorie, i32 0, i32 %4
  %6 = ptrtoint i8* %5 to i32
  ret i32 %6
}

define void @_dispatch_abort(i32 %X, i32 %Y) {
  call i32 @IO__out_string(i32 0, i32 %X)
  call i32 (i8*, ...)* @printf( i8* getelementptr ([2 x i8]* @s3, i32 0, i32 0) )
  call i32 @IO__out_int(i32 0, i32 %Y)
  call i32 (i8*, ...)* @printf( i8* getelementptr ([21 x i8]* @s5, i32 0, i32 0) )
  call void @__abort__()
  ret void
}

define void @_case_abort2(i32 %X, i32 %Y) {
  call i32 @IO__out_string(i32 0, i32 %X)
  call i32 (i8*, ...)* @printf( i8* getelementptr ([2 x i8]* @s3, i32 0, i32 0) )
  call i32 @IO__out_int(i32 0, i32 %Y)
  call i32 (i8*, ...)* @printf( i8* getelementptr ([34 x i8]* @s7, i32 0, i32 0) )
  call void @__abort__()
  ret void
}

define void @_case_abort(i32 %ARG) {
  call i32 (i8*, ...)* @printf( i8* getelementptr ([38 x i8]* @s9, i32 0, i32 0) )
  
  %VR1 = add i32 %ARG, 8
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
  %VR4 = add i32 %VR3, 8
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = inttoptr i32 %VR6 to i32 (i32)*
  %VR8 = call i32 (i32)* %VR7 (i32 %ARG) 
  call i32 @IO__out_string(i32 0, i32 %VR8)
  call i32 (i8*, ...)* @printf( i8* getelementptr ([2 x i8]* @s11, i32 0, i32 0) )
  call void @__abort__()
  ret void
}


define void @__outInt__(i32 %X) {
entry:
  call i32 (i8*, ...)* @printf(i8* getelementptr ([3 x i8]* @.str, i32 0, i32 0), i32 %X)
  call i32 @fflush(%struct._IO_FILE* null)
  ret void
}

define i32 @__outString__(i32 %X, i32 %Y) {
entry:
  br label %bb1
bb:                                               ; preds = %bb1
  %0 = inttoptr i32 %X to i8*
  %1 = getelementptr inbounds i8* %0, i32 %i.0
  %2 = load i8* %1, align 1
  %3 = sext i8 %2 to i32
  %4 = call i32 @putchar(i32 %3)
  %5 = add i32 %i.0, 1
  br label %bb1
bb1:                                              ; preds = %bb, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %5, %bb ]
  %6 = icmp slt i32 %i.0, %Y
  br i1 %6, label %bb, label %bb2
bb2:                                              ; preds = %bb1
  call i32 @fflush(%struct._IO_FILE* null)
  ret i32 0
}

define void @__abort__() {
  call void @exit(i32 -1) noreturn
  unreachable
  ret void
}

define i32 @Object__copy(i32 %X) {
__loc0:  
  %0 = add i32 %X, 4
  %1 = add i32 %X, 4
  %2 = inttoptr i32 %1 to i32*
  %3 = load i32* %2
  %4 = mul i32 %3, 4
  %5 = call i32 @__alloc__(i32 %4)
  br label %__loc1
__loc1:
  %VR3.0 = phi i32 [ %5, %__loc0 ], [ %14, %__loc3 ]
  %VR1.0 = phi i32 [ %3, %__loc0 ], [ %12, %__loc3 ]
  %VR0.0 = phi i32 [ %X, %__loc0 ], [ %13, %__loc3 ]
  %6 = icmp slt i32 0, %VR1.0
  %7 = zext i1 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %__loc2, label %__loc3
__loc2:                          ; preds = %__loc1
  br label %__loc4
__loc3:                                       ; preds = %__loc1
  %9 = inttoptr i32 %VR0.0 to i32*
  %10 = load i32* %9
  %11 = inttoptr i32 %VR3.0 to i32*
  store i32 %10, i32* %11
  ;call void @printmemorie()
  %12 = sub i32 %VR1.0, 1
  %13 = add i32 %VR0.0, 4
  %14 = add i32 %VR3.0, 4
  br label %__loc1
                                                 ; No predecessors!
  br label %__loc2
__loc4:                                           ; preds = %__loc2, %15
  ;%16 = load i32* @offset
  ;call i32 @putchar(i32 10)
  ;call void @__outInt__(i32 %16)
  ;call i32 @putchar(i32 10)
  ;call i32 @putchar(i32 10)
  ret i32 %5
}

define i32 @equality_test(i32 %X, i32 %Y, i32 %Z, i32 %T) {
  %VR1 = add i32 %Z, 0
  %VR2 = inttoptr i32 %VR1 to i32*
  %VR3 = load i32* %VR2
  %VR4 = add i32 %T, 0
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  %VR7 = icmp eq i32 %VR3, %VR6
  br i1 %VR7, label %__next1, label %__et0
__next1:
  %VR8 = icmp eq i32 %VR3, 3
  br i1 %VR8, label %__et2, label %__next2
__next2:
  %VR9 = icmp eq i32 %VR6, 1
  br i1 %VR9, label %__et3, label %__next3
__next3:
  %VR10 = icmp eq i32 %VR6, 2
  br i1 %VR10, label %__et3, label %__et0
__et3:
  %VR11 = add i32 %Z, 12
  %VR12 = inttoptr i32 %VR11 to i32*
  %VR13 = load i32* %VR12
  %VR14 = add i32 %T, 12
  %VR15 = inttoptr i32 %VR14 to i32*
  %VR16 = load i32* %VR15
  %VR17 = icmp eq i32 %VR13, %VR16
  br i1 %VR17, label %__et1, label %__next4
__next4:
  br label %__et0
__et2:
  %VR18 = add i32 %Z, 12
  %VR19 = inttoptr i32 %VR18 to i32*
  %VR20 = load i32* %VR19
  %VR21 = add i32 %VR20, 12
  %VR22 = inttoptr i32 %VR21 to i32*
  %VR23 = load i32* %VR22
  %VR24 = add i32 %T, 12
  %VR25 = inttoptr i32 %VR24 to i32*
  %VR26 = load i32* %VR25
  %VR27 = add i32 %VR26, 12
  %VR28 = inttoptr i32 %VR27 to i32*
  %VR29 = load i32* %VR28
  %VR30 = icmp eq i32 %VR23, %VR29
  br i1 %VR30, label %__next5, label %__et0
__next5:
  %VR31 = add i32 %Z, 16
  %VR32 = inttoptr i32 %VR31 to i32*
  %VR33 = load i32* %VR32
  %VR34 = add i32 %T, 16
  %VR35 = inttoptr i32 %VR34 to i32*
  %VR36 = load i32* %VR35
  br label %__et4
__et4:  
  %VR2.0 = phi i32 [ %VR33, %__next5 ], [ %VR46, %__next7 ]
  %VR3.0 = phi i32 [ %VR36, %__next5 ], [ %VR47, %__next7 ]
  %VR4.0 = phi i32 [ %VR23, %__next5 ], [ %VR45, %__next7 ]  
  %VR37 = icmp slt i32 0, %VR4.0
  br i1 %VR37, label %__next6, label %__et1
__next6:
  %VR38 = add i32 %VR2.0, 0
  %VR39 = inttoptr i32 %VR38 to i8*
  %VR40 = load i8* %VR39
  %VR41 = add i32 %VR3.0, 0
  %VR42 = inttoptr i32 %VR41 to i8*
  %VR43 = load i8* %VR42
  %VR44 = icmp eq i8 %VR40, %VR43  
  br i1 %VR44, label %__next7, label %__et0
__next7:
  %VR45 = sub i32 %VR4.0, 1
  %VR46 = add i32 %VR2.0, 1
  %VR47 = add i32 %VR3.0, 1
  br label %__et4
__et1:
  ret i32 %X
__et0:
  ret i32 %Y
}

define void @__start() {
  %1 = call i32 @Object__copy(i32 ptrtoint (%struct.Main_protObj_t* @Main_protObj to i32))
  call void @Main_init(i32 %1)
  call void @Main__main(i32 %1)
  call i32 (i8*, ...)* @printf( i8* getelementptr ([36 x i8]* @s1, i32 0, i32 0) )
  call void @__abort__()
  ret void
}

define i32 @Object__abort(i32 %ARG) {
  call i32 (i8*, ...)* @printf( i8* getelementptr ([25 x i8]* @s13, i32 0, i32 0) )
  %VR0 = inttoptr i32 %ARG to i32*
  %VR1 = load i32* %VR0
  %VR2 = mul i32 %VR1, 4
  %VR3 = ptrtoint %struct.class_nameTab_t* @class_nameTab to i32
  %VR4 = add i32 %VR2, %VR3
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  call i32 @IO__out_string(i32 0, i32 %VR6)
  call i32 (i8*, ...)* @printf( i8* getelementptr ([2 x i8]* @s11, i32 0, i32 0) )
  call void @__abort__()
  ret i32 0
}

define i32 @Object__type_name(i32 %ARG) {
  %VR0 = inttoptr i32 %ARG to i32*
  %VR1 = load i32* %VR0
  %VR2 = mul i32 %VR1, 4
  %VR3 = ptrtoint %struct.class_nameTab_t* @class_nameTab to i32
  %VR4 = add i32 %VR2, %VR3
  %VR5 = inttoptr i32 %VR4 to i32*
  %VR6 = load i32* %VR5
  ret i32 %VR6
}

define i32 @IO__out_int(i32 %X, i32 %Y) {
  %1 = add i32 %Y, 12
  %2 = inttoptr i32 %1 to i32*
  %3 = load i32* %2
  call void @__outInt__(i32 %3)
  ret i32 %X
}

@.strh = private unnamed_addr constant [4 x i8] c"%X \00", align 1
define void @printmemorie() {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i32 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %2 = getelementptr [1000000 x i8]* @memorie, i32 0, i32 %indvars.iv
  %3 = load i8* %2
  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr ([4 x i8]* @.strh, i32 0, i32 0), i8 %3) 
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond = icmp eq i32 %indvars.iv.next, 300
  br i1 %exitcond, label %5, label %1

; <label>:5                                       ; preds = %1
  call i32 @putchar(i32 10)
  ret void
}

define i32 @IO__out_string(i32 %X, i32 %Y) {
;call void @printmemorie()
  %r2 = add i32 %Y, 12
  %r3 = inttoptr i32 %r2 to i32*
  %r4 = load i32* %r3
  %r5 = add i32 %r4, 12
  %r6 = inttoptr i32 %r5 to i32*
  %r7 = load i32* %r6
  %r8 = add i32 %Y, 16
  %r9 = inttoptr i32 %r8 to i32*
  %r10 = load i32* %r9
  
  call i32 @__outString__(i32 %r10, i32 %r7)
  
  ;call void @printmemorie()
  ;call i32 @putchar(i32 10)
  ;call void @__outInt__(i32 %d26)
  ;call i32 @putchar(i32 10)
  ret i32 %X
}

define i64 @__inString__() {
  call void @llvm.memset.p0i8.i32(i8* getelementptr ([1000 x i8]* @instring, i32 0, i32 0), i8 0, i32 1000, i32 16, i1 false)
  call i8* @gets(i8* getelementptr ([1000 x i8]* @instring, i32 0, i32 0)) 
  %r2 = call i64 @strlen(i8* getelementptr ([1000 x i8]* @instring, i32 0, i32 0))
  %r3 = shl i64 %r2, 32
  %r4 = or i64 %r3, zext (i32 ptrtoint ([1000 x i8]* @instring to i32) to i64)
  ret i64 %r4
}

define i32 @__inInt__() {
  %buf = alloca [10 x i8]
  %p = alloca i8*
  %1 = getelementptr [10 x i8]* %buf, i32 0, i32 0
  %2 = call i8* @gets(i8* %1)
  %3 = icmp eq i8* %2, null
  br i1 %3, label %13, label %4

; <label>:4                                       ; preds = %0
  %5 = call i32 @strtol(i8* %1, i8** %p, i32 10)
  %6 = add i32 %5, 0
  %7 = load i8* %1
  %8 = icmp eq i8 %7, 10
  br i1 %8, label %12, label %9

; <label>:9                                       ; preds = %4
  %10 = load i8** %p
  %11 = load i8* %10
  switch i8 %11, label %12 [
    i8 10, label %13
    i8 0, label %13
  ]

; <label>:12                                      ; preds = %9, %4
  %puts = call i32 @puts(i8* getelementptr ([24 x i8]* @.str1, i32 0, i32 0))
  call void @exit(i32 -1) noreturn
  unreachable

; <label>:13                                      ; preds = %9, %9, %0
  %ret.0 = phi i32 [ undef, %0 ], [ %6, %9 ], [ %6, %9 ]
  ret i32 %ret.0
}

define i32 @__allocString(i32 %X) {
__loc0:
  %0 = load i32* @offset
  %1 = add i32 %X, 4
  %2 = sdiv i32 %1, 4
  %3 = add i32 %2, 4
  ;%4 = mul i32 %3, 4
  %4 = add i32 20, 0
  ;call i32 @putchar(i32 10)

  ;call i32 @putchar(i32 10)
  %5 = call i32 @__alloc__(i32 %4)
  ;%24 = load i32* @offset
  ;call void @__outInt__(i32 %X)
  %6 = inttoptr i32 %5 to i32*
  store i32 3, i32* %6
  %7 = add i32 %5, 4
  %8 = inttoptr i32 %7 to i32*
  store i32 %3, i32* %8
  %9 = add i32 %5, 8
  %10 = inttoptr i32 %9 to i32*
  store i32 ptrtoint (%struct.String_dispTab_t* @String_dispTab to i32), i32* %10
  %11 = call i32 @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %12 = add i32 %11, 12
  %13 = inttoptr i32 %12 to i32*
  store i32 %X, i32* %13
  %14 = add i32 %5, 12
  %15 = inttoptr i32 %14 to i32*
  store i32 %11, i32* %15
  %16 = add i32 %5, 16
  %17 = inttoptr i32 %16 to i32*
  %18 = add i32 %11, 16
  store i32 %18, i32* %17
  
  ;%16 = add i32 %X, 16
  ;%17 = add i32 %16, %5
  ;%18 = add i32 %5, %4
  ;br label %__loc1

;__loc1:                                            ; preds = %__loc2, %__loc0
  ;%VR20.0 = phi i32 [ %17, %__loc0 ], [ %20, %__loc2 ]
  ;%19 = inttoptr i32 %VR20.0 to i8*
  ;store i8 0, i8* %19
  ;%20 = add i32 %VR20.0, 1
  ;%21 = icmp eq i32 %20, %18
  ;%22 = zext i1 %21 to i32
  ;%23 = icmp eq i32 %22, 0
  ;br i1 %23, label %__loc2, label %__loc3

;__loc2:                            ; preds = %__loc1
  ;br label %__loc1

;__loc3:                                      ; preds = %__loc1
  ;%d24 = getelementptr [1000000 x i8]* @memorie, i32 0, i32 0
  ;%d25 = ptrtoint i8* %d24 to i32
  ;%d26 = sub i32 %12, %d25
  ;call void @printmemorie()
  ;call i32 @putchar(i32 10)
  ;call void @__outInt__(i32 %26)
  ;call i32 @putchar(i32 10)
  ;call i32 @putchar(i32 10)
  ret i32 %5
}

define void @__copyBytes(i32 %X, i32 %Y, i32 %Z) {
__loc0:
  br label %__loc1

__loc1:                                            ; preds = %__loc3, %__loc0
  %VR2.0 = phi i32 [ %Z, %__loc0 ], [ %9, %__loc3 ]
  %VR1.0 = phi i32 [ %Y, %__loc0 ], [ %8, %__loc3 ]
  %VR0.0 = phi i32 [ %X, %__loc0 ], [ %7, %__loc3 ]
  %0 = add i32 %VR0.0, 0
  %1 = icmp slt i32 0, %VR0.0
  %2 = zext i1 %1 to i32
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %__loc2, label %__loc3

__loc2:                            ; preds = %__loc1
  br label %__loc4

__loc3:                                      ; preds = %__loc1
  %4 = inttoptr i32 %VR1.0 to i8*
  %5 = load i8* %4
  %6 = inttoptr i32 %VR2.0 to i8*
  store i8 %5, i8* %6
  %7 = sub i32 %VR0.0, 1
  %8 = add i32 %VR1.0, 1
  %9 = add i32 %VR2.0, 1
  br label %__loc1
                                                  ; No predecessors!
  br label %__loc4

__loc4:                                            ; preds = %__loc2, %14
  ret void
}

define i32 @IO__in_string(i32 %X) {
  %1 = call i64 @__inString__()
  %2 = trunc i64 %1 to i32
  %sroa.store.elt = lshr i64 %1, 32
  %3 = trunc i64 %sroa.store.elt to i32
  %4 = add i32 %3, 0
  %5 = call i32 @__allocString(i32 %4)
  
  %6 = add i32 %4, 4
  %7 = sdiv i32 %6, 4
  %8 = mul i32 %7, 4
  %9 = call i32 @__alloc__(i32 %8)
  
  ;%6 = add i32 %5, 16
   
  ;call void @__outInt__(i32 %4)
  call void @__copyBytes(i32 %4, i32 %2, i32 %9)
  ;call void @printmemorie()
  
  ;actualizez offset-ul daca este cazul  
  %zero = getelementptr inbounds [1000000 x i8]* @memorie, i32 0, i32 0
  %adrzero = ptrtoint i8* %zero to i32
  %adr = sub i32 %9, %adrzero  
  %of = load i32* @offset  
  %comp = icmp sle i32 %of, %adr
  br i1 %comp, label %update, label %constant
update:
  %ofnou = add i32 %adr, %4
  store i32 %ofnou, i32* @offset
  br label %endupdate
constant:
  br label %endupdate
endupdate:
  
  ret i32 %5
}

define i32 @IO__in_int(i32 %X) {
  %1 = call i32 @__inInt__()
  %2 = call i32 @Object__copy(i32 ptrtoint (%struct.Int_protObj_t* @Int_protObj to i32))
  %3 = add i32 %2, 12
  %4 = inttoptr i32 %3 to i32*
  store i32 %1, i32* %4
  ret i32 %2
}

define i32 @String__concat(i32 %VR0, i32 %VR1) {
  %VR2.0 = add i32 %VR0, 12
  %VR2.1 = inttoptr i32 %VR2.0 to i32*
  %VR2.2 = load i32* %VR2.1
  
  %VR3.0 = add i32 %VR2.2, 12
  %VR3.1 = inttoptr i32 %VR3.0 to i32*
  %VR3.2 = load i32* %VR3.1
  
  %VR2.3 = add i32 %VR1, 12
  %VR2.4 = inttoptr i32 %VR2.3 to i32*
  %VR2.5 = load i32* %VR2.4
  
  %VR2.6 = add i32 %VR2.5, 12
  %VR2.7 = inttoptr i32 %VR2.6 to i32*
  %VR4.0 = load i32* %VR2.7
  
  %VR5.0 = add i32 %VR3.2, %VR4.0
  
  ;allocate new string
  %VR10.0 = call i32 @__allocString(i32 %VR5.0)
  
  ;copy 1st string
  %VR6.0 = add i32 %VR0, 16
  %VR6.1 = inttoptr i32 %VR6.0 to i32*
  %VR6.2 = load i32* %VR6.1
  
  %VR7.0 = add i32 %VR10.0, 16
  %VR7.1 = inttoptr i32 %VR7.0 to i32*
  %VR7.2 = load i32* %VR7.1
  
  call void @__copyBytes(i32 %VR3.2, i32 %VR6.2, i32 %VR7.2)
  
  ;copy 2nd string
  %VR6.3 = add i32 %VR1, 16
  %VR6.4 = inttoptr i32 %VR6.3 to i32*
  %VR6.5 = load i32* %VR6.4
  
  %VR7.3 = add i32 %VR7.2, %VR3.2
  
  call void @__copyBytes(i32 %VR4.0, i32 %VR6.5, i32 %VR7.3)
  
  ;actualizez offset-ul daca este cazul  
  %zero = getelementptr inbounds [1000000 x i8]* @memorie, i32 0, i32 0
  %adrzero = ptrtoint i8* %zero to i32
  %adr = sub i32 %VR7.3, %adrzero  
  %of = load i32* @offset  
  %comp = icmp sle i32 %of, %adr
  br i1 %comp, label %update, label %constant
update:
  %ofnou = add i32 %adr, %VR4.0
  store i32 %ofnou, i32* @offset
  br label %endupdate
constant:
  br label %endupdate
endupdate:
  
  ret i32 %VR10.0
}

define i32 @String__length(i32 %X) {
  %1 = add i32 %X, 12
  %2 = inttoptr i32 %1 to i32*
  %3 = load i32* %2
  ret i32 %3
}

define i32 @String__substr(i32 %VR0, i32 %VR1, i32 %VR2) {
entry:
  %VR1.0 = add i32 %VR1, 12
  %VR1.1 = inttoptr i32 %VR1.0 to i32*
  %VR1.2 = load i32* %VR1.1 ;Unbox the start position
  
  %VR2.0 = add i32 %VR2, 12
  %VR2.1 = inttoptr i32 %VR2.0 to i32*
  %VR2.2 = load i32* %VR2.1 ; Unbox the length
  
  %VR10.0 = icmp slt i32 %VR1.2, 0 ;Is the start position positive?
  br i1 %VR10.0, label %__next_notss3, label %__ss3
  
__next_notss3:

  %VR1.3 = add i32 0, 0
  
  br label %__ss3
__ss3:

  %VR1.4 = phi i32 [ %VR1.2 , %entry ] , [ %VR1.3 , %__next_notss3 ]

  %VR10.1 = icmp slt i32 %VR2.2, 0 ;Is the length positive?
  br i1 %VR10.1, label %__next_notss4, label %__ss4

__next_notss4:

  %VR2.3 = add i32 0, 0

  br label %__ss4
__ss4:
  
  %VR2.4 = phi i32 [ %VR2.2 , %__ss3 ] , [ %VR2.3 , %__next_notss4 ]
  
  ;call void @__outInt__(i32 %VR1.4)
  ;call void @__outInt__(i32 %VR2.4)
  
  %VR3.0 = add i32 %VR0, 12
  %VR3.1 = inttoptr i32 %VR3.0 to i32*
  %VR3.2 = load i32* %VR3.1 ;Compute maximum length
  
  %VR3.3 = add i32 %VR3.2, 12
  %VR3.4 = inttoptr i32 %VR3.3 to i32*
  %VR3.5 = load i32* %VR3.4
  
  ;call void @__outInt__(i32 %VR3.5)
  
  %VR10.2 = icmp slt i32 %VR1.4, %VR3.5 ;Is the start position inside the string?
  br i1 %VR10.2, label %__ss1, label %__next_notss1

__next_notss1:

  %VR2.5 = add i32 0, 0 ; if not, return an empty string

  br label %__ss1
__ss1:
  
  %VR2.6 = phi i32 [ %VR2.4 , %__ss4 ] , [ %VR2.5 , %__next_notss1 ]
  
  %VR4.0 = add i32 %VR1.4, %VR2.6 ; Does the end position go past the end of the string?
  
  ;call void @__outInt__(i32 %VR4.0)
  ;call void @__outInt__(i32 %VR3.5)
  
  %VR10.3 = icmp sle i32 %VR4.0, %VR3.5 ;Is the start position inside the string?
  br i1 %VR10.3, label %__ss2, label %__next_notss2

__next_notss2:

  %VR2.7 = sub i32 %VR3.5, %VR1.4 ; If yes, return the remaining string

  br label %__ss2
__ss2:

  %VR2.8 = phi i32 [ %VR2.6 , %__ss1 ] , [ %VR2.7 , %__next_notss2 ]
  
  ;call void @__outInt__(i32 %VR2.8)
  
  ;allocate new string
  %VR5.0 = call i32 @__allocString(i32 %VR2.8)
  
  %VR6.0 = add i32 %VR0, 16  ; from self + header + start
  %VR6.1 = inttoptr i32 %VR6.0 to i32*
  %VR6.2 = load i32* %VR6.1
  %VR6.3 = add i32 %VR6.2, %VR1.4
  
  %VR7.0 = add i32 %VR5.0, 16 ; to new string + header
  %VR7.1 = inttoptr i32 %VR7.0 to i32*
  %VR7.2 = load i32* %VR7.1
  
  call void @__copyBytes(i32 %VR2.8, i32 %VR6.3, i32 %VR7.2)

  ;actualizez offset-ul daca este cazul  
  %zero = getelementptr inbounds [1000000 x i8]* @memorie, i32 0, i32 0
  %adrzero = ptrtoint i8* %zero to i32
  %adr = sub i32 %VR7.2, %adrzero  
  %of = load i32* @offset  
  %comp = icmp sle i32 %of, %adr
  br i1 %comp, label %update, label %constant
update:
  %ofnou = add i32 %adr, %VR2.8
  store i32 %ofnou, i32* @offset
  br label %endupdate
constant:
  br label %endupdate
endupdate:
  
  ret i32 %VR5.0
}

define void @Bool_init(i32 %ARG) {
  ret void
}

define void @IO_init(i32 %ARG) {
  ret void
}

define void @String_init(i32 %ARG) {
  ret void
}

define void @Int_init(i32 %ARG) {
  ret void
}

define void @Object_init(i32 %ARG) {
  ret void
}

define i32 @main() {
  call void @__start()
  ret i32 0
}
