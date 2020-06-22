#include<stdio.h>
struct coada
{
	 int l,c,d;
}c[1000],x,y;
const int di[]={-1,0,1,0};
const int dj[]={0,1,0,-1};
int m,n,i,j,a[100][100],xi,yi,inc,sf,k;
void bordare(){
	 for(i=0;i<=m+1;i++)
		 a[i][0]=a[i][n+1]=-1;
	 for(j=0;j<=n+1;j++)
		 a[0][j]=a[m+1][j]=-1;
}
void lee(){
	 inc=sf=1;
	 a[xi][yi]=0;
	 x.l=xi;
	 x.c=yi;
	 x.d=0;
	 c[inc]=x;
	 while(inc<=sf){
		 x=c[inc];
		 for(k=0;k<4;k++){
			 y.l=x.l+di[k];
			 y.c=x.c+dj[k];
			 if(a[y.l][y.c]==-2){
				 y.d=x.d+1;
				 a[y.l][y.c]=y.d;
				 c[++sf]=y;
			 }
		 }
		 inc++;
	 }
}
int main(){
FILE*g=fopen("caroiaj.in","r");
fscanf(g,"%d%d%d%d",&m,&n,&xi,&yi);
while(!feof(g)){
	fscanf(g,"%d%d",&i,&j);
	a[i][j]=-1;
}
bordare();
for(i=1;i<=m;i++)
	 for(j=1;j<=m;j++)
		 if(!a[i][j])
			 a[i][j]=-2;

lee();
	for(i=1;i<=m;i++){
	 	for(j=1;j<=n;j++)
			printf("%3d",a[i][j]);
		printf("\n");
	}
return 0;
}