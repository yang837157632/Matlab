% status=fseek(fid,offset,origin)
% origin  cof/0��ǰλ��  bof/-1��ʼλ��  eof/1  ����λ��
% status  0�ɹ�  -1ʧ��
% position=ftell��fid)
% frewind(fid)    ���ļ�ָ���ƶ����ļ���ͷ
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
