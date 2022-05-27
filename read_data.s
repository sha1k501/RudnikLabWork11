	.file	"read_data.c"
	.section	.rodata
.LC0:
	.string	"%d"
	.align 8
.LC1:
	.string	"I'm child process of Rudnik with pid=%d. "
.LC2:
	.string	"I read %d bytes: %s\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8240, %rsp
	movl	%edi, -8228(%rbp)
	movq	%rsi, -8240(%rbp)
	leaq	-8208(%rbp), %rax
	movl	$8193, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-8240(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	-8212(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf
	movl	-8212(%rbp), %eax
	leaq	-8208(%rbp), %rcx
	movl	$8192, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read
	movl	%eax, -4(%rbp)
	call	getpid
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	leaq	-8208(%rbp), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
