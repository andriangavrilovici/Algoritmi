#include <iostream>
#include <math.h>
using namespace std;
int main(){
	int a[1001],nr=0,n,i,j;
	cout<<"Nr. pana la: ";
	cin>>n;
	for (int i = 2; i <= n; ++i)
		a[i]=1;
	for (int i = 2; i <= sqrt(n); ++i)
		if(a[i]!=0)
			for (int j = 2; j <= n/i; ++j)
				a[i*j]=0;
	cout<<"Nr. prime pana la "<<n<<" sunt: ";
	for (int i = 2; i <= n; ++i)
		if(a[i]==1)cout<<i<<"\t";
	cout<<endl;
	return 0;
}