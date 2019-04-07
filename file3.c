#include <stdio.h>

int g(int x){
	return x + 72;
}

int f(int x){
	int t = 5*x;
	return g(t);
}

int main(){
	int y = -2;
	printf("%i\n", f(y));
}