clear;clc;
A=reshape(1:24,4,6)
B=toeplitz(1:3:10,1:6)

% �����ڸ�ά����
[m,n]=size(A)
p=size(A,2)                     % sum prod cumsum cumprod mean median

% max    min    
[x,y]=max(A)
z1=max(A)
z2=max(A,[],2)
C=max(A,B)
D=max(A,12)

% ά��
a=ndims(A)                       % A����ά��
E=A(:)                           % ��A������Ԫ�ضѳ�һ��
b=sub2ind(size(A),3,4)           % A����a��b��,...�ǵڼ�����
[c,d]=ind2sub(size(A),19)        % A�����n�����ǵ�a��b��,...
e=length(A)                      % A����ά�����ֵ

% std                            
std(A)                           % std(A,flag,dim)                
std(A,1,2)                       % std(A,0/1,1/2)                 

% sort
sort(A)                          % [Y,I]=sort(A,dim,mode)
sort(A,2,'descend')              % [Y,I]=sort(A,1/2,'ascend'/'descend')