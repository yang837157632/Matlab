clear;clc;
syms t
f=@(x,y)x^2+y^2+2*x+y
k1=feval(f,1,t)
k2=f(1,t)
k3=feval(f,1,1)
k4=f(1,1)