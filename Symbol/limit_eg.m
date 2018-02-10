clear;clc;
syms n t x
A=((x+t)*(exp(sin(x+t))+1)-2*(exp(tan(x+t))-1))/(x+n)
a=limit(A)                             % limit(f)  默认自变量 a=0
b=limit(A,n)                           % limit(f,a)  默认自变量
c=limit(A,t,n)                         % limit(f,v,a)
d=limit(A,t,5,'left')                  % limit(f,v,a,'left')   
e=limit(A,t,2,'right')                 % limit(f,v,a,'right')       

B=x*(sqrt(x^2+1)-x)
b=limit(B,x,inf)
