% fourier  ¶ÔÓ¦Ä¬ÈÏw
clear;clc;
syms x y z w
% F=fourier(f)
f1=exp(-x^2)
a=fourier(f1)
f2=exp(-y^2)
b=fourier(f2)
f3=exp(-abs(w))
c=fourier(f3)

% F=fourier(f,u)
d=fourier(f1,z)
e=fourier(f2,z)
f=fourier(f3,z)

% F=fourier(f,v,u)
f4=exp(-x^2-y^2)
g=fourier(f4,y,z)
