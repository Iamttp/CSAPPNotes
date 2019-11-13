	.file	"test1.c"
	.text
	.globl	absdiff
	.type	absdiff, @function
absdiff:
.LFB23:
	.cfi_startproc
	cmpq	%rsi, %rdi
	jg	.L4
	movq	%rsi, %rax
	subq	%rdi, %rax
	ret
.L4:
	movq	%rdi, %rax
	subq	%rsi, %rax
	ret
	.cfi_endproc
.LFE23:
	.size	absdiff, .-absdiff
	.globl	absdiff_j
	.type	absdiff_j, @function
absdiff_j:
.LFB24:
	.cfi_startproc
	cmpq	%rsi, %rdi
	jg	.L8
.L6:
	movq	%rsi, %rax
	subq	%rdi, %rax
.L7:
	ret
.L8:
	movq	%rdi, %rax
	subq	%rsi, %rax
	ret
	.cfi_endproc
.LFE24:
	.size	absdiff_j, .-absdiff_j
	.globl	sum_test
	.type	sum_test, @function
sum_test:
.LFB25:
	.cfi_startproc
	leal	(%rdi,%rsi), %eax
	ret
	.cfi_endproc
.LFE25:
	.size	sum_test, .-sum_test
	.globl	gt
	.type	gt, @function
gt:
.LFB26:
	.cfi_startproc
	cmpq	%rsi, %rdi
	setg	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE26:
	.size	gt, .-gt
	.globl	arith
	.type	arith, @function
arith:
.LFB27:
	.cfi_startproc
	leaq	(%rdi,%rsi), %rax
	addq	%rdx, %rax
	leaq	(%rsi,%rsi,2), %rcx
	salq	$4, %rcx
	leaq	4(%rdi,%rcx), %rdx
	imulq	%rdx, %rax
	ret
	.cfi_endproc
.LFE27:
	.size	arith, .-arith
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB28:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$10, %esi
	movl	$5, %edi
	call	sum_test
	movl	%eax, %edx
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE28:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
