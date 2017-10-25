#ifndef LIBFTS_H
# define LIBFTS_H

# include <strings.h>
int		ft_isalpha(char c);
int		ft_isalnum(char c);
int		ft_islower(char c);
int		ft_isupper(char c);
int		ft_isdigit(char c);
int		ft_isascii(char c);
int		ft_isprint(char c);
char	ft_toupper(char c);
char	ft_tolower(char c);
size_t	ft_strlen(char *str);

void	ft_bzero(void *s, size_t n);
void	*ft_strcat(char *s1, char *s2);
int		ft_puts(char *s);


#endif
