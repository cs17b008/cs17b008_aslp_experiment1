	.file	"arr.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp              ;stack[top-0] <- [rbp]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp         ;rbp <- [rsp]
	.cfi_def_cfa_register 6
	sub	rsp, 64          ;rsp <- rsp -64
	mov	DWORD PTR -52[rbp], edi ;Move the 32-bit integer representation of edi into the 4 bytes starting at the address in -52[rbp]

	mov	QWORD PTR -64[rbp], rsi ;Move the 64-bit integer representation of rsi , starting at address in -64[rbp]

	mov	rax, QWORD PTR fs:40    ;rax <- 0 
	mov	QWORD PTR -8[rbp], rax ;Move the 64-bit integer representation of rax ,starting at the address in -8[rbp];

	xor	eax, eax               ; eax <- 0
	mov	DWORD PTR -32[rbp], 1  ;Move the 32-bit integer representation of 1 into the 4 bytes starting at the address in -32[rbp]
	mov	DWORD PTR -28[rbp], 2  ;Move the 32-bit integer representation of 2 into the 4 bytes starting at the address in -28[rbp]
	mov	DWORD PTR -24[rbp], 4  ;Move the 32-bit integer representation of 4 into the 4 bytes starting at the address in -24[rbp]
	mov	DWORD PTR -20[rbp], 6  ;Move the 32-bit integer representation of 6 into the 4 bytes starting at the address in -20[rbp]
	mov	DWORD PTR -16[rbp], 8  ;Move the 32-bit integer representation of 8 into the 4 bytes starting at the address in -16[rbp]
	mov	DWORD PTR -12[rbp], 0  ;Move the 32-bit integer representation of 0 into the 4 bytes starting at the address in -12[rbp]
	mov	DWORD PTR -36[rbp], 0  ;Move the 32-bit integer representation of 0 into the 4 bytes starting at the address in -36[rbp]
	jmp	.L2                    ;jump to instruction labled L2
.L3:
	mov	eax, DWORD PTR -36[rbp]  ; eax <- the value in address -36[rbp]
	cdqe                            ;rax<-sign extension of eax
	mov	eax, DWORD PTR -32[rbp+rax*4] ; eax <- value in -32[rbp+rax*4]
	lea	edx, 1[rax]     ;  adderess of rax is stored in edx     
	mov	eax, DWORD PTR -36[rbp]
	cdqe                             ;rax<-sign extension of eax
	mov	DWORD PTR -32[rbp+rax*4], edx  ; Move the 32-bit integer representation of edx into the 4 bytes starting at the address in -32[rbp+rax*4]
	add	DWORD PTR -36[rbp], 1          ; Move the 32-bit integer representation of 6 into the 4 bytes starting at the address in -36[rbp]
.L2:
	cmp	DWORD PTR -36[rbp], 5   ;compares and stores in the flag
	jle	.L3  ; jump to L3 when less than or equal to
	mov	eax, 0  ; eax<- 0
	mov	rcx, QWORD PTR -8[rbp] ;Move the value in adderess -8[rbp] to rcx;
	xor	rcx, QWORD PTR fs:40   ;rcx <- rcx ^ value in fs:40  
	je	.L5   ;jump to L5 when equal
	call	__stack_chk_fail@PLT   ;jump to lable operand
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret     ;return
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
