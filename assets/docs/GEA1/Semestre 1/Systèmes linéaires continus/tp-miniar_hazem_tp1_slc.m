clear all ;close all;clc
t=-pi:0.01:pi;%l'intervale de temps
y=sin(t);z=cos(t);
figure(1) % ouvrirbune figure num1
plot(t,y) % tracer la fonction y en fonction de t dans l' intervalle [-pi,pi] avec un pas %d 0.01
hold on  % maintenir le graphe suivant
plot (t,z)% tracer la fonction z en fonction de t on la meme graphe 
title ( ' fonction sin et cos ') % definir les axes t et y 
xlabel('temps');ylabel('y,z')
grid 
legend('sinus','cosinus')
hold off 
figure(2)
plot(t,sin(t),t,cos(t),'r*')
legend('cosnus','sinus','racine')



