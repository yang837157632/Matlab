subplot(2,3,1);
ezmesh(@(x,y)x.^2+y.^2,[-2 2 -2 2]);
subplot(2,3,4);
ezmeshc(@(x,y)x.^2+y.^2,[-2 2 -2 2]);
title('ezmeshc');
subplot(2,3,2);
ezsurf(@(x,y)x.^2+y.^2);
subplot(2,3,5);
ezsurfc(@(x,y)x.^2+y.^2);
title('ezsurfc');
subplot(2,3,3);
ezcontour('sqrt(x.^2 + y.^2)',[-3 3],40);
subplot(2,3,6);
ezcontourf('sqrt(x.^2 + y.^2)')    % default 60
title('ezcontourf');