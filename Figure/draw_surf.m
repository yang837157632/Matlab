% surf surfc surfl (light)
[x,y]=meshgrid(-8:0.5:8);
z=sin(sqrt(x.^2+y.^2))./sqrt(x.^2+y.^2);
subplot(1,3,1)
surf(x,y,z);
xlabel('x');ylabel('y');zlabel('z');
title('surf');
subplot(1,3,2)
surfc(x,y,z);
xlabel('x');ylabel('y');zlabel('z');
title('surfc');
subplot(1,3,3)
surfl(x,y,z);
xlabel('x');ylabel('y');zlabel('z');
title('surfl');