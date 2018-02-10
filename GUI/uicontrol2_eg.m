clear;clc;
set(gcf,'Unit','normalized','Position',[0.2 0.3 0.55 0.30],'MenuBar','none','Name','Demo','NumberTitle','off');
axes('Position',[0.05 0.15 0.55 0.7]);
uicontrol(gcf,'Style','text','Unit','normalized','Position',[0.63 0.85 0.2 0.1],'String','Plot Command','Horizontal','center');
hedit=uicontrol(gcf,'Style','edit','unit','normalized','Position',[0.63 0.15 0.2 0.68],'Max',2);
hpopup=uicontrol(gcf,'Style','Popup','unit','normalized','Position',[0.85 0.8 0.15 0.15],...
    'String','Spring|Summer|Autumn|Winter','Call','comm(hedit,hpopup,hlist)');
hlist=uicontrol(gcf,'Style','list','unit','normalized','Position',[0.85 0.55 0.15 0.25],...
    'String','Grid on|Grid off|Box on|Box off','Call','comm(hedit,hpopup,hlist)');
hpush1=uicontrol(gcf,'Style','push','unit','normalized','Position',[0.85 0.35 0.15 0.15],...
    'String','Plot','Call','comm(hedit,hpopup,hlist)');
uicontrol(gcf,'Style','push','unit','normalized','Position',[0.85 0.15 0.15 0.15],...
    'String','Close','Call','close all');
   

