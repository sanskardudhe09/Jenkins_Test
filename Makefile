a.out:	main.o sub.o 
	cc main.o sub.o -o a.out
main.o: sub.h main.c sub.c 
	cc -c main.c
sub.o: sub.h main.c sub.c 
	cc -c sub.c
