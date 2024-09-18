clear all
close all
clc
%Qa
num=[10]
den=[1 2]
sys1=tf(num,den)
figure(1)
step(sys1)
%Qb
num1=[5]
den1=[2 1]
H1=tf(num1,den1)
num2=[5]
den2=[5 1]
H2=tf(num2,den2)
%Qc
figure(2)
impulse(sys1,H1,H2)
legend('sys1','H1','H2')
%Qd
figure(3)
step(sys1,H1,H2)
legend('sys1','H1','H2')
%Qf
figure(4)
bode(sys1)
bode(H1)
bode(H2)
figure(5)
nyquist(sys1)
nyquist(H1)
nyquist(H2)
