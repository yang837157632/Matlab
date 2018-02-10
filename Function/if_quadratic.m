% a,b,c,d,x1,x2,real,imag
a=input('please input a: ');
b=input('please input b: ');
c=input('please input c: ');
d=b^2-4*a*c;
if(d>0)
    disp('Two distinct real roots');
    x1=(-b+sqrt(d))/(2*a);
    x2=(-b-sqrt(d))/(2*a);
    disp(['x1 = ' num2str(x1) ' , x2 = ' num2str(x2)]);
   elseif(d==0)
    disp('Two identical real roots');
    x1=(-b)/(2*a);
    disp(['x1 = x2 = ' num2str(x1)]);   
else
    fprintf('Two complex roots\n');
    real=(-b)/(2*a);
    imag=sqrt(abs(d))/(2*a);
    fprintf('x1 = %f+%fi , x2 = %f-%fi\n',real,imag,real,imag);
end
