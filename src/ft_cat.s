%define	bufsize	10
%define	SYSCALL(nb)		0x2000000 | nb
%define	STDOUT			1
%define	WRITE			4
%define	READ			3

section .bss
	buf: resb bufsize; Reserve bufsize octets

section .text
	global	_ft_cat
	extern	_read
	extern	_write
	extern	_ft_debug

_ft_cat:
	;rdi = fd
	mov		rsi, buf; rsi = buf
	mov		rdx, bufsize;rdx = bufsize
		jmp	boucle

boucle:
	push	rdi;fd
	push	rdx;bufsize
	push	rsi;buf

	mov		rax, SYSCALL(READ)
	syscall

	cmp		rax, 0 ;if read 0 finish
		jle	finish

	mov		rdi, STDOUT;fd 1 for write
	mov		rdx, rax
	mov		rax, SYSCALL(WRITE)
	syscall

	pop		rsi
	pop		rdx
	pop		rdi
	jmp		boucle

finish:
	pop	rsi
	pop	rdx
	pop	rdi
	ret
