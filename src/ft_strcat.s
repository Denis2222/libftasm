section	.text
global	_ft_strcat

extern	_ft_strlen
extern	_write

_ft_strcat:
	push	rbp

	;rdi char *s1
	;rsi char *s2

	call	_ft_strlen
	mov		r8, 0  ; y = 0

	mov		r9, rdi
	add		rdi, rax ; r9 = dest[x]
	boucle:
		cmp byte [rsi + r8], 0
			je finis

		mov r10, rdi
		add r10, r8
		;TEMPORTAIREEEEEE
		mov al,  byte [rsi+r8]
		;TEMPORTAIREEEEEE
		mov byte [r10 + 0], al
		inc r8
	jmp boucle

	finis:
	mov r11, rdi
	add r11, r8
	;TEMPORTAIREEEEEE
	mov r11, 0
	mov		rax, r9
	pop		rbp
	ret
