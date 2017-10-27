section	.text
	global	_ft_strcat

	extern	_ft_strcpy

	_ft_strcat:

		;rdi	void *s1
		;rsi	void *s2

		push	rdi

		mov	rax, 0
		mov	rcx, -1
		cld
		repne scasb;Compare rax with byte at rdi

		dec	rdi
		;rsi
		call	_ft_strcpy
		pop		rax
		ret

;https://stackoverflow.com/questions/26783797/repnz-scas-assembly-instruction-specifics
