clear;clc;
figure;
hpop=uicontrol(gcf,'Style','popup','Position',[100 100 100 80],...
    'String','red|blue|green|yellow|white|black|cyan|magenta',...
    'CallBack',['cbcol=[''r'',''b'',''g'',''y'',''w'',''k'',''c'',''m''];',...
    'set(gcf,''Color'',cbcol(get(hpop,''Value'')))']);