% 线性规划问题求解
% [x fval]=linprog(f,A,b,Aeq,beq,lbnd,ubnd)
clear;clc;
f=[2;1];
A=[-3 -1;-4 -3;-1 -2];
b=[-3;-6;-2];
lb=[0;0];
options=optimset('Display','off');
[x,f]=linprog(f,A,b,[],[],lb,[])