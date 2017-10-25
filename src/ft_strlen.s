section	.text
global	_ft_strlen

_ft_strlen:
	push	rbp
	mov		r9, 0

	boucle:
	cmp		byte [rdi + r9], 0
		je	end
	inc		r9
	jmp 	boucle

	end:
	mov		rax, r9
	pop		rbp
	ret
