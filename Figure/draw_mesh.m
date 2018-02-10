% mesh meshc meshz
[x,y]=meshgrid(-8:0.5:8);
z=sin(sqrt(x.^2+y.^2))./sqrt(x.^2+y.^2);
subplot(1,3,1)
mesh(x,y,z);
xlabel('x');ylabel('y');zlabel('z');
title('mesh');
subplot(1,3,2)
meshc(x,y,z);
xlabel('x');ylabel('y');zlabel('z');
title('meshc');
subplot(1,3,3)
meshz(x,y,z);
xlabel('x');ylabel('y');zlabel('z');
title('meshz');