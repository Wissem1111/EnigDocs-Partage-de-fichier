clear all
close all
clc
num=[1 2]
den=[1 3 -4]
sys=tf(num,den)
figure(1)
impulse(sys)
figure(2)
step(sys)
figure(3)
bode(sys)
figure(4)
nyquist(sys)
figure(5)
rlocus(sys)
