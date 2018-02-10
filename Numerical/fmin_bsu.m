% 最优化问题求解
% [x,fval]=fminbnd(@fname,x1,x2,options) 
% [x1,x2]之间最小值点和最小值
% [x,fval]=fminsearch(@fname,x0,options)
% x0左右最小值点和最小值，单纯形算法
% [x,fval]=fminunc(@fname,x0,options)
%x0左右最小值点和最小值，拟牛顿算法
clear;clc;
[x1,y1]=fminbnd('x^3-2*x-5',0,5)
[x2,y2]=fminsearch(@fmin_eg,[0.5 0.5 0.5])
[x3,y3]=fminunc(@fmin_eg,[0.5 0.5 0.5])
