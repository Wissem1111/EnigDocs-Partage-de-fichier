clear all
close all
clc
k=1
w=200
x1=0.5
x2=sqrt(2)/2
x3=1
x4=1.2
num=k*w*w
den1=[1 2*x1*w w*w]
den2=[1 2*x2*w w*w]
den3=[1 2*x3*w w*w]
den4=[1 2*x4*w w*w]
h1=tf(num,den1)
h2=tf(num,den2)
h3=tf(num,den3)
h4=tf(num,den4)

p1=roots(den1)
p2=roots(den2)
p3=roots(den3)
p4=roots(den4)

p11=pole(h1)
p22=pole(h2)
p33=pole(h3)
p44=pole(h4)
figure(1)
step(h1,h2,h3,h4)
legend('h1','h2','h3','h4')

figure(2)
nyquist(h1,h2,h3,h4)
legend('h1','h2','h3','h4')
 figure(3)
bode(h1,h2,h3,h4)
legend('h1','h2','h3','h4')








