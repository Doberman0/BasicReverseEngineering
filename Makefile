*.s: *.c
	gcc -S $^ -fno-asynchronous-unwind-tables

all: *.s

clean:
	rm *.s


.PRECIOUS: %.o
.PHONY: all clean
