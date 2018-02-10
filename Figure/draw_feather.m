% feather
x1=5*rand(20,1);
y1=7*rand(20,1);
subplot(1,2,1);
feather(x1,y1); 
xlabel('x');ylabel('y');
title('feather X Y');
axis square;
subplot(1,2,2);
x2=3*rand(1,10);
y2=5*rand(1,10);
z=x2+1i*y2;
feather(z);
xlabel('real');ylabel('imag');
title('feather Z');
axis square;