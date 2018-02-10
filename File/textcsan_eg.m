% textscan
clear;clc;
fid=fopen('textcsan_eg.dat','r');
A=textscan(fid,'%s%s%f%d%s');
eval('A');
fclose(fid);
fid=fopen('textcsan_eg.dat','r');
B=textscan(fid,'%s%s%f%*d%*s');
fclose(fid);
eval('B');
fid=fopen('textcsan_eg.dat','r');
C=textscan(fid,'%s');
eval('C');
fclose(fid);

% delete
% delete a_eg.m

% importdata('Filename')
D=importdata('textcsan_eg.dat')
 
% uiimport('Filename')    作用相当于File-importdata
% uiimport('-pastespecial')
E=uiimport('textcsan_eg.dat')

% [numeric,txt,raw]=xlsread('Filename')
