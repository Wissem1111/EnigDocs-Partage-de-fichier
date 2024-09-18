function[x0]=Newton(a,b,tol,f,d)
 x0=b
 xi=0
 while abs(polyval(f,x0))>tol
     x1=x0-f(x0)/d(x0);
     xi=x0;
     x0=x1;
 end
end
