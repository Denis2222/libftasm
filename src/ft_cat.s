%define	bufsize			4096
%define	SYSCALL(nb)		0x2000000 | nb
%define	STDOUT			1
%define	WRITE			4
%define	READ			3

section	.bss
	buf: resb bufsize; Reserve bufsize octets

section .text
	global	_ft_cat
	extern	_read
	extern	_write

_ft_cat:
	;rdi = fd
	lea		rsi, [rel buf]; rsi = buf
	mov		rdx, bufsize;rdx = bufsize
		jmp	boucle

boucle:
	push	rdi;fd
	push	rsi;buf
	push	rdx;bufsize

	;mov		rax, SYSCALL(READ)
	;syscall
	call	_read;(int fd, char *buf, int bufsize) (rdi, rsi, rdx)

	cmp		rax, 0 ;if read 0 finish
		jle	finish

	mov		rdi, STDOUT;fd 1 for write
	mov		rdx, rax

;	mov		rax, SYSCALL(WRITE)
;	syscall
	call	_write;()

	pop		rdx
	pop		rsi
	pop		rdi
	jmp		boucle

finish:
	pop	rdx
	pop	rsi
	pop	rdi
	ret
