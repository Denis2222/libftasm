section	.text
global	_ft_isprint

_ft_isprint:
	push	rbp
	cmp		rdi, '~'
		jg	notprint
	cmp		rdi , ' '
		jl	notprint

print:
	mov		rax, 1
	pop		rbp
ret

notprint:
	mov		rax, 0
	pop		rbp
ret
