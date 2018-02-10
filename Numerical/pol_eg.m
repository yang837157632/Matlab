function dx=pol_eg(t,x)
dx(1)=(1-x(2)^2)*x(1)-x(2);
dx(2)=x(1);
dx=dx';