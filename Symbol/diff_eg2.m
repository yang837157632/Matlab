clear;clc;
syms t x y
% diff(s)
z1=exp(-x)+x
a=diff(z1)

% diff(s,n)
z2=cos(x^2)
b2=diff(z2,2)
b3=diff(z2,3)

% diff(s,v,n)
z3=sin(x)+cos(y)
c1=diff(z3,3)
c2=diff(z3,y,3)

% diff(s,v)
z4=x+1/y^2
d=diff(z4)
e=diff(z4,y)
