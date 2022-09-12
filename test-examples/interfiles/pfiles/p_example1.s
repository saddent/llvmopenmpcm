	.text
	.file	"p_example1.cpp"
	.globl	_Z3foov                         # -- Begin function _Z3foov
	.p2align	4, 0x90
	.type	_Z3foov,@function
_Z3foov:                                # @_Z3foov
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$1, 20(%rsp)
	movl	$2, 16(%rsp)
	movl	$3, 12(%rsp)
	movl	$0, 8(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	.L__unnamed_1(%rip), %rdi
	leaq	.omp_outlined.(%rip), %rdx
	leaq	12(%rsp), %rcx
	leaq	20(%rsp), %r8
	leaq	16(%rsp), %r9
	movl	$4, %esi
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%eax, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_Z3foov, .Lfunc_end0-_Z3foov
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function .omp_outlined.
	.type	.omp_outlined.,@function
.omp_outlined.:                         # @.omp_outlined.
	.cfi_startproc
# %bb.0:                                # %entry
	movl	(%rcx), %eax
	movl	(%r8), %ecx
	leal	(%rcx,%rax), %esi
	movl	%esi, (%rdx)
	addl	%ecx, %eax
	addl	$3, %eax
	movl	%eax, (%r9)
	retq
.Lfunc_end1:
	.size	.omp_outlined., .Lfunc_end1-.omp_outlined.
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	leaq	.Lstr(%rip), %rdi
	callq	puts@PLT
	movl	$1, 20(%rsp)
	movl	$2, 16(%rsp)
	movl	$3, 12(%rsp)
	movl	$0, 8(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	.L__unnamed_1(%rip), %rdi
	leaq	.omp_outlined.(%rip), %rdx
	leaq	12(%rsp), %rcx
	leaq	20(%rsp), %r8
	leaq	16(%rsp), %r9
	movl	$4, %esi
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%eax, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.type	.L__unnamed_2,@object           # @0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_2:
	.asciz	";unknown;unknown;0;0;;"
	.size	.L__unnamed_2, 23

	.type	.L__unnamed_1,@object           # @1
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3
.L__unnamed_1:
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	22                              # 0x16
	.quad	.L__unnamed_2
	.size	.L__unnamed_1, 24

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"OpenMP : Positive Example 1 "
	.size	.Lstr, 29

	.ident	"clang version 16.0.0 (https://github.com/llvm/llvm-project.git 2a4625530fb68bd5b7cf0d61372e93beaf053444)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym .omp_outlined.
