	.file	"exc.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp                        ;stack[top-0] <- [rbp]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp                   ;rbp <- [rsp]
	.cfi_def_cfa_register 6
	sub	rsp, 160                   ;rsp <- rsp - 160
	mov	DWORD PTR -148[rbp], edi   ;Move the 32-bit integer representation of edi into the 4 bytes starting at the address in -148[rbp];edi <- 1
	mov	QWORD PTR -160[rbp], rsi   ;Move the 64-bit integer representation of rsi into the 4 bytes starting at the address in -160[rbp];rsi <-140737488347176
	mov	rax, QWORD PTR fs:40       
	mov	QWORD PTR -8[rbp], rax     ;Move the 64-bit integer representation of rax into the 4 bytes starting at the address in -8[rbp]
	xor	eax, eax                    ;eax<-0
	mov	DWORD PTR -128[rbp], 1      ;Move the 32-bit integer representation of 1 into the 4 bytes starting at the address in -128[rbp]
	mov	DWORD PTR -124[rbp], 2      ;Move the 32-bit integer representation of 2 into the 4 bytes starting at the address in -124[rbp]
	mov	DWORD PTR -120[rbp], 4      ;Move the 32-bit integer representation of 4 into the 4 bytes starting at the address in -120[rbp]
	mov	DWORD PTR -116[rbp], 6      ;Move the 32-bit integer representation of 6 into the 4 bytes starting at the address in -116[rbp]
	mov	DWORD PTR -112[rbp], 8      ;Move the 32-bit integer representation of 8 into the 4 bytes starting at the address in -112[rbp]
	mov	DWORD PTR -108[rbp], 0      ;Move the 32-bit integer representation of 0 into the 4 bytes starting at the address in -108[rbp]
	mov	DWORD PTR -96[rbp], 9       ;Move the 32-bit integer representation of 9 into the 4 bytes starting at the address in -96[rbp]
	mov	DWORD PTR -92[rbp], 7       ;Move the 32-bit integer representation of 7 into the 4 bytes starting at the address in -92[rbp]
	mov	DWORD PTR -88[rbp], 6       ;Move the 32-bit integer representation of 6 into the 4 bytes starting at the address in -88[rbp]
	mov	DWORD PTR -84[rbp], 4       ;Move the 32-bit integer representation of 4 into the 4 bytes starting at the address in -84[rbp]
	mov	DWORD PTR -80[rbp], 3       ;Move the 32-bit integer representation of 3 into the 4 bytes starting at the address in -80[rbp]
	mov	DWORD PTR -76[rbp], 2       ;Move the 32-bit integer representation of 2 into the 4 bytes starting at the address in -76[rbp]
	mov	DWORD PTR -132[rbp], 0      ;Move the 32-bit integer representation of 0 into the 4 bytes starting at the address in -132[rbp]
	jmp	.L2                         ;jmp to line labled L2
.L3:
	mov	eax, DWORD PTR -132[rbp]    ;Move the 4 bytes in memory at the address contained in -132[rbp] into eax
	cdqe                                ;rax<- sign extension of eax
	mov	edx, DWORD PTR -128[rbp+rax*4] ;Move the 4 bytes of data at the address contained in -128[rbp+rax*4] into edx
	mov	eax, DWORD PTR -132[rbp]     ;Move the 4 bytes in memory at the address contained in -132[rbp] into eax
	cdqe                                ;rax<- sign extension of eax
	mov	DWORD PTR -64[rbp+rax*4], edx ;Move the contents of edx into the 4 bytes at memory address of -64[rbp+rax*4]
	mov	eax, DWORD PTR -132[rbp]     ;Move the 4 bytes in memory at the address contained in -132[rbp] into eax
	cdqe                                 ;rax<- sign extension of eax
	mov	edx, DWORD PTR -96[rbp+rax*4];Move the 4 bytes of data at the address contained in -96[rbp+rax*4] into edx
	mov	eax, DWORD PTR -132[rbp]     ;Move the 4 bytes of data at the address contained in -132[rbp+rax*4] into edx
	cdqe                                 ;rax<- sign extension of eax
	mov	DWORD PTR -32[rbp+rax*4], edx;Move the contents of edx into the 4 bytes at memory address of -32[rbp+rax*4]
	add	DWORD PTR -132[rbp], 1       ;Move the 32-bit integer representation of 1 into the 4 bytes starting at the address in -132[rbp]
.L2:
	cmp	DWORD PTR -132[rbp], 5       ;compare and stores in a flag
	jle	.L3                          ;if less tha or equal jump to line labled L3
	mov	DWORD PTR -132[rbp], 0       ;Move the 32-bit integer representation of 0 into the 4 bytes starting at the address in -132[rbp]
	jmp	.L4                          ;jump to line labled L4
.L5:
	mov	eax, DWORD PTR -132[rbp]     ;Move the 4 bytes in memory at the address contained in -132[rbp] into eax
	cdqe                                 ;rax<- sign extension of eax
	mov	edx, DWORD PTR -64[rbp+rax*4];Move the 4 bytes of data at the address contained in -64[rbp+rax*4] into edx
	mov	eax, DWORD PTR -132[rbp]     ;Move the 4 bytes of data at the address contained in -132[rbp+rax*4] into eax
	cdqe                                 ;rax<- sign extension of eax
	mov	DWORD PTR -96[rbp+rax*4], edx;Move the contents of edx into the 4 bytes at memory address of -96[rbp+rax*4]
	mov	eax, DWORD PTR -132[rbp]     ;Move the 4 bytes in memory at the address contained in -132[rbp] into eax
	cdqe                                 ;rax<- sign extension of eax
	mov	edx, DWORD PTR -32[rbp+rax*4];Move the 4 bytes of data at the address contained in -32[rbp+rax*4] into edx
	mov	eax, DWORD PTR -132[rbp]  ;Move the 4 bytes of data at the address contained in -32[rbp] into edx
	cdqe                              ;rax<- sign extension of eax
	mov	DWORD PTR -128[rbp+rax*4], edx;Move the contents of edx into the 4 bytes at memory address of -128[rbp+rax*4]
	add	DWORD PTR -132[rbp], 1    ;Move the 32-bit integer representation of 1 into the 4 bytes starting at the address in -132[rbp]
.L4:
	cmp	DWORD PTR -132[rbp], 5    ;compare and stores in a flag
	jle	.L5                       ;if less thanor equal to 0 jump to line labled l5
	mov	eax, 0                    ;eax <- 0
	mov	rcx, QWORD PTR -8[rbp]    ;data in adderess -8[rbp] is move to rcx
	xor	rcx, QWORD PTR fs:40      
	je	.L7                        ;if equal to 0 jump to lin labled to L7
	call	__stack_chk_fail@PLT       ;jump to specified adderess
.L7:
	leave                              
	.cfi_def_cfa 7, 8
	ret                                ;return
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
