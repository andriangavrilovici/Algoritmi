#include <stdio.h>
int main(int argc, char const *argv[])
{
	int n,a[20],max,pmax,temp;
	printf("n= ");scanf("%d",&n);
	for (int i = 0; i < n; ++i)
	{
		printf("a[%d]= ", i);
		scanf("%d", &a[i]);
	}
	for (int i = 0; i < n-1; i++)
	{
		max=i;
		for (int j = i+1; j < n; j++)
			if (a[j] < a[max]){
				max=j;
			}
		temp=a[i];
		a[i]=a[max];
		a[max]=temp;
	}
	for (int i = 0; i < n; i++)
	{
		printf("%d\t", a[i]);
	}
	return 0;
}