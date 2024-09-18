%EXERCICE1:
% a=5;
% w=1;
% ksi1=0.2;
% ksi2=0.7;
% den1=[(1/w)^2 2*ksi1/w 1];
% den12=[(1/w)^2 2*ksi2/w 1];
% den2=[1 a];
% denG1=conv(den1,den2);
% denG2=conv(den12,den2);
% G1=tf(1,denG1);
% G2=tf(1,denG2);
% d1=100*exp((-ksi1*pi)/(sqrt(1-ksi1^2)));
% d2=100*exp((-ksi2*pi)/(sqrt(1-ksi2^2)));
% step(G1)
% figure
% step(G2)
%---------------------
% pzmap(G1)
% hold on
% pzmap(G2)
%---------------------
% ksi3=0.6;
% den13=[(1/w)^2 2*ksi3/w 1];
% denG3=conv(den13,den2);
% G3=tf(1,denG3);
% W=logspace(-2,4,500);
% [m,ph,W]=bode(G3,W);
% k=find(20*log10(m)<=-17);
% Wc=W(k(1));
% bode(G3)
%---------------------
% ksi4=0.3;
% den14=[(1/w)^2 2*ksi4/w 1];
% denG4=conv(den14,den2);
% G4=tf(1,denG4);
% nyquist(G4)
% [Real,IM,W]=nyquist(G4);
% distmin=min(sqrt((Real+1).^2+IM.^2))
% distmin2=min(distance(Real,IM,-1,0))

%EXERCICE2:
% y0=1.2;
% t=[0:20];
% [t,sol]=ode45('yprime',t,y0)
% plot(t,sol)
%------------
% y=[1 3]';
% t=[0:0.2:20];
% [t,sol]=ode23('ypr',t,y)
% plot(t,sol)
%--------------
% y=[2 7]';
% t=[0:0.1:20];
% [t,sol]=ode23('ypri',t,y)
% plot(t,sol)

%EXERCICE3:
A=[0 1;-2 -3];
B=[0;1];
C=[1 0];
D=0;
Ts1=0.2;
Ts2=0.5;
Ts3=2;
G1=ss(A,B,C,D);
H1=c2d(G1,Ts1)
H2=c2d(G1,Ts2)
H3=c2d(G1,Ts3)

