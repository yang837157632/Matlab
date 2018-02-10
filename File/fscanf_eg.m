% [A,count]=fscanf(fid,format,size)
% format   %e %f %g %c %s %d %u %o %x
% size   N inf [M N](N can be inf,M can't)
clear;clc;
fid=fopen('fscanf_eg.dat','rt');
[f,count1]=fscanf(fid,'%f',inf)
[f2,count12]=fscanf(fid,'%f',inf)
fclose(fid);
fid=fopen('fscanf_eg.dat','rt');
[d,count2]=fscanf(fid,'%d',inf)
fclose(fid);
fid=fopen('fscanf_eg.dat','rt');
[dd,count3]=fscanf(fid,'%d.%d',inf)
fclose(fid);
fid=fopen('fscanf_eg.dat','rt');
[c,count4]=fscanf(fid,'%c',[4 4])
fclose(fid);
fid=fopen('fscanf_eg.dat','rt');
[s,count5]=fscanf(fid,'%s',inf)
fclose(fid);