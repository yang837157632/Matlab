% line=fgetl(fid) 将整行当做字符串返回，并去除换行符，一次读取一行，直到文件结尾会返回-1 
% line=fgets(fid) 通fgetl，区别在于不去除换行符
% feof 文件是否到末尾，feof(fid)=1,运行到末尾
clear;clc;
new1='';new2='';
fid=fopen('fgetl_eg.txt','rt');
while(1)
    line=fgetl(fid);
    if(line~=-1)
        new1=strvcat(new1,line);
    else
        break;
    end
end
fclose(fid);
fid=fopen('fgetl_eg.txt','rt');
while(1)
    line=fgets(fid);
    if(feof(fid)~=1)
        new2=strvcat(new2,line);
    else
        break;
    end
end
fclose(fid);
disp('get1');disp(new1);
disp('gets');disp(new2);