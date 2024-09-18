function yp=ypr(t,y)
x(1)=y(1)
x(2)=y(2)
p1=x(2)
p2=-2*x(2)-x(1)+2*exp(-t)
yp=[p1,p2]'