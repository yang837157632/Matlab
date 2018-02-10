% dsolve(e,c,v)  default is t
% dsove(e1,e2,...,en,c1,c2,...,cn,v1,v2,...,vn)
clear;clc;
y1=dsolve('Dy=-a*x')

y2=dsolve('Dy=-a*x','x')

y3=dsolve('D2y+2*x=2*y','x')

y4=dsolve('D2y+2*x=2*y','y(2)=5,Dy(1)=2','x')

y5=dsolve('D2f=f+3*g+sin(x)','Dg=Df+4+cos(x)','Df(2)=0,Df(3)=3,g(5)=1','x')
