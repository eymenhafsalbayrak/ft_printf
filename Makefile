# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ealbayra <ealbayra@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/10 14:05:08 by ealbayra          #+#    #+#              #
#    Updated: 2022/12/10 16:51:11 by ealbayra         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
FLAG = -Wall -Wextra -Werror
SRC = $(shell find . -name "ft_*.c")


all: $(NAME)

$(NAME): 
	gcc $(FLAG) -c $(SRC)
	ar rc $(NAME) *.o

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)

re:	fclean all

.PHONY: all clean fclean rev