x1=[1 3 5 6 8 9 12];
y1=[3 4 2 3 4 1 6];
subplot(2,2,1);
stem(y1);
title('stem Y');
xlabel('x');ylabel('y');
grid on;
subplot(2,2,2);
stem(x1,y1);
title('stem X Y');
xlabel('x');ylabel('y');
grid on;
x2=[1 3 5 6 8 9 12];
y2=[3 4 2 3 4 1 6];
z2=[5 6 7 4 2 3 4];
subplot(2,2,3);
stem3(z2);
title('stem3 Z');
xlabel('x');ylabel('y');zlabel('z');
grid on;
subplot(2,2,4);
stem3(x2,y2,z2);
title('stem3 X Y Z');
xlabel('x');ylabel('y');zlabel('z');
grid on;