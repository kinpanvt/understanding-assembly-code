	.file	"myPart4.c"
	.text
	.globl	curious
	.type	curious, @function
curious:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	movl	$10, -8(%rbp)
.L4:
	movl	-20(%rbp), %eax
	addl	%eax, %eax
	cmpl	$9, %eax
	jg	.L2
	addl	$1, -4(%rbp)
	jmp	.L3
.L2:
	subl	$4, -20(%rbp)
.L3:
	subl	$1, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jg	.L4
	movl	-20(%rbp), %eax
	leave
	ret
	.size	curious, .-curious
	.ident	"GCC: (GNU) 11.4.1 20230605 (Red Hat 11.4.1-2)"
	.section	.note.GNU-stack,"",@progbits
