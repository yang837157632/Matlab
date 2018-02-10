clear;clc;
% 逻辑值    0    1
% 逻辑运算符    &    |    ~    xor
% a&b    c|d    ~e    xor(f,g)
% 关系运算符    <    <=    >=    >    ==    ~=
% 优先级    算术    关系    逻辑非或与
a=(sin(pi)==0)        % 因MATLAB运算是近似运算
b=(abs(sin(pi)-0)<1.0e-14)

A=pascal(5)
k=find(A>4)
A(k)

% ischar('a')    isempty([])    isempty('')
% isinf(1/0)     isnan(0/0)     isnumeric(12)

% A/B=A*inv(B）    A\B=inv(A)*B
% cross(A,B)       至少要有一维长度为3   
% dot(A,B,DIM)     A,B要求维度相同，DIM无时默认为1

% 超越函数
B1=sqrt(A)
B2=sqrtm(A)
C1=log(A)
C2=logm(A)
C3=funm(A,'log')
D1=exp(A)
D2=expm(A)
D3=funm(A,'exp')