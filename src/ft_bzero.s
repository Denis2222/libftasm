section	.text
global	_ft_bzero

_ft_bzero:
	push	rbp

	mov		r8, 0

	boucle:
		cmp		r8, rsi
			je 	end
		mov 	byte [rdi+r8], 0
		add		r8, 1
	jmp		boucle

	end:
		mov		rax, 0
		pop rbp
	ret
