% status=fseek(fid,offset,origin)
% origin  cof/0当前位置  bof/-1开始位置  eof/1  结束位置
% status  0成功  -1失败
% position=ftell（fid)
% frewind(fid)    将文件指针移动到文件开头
clear;clc;
a=1:5;
fid=fopen('fseek_eg.bin','w');
fwrite(fid,a,'int32');
fclose(fid);
fid=fopen('fseek_eg.bin','r');
status1=fseek(fid,4,'bof')
b=fread(fid,1,'int32')
position1=ftell(fid)
status2=fseek(fid,-8,1)
c=fread(fid,1,'int32')
position2=ftell(fid)
frewind(fid);
position3=ftell(fid)
fclose(fid);
