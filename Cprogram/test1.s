	.file	"test1.c"
	.text
	.p2align 4,,15
	.globl	sum_test
	.type	sum_test, @function
sum_test:
.LFB23:
	.cfi_startproc
	leal	(%rdi,%rsi), %eax
	ret
	.cfi_endproc
.LFE23:
	.size	sum_test, .-sum_test
	.p2align 4,,15
	.globl	arith
	.type	arith, @function
arith:
.LFB24:
	.cfi_startproc
	leaq	(%rsi,%rsi,2), %rcx
	salq	$4, %rcx
	leaq	4(%rdi,%rcx), %rcx
	addq	%rsi, %rdi
	leaq	(%rdi,%rdx), %rax
	imulq	%rcx, %rax
	ret
	.cfi_endproc
.LFE24:
	.size	arith, .-arith
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	leaq	.LC0(%rip), %rsi
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$15, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
