clear;clc;
% vander([a b c d,...])
A=vander([1 3 5 9 6])

% hilb(n)
format rat
B=hilb(5)
format short

% toeplitz(m,n)
m=1:6;
n=2:2:10;
C=toeplitz(m,n)
% toeplitz(n)
D=toeplitz(m)

% pascal(n+1)
E=pascal(5)

% compan(A)    A必须为1*n行向量
p=3:3:28;
F=compan(p)

% magic(n)
G=magic(4)

% zeros    ones    rand    randn    eye(只用于二位矩阵）
X=zeros(3)                % zeros(m)
Y=zeros(2,3,2)            % zeros(m,n,p,...)
Z=zeros(size(G))          % zeros(size(A))
