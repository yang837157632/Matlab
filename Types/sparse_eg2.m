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

spy(S_a)                  % ��S_a��ɢ��ͼ
g=spones(S_a)             % ��S_a�и�Ԫ��ֵתΪ1
cols=sum(spones(S_a))     % ���з�0Ԫ�س��ִ���
rows=sum(spones(S_a'))    % ���з�0Ԫ�س��ִ���
x=nonzeros(A)             % A�з�0Ԫ��ֵ  
y=nzmax(A)                % A��Ԫ���ܸ���
z=nzmax(S_a)              % S_a��Ԫ���ܸ���
