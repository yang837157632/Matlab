function [mymean,mymed]=subfunction(x)
mymean=ave(x);
mymed=med(x);
function y1=ave(x1)
n=length(x1);
y1=sum(x1)/n;
function y2=med(x2)
x2=sort(x2);
n=length(x2);
if (rem(n,2))
    y2=x2((n+1)/2);
else
    y2=(x2(n/2)+x2(n/2+1))/2;
end