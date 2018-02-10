% 数值积分  default 10-6
clear;clc;
% [I,n]=quad(@fname,a,b,tol,trace)
% [I,n]=quadl(@fname,a,b,tol,trace)
g=inline('exp(-0.5*x).*sin(x+pi/6)')
[s1,n1]=quad(g,0,3*pi)
[s2,n2]=quadl(g,0,3*pi)

% [I,err]=quadgk(@fname,a,b)
s3=quadgk(@(x)exp(-0.5*x).*sin(x+pi/6),0,3*pi)

% I=trapz(X,Y)
x=0:0.01:3*pi;
y=exp(-0.5*x).*sin(x+pi/6);
s4=trapz(x,y)

% dblquad(@fun,a,b,c,d,tol)
f=inline('exp(-x.^2/2).*sin(x.^2+y)','x','y')
s5=dblquad(f,-2,2,-1,1)
% ∫-1 1 ∫-2 2 f dxdy

% triplequad(@fun,a,b,c,d,e,f,tol)
h=@(x,y,z)4*x.*z.*exp(-z.^2.*y-x.^2)
s6=triplequad(h,0,pi,0,pi,0,1,1e-7)      % 不可用inline
% ∫0 1 ∫0 pi ∫0 pi f dxdydz