clear;clc;
% �߼�ֵ    0    1
% �߼������    &    |    ~    xor
% a&b    c|d    ~e    xor(f,g)
% ��ϵ�����    <    <=    >=    >    ==    ~=
% ���ȼ�    ����    ��ϵ    �߼��ǻ���
a=(sin(pi)==0)        % ��MATLAB�����ǽ�������
b=(abs(sin(pi)-0)<1.0e-14)

A=pascal(5)
k=find(A>4)
A(k)

% ischar('a')    isempty([])    isempty('')
% isinf(1/0)     isnan(0/0)     isnumeric(12)

% A/B=A*inv(B��    A\B=inv(A)*B
% cross(A,B)       ����Ҫ��һά����Ϊ3   
% dot(A,B,DIM)     A,BҪ��ά����ͬ��DIM��ʱĬ��Ϊ1

% ��Խ����
B1=sqrt(A)
B2=sqrtm(A)
C1=log(A)
C2=logm(A)
C3=funm(A,'log')
D1=exp(A)
D2=expm(A)
D3=funm(A,'exp')