% eval  ���ַ������ɱ��ʽ��ִ�� 
clear;clc;
for n = 1:4
    eval(['M' num2str(n) ' = magic(n)'])
end

for x=1:5
    eval(['y',num2str(x),'=',num2str(x^2)])
end

for x=1:5
    disp(['z',num2str(x),'=',num2str(x^2)])
end