% Box GridLineStyle Position Units Title 
% Xlabel XLim XScale View 
% FontName FontWeight FontSize FontUnits FontAngle
close all;
x=-2*pi:pi/10:2*pi;
y1=sin(x);y2=cos(x);
figure;
Ha1=axes('Position',[0.1,0.1,0.4,0.4]);
H1=plot(x,y1,':');
set(H1,'LineWidth',2);
title('\bfPlot of sin\itx');xlabel('\bf\itx');ylabel('\bfsin\itx');
axis([-8 8 -1 1]);
Ha2=axes('Position',[0.55 0.55 0.4 0.4]);
H2=plot(x,y2);
set(H2,'LineWidth',2,'Color','r','LineStyle','--');
title('\bfPlot of cos\itx');xlabel('\bf\itx');ylabel('\bfcos\itx');
axis([-8 8 -1 1]);
pause;
axes(Ha1);
text(pi/2,0.8,'max(x)\uparrow','HorizontalAlignment','right');
axes(Ha2);
text(pi,-0.8,'\downarrowmin(x)');