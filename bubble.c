#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main(int argc, char const *argv[]){
	int sort[255],n;srand(time(NULL));
	printf("n= ");scanf("%d",&n);
	for (int i = 0; i < n; i++){
		sort[i]=1+rand()%10;
	}
	for (int i = 0; i < n-1; ++i)
		for (int j = 0; j < n-i-1; ++j)
			if(sort[j]>sort[j+1]){
				int t;
				t=sort[j];
				sort[j]=sort[j+1];
				sort[j+1]=t;
			}
	for (int i = 0; i < n; ++i)
	{
		printf("%d ", sort[i]);
	}
	return 0;
}
