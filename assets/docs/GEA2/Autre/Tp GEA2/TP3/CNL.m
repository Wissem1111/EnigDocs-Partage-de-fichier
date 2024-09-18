function dx=CNL(t,X)
global a b c L R;
dx(1)=-X(1)*a/c-X(1).^2*b/c-X(2)*1/c;
dx(2)=X(1)*1/L-X(2)*R/L;
dx=[dx(1);dx(2)];

