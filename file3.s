	.file	"file3.c"
	.text
	.globl	g
	.type	g, @function
g:
.LFB23:
	.cfi_startproc
	leal	72(%rdi), %eax
	ret
	.cfi_endproc
.LFE23:
	.size	g, .-g
	.globl	f
	.type	f, @function
f:
.LFB24:
	.cfi_startproc
	leal	(%rdi,%rdi,4), %edi
	call	g
	rep ret
	.cfi_endproc
.LFE24:
	.size	f, .-f
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%i\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$-2, %edi
	call	f
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
.LFE25:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
