% ���Ż��������
% [x,fval]=fminbnd(@fname,x1,x2,options) 
% [x1,x2]֮����Сֵ�����Сֵ
% [x,fval]=fminsearch(@fname,x0,options)
% x0������Сֵ�����Сֵ���������㷨
% [x,fval]=fminunc(@fname,x0,options)
%x0������Сֵ�����Сֵ����ţ���㷨
clear;clc;
[x1,y1]=fminbnd('x^3-2*x-5',0,5)
[x2,y2]=fminsearch(@fmin_eg,[0.5 0.5 0.5])
[x3,y3]=fminunc(@fmin_eg,[0.5 0.5 0.5])
