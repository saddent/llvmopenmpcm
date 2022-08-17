; ModuleID = '../p_example3.cpp'
source_filename = "../p_example3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@str = private unnamed_addr constant [29 x i8] c"OpenMP : Positive Example 2 \00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3foov() local_unnamed_addr #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #3
  store i32 0, ptr %i, align 4, !tbaa !6
  store i32 1, ptr %a, align 4, !tbaa !6
  store i32 2, ptr %b, align 4, !tbaa !6
  store i32 5, ptr %e, align 4, !tbaa !6
  store i32 6, ptr %f, align 4, !tbaa !6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 5, ptr nonnull @.omp_outlined., ptr nonnull %i, ptr nonnull %a, ptr nonnull %b, ptr nonnull %e, ptr nonnull %f)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #3
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define internal void @.omp_outlined.(ptr noalias nocapture %.global_tid., ptr noalias nocapture %.bound_tid., ptr nocapture noundef nonnull align 4 dereferenceable(4) %i, ptr nocapture noundef nonnull align 4 dereferenceable(4) %a, ptr nocapture noundef nonnull align 4 dereferenceable(4) %b, ptr nocapture noundef nonnull align 4 dereferenceable(4) %e, ptr nocapture noundef nonnull align 4 dereferenceable(4) %f) #2 {
entry:
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare !callback !10 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #3

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  %a.i = alloca i32, align 4
  %b.i = alloca i32, align 4
  %e.i = alloca i32, align 4
  %f.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %puts = tail call i32 @puts(ptr nonnull @str)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a.i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e.i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f.i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #3
  store i32 0, ptr %i.i, align 4, !tbaa !6
  store i32 1, ptr %a.i, align 4, !tbaa !6
  store i32 2, ptr %b.i, align 4, !tbaa !6
  store i32 5, ptr %e.i, align 4, !tbaa !6
  store i32 6, ptr %f.i, align 4, !tbaa !6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 5, ptr nonnull @.omp_outlined., ptr nonnull %i.i, ptr nonnull %a.i, ptr nonnull %b.i, ptr nonnull %e.i, ptr nonnull %f.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a.i) #3
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #5

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }

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
