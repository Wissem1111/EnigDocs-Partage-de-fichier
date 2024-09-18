clear all 
clc
%%%a)
num=[10]
den=[1 2]
sys=tf(num,den)
figure(1)
step(sys)
%%b)
num1=[5]
den1=[2 1]
sys1=tf(num1,den1)
figure(2)
step(sys1)
num2=[5]
den2=[5 1]
sys2=tf(num2,den2)
figure(3)
step(sys2)
figure(4)
impulse(sys,sys1,sys2)
legend('sys','sys1','sys2')
figure(5)
step(sys,sys1,sys2)
legend('sys','sys1','sys2')
figure(6)
bode(sys,sys1,sys2)
legend('sys','sys1','sys2')
figure(7)
nyquist(sys,sys1,sys2)
legend('sys','sys1','sys2')