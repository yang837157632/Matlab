x1=2:3:22;
y1=[3 4 2 3 4 1 6];
subplot(2,4,1)
bar(y1);
title('bar Y');
subplot(2,4,5);
barh(y1);
title('barh Y');
subplot(2,4,2)
bar(x1,y1);
title('bar X Y');
subplot(2,4,6);
barh(x1,y1);
title('barh X Y');
subplot(2,4,3);
bar3(y1);
title('bar3 Y');
subplot(2,4,7);
bar3h(y1);
title('bar3h Y');
subplot(2,4,4);
bar3(x1,y1);
title('bar3 X Y');
subplot(2,4,8);
bar3h(x1,y1);
title('bar3h X Y');