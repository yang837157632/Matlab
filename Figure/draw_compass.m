% compass
z=[7+2.9i,2-3i,-1+6i,-3-4i,-2+3i];
subplot(1,2,1);
compass(z);
title('real-imag');
subplot(1,2,2);
x=[3 -5 10 -6 4 9 -7];
y=[-2 -4 2 3 -6 8 0];
compass(x,y);
title('compass');