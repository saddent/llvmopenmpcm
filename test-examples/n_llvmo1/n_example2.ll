; ModuleID = '../n_example2.cpp'
source_filename = "../n_example2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@global = dso_local local_unnamed_addr global i32 0, align 4
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@str = private unnamed_addr constant [29 x i8] c"OpenMP : Positive Example 2 \00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @_Z3barv() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @global, align 4, !tbaa !6
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @global, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3foov() local_unnamed_addr #1 {
entry:
  tail call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 0, ptr nonnull @.omp_outlined.)
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(ptr noalias nocapture noundef readonly %.global_tid., ptr noalias nocapture readnone %.bound_tid.) #2 {
entry:
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.omp.lb) #4
  store i32 0, ptr %.omp.lb, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.omp.ub) #4
  store i32 9, ptr %.omp.ub, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.omp.stride) #4
  store i32 1, ptr %.omp.stride, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.omp.is_last) #4
  store i32 0, ptr %.omp.is_last, align 4, !tbaa !6
  %0 = load i32, ptr %.global_tid., align 4, !tbaa !6
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %0, i32 34, ptr nonnull %.omp.is_last, ptr nonnull %.omp.lb, ptr nonnull %.omp.ub, ptr nonnull %.omp.stride, i32 1, i32 1)
  %1 = load i32, ptr %.omp.ub, align 4, !tbaa !6
  %2 = call i32 @llvm.smin.i32(i32 %1, i32 9)
  store i32 %2, ptr %.omp.ub, align 4, !tbaa !6
  %3 = load i32, ptr %.omp.lb, align 4, !tbaa !6
  %cmp1.not6 = icmp sgt i32 %3, %2
  br i1 %cmp1.not6, label %omp.loop.exit, label %omp.inner.for.cond.omp.loop.exit_crit_edge

omp.inner.for.cond.omp.loop.exit_crit_edge:       ; preds = %entry
  %global.promoted = load i32, ptr @global, align 4, !tbaa !6
  %4 = add i32 %global.promoted, %2
  %5 = add i32 %4, 1
  %6 = sub i32 %5, %3
  store i32 %6, ptr @global, align 4, !tbaa !6
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.cond.omp.loop.exit_crit_edge, %entry
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.omp.is_last) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.omp.stride) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.omp.ub) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.omp.lb) #4
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare !callback !10 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #4

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #5 {
entry:
  %puts = tail call i32 @puts(ptr nonnull @str)
  tail call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 0, ptr nonnull @.omp_outlined.)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { mustprogress norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!nvvm.annotations = !{}

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
!10 = !{!11}
!11 = !{i64 2, i64 -1, i64 -1, i1 true}
