; ModuleID = '../n_example1.cpp'
source_filename = "../n_example1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@a = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@str = private unnamed_addr constant [29 x i8] c"OpenMP : Positive Example 1 \00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3foov() local_unnamed_addr #0 {
entry:
  %d = alloca i32, align 4
  store i32 1, ptr @a, align 4, !tbaa !6
  store i32 2, ptr @b, align 4, !tbaa !6
  store i32 3, ptr @c, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #3
  store i32 0, ptr %d, align 4, !tbaa !6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @.omp_outlined., ptr nonnull %d)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #3
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal void @.omp_outlined.(ptr noalias nocapture readnone %.global_tid., ptr noalias nocapture readnone %.bound_tid., ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %d) #2 {
entry:
  %0 = load i32, ptr @a, align 4, !tbaa !6
  %1 = load i32, ptr @b, align 4, !tbaa !6
  %add = add nsw i32 %1, %0
  store i32 %add, ptr @c, align 4, !tbaa !6
  %add1 = add nsw i32 %add, 3
  store i32 %add1, ptr %d, align 4, !tbaa !6
  ret void
}

; Function Attrs: nounwind
declare !callback !10 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  %d.i = alloca i32, align 4
  %puts = tail call i32 @puts(ptr nonnull @str)
  store i32 1, ptr @a, align 4, !tbaa !6
  store i32 2, ptr @b, align 4, !tbaa !6
  store i32 3, ptr @c, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d.i) #3
  store i32 0, ptr %d.i, align 4, !tbaa !6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @.omp_outlined., ptr nonnull %d.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d.i) #3
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #5

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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