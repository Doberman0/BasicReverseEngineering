	.file	"file4.c"
	.text
	.section	.rodata
.LC0:
	.string	"Eat"
.LC1:
	.string	"my"
.LC2:
	.string	"shorts"
.LC3:
	.string	"plz"
	.text
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$97, -1(%rbp)
	movsbl	-1(%rbp), %eax
	cmpl	$28, %eax
	je	.L3
	cmpl	$97, %eax
	je	.L4
	testl	%eax, %eax
	jne	.L2
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	jmp	.L6
.L3:
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	jmp	.L6
.L4:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
.L2:
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
.L6:
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
