# Exercises

Fill in the gaps shown by ```<>``` in the code using the file<NUMBER>.s  assembly code and check your answer with file<NUMBER>.c

## Exercise 3 
~~~
int g(int x){
	return x + <?>;
}

int f(int x){
	int t = <?>*x;
	return <?>;
}

int main(){
	int y = <?>;
	printf("%i\n", <?>);
}
~~~

## Exercise 4 
~~~
char t = <some_val>;
switch(t){
	case <some_val>:
		printf("Eat\n");
		break;
	case 28:
		printf(" <Enter text> ");
		break;
	case <some_val>:
		printf("shorts\n");
	default:
		printf(" <Enter text> ");
}
~~~ 

## Exercise 5 
~~~
int main(){
	char* hello = <?>;
	for (int i = <?>; i < 7; <?>)
		printf("%c\n", <?>);
}
~~~

## Exercise 6
~~~
int main(){
	int i = <?>;
	while (i <?>){
		i = <?>*i - <?>;
	}
}
~~~

## Exercise 7 
~~~
int f(int n){
	if (<?> < 0)
		return <?>;
	else
		return <?> + f(<?>);
}

int main(){
	int n = <?>;
	printf("%i\n", f(n));
}
~~~
