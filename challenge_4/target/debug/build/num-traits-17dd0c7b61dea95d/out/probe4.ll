; ModuleID = 'probe4.c1fbc3dd-cgu.0'
source_filename = "probe4.c1fbc3dd-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

@alloc_86804f25e27215e72c1f725de7c983de = private unnamed_addr constant <{ [84 x i8] }> <{ [84 x i8] c"/private/tmp/rust-20230613-7622-103lepv/rustc-1.70.0-src/library/core/src/num/mod.rs" }>, align 1
@alloc_2e171dc470a95279132d6da851ab12b2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_86804f25e27215e72c1f725de7c983de, [16 x i8] c"T\00\00\00\00\00\00\00/\04\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"

; probe4::probe
; Function Attrs: uwtable
define void @_ZN6probe45probe17hb67ac3dee9515c02E() unnamed_addr #0 {
start:
  %0 = call i1 @llvm.expect.i1(i1 false, i1 false)
  br i1 %0, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h403ce5d5e76f1817E.exit"

panic.i:                                          ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h6860fe84587621e0E(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_2e171dc470a95279132d6da851ab12b2) #3
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h403ce5d5e76f1817E.exit": ; preds = %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; core::panicking::panic
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h6860fe84587621e0E(ptr align 1, i64, ptr align 8) unnamed_addr #2

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 8, !"PIC Level", i32 2}
