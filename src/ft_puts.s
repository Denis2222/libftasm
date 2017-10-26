section	.data
	endstr	db	10, 0

section	.text
global	_ft_puts

extern	_ft_strlen
extern	_write

_ft_puts:
	push	rbp

	cmp		rdi, 0
		je	error

	push	rdi
	mov		rax, 0
	call	_ft_strlen
	pop		rdi

	mov		r12,0

	mov		r8, rdi ;save char *s
	mov		rdi, 1
	mov		rsi, r8
	mov		rdx, rax
	call	_write; Write char *s
	add r12, rax
	mov		rdi, 1
	mov		rsi, endstr
	mov		rdx, 1
	call	_write; Write "\n"
	add		r12, rax

	mov		rax, r12
	pop		rbp
ret

error:
	mov rax, -1
	pop		rbp
ret
