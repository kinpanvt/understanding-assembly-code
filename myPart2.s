	.file	"myPart2.c"
	.text
	.globl	what
	.type	what, @function
what:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.L2
	movl	-12(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L3
.L2:
	movl	-4(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
.L3:
	movl	-8(%rbp), %eax
	leave
	ret
	.size	what, .-what
	.ident	"GCC: (GNU) 11.4.1 20230605 (Red Hat 11.4.1-2)"
	.section	.note.GNU-stack,"",@progbits
