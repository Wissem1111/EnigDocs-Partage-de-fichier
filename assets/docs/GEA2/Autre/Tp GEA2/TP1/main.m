
% f=[1 -6 5];
% df=[2 -6];
% g=cos(x)-x ;
% dg=diff(g);
% eps=10^-6;
% a=-10;
% b=5;
% [x0]=newton(a,b,f,df,eps)
 for x= 1 : 8 
      for y= 1 : 8 
        damier[10*x+y] = I[-y+9, x];
      end
 end
