clc
clear all
close all
num=[2 1];
den=[1 1 1/4];
H=tf(num,den)
[A,B,C,D]=tf2ss(num,den)
pole(H)
zero(H)
%en boucle ouvert
figure(1)
subplot(2,1,1)
bode(H)
figure(2)
subplot(2,1,1)
 nyquist(H)
figure(3)
subplot(2,1,1)
nichols(H)
%en boucle ferme
% [num1,den1]=feedback(num,1,den,1)
Hf=feedback(H,1)
figure(1)
subplot(2,1,2)
bode(Hf)
figure(2)
subplot(2,1,2)
 nyquist(Hf)
figure(3)
subplot(2,1,2)
nichols(Hf)
[g,p]=margin(H)
if((g>0)||(p>0))
disp('le sys est stable');
else disp('le sys n est pas stable');
end













