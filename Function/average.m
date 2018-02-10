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
    msgbox('首次使用该函数，应该使用reset清空','警告','warn','modal');
    return;
elseif(~isnumeric(x))
    name=inputname(1);
    name=strcat('您输入的参数',name,'有误');
    errordlg(['因为该参数值为：',x],name, 'modal');
    return;
else
    n=n+1;
    sum_x=sum_x+x;
    ave=sum_x/n;
end

