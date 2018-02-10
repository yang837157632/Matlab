% sphere default 20
% shading faceted(default) flat interp
[x,y,z] = sphere(30);
subplot(2,2,1);mesh(x,y,z);
xlabel('x');ylabel('y');zlabel('z');
title('X Y Z mesh');
daspect([1 1 1]);
subplot(2,2,2);surf(x+3,y-2,z+1);
xlabel('x');ylabel('y');zlabel('z');
title('X+3   Y-2   Z+1   shading flat');
daspect([1 1 1]);
shading flat;
subplot(2,2,3);surf(2*x,7*y,5*z);
xlabel('x');ylabel('y');zlabel('z');
title('2X   7Y   5Z   shading interp');
daspect([1 1 1]);
shading interp;
subplot(2,2,4);surf(3*x-6,4*y+7,7*z-9);
xlabel('x');ylabel('y');zlabel('z');
title('3X-6   4Y+7   17Z-9  default');
daspect([1 1 1]);
