function dx=lorenz_eg(t,x)
A=[-8/3 0 x(2);0 -10 10;-x(2) 28 -1];
dx=A*x;