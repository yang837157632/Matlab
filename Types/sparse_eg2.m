clear;clc;
A=[1 0 0 0;0 0 2 0;0 0 0 0;0 0 0 1;2 0 0 0]
S_a=sparse(A)
B=[0 11 12;0 21 22;0 31 32;41 42 0;51 52 0]
d=[-3;0;3]
S_h=spdiags(B,d,5,6)
H=full(S_h)
[B2 d2]=spdiags(S_h)
c=[1;3]
C=spdiags(S_h,c)

spy(S_a)                  % 作S_a的散点图
g=spones(S_a)             % 将S_a中个元素值转为1
cols=sum(spones(S_a))     % 各行非0元素出现次数
rows=sum(spones(S_a'))    % 各列非0元素出现次数
x=nonzeros(A)             % A中非0元素值  
y=nzmax(A)                % A中元素总个数
z=nzmax(S_a)              % S_a中元素总个数
