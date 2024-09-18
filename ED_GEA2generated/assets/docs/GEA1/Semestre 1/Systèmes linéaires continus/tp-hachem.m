clear all
close all
clc
k=1
w0=200
m1=0.5
m2=sqrt(2)/2
m3=1
m4=1.2
num=[k*w0*w0]
den1=[1 2*m1*w0 w0*w0]
den2=[1 2*m2*w0 w0*w0]
den3=[1 2*m3*w0 w0*w0]
den4=[1 2*m4*w0 w0*w0]
h1=tf(num,den1)
h2=tf(num,den2)
h3=tf(num,den3)
h4=tf(num,den4)
pole1=roots(den1)
pole2=roots(den2)
pole3=roots(den3)
pole4=roots(den4)
figure(1)
step(h1,h2,h3,h4)
legend('h1','h2','h3','h4')
figure(2)
bode(h1,h2,h3,h4)
legend('h1','h2','h3','h4')
figure(3)
nyquist(h1,h2,h3,h4)
legend('h1','h2','h3','h4')

