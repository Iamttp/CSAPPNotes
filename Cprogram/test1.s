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
	.globl	switch_test_first
	.type	switch_test_first, @function
switch_test_first:
.LFB25:
	.cfi_startproc
	subl	$100, %edi
	cmpl	$6, %edi
	ja	.L9
	movl	%edi, %edi
	leaq	.L12(%rip), %rcx
	movslq	(%rcx,%rdi,4), %rdx
	addq	%rcx, %rdx
	jmp	*%rdx
	.section	.rodata
	.align 4
	.align 4
.L12:
	.long	.L18-.L12
	.long	.L9-.L12
	.long	.L13-.L12
	.long	.L14-.L12
	.long	.L15-.L12
	.long	.L16-.L12
	.long	.L17-.L12
	.text
.L13:
	movl	$2, %eax
	ret
.L14:
	movl	$3, %eax
	ret
.L15:
	movl	$4, %eax
	ret
.L16:
	movl	$5, %eax
	ret
.L17:
	movl	$6, %eax
	ret
.L18:
	movl	$1, %eax
.L9:
	rep ret
	.cfi_endproc
.LFE25:
	.size	switch_test_first, .-switch_test_first
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
	.string	"hello world"
	.text
	.globl	main
	.type	main, @function
main:
.LFB28:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE28:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
