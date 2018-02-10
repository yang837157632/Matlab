% count=fwrite(fid,A,precision)
clear;clc;
write_array=rand(10,10);
filename=input('please input: ','s');
[fid,msg]=fopen(filename,'w');
if fid>0
    count1=fwrite(fid,write_array,'float64');
    disp([int2str(count1),'data was written']);
    fclose(fid);
    disp(write_array);
else
    disp(msg);
end
[fid,msg]=fopen(filename,'r');
if fid>0
    [read_array,count2]=fread(fid,[12 inf],'float64');
    disp([int2str(count2),'data was read']);
    fclose(fid);
    disp(read_array);
else
    disp(msg);
end
