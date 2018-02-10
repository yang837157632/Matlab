clear;clc;
x0=[0 0 eps]';
[t,x]=ode23(@lorenz_eg,[0,100],x0);
plot3(x(:,1),x(:,2),x(:,3));
axis([10 40 -20 20 -20 30]);
Xlabel('x');ylabel('y');zlabel('z');
view(-37.5,30);