% gcf                     无figure，则create
% gca                     无axes，则create
% gco                     鼠标最后点击图像句柄
% get(gco,'Type')         figure    axes    line
 
% 图形对象的属性
% get(Hnd)                显示全部属性及其属性值
% set(Hnd)                显示全部属性及其可取值
% set(Hnd,'LineStyle')    显示LineStyle所有可取值
% propedit(Hnd)           对图像进行编辑
 
% 自定义属性
% setappdata(Hnd,Name,Value)
% Values=getappdata(H)
% Value=getappdata(H,Name)
% rmappdata(H,Name)
% isappdata(H,Name)

% 图形对象的默认属性
% DefaultFigureColor    DefaultAxesColor    DefaultLineStyle
% set(0,'DefaultFigureColor','r')
% H1=figure('color','factory')        临时跳过当前默认值设置
% set(0,'DefaultFigureColor','remove')
% H2=figure('color','default')

% findobj
% H=findobj(PropertyName,PropertyValue,...)
% h1=findobj('color','r')
% h2=findobj(gca,'Type','line')
% h3=findobj('Label','foo','-and','String','bar')    '-and'可省去
% h4=findobj('-not','String','foo','-not','String','bar')
