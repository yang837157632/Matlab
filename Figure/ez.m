% ezplot  default [-2*pi,2*pi]
% ezplot3  default [-2*pi,2*pi]
% ezpolar  default [0,2*pi]
% title (x,y,z)label 未设置时默认显示
subplot(2,2,1);
ezplot(@(x)x.^2+7,[-2,2]);
legend('ezplot');
subplot(2,2,2);
ezplot('x.*y + x.^2 - y.^2 - 1',[-10 10 -10 10]);
subplot(2,2,3);
ezplot3('sin(t)','cos(t)','t',[0 6*pi]);
legend('ezplot3');
subplot(2,2,4);
ezpolar('1+cos(t)');
legend('ezpolar');