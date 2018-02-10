% ifourier  ¶ÔÓ¦Ä¬ÈÏx
clear;clc;
syms x y z w
% f=ifourier(F)
f1=cos(w)
a=ifourier(f1)
f2=sin(y)
b=ifourier(f2)
f3=sin(x)
c=ifourier(f3)

% f=ifourier(F,u)
d=ifourier(f1,z)
e=ifourier(f2,z)
f=ifourier(f3,z)

% f=ifourier(F,v,u)
f4=cos(x)+sin(y)
g=ifourier(f4,y,z)
