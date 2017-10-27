%define bufsize	10

section .bss
	buf: resb bufsize; Reserve bufsize octets

section .text
	global _ft_cat
	extern _read
	extern _write

_ft_cat:
	;rdi = fd
	mov		rsi, buf; rsi = buf
	mov		rdx, bufsize;rdx = bufsize
		jmp	boucle

boucle:
	push	rdi;fd
	push	rdx;bufsize
	push	rsi;buf
	
	call	_read
	cmp		rax, 0 ;if read 0 finish
		jle	finish

	mov		rdi, 1;fd 1 for write
	mov		rdx, rax
	call	_write

	pop		rsi
	pop		rdx
	pop		rdi
	jmp		boucle

finish:
	pop	rsi
	pop	rdx
	pop	rdi
	ret
