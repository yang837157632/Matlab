clear;clc;
% ���ų���    r(rational)/f(floating point)/e(estimate error)/d
s1=sym(log(2))             % Ĭ��r
s2=sym(log(2),'f')

% ���ž���
A=sym('[a b c;d e f]')
B=sym('[1 2 3;4 5 6]')

% ���ű���    
x=sym('x','real')          % real/unreal/����
syms m n p q w x y z         % real/unreal/����

a=sym('3.14')
b=sym(3.14)                % ����ֵ���ʽת��Ϊ���ű��ʽ
c='(1+sqrt(5))/2'
eval(c);                   % �����ű��ʽת������ֵ���ʽ

d=z^3-2*z-5
u=sym2poly(d)
v=poly2sym(u)              % Ĭ�Ϸ��ű���Ϊx
w=poly2sym(u,y) 

% findsym  ���ַ�����ʽ���ط��ű���
f=m*n-p/q+y^2+w^2
f1=findsym(f)
f2=findsym(f,1)

% symvar  ��������ʽ���ط��ű���
g1=symvar(f)
g2=symvar(f,3)