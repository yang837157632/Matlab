% semilogx semilogy loglog superscript
figure(1);
y=0:0.01:10;
x=10.^(2*y);
semilogx(x,y);
grid on;
title('x = 10^{2y}');
% plotyy;axis auto;axis equal;axis square;
figure(2);
x=0:0.01:2*pi;
y1=sin(x);y2=cos(x)+4;
plotyy(x,y1,x,y2);
legend('y1=sin(x)','y2=cos(x)+4');
xlabel('x');ylabel('y');
grid on;
axis([0 2*pi -1 1]);
% Marker ÐéÊý
figure(3);
t=0:pi/10:2*pi;
x=exp(i*t);
plot(x,':ok','LineWidth',1,'MarkerEdgeColor','r',...
    'MarkerFaceColor','g','MarkerSize',8);
xlabel('i-real');ylabel('i-imag');
grid on;