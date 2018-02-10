% interp2(X,Y,Z,x,y,'method')
% linear nearest cubic spline
clear;clc;
x=0:2.5:10;
h=(0:30:60)';
T=[90 14 0 0 0;88 48 32 12 6;67 64 54 48 41];
xi=0:10;
hi=[0:10:60]';
Ti=interp2(x,h,T,xi,hi);
surf(xi,hi,Ti);
xlabel('x');ylabel('y');zlabel('z');
colormap(spring);
view(-37.5,60);