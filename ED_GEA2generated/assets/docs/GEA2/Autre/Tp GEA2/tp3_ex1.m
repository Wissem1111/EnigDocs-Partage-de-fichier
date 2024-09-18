clc
clear all
close all

den=[0.5 1];
den2=[1 0.9 1];

k=[0.25 0.5 1 2 5 10];

for i=1:6
num=k(i);
H1=tf(num,den);
h1d=c2d(H1,0.5);
H2=tf(num,den2);
h2d=c2d(H2,0.25);
ch=num2str(num)
figure(i);
subplot(2,1,1)
step(H2);
title(ch);
xlabel('le temps');
ylabel(' y(t)');
hold on
step(h2d);
xlabel('n Te');
ylabel('y (k)');
subplot(2,1,2);
nyquist(H2);
xlabel('Re');
ylabel(' Im');
hold on
nyquist(h2d);
xlabel('Re');
ylabel(' Im');
end;