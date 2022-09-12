	.text
	.file	"p_example2.cpp"
	.globl	_Z3barv                         # -- Begin function _Z3barv
	.p2align	4, 0x90
	.type	_Z3barv,@function
_Z3barv:                                # @_Z3barv
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end0:
	.size	_Z3barv, .Lfunc_end0-_Z3barv
	.cfi_endproc
                                        # -- End function
	.globl	_Z3foov                         # -- Begin function _Z3foov
	.p2align	4, 0x90
	.type	_Z3foov,@function
_Z3foov:                                # @_Z3foov
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.L__unnamed_1(%rip), %rdi
	leaq	.omp_outlined.(%rip), %rdx
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	_Z3foov, .Lfunc_end1-_Z3foov
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function .omp_outlined.
	.type	.omp_outlined.,@function
.omp_outlined.:                         # @.omp_outlined.
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$0, 20(%rsp)
	movl	$9, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, 12(%rsp)
	movl	(%rdi), %ebx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	24(%rsp), %rax
	leaq	.L__unnamed_2(%rip), %r14
	leaq	20(%rsp), %rcx
	leaq	28(%rsp), %r8
	leaq	16(%rsp), %r9
	movq	%r14, %rdi
	movl	%ebx, %esi
	movl	$34, %edx
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_for_static_init_4@PLT
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	8(%rsp), %eax
	cmpl	$9, %eax
	movl	$9, %ecx
	cmovll	%eax, %ecx
	movl	%ecx, 8(%rsp)
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	__kmpc_for_static_fini@PLT
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	.omp_outlined., .Lfunc_end2-.omp_outlined.
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.Lstr(%rip), %rdi
	callq	puts@PLT
	leaq	.L__unnamed_1(%rip), %rdi
	leaq	.omp_outlined.(%rip), %rdx
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.type	global,@object                  # @global
	.bss
	.globl	global
	.p2align	2
global:
	.long	0                               # 0x0
	.size	global, 4

	.type	.L__unnamed_3,@object           # @0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_3:
	.asciz	";unknown;unknown;0;0;;"
	.size	.L__unnamed_3, 23

	.type	.L__unnamed_2,@object           # @1
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3
.L__unnamed_2:
	.long	0                               # 0x0
	.long	514                             # 0x202
	.long	0                               # 0x0
	.long	22                              # 0x16
	.quad	.L__unnamed_3
	.size	.L__unnamed_2, 24

	.type	.L__unnamed_1,@object           # @2
	.p2align	3
.L__unnamed_1:
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	22                              # 0x16
	.quad	.L__unnamed_3
	.size	.L__unnamed_1, 24

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"OpenMP : Example 1 "
	.size	.Lstr, 20

	.ident	"clang version 16.0.0 (https://github.com/llvm/llvm-project.git 2a4625530fb68bd5b7cf0d61372e93beaf053444)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym .omp_outlined.
