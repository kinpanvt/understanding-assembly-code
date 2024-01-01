	.file	"part-3.c"
	.text
	.globl	what_is_this
	.type	what_is_this, @function
what_is_this:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L2
.L3:
	addl	$2, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	%eax, -4(%rbp)
.L2:
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L3
	movl	-4(%rbp), %eax
	leave
	ret
	.size	what_is_this, .-what_is_this
	.ident	"GCC: (GNU) 11.4.1 20230605 (Red Hat 11.4.1-2)"
	.section	.note.GNU-stack,"",@progbits
