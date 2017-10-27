section	.text
global	_ft_strlen

_ft_strlen:
	push	rbp

	;rdi  char *str

	mov		rcx, -1
	mov		rax, 0
	cld
	repnz scasb
	;Pour chaque char de rdi, compare avec eax et decremente le compteur rcx
	;Si un char == eax(0) la suite
	not		rcx
	dec		rcx
	mov		rax, rcx
	pop		rbp
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
