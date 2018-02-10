% uicontextmenu uimenu set
clear;clc;
x=linspace(0,2*pi,200);
y=2*sin(5*x).*sin(x);
figure;
h1=plot(x,y);
hc=uicontextmenu;
hls=uimenu(hc,'Label','LineStyle');
hlw=uimenu(hc,'Label','LineWidth');
uimenu(hls,'Label','Dot','Call','set(h1,''LineStyle'',''.'');');
uimenu(hls,'Label','Dashed','Call','set(h1,''LineStyle'',''--'');');
uimenu(hls,'Label','Dot-Dashed','Call','set(h1,''LineStyle'',''-.'');');
uimenu(hls,'Label','Solid','Call','set(h1,''LineStyle'',''-'');');
uimenu(hls,'Label','None','Call','set(h1,''LineStyle'',''none'');');
uimenu(hlw,'Label','Enlarge','Call','set(h1,''LineWidth'',get(h1,''LineWidth'')+0.5)');
uimenu(hlw,'Label','Narrow','Call','set(h1,''LineWidth'',get(h1,''LineWidth'')-0.5)');
set(h1,'UIContextMenu',hc);