	.file	"test_str.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"You inputted: %s"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	stdin(%rip), %rdx
	movl	$20, %esi
	movq	%rsp, %rdi
	call	fgets
	movq	%rsp, %rsi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	printf
	xorl	%eax, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (GNU) 6.2.0"
	.section	.note.GNU-stack,"",@progbits
