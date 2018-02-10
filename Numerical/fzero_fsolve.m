% 非线性方程数值求解
% fzero(@fname,x0,tol,trace)
% fsolve(@fname,x0,options)
clear;clc;
x1=fzero('x-10.^x+2',0.5)
options=optimset('Display','off');
x2=fsolve(@fsolve_eg,[0.5,0.5],options)