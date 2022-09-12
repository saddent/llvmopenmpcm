; ModuleID = 'p_example1.bc'
source_filename = "../../p_example1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str = private unnamed_addr constant [30 x i8] c"OpenMP : Positive Example 1 \0A\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3foov() #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  store i32 1, ptr %a, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  store i32 2, ptr %b, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #3
  store i32 3, ptr %c, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #3
  store i32 0, ptr %d, align 4, !tbaa !6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @1, i32 4, ptr @.omp_outlined., ptr %c, ptr %a, ptr %b, ptr %d)
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., ptr noundef nonnull align 4 dereferenceable(4) %c, ptr noundef nonnull align 4 dereferenceable(4) %a, ptr noundef nonnull align 4 dereferenceable(4) %b, ptr noundef nonnull align 4 dereferenceable(4) %d) #2 {
entry:
  %.global_tid..addr = alloca ptr, align 8
  %.bound_tid..addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  store ptr %.global_tid., ptr %.global_tid..addr, align 8, !tbaa !10
  store ptr %.bound_tid., ptr %.bound_tid..addr, align 8, !tbaa !10
  store ptr %c, ptr %c.addr, align 8, !tbaa !10
  store ptr %a, ptr %a.addr, align 8, !tbaa !10
  store ptr %b, ptr %b.addr, align 8, !tbaa !10
  store ptr %d, ptr %d.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !10
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !10
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !10
  %3 = load ptr, ptr %d.addr, align 8, !tbaa !10
  %4 = load i32, ptr %1, align 4, !tbaa !6
  %5 = load i32, ptr %2, align 4, !tbaa !6
  %add = add nsw i32 %4, %5
  store i32 %add, ptr %0, align 4, !tbaa !6
  %6 = load i32, ptr %0, align 4, !tbaa !6
  %add1 = add nsw i32 %6, 3
  store i32 %add1, ptr %3, align 4, !tbaa !6
  ret void
}

; Function Attrs: nounwind
declare !callback !12 void @__kmpc_fork_call(ptr, i32, ptr, ...) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #4 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %call1 = call noundef i32 @_Z3foov()
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #5

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"clang version 16.0.0 (https://github.com/llvm/llvm-project.git 2a4625530fb68bd5b7cf0d61372e93beaf053444)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13}
!13 = !{i64 2, i64 -1, i64 -1, i1 true}
