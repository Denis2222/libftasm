section	.text
global	_ft_isascii

_ft_isascii:
	push	rbp
	cmp		rdi, 127
		jg	notascii
	cmp		rdi , 0
		jl	notascii

	ascii:
		mov	rax, 1
		pop	rbp
	ret

	notascii:
		mov	rax, 0
		pop	rbp
	ret
