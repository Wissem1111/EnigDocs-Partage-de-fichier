clc
clear all
close all
m=10;
alfa=20;
k=4000;
syms x;
% ddx=diff(diff(x));
% dx=diff(x);

x=dsolve('10*D2x+20*Dx+4000*x=0','x(0)=1','Dx(0)=0')
ezplot(x,[0 10])
y1=diff(x);

t=0:0.01:5;
y2=subs(y1,t)
y3=subs(x,t)
figure(1)
plot(y3,y2)
