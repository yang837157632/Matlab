% cylinder default  N = 20
subplot(2,2,1);
[X,Y,Z]=cylinder(3,50);
surf(X+1,Y-2,Z-5);
xlabel('x');ylabel('y');zlabel('z');
subplot(2,2,2);
[X,Y,Z]=cylinder([10,0],40);
surf(X,Y,5*Z);
xlabel('x');ylabel('y');zlabel('z');
subplot(2,2,3);
t = 0:pi/10:2*pi;
[X,Y,Z] = cylinder(2+2*cos(t),30);
surf(X,Y,Z);
xlabel('x');ylabel('y');zlabel('z');
subplot(2,2,4);
t=0:pi/10:2*pi;
[X,Y,Z]=cylinder(sin(t),40);
surf(X,Y,4*Z);
xlabel('x');ylabel('y');zlabel('z');
