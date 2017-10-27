section	.text
global	_ft_isalpha

extern _ft_islower
extern _ft_isupper


_ft_isalpha:
	push	rbp

	call	_ft_islower
	cmp		rax, 1
		je	isalpha
	call	_ft_isupper
	cmp		rax, 1
		je	isalpha

	notalpha:
	pop		rbp
	mov		rax, 0
	ret

	isalpha:
	pop		rbp
	mov		rax, 1
	ret
