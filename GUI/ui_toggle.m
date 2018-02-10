% Position Units CallBack String Style 
% BackgrounColor ForegroundColor Max Min Value 
% FontAngle FontName FontSize FontUnits FontWeight HorizontalAlignment
clear;clc;
figure;
pbstart=uicontrol(gcf,'Style','push','Position',[50 5 60 25],'Back','r',...
    'String','Start Plot','CallBack','t=-pi:pi/20:pi;plot(t,sin(t));');
ptstart=uicontrol(gcf,'style','toggle','Position',[150 5 60 25],'Fore','b',...
    'String','Grid','CallBack','grid');
