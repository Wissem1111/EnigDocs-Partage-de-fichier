
function[x0]=newton(a,b,f,df,eps)
x0=a;
i=0;
while (abs(polyval(f,x0))>= eps)
    x1=x0-((polyval(f,x0))/(polyval(df,x0)));
    x0=x1;
    i=i+1;
end
end 

