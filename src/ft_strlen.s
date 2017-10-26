section .data

MAXRCX: db 0xffffffffffffffff
toto: db 0

section	.text
global	_ft_strlen

;rdi  char *str

_ft_strlen:
	push rbp
	push rcx
	push r9

	mov	rcx, MAXRCX
	mov	r9, rcx
	cld
	mov	eax, 0
	repne scasb
	;Pour chaque char de rdi, compare avec eax et decremente le compteur
	;Si un char == eax(0) la suite
	sub	r9, rcx
	dec r9
	mov rax, r9

	pop rcx
	pop r9
	pop	rbp
	ret

;StrLen classique
;	mov		r9, 0

;	boucle:
;	cmp		byte [rdi + r9], 0
;		je	end
;	inc		r9
;	jmp 	boucle

;	end:
;	mov		rax, r9
;	pop		rbp
;	ret
