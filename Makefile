
SRCS = ft_itoa.c ft_printf.c ft_printf_utils.c ft_putchar_fd.c ft_putnbr_fd.c ft_putstr_fd.c \
	ft_strchr.c ft_strlen.c ft_puthex.c ft_putnbr_u.c ft_printf_pointer.c 

OBJS =	${SRCS:.c=.o}

NAME = libftprintf.a

CC = cc
RM = rm -f

CFLAGS = -Wall -Wextra -Werror 

.c.o:
		${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}:	${OBJS}
		ar rcs ${NAME} ${OBJS}
.o:.c
	$(CC) $(CFLAGS) $< -c $@

all:		${NAME}

clean:
		${RM} ${OBJS}

fclean:		clean
		${RM} ${NAME}

re:		fclean all

.PHONY:	all clean fclean re 
