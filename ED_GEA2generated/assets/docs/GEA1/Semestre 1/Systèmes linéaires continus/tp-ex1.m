clear all
close all
clc
%%%%%Q1
num=[10]
den=[1 2]
sys=tf(num,den)
figure(1)
step(sys)
%Q2
num1=[5]
den1=[2 1]
sys1=tf(num1,den1)
num2=[5]
den2=[5 1]
sys2=tf(num2,den2)
%%%Q3
figure(2)
impulse(sys,sys1,sys2)
legend('sys','sys1','sys2')
%Q4
figure(3)
hold on
step(sys)
step(sys1)
step(sys2)
legend('sys','sys1','sys2')
hold off
%Q6
figure(4)
bode(sys,sys1,sys2)
legend('sys','sys1','sys2')
figure(5)
nyquist(sys,sys1,sys2)
legend('sys','sys1','sys2')