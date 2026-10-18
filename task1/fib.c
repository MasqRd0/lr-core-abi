/*
long long fib(int x)
{
	if(x==0) return 0;
	if(x==1) return 1;
	return fib(x-1)+fib(x-2);
}
*/


long long fib(int x)
{
	long long a=0,b=1,y;
	for(int i=0;i<x;i++)
	{
		y=a+b;
		a=b;
		b=y;
	}
	return a;
}
