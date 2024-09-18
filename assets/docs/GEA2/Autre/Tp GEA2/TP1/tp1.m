t=0:10;
m=[0.7;0.5;0.35];
w0=1;
k=5;
M=sqrt(1-m(1)^2);
y=k*(1-(1/M)*exp(-M*w0*t).*sin(w0*M*t))
plot(t,y);
hold on ;
xlabel('le temps');
ylabel('l evolution de y');