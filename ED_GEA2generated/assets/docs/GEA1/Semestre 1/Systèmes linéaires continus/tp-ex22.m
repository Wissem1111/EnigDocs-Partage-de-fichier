clear all
close all
clc
k=1
w0=200
m1=0.5
m2=0.701
m3=1
m4=1.2
num1=[k*w0*w0]
den1=[1 2*m1*w0 w0*w0]
H1=tf(num1,den1)
den2=[1 2*m2*w0 w0*w0]
H2=tf(num1,den2)
den3=[1 2*m3*w0 w0*w0]
H3=tf(num1,den3)
den4=[1 2*m4*w0 w0*w0]
H4=tf(num1,den4)
p1=roots(den1)
p11=pole(H1)
p2=roots(den2)
p3=roots(den3)
p4=roots(den4)
figure(1)
step(H1,H2,H3,H4)
legend('H1','H2','H3','H4')
figure(2)
bode(H1,H2,H3,H4)
legend('H1','H2','H3','H4')
figure(3)
nyquist(H1,H2,H3,H4)
legend('H1','H2','H3','H4')