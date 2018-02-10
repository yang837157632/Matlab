% contour contour3 contourf
[x,y,z]=peaks(30);
subplot(1,3,1);
contour(x,y,z,12,'r');
subplot(1,3,2);
contour3(x,y,z,12,'b');
subplot(1,3,3);
contourf(x,y,z,12);