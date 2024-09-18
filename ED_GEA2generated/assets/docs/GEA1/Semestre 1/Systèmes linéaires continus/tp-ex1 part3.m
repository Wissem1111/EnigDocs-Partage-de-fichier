clear all
close all
clc

k=1
w0=200
m1=0.5
m2=0.7
m3=1
m4=1.2
num=[k*w0*w0]
den1=[1 2*m1*w0 w0*w0]
sys1=tf(num,den1)
den2=[1 2*m2*w0 w0*w0]
sys2=tf(num,den2)
den3=[1 2*m3*w0 w0*w0]
sys3=tf(num,den3)
den4=[1 2*m4*w0 w0*w0]
sys4=tf(num,den4)
rlocus(sys1,sys2,sys3,sys4)
legend(sys1,sys2,sys3,sys4)