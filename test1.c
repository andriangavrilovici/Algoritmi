#include <stdio.h>
int main(int argc, char const *argv[]){
	int a,b;
	printf("a= ");scanf("%d", &a);
	printf("b= ");scanf("%d", &b);
	while(a!=b){
		if(a>b)
			a=a-b;
		else b=b-a;
	}
	printf("CMMDC= %d\n",a);
	return 0;
}