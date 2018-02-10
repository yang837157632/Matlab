clear;clc;
syms a b x y
% [n,d]=numden(s)  提取分子分母
h=[3/2 (2*x+1)/3;a/x+a/y 3*x+4]
[c d]=numden(h)

% factor(s)  分解因式
A=a^3-b^3
i=factor(A)

% expand(s)  展开
B=(-7*x^2-8*y^2)*(-x^2+3*y^2)
j=expand(B)

% collect(s)  合并同类项  collect(s,v)
C=7*x^4*y-13*x^3*y^2-24*x^2*y^3+6*x*y^4+3
k=collect(C)
l=collect(C,y)

% coeffs(s)  系数的提取  coeffs(s,v)
D=5*x*y^3+3*x^3*y^2+4
m=coeffs(D)
n=coeffs(D,y)

% simplify(s)  化简  
E=(x-y)*(x+y)^2
p=simplify(E)

% simple(s)  显示各种不同的化简结果
% pretty  书写格式美化