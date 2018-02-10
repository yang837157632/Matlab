% Color String Interpreter Rotation BackgroundColor EdgeColor 
% FontName FontWeight FontSize FontUnits FontAngle
% Horizontal Alignment   left/right/center
close all;
x=-pi:0.1:pi;
y1=sin(x);
y2=cos(x); 
h=line(x,y1,'LineStyle',':','Color','k');
line(x,y2,'LineStyle','--','Color','r');
xlabel('-\pi \leq \Theta \leq \pi');
ylabel('sin(\Theta)');
title('Plot of sin(\Theta)');
text(-pi/4,sin(-pi/4),'\leftarrow sin(-\pi\div4)','FontSize',12,'Color','g');
pause;
set(h,'Color','b','LineWidth',3);
