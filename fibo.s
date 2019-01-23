	.file	"fibo.c"
	.intel_syntax noprefix
	.text
	.globl	fibonacci
	.type	fibonacci, @function
fibonacci:                       
.LFB0:
	.cfi_startproc
	push	rbp            ;stack[top-0] <- [rbp]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp       ;rbp <- rsp
	.cfi_def_cfa_register 6
	push	rbx            ;stack[top-1]  <- [rbx];rbx <- 0;
	sub	rsp, 24        ;rsp<- rsp-24
	.cfi_offset 3, -24
	mov	DWORD PTR -20[rbp], edi  ;Move the contents of edi into the 4 bytes at memory address of -20[rbp];
	cmp	DWORD PTR -20[rbp], 0    ;compares and stores in flag
	je	.L2                      ;jump to line labled L2 if flag =0
	cmp	DWORD PTR -20[rbp], 1     ;compares and stores in flag
	jne	.L3                       ;jump to line labled L3 when not equal
.L2:
	mov	eax, DWORD PTR -20[rbp] ;Move the 4 bytes in memory at the address contained in -20[rbp] into eax;
	jmp	.L4    ;jump to line labled L4
.L3:
	mov	eax, DWORD PTR -20[rbp] ;Move the 4 bytes in memory at the address contained in -20[rbp] into eax;
	sub	eax, 2                   ;eax<-eax-2
	mov	edi, eax                 ;edi<-eax
	call	fibonacci                ;jumps to start of fibonacci finction
	mov	ebx, eax                  ;ebx <- eax
	mov	eax, DWORD PTR -20[rbp]   ;Move the 4 bytes in memory at the address contained in -20[rbp] into eax;
	sub	eax, 1                     ;eax<-eax-1;
	mov	edi, eax                   ;edi<-eax
	call	fibonacci                 ;jumps to start of fibonacci finction
	add	eax, ebx                   ;eax<-eax+ebx;
.L4:
	add	rsp, 24         ;rsp <- rsp+24
	pop	rbx             ;pop the top element of the stack into rbx;rbx<-0;
	pop	rbp             ;pop the top element of the stack into rbp;
	.cfi_def_cfa 7, 8
	ret                     ;return
	.cfi_endproc
.LFE0:
	.size	fibonacci, .-fibonacci
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	push	rbp            ;stack[top-0]<-rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp       ;rbp<-rsp
	.cfi_def_cfa_register 6
	push	rbx            ;stack[top-1]<-rbx
	sub	rsp, 24        ;rsp<-rsp-24
	.cfi_offset 3, -24
	mov	DWORD PTR -20[rbp], edi   ;Move the contents of edi into the 4 bytes at memory address of -20[rbp]
	mov	QWORD PTR -32[rbp], rsi   ;Move the contents of rsi into the 4 bytes at memory address of -32[rbp]
	mov	ebx, 0  ;ebx <-0;
	jmp	.L6     ;jump to line labled L6
.L7:
	mov	edi, ebx      ;edi<-ebx
	call	fibonacci      ;jumps to fibonacci
	add	ebx, 1         ;ebx <- ebx + 1
.L6:
	cmp	ebx, 5         ;compares ebx and 5 and stores in flag;
	jle	.L7            ;if eax < 5 jump to line labled L7
	mov	eax, 0          ;eax<-0;
	add	rsp, 24         ;rsp<-rsp+24
	pop	rbx             ;rbx<-stack[top-1]
	pop	rbp             ;rbp<-stack[top-0]
	.cfi_def_cfa 7, 8
	ret                     ;return
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
