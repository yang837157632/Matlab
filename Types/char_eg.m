clear;clc;
s1='I am a boy'
s2='I''m a girl'
s3=['I',' ','a','m',' ','o','k']
s4=['a':'z']

a1=abs('A')        % �ַ�ת����
a2=double('a')
a3=str2num('97')
b=num2str(65)      % ����ת�ַ�
c=char(97)         % ����תASCII
d=lower('A')       % ��дתСд
e=upper('a')       % Сдת��д

h1=strcmp(s1,s2)       % �ַ����Ƚ�
h2=strncmp(s1,s3,3)    
i1=findstr(s1,'a')     % �����ַ�
i2=findstr(s1,'army')
j1=strcat(s1,' ',s2)   % �ַ���ƴ��,����ʾ�ո�
j2=[s1,' ',s2]         % �ַ���ƴ��,��ʾ�ո�
k1=strvcat(s1,s2)      % �ַ�������ƴ��
k2=strvcat(s1,' ',s2)