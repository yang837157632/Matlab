clear;clc;
a=[1 -2 5 3];b=[0 0 6 -1];    %要求长度相同
c=a+b

% conv dconv
m=[1 8 0 0 -10];n=[2 -1 3];
w=conv(m,n)
[u,v]=deconv(m,n)

% polyder
p1=polyder(m)
p2=polyder(m,n)
[p3 p4]=polyder(m,n)

% polyval polyvalm
d=polyval(c,3)
A=magic(3);
B=polyval(c,A)
C=polyvalm(c,A)

% roots poly
x=roots(c)
y=poly(x)
