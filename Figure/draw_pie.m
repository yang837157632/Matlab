x=[3 4 1 3 1 6 4];
explode=[1 0 0 1 0 0 0];
subplot(2,2,1);
pie(x);
title('pie');
legend('1','2','3','4','5','6','7');
subplot(2,2,2);
pie3(x);
title('pie3');
subplot(2,2,3);
pie(x,explode);
title('pie explode');
subplot(2,2,4);
pie3(x,explode);
title('pie3 explode');