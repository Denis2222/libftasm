section	.text
global	_ft_isdigit

_ft_isdigit:
	push	rbp
	cmp		rdi, '0'
		jl	nodigit
	cmp		rdi , '9'
		jg	nodigit
	digit:
		mov		rax, 1
		pop		rbp
	ret
	nodigit:
		mov		rax, 0
		pop		rbp
	ret
