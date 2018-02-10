function dec=trdec(n,b)
% 任意十进制数转换为2-16进制
ch1='0123456789ABCDEF';
k=1;
while n~=0
    p(k)=rem(n,b);
    n=fix(n/b);
    k=k+1;
end
k=k-1;
strdec='';
while k>=1
    kb=p(k);
    strdec=strcat(strdec,ch1(kb+1));
    k=k-1;
end
dec=strdec;