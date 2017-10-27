section	.text
extern	_ft_isupper

global	_ft_tolower

_ft_tolower:
	push	rbp
	call	_ft_isupper
	cmp		rax, 1
		je	isup

	notup:
		mov	rax, rdi
		pop	rbp
	ret

	isup:
		mov	rax, rdi
		add	rax, 32
		pop	rbp
	ret
