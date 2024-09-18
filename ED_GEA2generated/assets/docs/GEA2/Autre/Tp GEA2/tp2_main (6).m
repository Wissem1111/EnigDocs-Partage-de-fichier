clc
clear all
close all
num=1;
den=[0.5 1];
H1=tf(num,den)
num1=100;
den1=[1 2 100];
H2=tf(num1,den1)
h1d=c2d(H1,1)
h2d=c2d(H2,1)
pole(H1)
zero(H1)
step(h1d)
