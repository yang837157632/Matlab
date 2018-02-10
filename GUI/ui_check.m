clear;clc;
htxt=uicontrol(gcf,'Style','text','Units','normalized','Position',[0.1 0.5 0.25 0.1],'String','Set Windows Properties');
hp=uicontrol(gcf,'Style','check', 'Units','normalized','Position',[0.1 0.4 0.25 0.1],'String','My Position',...
    'CallBack',['set(gcf,''Position'',[100 100 300 250]);',...
    'if get(hp,''Value'')==1','set(gcf,''Position'',[200 200 600 500]);','end']);
hc=uicontrol(gcf,'Style','check','Units','normalized','Position',[0.1 0.3 0.25 0.1],'String','My Color',...
    'CallBack',['set(gcf,''Color'',''w'');',...
    'if get(hc,''Value'')==1','set(gcf,''Color'',''r'');','end']);
hn=uicontrol(gcf,'Style','check','Units','normalized','Position',[0.1 0.2 0.25 0.1],'String','My Name',...
    'CallBack',['set(gcf,''Name'',''none'');',...
    'if get(hn,''Value'')==1','set(gcf,''Name'',''Star'');','end']);