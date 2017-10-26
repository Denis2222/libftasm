section	.text
	global	_ft_strcat

	extern	_ft_strlen
	extern	_ft_strcpy
	extern _ft_strcpy

	_ft_strcat:

		;rdi	void *s1
		;rsi	void *s2

		mov	r8, rdi;save

		mov	rax, 0
		mov	rcx, 0
		not	rcx
		cld
		repne scasb;Compare rax with byte at rdi

		dec	rdi
		;rsi
		call	_ft_strcpy
		mov	rax, r8
		ret
