#include <iostream>
#include <string>
using namespace std;
int main(){
	int n,m;
	cin>>n>>m;
	while(n!=m)if(n>m)n-=m;
	else m-=n;
	cout<<n<<endl;
	return 0;
}