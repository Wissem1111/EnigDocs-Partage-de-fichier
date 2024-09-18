clear all
clc
function I=Simpson(a,b,n)
f=@(x)sin(x);
a=0;
b=10;
n=2 ;
h=(b-a)/n ;
x=[a :h :b] ;
I=0 ;
for k=1:1:n
I=I+f(x(k))+4*f(x(k)+x(k+1)/2)+f(x(k+1)) ;
I=I*h/6
end
