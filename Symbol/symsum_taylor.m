clear;clc;
syms x n t
% symsum(s,v,n,m)  �����������
s1=symsum(1/n^2,1,inf)
B=1/(2*n+1)
s2=symsum(B,1,20)

% taylor(f,v,n,a)  ������̩�ռ���    nĬ��6��aĬ��0
C=(1+x+x^2)/(1-x+x^2)
t1=taylor(C,12)         % taylor(f,n)
D=(t+x)/(t-x)
t2=taylor(D,t,4)        % taylor(f,v,n)
t3=taylor(log(x),x,5,1)