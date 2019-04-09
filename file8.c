#include <stdio.h>

int foo(int x, int y, int z){
	x = x<<2;
	y = z * z;
	z = x + y;
	return x + y + z;
}

int main()
{
	printf("%i",foo(3,4,5));
}