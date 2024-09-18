clear all
close all
clc
sys=tf([10],[1 2]) %1
figure(1)
step(sys)
sys1=tf([5],[2 1])
sys2=tf([5],[5 1])
figure(2)
step(sys1)
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