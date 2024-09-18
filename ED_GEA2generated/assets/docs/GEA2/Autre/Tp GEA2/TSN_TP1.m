% EXERCICE 2 :
% t=1:0.1:10;
% m1=0.7;
% m2=0.5;
% m3=0.35;
% w=1;
% k=5;
% y1=k.*(1-(1./sqrt(1-m1.^2)).*exp(-m1.*w.*t).*sin(w.*sqrt(1-m1.^2).*t));
% y2=k.*(1-(1./sqrt(1-m2.^2)).*exp(-m2.*w.*t).*sin(w.*sqrt(1-m2.^2).*t));
% y3=k.*(1-(1./sqrt(1-m3.^2)).*exp(-m3.*w.*t).*sin(w.*sqrt(1-m3.^2).*t));
% figure;
% hold on;
% plot(t,y1)
% plot(t,y2)
% plot(t,y3)
% xlabel('axe t')
% ylabel('y1,y2,y3')
% figure;
% subplot(2,2,1)
% plot(t,y1)
% gtext('graph1')
% subplot(2,2,2)
% plot(t,y2)
% gtext('graph2')
% subplot(2,2,3)
% plot(t,y3)
% gtext('graph3')

%EXERCICE 3:
% L=[1 18 87 0 255 186 73 12];
% roots(L)
% sol=solve('x^7+18*x^6+87*x^5+255*x^3+186*x^2+73*x+12');
% v=vpa(sol);
% num=2;
% den=[1 8 17 10];
% roots(den)
% k=2./polyval(den,0)
% [R,P,k]=residue(num,den);
% t=0:0.1:10;
% plot(t,R(1)*exp(P(1)*t)+R(2)*exp(P(2)*t)+R(3)*exp(P(3)*t))

%EXERCICE4:

    
