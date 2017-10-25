#include "libfts.h"
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

int main(int ac, char **argv)
{

	(void)ac;
	(void)argv;

	printf("TEST\n");
	printf("ft_isalpha a :%d\n", ft_isalpha('a'));
	printf("ft_isalpha @ :%d\n", ft_isalpha('@'));
	printf("TESTAFTER\n");


	printf("ft_islower(a):%d\n", ft_islower('a'));
	printf("ft_islower(`):%d\n", ft_islower('`'));

	printf("ft_isupper(A):%d\n", ft_isupper('A'));
	printf("ft_isupper(@):%d\n", ft_isupper('@'));

	printf("ft_isdigit(1):%d\n", ft_isdigit('1'));
	printf("ft_isdigit(k):%d\n", ft_isdigit('k'));

	printf("ft_isalnum(a):%d\n", ft_isalnum('a'));
	printf("ft_isalnum(1):%d\n", ft_isalnum('1'));
	printf("ft_isalnum(/):%d\n", ft_isalnum('/'));


	printf("ft_isascii(128):%d\n", ft_isascii((char)128));
	printf("ft_isascii(127):%d\n", ft_isascii((char) 127));
	printf("ft_isascii(-1):%d\n", ft_isascii((char) -1));

	printf("ft_isprint(1soh):%d\n", ft_isprint((char)1));
	printf("ft_isprint(127del):%d\n", ft_isprint((char)127));
	printf("ft_isprint( ):%d\n", ft_isprint(' '));

	printf("ft_toupper(a):%c\n", ft_toupper('a'));
	printf("ft_toupper(1):%c\n", ft_toupper('1'));
	printf("ft_toupper(A):%c\n", ft_toupper('A'));
	printf("ft_toupper(b):%c\n", ft_toupper('b'));
	
	printf("ft_tolower(A):%c\n", ft_tolower('A'));
	printf("ft_tolower(a):%c\n", ft_tolower('a'));
	printf("ft_tolower(1):%c\n", ft_tolower('1'));
	printf("ft_tolower(Z):%c\n", ft_tolower('Z'));

	char str[40] = "Hello";
	char s2[10] = " World !";
	char *dest;

	dest = malloc(100);
	bzero(dest, 100);
//	printf("%ld\n", ft_strlen(str));
//	printf("%ld\n", strlen(str));
	
	
	dest = strcat(dest, str);
	dest = ft_strcat(dest, s2);

	printf("%d \n", ft_puts(dest));
	printf("%d \n", ft_puts(dest));
	printf("%d \n", ft_puts(dest));
	printf("%d \n", ft_puts(dest));
	
//	ft_bzero(str, 40);

	printf("%d %d %d %d %d %d\n", dest[0], dest[1], dest[2], dest[3], dest[4], dest[5]);
	return (0);
}
