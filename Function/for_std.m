% for mean std
n=input('please input the total number: ');
k=1;
s1=0;
s2=0;
for ii=1:n
    x=input(['please input the ' num2str(k) ' number :']);
    s1=s1+x;
    s2=s2+x^2;
    k=k+1;
end
if (n>1)
    a=s1/n;
    b=sqrt((n*s2-s1^2)/(n*(n-1)));
    disp(['average( ' num2str(n) ' )= ' num2str(a) ]);
    fprintf('std( %d ) = %f \n',n,b);
elseif (n==1)
    a=s1/n;
    disp(['average( ' num2str(n) ' )= ' num2str(a) ]);
    disp('only one statistics , no std');
else
    disp('wrong input');
end