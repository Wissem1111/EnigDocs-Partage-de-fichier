function dX=MRA(t,X)
global m; global a;global k;
A=[0 1;-k/m -a/m];
dX=A*X;
%cas generale dX=[X(2);-k/m*X(1)-a/m/X(2)]