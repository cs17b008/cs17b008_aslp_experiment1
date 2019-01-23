	.file	"minmax.c"mo
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp			;stack[top-0] <- [rbp]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp		;rbp <- [rsp]	   
	.cfi_def_cfa_register 6
	push	rbx			;stack[top-1] <- [rbx]
	sub	rsp, 56			;rsp<- rsp-56
	.cfi_offset 3, -24
	mov	DWORD PTR -52[rbp], edi ;Move the contents of edi into the 4 bytes at memory address of -52[rbp]
	mov	QWORD PTR -64[rbp], rsi ;Move the contents of rsi into address of -64[rbp]
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax  ;Move the contents of rax into address of -24[rbp]
	xor	eax, eax                 ;eax<-0
	mov	DWORD PTR -48[rbp], 1    ;Move 1 into the 4 bytes at memory address of -48[rbp]
	mov	DWORD PTR -44[rbp], 2    ;Move 2 into the 4 bytes at memory address of -44[rbp]
	mov	DWORD PTR -40[rbp], 4    ;Move 4 into the 4 bytes at memory address of -40[rbp]
	mov	DWORD PTR -36[rbp], 6    ;Move 6 into the 4 bytes at memory address of -36[rbp]
	mov	DWORD PTR -32[rbp], 8    ;Move 8 into the 4 bytes at memory address of -32[rbp]
	mov	DWORD PTR -28[rbp], 0    ;Move 0 into the 4 bytes at memory address of -28[rbp]
	mov	ebx, 0                   ;ebx <- 0
	jmp	.L2                      ;jump to lin labled L2
.L5:
	movsx	rax, ebx                           ;move quad word to double word with sign extension
	mov	edx, DWORD PTR -48[rbp+rax*4]      ;Move the 4 bytes in memory at the address contained in -48[rbp+rax*4] into edx
	mov	eax, DWORD PTR -48[rbp]            ;Move the 4 bytes in memory at the address contained in -48[rbp] into eax
	cmp	edx, eax                           ;compares edx and eax
	movsx	rax, ebx                           ;move quad word to double word with sign extension
	mov	edx, DWORD PTR -48[rbp+rax*4]      ;Move the 4 bytes in memory at the address contained in -48[rbp+rax*4] into edx
	mov	eax, DWORD PTR -48[rbp]            ;Move the 4 bytes in memory at the address contained in -48[rbp] into eax
	cmp	edx, eax                           ;compares edx and eax
	add	ebx, 1                             ;ebx <- ebx+1;
.L2:
	cmp	ebx, 5                             ;compares ebx and 5 and stores in flag
	jle	.L5                                ;if flag is less than equal to 0 jump to line labled L5
	mov	eax, 0                             ;eax <- 0;
	mov	rcx, QWORD PTR -24[rbp]            ;Move the 4 bytes in memory at the address contained in -24[rbp] into rcx
	xor	rcx, QWORD PTR fs:40               
	je	.L7                                ;if equal jumps to line labled L7
	call	__stack_chk_fail@PLT               ;jumps to place whose adderess is given
.L7:
	add	rsp, 56                            ;rsp <- rsp+56
	pop	rbx                                ;rbx <- 6;rbx<-stack[top-1];rbx <- 0
	pop	rbp                                ;rbp <- stack[top-0]
	.cfi_def_cfa 7, 8
	ret                                         ;return
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
