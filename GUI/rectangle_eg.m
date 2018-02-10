% Position Curvature LineStyle LineWidth EdgeColor
close all;
figure;
rectangle('Position',[0 0 20 30],'LineWidth',2,'EdgeColor','r');
rectangle('Position',[35 5 20 30],'LineWidth',0.5,'LineStyle','-.');
rectangle('Position',[40 50 30 20],'LineWidth',2,'Curvature',[1 0.5]);
rectangle('Position',[0 35 30 20],'Curvature',[0.5 1],'EdgeColor','b');
axis equal;
