	.file	"swap.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp   ;stack[top-0] <- [rbp]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp  ;rbp <- [rsp]
	.cfi_def_cfa_register 6
	mov	DWORD PTR -20[rbp], edi   ;Move the 32-bit integer representation of edi into the 4 bytes starting at the address in -20[rbp]
	mov	QWORD PTR -32[rbp], rsi
	mov	DWORD PTR -8[rbp], 10     ;Move the 32-bit integer representation of 10 into the 4 bytes starting at the address in -8[rbp]
	mov	DWORD PTR -4[rbp], 20     ;Move the 32-bit integer representation of 20 into the 4 bytes starting at the address in -4[rbp]
	mov	eax, DWORD PTR -4[rbp]    ;eax <- 20
	add	DWORD PTR -8[rbp], eax    ;value in -8[rbp] + value in eax is stored in ptr -8[rbp] ie 30
	mov	eax, DWORD PTR -8[rbp]    ;eax <- 30
	sub	eax, DWORD PTR -4[rbp]    ;eax <- 10
	mov	DWORD PTR -4[rbp], eax    ;Move the 32-bit integer representation of value in eax into the 4 bytes starting at the address in -4[rbp]
	mov	eax, DWORD PTR -4[rbp]    ;Move the 32-bit integer representation of value in adderess -4[rbp] into eax
	sub	DWORD PTR -8[rbp], eax    ;value in -8[rbp]  - value in eax is stored in ptr -8[rbp]
	mov	eax, 0                    ;eax<-0
	pop	rbp                       ; [rbp] <- stack[top-0]
	.cfi_def_cfa 7, 8
	ret                               ;return
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
