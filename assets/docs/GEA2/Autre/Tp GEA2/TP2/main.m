clc
clear all
close all
global m;
global a;
global k;
m=10;
a=20;
k=4000;
t=0:0.01:100;
[t,X]=ode45(@MRA,[0 5],[1;0]);
x1=X(:,1);
x2=X(:,2);
plot(x1,x2)