function f=factor(n)
if n==1
    f=1;
elseif n<1
    error('The input number must be larger than 0.');
else
    f=factor(n-1)*n;
end
    