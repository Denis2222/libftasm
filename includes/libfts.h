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
int		ft_toupper(int c);
int		ft_tolower(int c);
size_t	ft_strlen(char *str);

char	*ft_strcpy(char *dst, char *src);
char	*ft_strncpy(char *dst, char *src, size_t length);
void	ft_bzero(void *s, size_t n);
void	*ft_strcat(char *s1, char *s2);
int		ft_puts(char *s);
void	*ft_memset(void *b, int c, size_t len);
void	*ft_memcpy(void *dst, void *src, size_t n);
char	*ft_strdup(char *s1);
void	ft_cat(int fd);

#endif
