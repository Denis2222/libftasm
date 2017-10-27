section .data

MAXRCX: db 0xffffffffffffffff

section	.text
global	_ft_strlen


_ft_strlen:
	push	rbp

	;rdi  char *str

	mov		rcx, MAXRCX
	mov		r15, rcx
	mov		eax, 0
	cld
	repnz scasb
	;Pour chaque char de rdi, compare avec eax et decremente le compteur rcx
	;Si un char == eax(0) la suite
	sub		r15, rcx
	dec		r15
	mov		rax, r15
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
