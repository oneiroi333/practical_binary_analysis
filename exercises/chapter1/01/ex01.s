	.file	"ex01.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%i\n"
	.text
	.globl	print_sequence
	.type	print_sequence, @function
print_sequence:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jle	.L3
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	print_sequence, .-print_sequence
	.section	.rodata
.LC1:
	.string	"Hello World!"
	.text
	.globl	print_hello_world
	.type	print_hello_world, @function
print_hello_world:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	lea	rdi, .LC1[rip]
	call	puts@PLT
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	print_hello_world, .-print_hello_world
	.globl	get_answer
	.type	get_answer, @function
get_answer:
.LFB2:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	eax, 42
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	get_answer, .-get_answer
	.section	.rodata
	.align 8
.LC2:
	.string	"Answer to the Ultimate Question of Life, The Universe, and Everything: %i\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	call	print_hello_world
	mov	esi, 15
	mov	edi, 12
	call	print_sequence
	call	get_answer
	mov	esi, eax
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (GNU) 9.1.0"
	.section	.note.GNU-stack,"",@progbits
