clear;clc;
A=magic(5)
A0=reshape(1:16,4,4)
V=[1 3 5 7 9]

B=A'                      % 转置

a1=diag(A)                % 对角阵
a2=diag(A,3)
C1=diag(V)
C2=diag(V,-2)

b1=triu(A)                % 上三角矩阵
b2=triu(A,2)
c1=tril(A)                % 下三角矩阵
c2=tril(A,-3)

C1=rot90(A)               % 逆时针旋转
C2=rot90(A,3)

D1=fliplr(A)              % 翻转 左右
D2=flipud(A)              % 翻转 上下

E1=inv(A)                 % 逆矩阵
E2=pinv(A0)               % 逆矩阵

d=det(A)                  % 行列式
e=rank(A)                 % 秩
f=trace(A)                % 迹（主对角线和)
g=eig(A)                  % 特征值

[X1,Y1]=eig(A)            % 特征向量
[X2,Y2]=eig(A,'nobalance')

% 范数
% norm(A,1)    norm(A)/norm(A,2)    norm(A,inf)
% 条件数
% cond(A,1)    cond(A)/cond(A,2)    cond(A,inf)
