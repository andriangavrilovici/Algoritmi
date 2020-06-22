#include <stdio.h>
int main(int argc, char const *argv[]){
	int n,a[50],x,tmp,j;
	printf("n= ");scanf("%d", &n);
	for (int i = 0; i < n; i++)
	{
		printf("a[%d]= ", i);
		scanf("%d",&a[i]);
	}
	for (int k = 0; k < n; k++){
		j=k-1;tmp=a[k];
		while(a[j]>tmp && j>=0){
			a[j+1]=a[j];
			j--;
		}
		a[j+1]=tmp;
	}
	for (int i = 0; i < n; i++)
	{
		printf("%d\t", a[i]);
	}
	printf("\n");
	return 0;
}