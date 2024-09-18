clc
clear all
close all
%___ex 1___%
% syms x;
% f=sqrt(1+x^2)
% F=int(f)
% F1=vpa(subs(F,2)-subs(F,0))
% F2=matlabFunction(F)
% F2(2)-F2(0)

f=@(x)sqrt(1+x.^2)
q=quad(f,0,2)
% 
 x=0:0.001:2;
 y=f(x);
% t=trapz(x,y)
pas=2/100;
 s=(f(0)+f(2))/2;
for i=pas:pas:2-pas
s=s+f(i);
end
s=s*pas

%___ex 2___%
% f=@(x)(x.^2+10*x)
% fzero(f,10)
% fminbnd(f,-10,10)
% x=-10:0.1:10;
%  y=f(x);

plot(x,y)
 syms x;
f=(x.^2+10*x)
solve(f)
