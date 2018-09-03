	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_frac                   ## -- Begin function frac
	.p2align	4, 0x90
_frac:                                  ## @frac
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	cmpl	$1, -8(%rbp)
	jne	LBB0_2
## BB#1:
	movl	$1, -4(%rbp)
	jmp	LBB0_3
LBB0_2:
	movl	-8(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %edi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	callq	_frac
	movl	-12(%rbp), %ecx         ## 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, -4(%rbp)
LBB0_3:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
