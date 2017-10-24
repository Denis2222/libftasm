section	.text
extern	_ft_isupper

global	_ft_tolower

_ft_tolower:
	push	rbp
	call	_ft_isupper
	mov		r8, rax

	cmp		r8, 1
		je	isup
	
	notup:
	mov		rax, rdi
	pop rbp
	ret
	
	isup:
	mov		r9, rdi
	add		r9, 32
	mov		rax, r9
	pop rbp
	ret
