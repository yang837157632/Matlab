% logical
clear;clc;
n=input('please input the argument: ');
a=magic(n);
eval('A=a')
b=a>6;
c=~b;
a(b)=sqrt(a(b));
a(c)=(a(c)).^2;
disp('a = ');
disp(a);