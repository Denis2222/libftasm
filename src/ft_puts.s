section	.data
	endstr	db	10, 0
	lend	equ $ - endstr

section	.text
global	_ft_puts

extern	_ft_strlen
extern	_write

_ft_puts:
	push	rbp

	mov		rax, 0
	call	_ft_strlen

	mov		r10,0
	mov		r8, rdi ;save char *s
	mov		rdi, 1
	mov		rsi, r8
	mov		rdx, rax
	call	_write; Write char *s
	;add r10, rax
	mov		rdi, 1
	mov		rsi, endstr
	mov		rdx, lend
	call	_write; Write "\n"
	;add		r10, rax

	mov		rax, r10
	pop		rbp
ret

error:
	mov rax, -1
	pop		rbp
ret
