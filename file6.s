	.file	"file6.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	movl	$6, %eax
	jmp	.L2
.L3:
	leal	-10(%rax,%rax,2), %eax
.L2:
	cmpl	$14, %eax
	jle	.L3
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
