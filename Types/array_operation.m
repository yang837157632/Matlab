clear;clc;
A=reshape(1:24,4,6)
B=toeplitz(1:3:10,1:6)

% 可用于高维数组
[m,n]=size(A)
p=size(A,2)                     % sum prod cumsum cumprod mean median

% max    min    
[x,y]=max(A)
z1=max(A)
z2=max(A,[],2)
C=max(A,B)
D=max(A,12)

% 维度
a=ndims(A)                       % A数组维数
E=A(:)                           % 将A中所有元素堆成一列
b=sub2ind(size(A),3,4)           % A数组a行b列,...是第几个数
[c,d]=ind2sub(size(A),19)        % A数组第n个数是第a行b列,...
e=length(A)                      % A数组维数最大值

% std                            
std(A)                           % std(A,flag,dim)                
std(A,1,2)                       % std(A,0/1,1/2)                 

% sort
sort(A)                          % [Y,I]=sort(A,dim,mode)
sort(A,2,'descend')              % [Y,I]=sort(A,1/2,'ascend'/'descend')