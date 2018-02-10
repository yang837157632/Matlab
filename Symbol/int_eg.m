clear;clc;
syms alpha t x
% int(s)
A=1/(1+x^2)
a=int(A)

% int(s,v)
B=exp(alpha*t)
b=int(B,t)

% int(s,v,a,b)
C=sqrt(1/(1+x))
c=int(C,0,2)
D=4*x*t
d=int(D,t,2,sin(x))