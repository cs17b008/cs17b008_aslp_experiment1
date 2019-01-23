	.file	"pointers.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp     ; stack[top-0] <- [rbp]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp  ;rbp <-rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48  rsp<- rsp-48
	mov	DWORD PTR -36[rbp], edi ;Move the contents of edi into the 4 bytes at memory address of -36[rbp];edi<-1
	mov	QWORD PTR -48[rbp], rsi ;Move the contents of rsi into memory address of -48[rbp];edi<-140737488347160
	mov	rax, QWORD PTR fs:40  
	mov	QWORD PTR -8[rbp], rax  ;Move the contents of rax into  memory address of -8[rbp]<-916167369607087104
	xor	eax, eax                ;eax<- 0
	lea	rax, -20[rbp]           ;value in -20[rbp] is kept in rax;rax<-140737488346908
	mov	QWORD PTR -16[rbp], rax ;Move the contents of rax into  memory address of -16[rbp]
	mov	eax, 0                  ;eax<-0
	mov	rdx, QWORD PTR -8[rbp]  ;Move the data in memory at the address contained in -8[rbp] into rdx;rdx<--916167369607087104
	xor	rdx, QWORD PTR fs:40      ;rdx<-0
	je	.L3                     ;jump to line labled L3
	call	__stack_chk_fail@PLT    ;pushes the current code location onto the hardware supported stack in memory
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret                             ;return 
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
