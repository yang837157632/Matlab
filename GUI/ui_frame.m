clear;clc;
figure;
ftdir=uicontrol(gcf,'Style','frame','back','y','Position',[100 180 200 160]);
edmulti=uicontrol(gcf,'Style','edit','Position',[120 200 150 120],'Max',2,'back','w',...
    'String',strvcat('Matlab is a very useful language.','All is well'));
   