%interp1
%ÄÚ²åÖµ
h=1:12;
temp=[5 8 9 15 25 29 31 30 22 25 27 24];
h_3=1:0.1:12;
t_3=interp1(h,temp,h_3,'cubic') ;
t_s=interp1(h,temp,h_3,'spline');
subplot(2,1,1)
plot(h,temp,'--+');
subplot(2,2,3);
plot(h,temp,'--+',h_3,t_3);
subplot(2,2,4);
plot(h,temp,'--+',h_3,t_s);
x=[0 1 2 3 4 5];
y=[0 20 60 68 77 110];
y1=interp1(x,y,2.6)