% laplace  ¶ÔÓ¦Ä¬ÈÏs
clear;clc;
syms x t s z
% L=laplace(F)
f1=x^4
a=laplace(f1)
f2=t^4
b=laplace(f2)
f3=s^4
c=laplace(f3)

% L=laplace(F, u)
d=laplace(f1,z)
e=laplace(f2,z)
f=laplace(f3,z)

% L=laplace(F, v, u)
f4=t^4+s^4
g=laplace(f4,s,z)
