% gcf                     ��figure����create
% gca                     ��axes����create
% gco                     ��������ͼ����
% get(gco,'Type')         figure    axes    line
 
% ͼ�ζ��������
% get(Hnd)                ��ʾȫ�����Լ�������ֵ
% set(Hnd)                ��ʾȫ�����Լ����ȡֵ
% set(Hnd,'LineStyle')    ��ʾLineStyle���п�ȡֵ
% propedit(Hnd)           ��ͼ����б༭
 
% �Զ�������
% setappdata(Hnd,Name,Value)
% Values=getappdata(H)
% Value=getappdata(H,Name)
% rmappdata(H,Name)
% isappdata(H,Name)

% ͼ�ζ����Ĭ������
% DefaultFigureColor    DefaultAxesColor    DefaultLineStyle
% set(0,'DefaultFigureColor','r')
% H1=figure('color','factory')        ��ʱ������ǰĬ��ֵ����
% set(0,'DefaultFigureColor','remove')
% H2=figure('color','default')

% findobj
% H=findobj(PropertyName,PropertyValue,...)
% h1=findobj('color','r')
% h2=findobj(gca,'Type','line')
% h3=findobj('Label','foo','-and','String','bar')    '-and'��ʡȥ
% h4=findobj('-not','String','foo','-not','String','bar')
