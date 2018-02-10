clear;clc;
s1='I am a boy'
s2='I''m a girl'
s3=['I',' ','a','m',' ','o','k']
s4=['a':'z']

a1=abs('A')        % 字符转数字
a2=double('a')
a3=str2num('97')
b=num2str(65)      % 数字转字符
c=char(97)         % 数字转ASCII
d=lower('A')       % 大写转小写
e=upper('a')       % 小写转大写

h1=strcmp(s1,s2)       % 字符串比较
h2=strncmp(s1,s3,3)    
i1=findstr(s1,'a')     % 查找字符
i2=findstr(s1,'army')
j1=strcat(s1,' ',s2)   % 字符串拼接,不显示空格
j2=[s1,' ',s2]         % 字符串拼接,显示空格
k1=strvcat(s1,s2)      % 字符串纵向拼接
k2=strvcat(s1,' ',s2)