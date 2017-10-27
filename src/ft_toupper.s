section	.text
extern	_ft_islower
extern	_ft_isupper

global	_ft_toupper

_ft_toupper:
	push	rbp

	call	_ft_islower
	cmp		rax, 1
		je	islow
	
	notlow:
		mov		rax, rdi
		pop rbp
	ret
	
	islow:
		mov		r9, rdi
		sub		r9, 32
		mov		rax, r9
		pop rbp
	ret
