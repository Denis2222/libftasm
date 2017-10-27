section	.text
global	_ft_isalnum

extern _ft_isalpha
extern _ft_isdigit


_ft_isalnum:
	push	rbp

	call	_ft_isalpha
	cmp		rax, 1
		je	isalnum
	call	_ft_isdigit
	cmp		rax, 1
		je	isalnum
	
	notalnum:
	pop		rbp
	mov		rax, 0
	ret

	isalnum:
	pop		rbp
	mov		rax, 1
	ret
