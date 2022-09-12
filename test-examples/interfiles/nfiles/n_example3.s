	.text
	.file	"n_example3.cpp"
	.globl	_Z3foov                         # -- Begin function _Z3foov
	.p2align	4, 0x90
	.type	_Z3foov,@function
_Z3foov:                                # @_Z3foov
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$0, 12(%rsp)
	movl	$1, a(%rip)
	movl	$2, b(%rip)
	movl	$3, c(%rip)
	movl	$4, d(%rip)
	movl	$5, 20(%rsp)
	movl	$6, 16(%rsp)
	leaq	.L__unnamed_1(%rip), %rdi
	leaq	.omp_outlined.(%rip), %rdx
	leaq	12(%rsp), %rcx
	leaq	20(%rsp), %r8
	leaq	16(%rsp), %r9
	movl	$3, %esi
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
	movl	$0, 12(%rsp)
	movl	$1, a(%rip)
	movl	$2, b(%rip)
	movl	$3, c(%rip)
	movl	$4, d(%rip)
	movl	$5, 20(%rsp)
	movl	$6, 16(%rsp)
	leaq	.L__unnamed_1(%rip), %rdi
	leaq	.omp_outlined.(%rip), %rdx
	leaq	12(%rsp), %rcx
	leaq	20(%rsp), %r8
	leaq	16(%rsp), %r9
	movl	$3, %esi
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
	.type	a,@object                       # @a
	.bss
	.globl	a
	.p2align	2
a:
	.long	0                               # 0x0
	.size	a, 4

	.type	b,@object                       # @b
	.globl	b
	.p2align	2
b:
	.long	0                               # 0x0
	.size	b, 4

	.type	c,@object                       # @c
	.globl	c
	.p2align	2
c:
	.long	0                               # 0x0
	.size	c, 4

	.type	d,@object                       # @d
	.globl	d
	.p2align	2
d:
	.long	0                               # 0x0
	.size	d, 4

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
	.asciz	"OpenMP : Positive Example 2 "
	.size	.Lstr, 29

	.ident	"clang version 16.0.0 (https://github.com/llvm/llvm-project.git 2a4625530fb68bd5b7cf0d61372e93beaf053444)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym .omp_outlined.
