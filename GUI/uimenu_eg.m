% Label Accelerator Callback Checked Enable Position Separator
clear;clc;
screen=get(0,'ScreenSize');
W=screen(3);H=screen(4);
t=-pi:pi/20:pi;
figure('Color',[1 1 1],'Position',[0.2*H 0.2*H 0.5*W 0.3*H],'Name','My Figure','NumberTitle','off','MenuBar','none');
hplot=uimenu(gcf,'Label','&Plot');
uimenu(hplot,'Label','Sin','Call',['plot(t,sin(t));',...
    'set(hgon,''Enable'',''on'');','set(hgoff,''Enable'',''on'');',...
    'set(hbon,''Enable'',''on'');','set(hboff,''Enable'',''on'');']);
uimenu(hplot,'Label','cos','Call',['plot(t,cos(t));',...
    'set(hgon,''Enable'',''on'');','set(hgoff,''Enable'',''on'');',...
    'set(hbon,''Enable'',''on'');','set(hboff,''Enable'',''on'');']);
hoption=uimenu(gcf,'Label','&Option');
hgon=uimenu(hoption,'Label','&Grid on','Call','grid on','Enable','off');
hgoff=uimenu(hoption,'Label','&Grid off','Call','grid off','Enable','off');
hbon=uimenu(hoption,'Label','&Box on','Call','box on','Enable','off','Separator','on');
hboff=uimenu(hoption,'Label','&Box off','Call','box off','Enable','off');
hwincor=uimenu(hoption,'Label','&Window Color','Separator','on');
uimenu(hwincor,'Label','&Red','Accelerator','r','Call','set(gcf,''Color'',''r'')');
uimenu(hwincor,'Label','&Green','Accelerator','g','Call','set(gcf,''Color'',''g'')');
uimenu(hwincor,'Label','&Blue','Accelerator','b','Call','set(gcf,''Color'',''b'')');
uimenu(hwincor,'Label','&White','Accelerator','w','Call','set(gcf,''Color'',''w'')');
uimenu(gcf,'Label','&Quit','Call','close(gcf)');
