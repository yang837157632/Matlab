% line=fgetl(fid) �����е����ַ������أ���ȥ�����з���һ�ζ�ȡһ�У�ֱ���ļ���β�᷵��-1 
% line=fgets(fid) ͨfgetl���������ڲ�ȥ�����з�
% feof �ļ��Ƿ�ĩβ��feof(fid)=1,���е�ĩβ
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