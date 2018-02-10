% [A,count]=fread(fid,size,precision)
% uchar char schar double
% int  int8  int16  int32  int64
% uint uint8 uint16 uint32 uint64
% float float32 float64
% long ulong short ushort
clear;clc;
fid=fopen('fread_eg.dat','w');
A=magic(5)
cnt1=fwrite(fid,A,'int32')
fclose(fid);
fid=fopen('fread_eg.dat','r');
[B,cnt2]=fread(fid,[2,6],'int8')    % 格式不同会出现不同的结果
[C,cnt3]=fread(fid,[4,inf],'int32')
fclose(fid);