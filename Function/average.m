function ave=average(x)
% persistent 
% msgbox errordlg warndlg
% name=inputname(argno)
error(nargchk(1,1,nargin));
persistent n sum_x
if(strcmp(x,'reset'))
    n=0;
    sum_x=0;
    ave=0;
elseif(isempty(n))
    msgbox('�״�ʹ�øú�����Ӧ��ʹ��reset���','����','warn','modal');
    return;
elseif(~isnumeric(x))
    name=inputname(1);
    name=strcat('������Ĳ���',name,'����');
    errordlg(['��Ϊ�ò���ֵΪ��',x],name, 'modal');
    return;
else
    n=n+1;
    sum_x=sum_x+x;
    ave=sum_x/n;
end

