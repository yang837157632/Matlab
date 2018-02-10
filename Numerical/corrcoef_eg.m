clear;clc;
A=rand(3)*30
B=randn(3)*40

% sum  prod  mean  median  cumsum  cumprod 
a=sum(A)                     % sum(A)  
b=sum(A,2)                   % sum(A,dim)   

% max  min 
c=max(A)                     % max(A)  
[d e]=max(A)                 % [X Y]=max(A) 
f=max(A,[],2)                % max(A,[],dim)

m=std(A)                     % std(A)  
n=std(A,1,2)                 % std(A,flag,dim)  0/1  1/2

z=sort(A)                    % sort(A)  
[x y]=sort(A,2,'descend')    % [Y,I]=sort(A,dim,mode) 1/2 ascend

R1=corrcoef(A)               % corrcoef(X) 
R2=corrcoef(A,B)             % corrcoef(X,Y)