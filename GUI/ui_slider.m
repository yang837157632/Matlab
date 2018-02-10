clear;clc;
fig=figure('Position',[120 120 400 300]);
hsli1=uicontrol(fig,'Style','slider','Position',[50 50 120 20],'Min',200,'Max',800,'Value',400,...
'CallBack',['set(azmcur,''String'',num2str(get(hsli1,''Value'')));',...
'set(gcf,''Position'',[120 120 get(hsli1,''Value'') get(hsli2,''Value'')]);']);
hsli2=uicontrol(fig,'Style','slider','Position',[240 50 120 20],'Min',100,'Max',600,'Value',300,...
    'CallBack',['set(elvcur,''String'',num2str(get(hsli2,''Value'')));',...
    'set(gcf,''Position'',[120 120 get(hsli1,''Value'') get(hsli2,''Value'')]);']);
azmmin=uicontrol(fig,'Style','text','Position',[20 50 30 20],'String',num2str(get(hsli1,'Min')));
elvmmin=uicontrol(fig,'Style','text','Position',[210 50 30 20],'String',num2str(get(hsli2,'Min')));
azmax=uicontrol(fig,'Style','text','Position',[170 50 30 20],'String',num2str(get(hsli1,'Max')));
elvmmax=uicontrol(fig,'Style','text','Position',[360 50 30 20],'String',num2str(get(hsli2,'Max')));
azmLabel=uicontrol(fig,'Style','text','Position',[50 80 65 20],'String','Width');
elvLabel=uicontrol(fig,'Style','text','Position',[240 80 65 20],'String','Height');
azmcur=uicontrol(fig,'Style','text','Position',[120 80 50 20],'String',num2str(get(hsli1,'Value')));
elvcur=uicontrol(fig,'Style','text','Position',[310 80 50 20],'String',num2str(get(hsli2,'Value')));
