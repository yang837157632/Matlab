clear;clc;
syms t x y z 
% solve(s)
n=solve('n^3-n^2-1=0')
eval(n)
% solve(s,v)
t=solve('1/(t+2)+x=1/(t-2)',t)
% solve(s1,s2,...,sn,v1,v1,...,vn)
[x y z]=solve('x+2*y-z=27','x+z=3','x+3*y=8',x,y,z)
