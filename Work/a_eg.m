% num=[2 8 10]
% den=[1 6 11 6]
% [A B C D]=tf2ss(num,den)     % ´«µÝº¯Êý
% [num2 den2]=ss2tf(A,B,C,D)   % ×´Ì¬º¯Êý
clear;clc;
count=fwrite(fid,A,precision);
[A,count]=fread(fid,size,precision)

count=fprintf(fid,format,A)
[A,count]=fscanf(fid,format,size)

line=fgetl(fid)
line=fgets(fid)