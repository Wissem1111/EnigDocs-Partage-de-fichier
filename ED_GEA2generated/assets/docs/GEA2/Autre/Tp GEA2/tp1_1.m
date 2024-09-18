t=0:10;
m=[0.7;0.5;0.35];
w0=1;
k=5;
for i=1:3
 M=sqrt(1-m(i)^2);
y=k*(1-(1/M)*exp(-M*w0*t).*sin(w0*M*t));

subplot(2,2,i);
plot(t,y,'r');
text(1,4,'la sortie');
xlabel('le temps');
ylabel('l"evolution de y');
hold on ;
end


