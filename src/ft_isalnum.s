section	.text
global	_ft_isalnum

extern _ft_isalpha
extern _ft_isdigit


_ft_isalnum:
	push	rbp

	call	_ft_isalpha
	mov		r8, rax
	call	_ft_isdigit
	mov		r9, rax

	cmp		r8, 1
		je	isalnum
	cmp		r9, 1
		je	isalnum
	pop		rbp
	mov		rax, 0
	ret

	isalnum:
	pop		rbp
	mov		rax, 1
	ret
