%unimenu
%USST
figure
hm=uimenu(gcf,'Label','Example');
hmsub1=uimenu(hm,'Label','Grid','Callback','grid');
hmsub2=uimenu(hm,'Label','View');
hmsub21=uimenu(hmsub2,'Label','sin','Callback','plot(sin(0:0.1:2*pi),''r'')');
hmsub22=uimenu(hmsub2,'Label','cos','Callback','plot(cos(0:0.1:2*pi),''b'')');
hmsub3=uimenu(hm,'Label','Hold','Callback','hold');
hmsub4=uimenu(hm,'Label','Info');
hmsub41=uimenu(hmsub4,'Label','Desperado','callback','title(''305124597@qq.com'')');

hm2=uimenu(gcf,'Label','Example C','Callback','demofun=@(x)log(x)+sin(x)-1;fplot(demofun,[0,10],''k'');');    %fplot: function plot    @obtain handle of function.
hm2sub1=uimenu(hm2,'Label','color');
hm2sub11=uimenu(hm2sub1,'Label','Green','Callback','HH=findobj(''Type'',''line'');set(HH,''color'',''g'')');   %findobj get handle and set color
hm2sub12=uimenu(hm2sub1,'Label','Blue','Callback','HH=findobj(''Type'',''line'');set(HH,''color'',''b'')');
hm2sub13=uimenu(hm2sub1,'Label','Red','Callback','HH=findobj(''Type'',''line'');set(HH,''color'',''r'')');
hm2sub2=uimenu(hm2,'Label','Find x for log(x)+sin(x)-1=0');
hm2sub21=uimenu(hm2sub2,'Label','Near 1','Callback', 'hold on; [x1,y1]=fzero(demofun,1),plot(x1,y1,''*''),text(x1+0.2,y1,num2str(x1))');
hm2sub22=uimenu(hm2sub2,'Label','Near 3','Callback', 'hold on; [x1,y1]=fzero(demofun,3),plot(x1,y1,''*''),text(x1+0.2,y1,num2str(x1))');
hm2sub23=uimenu(hm2sub2,'Label','Near 5','Callback', 'hold on; [x1,y1]=fzero(demofun,5),plot(x1,y1,''*''),text(x1+0.2,y1,num2str(x1))');