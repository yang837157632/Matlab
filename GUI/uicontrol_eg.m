clear;clc;
hf=figure('Color',[0 1 1],'Position',[100 200 400 200],'Name','数制转换','NumberTitle','off','MenuBar','none')';
uicontrol(hf,'Style','text','Units','normalized','Position',[0.05 0.8 0.4 0.1],...
    'Horizontal','Center','String','input','Fore',[1 0 0]);
uicontrol(hf,'Style','text','Units','normalized','Position',[0.55 0.8 0.4 0.1],...
    'Horizontal','Center','String','output','Fore',[1 0 0]);
uicontrol(hf,'Style','Frame','Units','normalized','Position',[0.04 0.33 0.45 0.45],'Back',[1 1 0]);
uicontrol(hf,'Style','text','Units','normalized','Position',[0.05 0.6 0.25 0.1],...
    'Horizontal','Center','String','十进制','Back',[1 1 0]);
uicontrol(hf,'Style','text','Units','normalized','Position',[0.05 0.4 0.25 0.1],...
    'Horizontal','Center','String','2-16进制','Back',[1 1 0]);
he1=uicontrol(hf,'Style','Edit','Units','normalized','Position',[0.25 0.6 0.2 0.1],'Back',[0 1 0]);
he2=uicontrol(hf,'Style','Edit','Units','normalized','Position',[0.25 0.4 0.2 0.1],'Back',[0 1 0]);
uicontrol(hf,'Style','Frame','Units','normalized','Position',[0.52 0.33 0.45 0.45],'Back',[1 1 0]);
ht=uicontrol(hf,'Style','text','Units','normalized','Position',[0.6 0.5 0.3 0.1], 'Horizontal','Center','Back',[0 1 0]);
COMM=['n=str2num(get(he1,''String''));','b=str2num(get(he2,''String''));',...
    'dec=trdec(n,b);','set(ht,''String'',dec);'];
uicontrol(hf,'Style','Toggle','Units','normalized','Position',[0.18 0.1 0.2 0.12],'String','transform','Call',COMM);
uicontrol(hf,'Style','Push','Units','normalized','Position',[0.65 0.1 0.2 0.12],'String','Exit','Call','close(hf)');
