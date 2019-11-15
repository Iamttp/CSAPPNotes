	.file	"test2.c"
	.text
	.globl	incr
	.type	incr, @function
incr:
.LFB23:
	.cfi_startproc
	movq	(%rdi), %rax
	addq	%rax, %rsi
	movq	%rsi, (%rdi)
	ret
	.cfi_endproc
.LFE23:
	.size	incr, .-incr
	.globl	call_incr
	.type	call_incr, @function
call_incr:
.LFB24:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	$15213, (%rsp)
	movq	%rsp, %rdi
	movl	$3000, %esi
	call	incr
	addq	(%rsp), %rax
	movq	8(%rsp), %rdx
	xorq	%fs:40, %rdx
	jne	.L5
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L5:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE24:
	.size	call_incr, .-call_incr
	.globl	func
	.type	func, @function
func:
.LFB25:
	.cfi_startproc
	cmpq	$1, %rdi
	jg	.L13
	movl	$1, %eax
	ret
.L13:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbx
	leaq	-1(%rdi), %rdi
	call	func
	movq	%rax, %rbp
	leaq	-2(%rbx), %rdi
	call	func
	addq	%rbp, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE25:
	.size	func, .-func
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"hello world"
	.text
	.globl	main
	.type	main, @function
main:
.LFB26:
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
.LFE26:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
