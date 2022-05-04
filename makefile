
all: distance

distance: distance.s main.c
	gcc -g -o distance distance.s main.c
