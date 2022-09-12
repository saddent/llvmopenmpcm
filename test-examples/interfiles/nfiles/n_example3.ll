; ModuleID = 'n_example3.bc'
source_filename = "../../n_example3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str = private unnamed_addr constant [30 x i8] c"OpenMP : Positive Example 2 \0A\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3foov() #0 {
entry:
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !6
  store i32 1, ptr @a, align 4, !tbaa !6
  store i32 2, ptr @b, align 4, !tbaa !6
  store i32 3, ptr @c, align 4, !tbaa !6
  store i32 4, ptr @d, align 4, !tbaa !6
  store i32 5, ptr %e, align 4, !tbaa !6
  store i32 6, ptr %f, align 4, !tbaa !6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @1, i32 3, ptr @.omp_outlined., ptr %i, ptr %e, ptr %f)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., ptr noundef nonnull align 4 dereferenceable(4) %i, ptr noundef nonnull align 4 dereferenceable(4) %e, ptr noundef nonnull align 4 dereferenceable(4) %f) #2 {
entry:
  %.global_tid..addr = alloca ptr, align 8
  %.bound_tid..addr = alloca ptr, align 8
  %i.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  %v = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store ptr %.global_tid., ptr %.global_tid..addr, align 8, !tbaa !10
  store ptr %.bound_tid., ptr %.bound_tid..addr, align 8, !tbaa !10
  store ptr %i, ptr %i.addr, align 8, !tbaa !10
  store ptr %e, ptr %e.addr, align 8, !tbaa !10
  store ptr %f, ptr %f.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %i.addr, align 8, !tbaa !10
  %1 = load ptr, ptr %e.addr, align 8, !tbaa !10
  %2 = load ptr, ptr %f.addr, align 8, !tbaa !10
  %3 = load i32, ptr %0, align 4, !tbaa !6
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #3
  %4 = load i32, ptr @a, align 4, !tbaa !6
  %5 = load i32, ptr @b, align 4, !tbaa !6
  %add = add nsw i32 %4, %5
  store i32 %add, ptr %x, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #3
  %6 = load i32, ptr %1, align 4, !tbaa !6
  %7 = load i32, ptr %2, align 4, !tbaa !6
  %add1 = add nsw i32 %6, %7
  store i32 %add1, ptr %v, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #3
  %8 = load i32, ptr @a, align 4, !tbaa !6
  %9 = load i32, ptr @b, align 4, !tbaa !6
  %add2 = add nsw i32 %8, %9
  store i32 %add2, ptr %y, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #3
  %10 = load i32, ptr %1, align 4, !tbaa !6
  %11 = load i32, ptr %2, align 4, !tbaa !6
  %add3 = add nsw i32 %10, %11
  store i32 %add3, ptr %z, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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
