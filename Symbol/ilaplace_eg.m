% ilaplace  ¶ÔÓ¦Ä¬ÈÏt
clear;clc;
syms x y t s z
% F=ilaplace(L)
f1=1/x^2
a=ilaplace(f1)
f2=1/t^2
b=ilaplace(f2)
f3=1/s^2
c=ilaplace(f3)

% F=ilaplace(L,u)
d=ilaplace(f1,z)
e=ilaplace(f2,z)
f=ilaplace(f3,z)

% F=ilaplace(L,v,u)
f4=1/x^3+1/y^4
g=ilaplace(f4,y,z)