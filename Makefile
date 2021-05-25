.PHONY clean
.SUFIXXES .c .o

vpath %.c src
vpath %.h include

hello: hello.o print.o
	gcc -o $@ $^ -I./include
hello.o: hello.c
	gcc -c $^ -I./include
print.o: hello.c
	gcc -c $^ -I./include
clean:
	rm -f *.o hello
