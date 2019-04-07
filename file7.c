#include <stdio.h>

int f(int n){
	if (n < 0)
		return 1;
	else
		return f(n-1) + f(n-2);
}

int main(){
	int n = 5;
	printf("%i\n", f(n));
}