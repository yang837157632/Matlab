% 有约束最优化问题求解
% [x,fval]=fmincon(@fname,x0,A,b,Aeq,beq,Lbnd,Ubnd.NonF,options)
% Ax<=b
% Aeq*x=beq
% Lbnd<=x<=Ubnd
clear;clc;
x0=[0.5;0.5];
A=[-1 -0.5;-0.5 -1];
b=[-0.4;-0.5];
lb=[0;0];
options=optimset('Display','off');
[x,f]=fmincon(@fmincon_eg,x0,A,b,[],[],lb,[],[],options)