% interp1(X,Y,x,'method')
% linear nearest cubic spline
clear;clc;
t=0:5;
y=[0 20 60 68 77 110];
x=0:0.1:5;
y1=interp1(t,y,x);
y2=interp1(t,y,x,'nearest') ;
y3=interp1(t,y,x,'spline');
y4=interp1(t,y,x,'cubic');
subplot(2,2,1);
plot(t,y,'*r');hold on;
plot(x,y1);
title('linear');
subplot(2,2,2);
plot(t,y,'*g');hold on;
plot(x,y2);
title('nearest');
subplot(2,2,3);
plot(t,y,'*k');hold on;
plot(x,y3);
title('spline');
subplot(2,2,4);
plot(t,y,'*m');hold on;
plot(x,y4);
title('cubic');