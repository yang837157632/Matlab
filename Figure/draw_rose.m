% rose the default is 20.
x=0:0.5:2*pi;
t=rand(1,1000)*100;
theta=t*pi/180*2*pi;
subplot(1,3,1);
rose(theta,x);
title('rose theta X');
subplot(1,3,2);
rose(theta);
title('rose theta');
subplot(1,3,3);
rose(theta,10);
title('rose theta 10');
