section	.text
global	_ft_bzero

extern	_ft_memset

_ft_bzero:
	push	rbp
	
	;rdi void *s
	;rsi size_t len
	mov		rdx, rsi
	mov		rsi, 0
	call	_ft_memset
	mov		rax, 0
	pop rbp
	ret

;v1
;	mov		r8, 0

;	boucle:
;		cmp		r8, rsi
;			je 	end
;		mov 	byte [rdi+r8], 0
;		add		r8, 1
;	jmp		boucle

;	end:
;		mov		rax, 0
;		pop rbp
;	ret
