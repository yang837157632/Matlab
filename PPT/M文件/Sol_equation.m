% solve equation
%USST
x=-1:0.1:5;
y=x.^2-4*x+3;
plot(x,y);
set(gca,'ylim',[min(y)-2,max(y)+2])  % find minimum and maximum of y

X=solve('x^2 - 4*x + 3 = 0');   %solve equation.  Make sure there is no '.' before ^.
hold on
plot(double(X(1)),0,'*r',double(X(2)),0,'*r');
title('x^2 - 4*x + 3 = 0');
% text(double(X(1)),-0.5,num2str(double(X(1))));
% text(double(X(2)),-0.5,num2str(double(X(2))));