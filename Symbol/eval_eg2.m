clear;clc;
% 符号常量    r(rational)/f(floating point)/e(estimate error)/d
s1=sym(log(2))             % 默认r
s2=sym(log(2),'f')

% 符号矩阵
A=sym('[a b c;d e f]')
B=sym('[1 2 3;4 5 6]')

% 符号变量    
x=sym('x','real')          % real/unreal/不加
syms m n p q w x y z         % real/unreal/不加

a=sym('3.14')
b=sym(3.14)                % 将数值表达式转换为符号表达式
c='(1+sqrt(5))/2'
eval(c);                   % 将符号表达式转换成数值表达式

d=z^3-2*z-5
u=sym2poly(d)
v=poly2sym(u)              % 默认符号变量为x
w=poly2sym(u,y) 

% findsym  以字符串形式返回符号变量
f=m*n-p/q+y^2+w^2
f1=findsym(f)
f2=findsym(f,1)

% symvar  以向量形式返回符号变量
g1=symvar(f)
g2=symvar(f,3)