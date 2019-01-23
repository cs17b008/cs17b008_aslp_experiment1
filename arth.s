	.file	"arth.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp ; stack[top-0] <- [rbp]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp; rbp <- [rsp]
	.cfi_def_cfa_register 6
	mov	DWORD PTR -52[rbp], edi  ;PTR -52[rbp] <- edi(value of edi is stored at PTR -52[rbp])
	mov	QWORD PTR -64[rbp], rsi  ;PTR -64[rbp] <- rsi
	mov	DWORD PTR -40[rbp], 10   ;PTR -40[rbp] <- 10
	mov	DWORD PTR -36[rbp], 20   ;PTR -36[rbp] <- 20
	mov	edx, DWORD PTR -40[rbp]  ;edx <-PTR -40[rbp] 
	mov	eax, DWORD PTR -36[rbp]  ;PTR -36[rbp] <- edx
	add	eax, edx ; eax <- 20;edx <- 10;eax <- 30
	mov	DWORD PTR -32[rbp], eax  ; PTR -32[rbp]<- eax ; PTR -32[rbp] <- 30
	mov	eax, DWORD PTR -40[rbp]  ; eax <- PTR -40[rbp] ; eax<- 10;
	sub	eax, DWORD PTR -36[rbp]  ; eax <- eax - PTR -36[rbp] ; eax<- -10
	mov	DWORD PTR -28[rbp], eax  ;  PTR -28[rbp]<- eax; PTR -28[rbp] <- -10
	mov	eax, DWORD PTR -40[rbp]  ; eax <- PTR -40[rbp] ;eax <- 10
	imul	eax, DWORD PTR -36[rbp]  ; eax <- eax * PTR -36[rbp] ;eax <- 200
	mov	DWORD PTR -24[rbp], eax  ; PTR -24[rbp] <- eax ; PTR -24[rbp] <-200
	mov	eax, DWORD PTR -40[rbp]  ; eax <- PTR -40[rbp] ;eax <- 10
	cdq          ;convert signed 32bit number in eax into signed 64bit in edx:eax
	idiv	DWORD PTR -36[rbp]  ; eax <- 0 ; eax / PTR -36[rbp];edx <- reminder;eax <-quotient
	mov	DWORD PTR -20[rbp], eax ;PTR -20[rbp]<- eax;
	mov	eax, DWORD PTR -40[rbp] ;eax <- 10;
	cdq          ;convert signed 32bit number in eax into signed 64bit in edx:eax
	idiv	DWORD PTR -36[rbp]  ;eax <- 0 ; eax / PTR -36[rbp];edx <- reminder;eax <-quotient
	mov	DWORD PTR -16[rbp], edx ; edx <- PTR -16[rbp];
	mov	eax, DWORD PTR -40[rbp] ;eax <- 10;
	and	eax, DWORD PTR -36[rbp] ;eax <- 0;
	mov	DWORD PTR -12[rbp], eax ;PTR -12[rbp] <- eax;
	mov	eax, DWORD PTR -40[rbp] ;eax <- 10;
	or	eax, DWORD PTR -36[rbp] ; eax<- eax || PTR -36[rbp];eax<-30
	mov	DWORD PTR -8[rbp], eax  ;PTR -8[rbp]<-eax;
	mov	eax, DWORD PTR -40[rbp] ;eax <- PTR -40[rbp];eax <-10
	xor	eax, DWORD PTR -36[rbp] ;eax <- eax ^ (PTR -36[rbp] );eax <-30
	mov	DWORD PTR -4[rbp], eax  ;PTR -4[rbp]<-eax ;eax<- 30;
	mov	eax, 0 ;eax<-0
	pop	rbp ;replaces the previous contents of the register or memory with a word  from the top of the stack


	.cfi_def_cfa 7, 8
	ret ;return
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
