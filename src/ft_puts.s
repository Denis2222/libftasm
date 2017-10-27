section	.data
	endstr	db	10, 0

section	.text
global	_ft_puts

extern	_ft_strlen
extern	_write

_ft_puts:
	;rdi = char *str
	push	rbp

	cmp		rdi, 0
		je	null

	push	rdi
	mov		rax, 0
	call	_ft_strlen
	pop		rdi

	mov		rsi, rdi
	mov		rdi, 1
	mov		rdx, rax
	call	_write; Write char *s

	push	rax; save result write
	mov		rdi, 1
	mov		rsi, endstr
	mov		rdx, 1
	call	_write; Write "\n"
	pop		rax;get first write result
	inc		rax;add \n result
	pop		rbp
ret

null:
	mov rax, -1
	pop		rbp
ret
