% complex
x=0:0.01:4*pi;
y=exp(-0.2*x).*(cos(x)+1i*sin(x));
subplot(2,2,1);
plot(y);
title('Y');
grid on;
subplot(2,2,2);
plot(x,y);
title('X Y');
grid on;
subplot(2,2,3);
plot(x,real(y),x,imag(y));
legend('real','imag');
grid on;
subplot(2,2,4);
polar(angle(y),abs(y));
title('angle abs');
grid on;