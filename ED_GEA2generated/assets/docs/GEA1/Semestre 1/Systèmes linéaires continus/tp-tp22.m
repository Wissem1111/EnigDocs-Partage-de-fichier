clear all
clc
%exercice1
num=[10]
den=[1 2]
h=tf(num,den)
figure(1)
step(h)

%b c d
num1=[5]
den1=[2 1]
h1=tf(num1,den1)


num2=[5]
den2=[5 1]
h2=tf(num2,den2)
%%%%%
figure(2)
impulse(h,h1,h2)
legend('h,0.5','h1,2','h2,5')
%%%
figure(3)
step(h,h1,h2)
legend('h,0.5','h1,2','h2,5')
 %%%%%
 figure(4)
 bode(h,h1,h2)
legend('h,0.5','h1,2','h2,5')

figure(5)
nyquist(h,h1,h2)
legend('h,0.5','h1,2','h2,5')


