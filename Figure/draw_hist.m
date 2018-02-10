% hist the default is 10.
x = -4:0.2:4;
y = randn(1,1000);
subplot(1,3,1);
hist(y,x);
xlabel('x');ylabel('y');grid on;
title('hist Y X');
subplot(1,3,2);
hist(y);
xlabel('x');ylabel('y');grid on;
title('hist Y');
subplot(1,3,3);
hist(y,25);
xlabel('x');ylabel('y');grid on;
title('hist Y 25');
