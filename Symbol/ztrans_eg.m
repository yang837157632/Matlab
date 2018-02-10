% ztrans  ¶ÔÓ¦Ä¬ÈÏz
clear;clc;
syms x y z w n
% F=ztrans(f)
f1=n^4
a=ztrans(f1)
f2=x^4
b=ztrans(f2)
f3=z^4
c=ztrans(f3)

% F=ztrans(f, u)
d=ztrans(f1,y)
e=ztrans(f2,y)
f=ztrans(f3,y)

% F=ztrans(f, v, u)
f4=n^4+w^4
g=ztrans(f4,w,y)
