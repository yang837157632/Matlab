% iztrans  ¶ÔÓ¦Ä¬ÈÏn
clear;clc;
syms x y z w n
% f=iztrans(F)
f1=2*z/(z-2)^2
a=iztrans(f1)
f2=2*x/(x-2)^2
b=iztrans(f2)
f3=2*n/(n-2)^2
c=iztrans(f3)

% f=iztrans(F,u)
d=iztrans(f1,y)
e=iztrans(f2,y)
f=iztrans(f3,y)

% f=iztrans(F,v,u)
f4=2*(n+x)/x^2
g=iztrans(f4,x,y)