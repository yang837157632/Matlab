x=[1 2 5 7 8 12 15];
y=[3 4 2 3 4 1 6];
subplot(1,2,1);
stairs(y);
title('stairs Y');
xlabel('x');
ylabel('y');
grid on;
axis([0 10 0 7]);
subplot(1,2,2);
stairs(x,y);
title('stairs X Y');
xlabel('x');
ylabel('y');
grid on;
axis([0 16 0 7]);