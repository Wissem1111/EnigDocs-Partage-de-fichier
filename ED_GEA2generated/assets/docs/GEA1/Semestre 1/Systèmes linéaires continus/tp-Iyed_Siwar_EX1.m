clear all 
close
clc
k=1
w0=200
m1=0.5
m2=sqrt(2)/2
m3=1
m4=1.2
num=[k*w0^2]
den1=[1 2*w0*m1 w0^2]
den2=[1 2*w0*m2 w0^2]
den3=[1 2*w0*m3 w0^2]
den4=[1 2*w0*m4 w0^2]
H1=tf(num,den1)
H2=tf(num,den2)
H3=tf(num,den3)
H4=tf(num,den4)
p1=roots(den1)
p2=roots(den2)
p3=roots(den3)
P11=pole(H1)
figure(1)
step(H1,H2,H3,H4)
legend('H1','H2','H3','H4')
figure(2)
bode(H1,H2,H3,H4)
legend('H1','H2','H3','H4')
figure(3)
nyquist(H1,H2,H3,H4)
legend('H1','H2','H3','H4')