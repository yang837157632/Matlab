% 数值微分
% diff 差分 polyder 导数
% DX=diff(X)
% DX=diff(X,n)
% DX=diff(A,n,dim)
clear;clc;
x=-4:0.01:5;
a=[1 -3 -8 7 3 -5];
b=polyder(a);
y=polyval(a,x);
y1=polyval(b,x);
dy=diff(y);
dx=diff(x);
df=dy./dx;
x0=-4:0.01:5-0.01;
plot(x,y,x,y1,'dg',x0,df,'k');
legend('y','derivative','diff');