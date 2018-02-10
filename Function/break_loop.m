% a=[];
a=zeros(1,100);
n=1;
k=0;
while(1)
    k=input('please input (end with character): ');
    if (isnumeric(k))
        a(n)=k;
        n=n+1;
    else
        break;
    end
end    
disp(a);