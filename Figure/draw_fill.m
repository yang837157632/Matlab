% fill fill3
subplot(2,2,1);
x=0:0.01:2.2*pi;
y=sin(x).*cos(x);
fill(x,y,'g');
legend('y=sin(x)*cos(x)');
xlabel('x');ylabel('y');
title('fill');
subplot(2,2,2);
fill3(rand(3,5),rand(3,5),rand(3,5),'r');
xlabel('x');ylabel('y');zlabel('z');
title('fill3');
subplot(2,2,3);
t=0:pi/30:2*pi;
x1=sin(t);y1=cos(t);z1=t.*sin(t).*cos(t);
plot3(x1,y1,z1);
subplot(2,2,4);
fill3(x1,y1,z1,'b');
