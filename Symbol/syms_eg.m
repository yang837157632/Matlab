clear;clc;
syms a b x y
% [n,d]=numden(s)  ��ȡ���ӷ�ĸ
h=[3/2 (2*x+1)/3;a/x+a/y 3*x+4]
[c d]=numden(h)

% factor(s)  �ֽ���ʽ
A=a^3-b^3
i=factor(A)

% expand(s)  չ��
B=(-7*x^2-8*y^2)*(-x^2+3*y^2)
j=expand(B)

% collect(s)  �ϲ�ͬ����  collect(s,v)
C=7*x^4*y-13*x^3*y^2-24*x^2*y^3+6*x*y^4+3
k=collect(C)
l=collect(C,y)

% coeffs(s)  ϵ������ȡ  coeffs(s,v)
D=5*x*y^3+3*x^3*y^2+4
m=coeffs(D)
n=coeffs(D,y)

% simplify(s)  ����  
E=(x-y)*(x+y)^2
p=simplify(E)

% simple(s)  ��ʾ���ֲ�ͬ�Ļ�����
% pretty  ��д��ʽ����