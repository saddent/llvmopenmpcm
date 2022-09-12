; ModuleID = 'n_example2.bc'
source_filename = "../../n_example2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@global = dso_local global i32 0, align 4
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str = private unnamed_addr constant [30 x i8] c"OpenMP : Positive Example 2 \0A\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z3barv() #0 {
entry:
  %0 = load i32, ptr @global, align 4, !tbaa !6
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @global, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3foov() #0 {
entry:
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @2, i32 0, ptr @.omp_outlined.)
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid.) #1 {
entry:
  %.global_tid..addr = alloca ptr, align 8
  %.bound_tid..addr = alloca ptr, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %.global_tid., ptr %.global_tid..addr, align 8, !tbaa !10
  store ptr %.bound_tid., ptr %.bound_tid..addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %.omp.iv) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %.omp.lb) #3
  store i32 0, ptr %.omp.lb, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr %.omp.ub) #3
  store i32 9, ptr %.omp.ub, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr %.omp.stride) #3
  store i32 1, ptr %.omp.stride, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr %.omp.is_last) #3
  store i32 0, ptr %.omp.is_last, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  %0 = load ptr, ptr %.global_tid..addr, align 8
  %1 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_4(ptr @1, i32 %1, i32 34, ptr %.omp.is_last, ptr %.omp.lb, ptr %.omp.ub, ptr %.omp.stride, i32 1, i32 1)
  %2 = load i32, ptr %.omp.ub, align 4, !tbaa !6
  %cmp = icmp sgt i32 %2, 9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %.omp.ub, align 4, !tbaa !6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, ptr %.omp.ub, align 4, !tbaa !6
  %4 = load i32, ptr %.omp.lb, align 4, !tbaa !6
  store i32 %4, ptr %.omp.iv, align 4, !tbaa !6
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %5 = load i32, ptr %.omp.iv, align 4, !tbaa !6
  %6 = load i32, ptr %.omp.ub, align 4, !tbaa !6
  %cmp1 = icmp sle i32 %5, %6
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %7 = load i32, ptr %.omp.iv, align 4, !tbaa !6
  %mul = mul nsw i32 %7, 1
  %add = add nsw i32 0, %mul
  store i32 %add, ptr %i, align 4, !tbaa !6
  call void @_Z3barv()
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %8 = load i32, ptr %.omp.iv, align 4, !tbaa !6
  %add2 = add nsw i32 %8, 1
  store i32 %add2, ptr %.omp.iv, align 4, !tbaa !6
  br label %omp.inner.for.cond

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  call void @__kmpc_for_static_fini(ptr @1, i32 %1)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %.omp.is_last) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %.omp.stride) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %.omp.ub) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %.omp.lb) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %.omp.iv) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare !callback !12 void @__kmpc_fork_call(ptr, i32, ptr, ...) #3

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
attributes #1 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
