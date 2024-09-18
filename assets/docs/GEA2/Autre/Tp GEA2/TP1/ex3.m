t=0:0.1:10;
num=2;
den=[1 8 17 10];
P=tf(num,den)
roots(den)
polyval((num./den),0)
[r,p,k]=residue(num,den)
s=0;
for i=1:3
    s=s+r(i)*exp(p(i)*t);
end
plot(t,s)
