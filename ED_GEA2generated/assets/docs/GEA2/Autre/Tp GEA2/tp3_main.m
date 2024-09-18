clc
clear all
close all
global a b c L R;
a=1;
b=10;
c=0.01;
L=0.01;
R=100;

t=0:0.01:100;
[t,X]=ode45(@CNL,[0 5],[5;0]);
x1=X(:,1);
x2=X(:,2);
plot(x1,x2)