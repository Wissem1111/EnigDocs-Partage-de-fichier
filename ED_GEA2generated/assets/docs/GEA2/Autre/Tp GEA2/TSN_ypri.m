function yp=ypri(t,y)
x(1)=y(1)
x(2)=y(2)
p1=x(2)
p2=3*sin(2*t)-t*x(2)-exp(-t)*x(1)
yp=[p1,p2]'