clear;clc;
A=magic(5)
A0=reshape(1:16,4,4)
V=[1 3 5 7 9]

B=A'                      % ת��

a1=diag(A)                % �Խ���
a2=diag(A,3)
C1=diag(V)
C2=diag(V,-2)

b1=triu(A)                % �����Ǿ���
b2=triu(A,2)
c1=tril(A)                % �����Ǿ���
c2=tril(A,-3)

C1=rot90(A)               % ��ʱ����ת
C2=rot90(A,3)

D1=fliplr(A)              % ��ת ����
D2=flipud(A)              % ��ת ����

E1=inv(A)                 % �����
E2=pinv(A0)               % �����

d=det(A)                  % ����ʽ
e=rank(A)                 % ��
f=trace(A)                % �������Խ��ߺ�)
g=eig(A)                  % ����ֵ

[X1,Y1]=eig(A)            % ��������
[X2,Y2]=eig(A,'nobalance')

% ����
% norm(A,1)    norm(A)/norm(A,2)    norm(A,inf)
% ������
% cond(A,1)    cond(A)/cond(A,2)    cond(A,inf)
