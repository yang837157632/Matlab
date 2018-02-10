% Is it Prime?
%20121129 KJ
disp('Is it a prime?');
X=input('Please enter the value of X:');
%X=input('Please enter the value of X:','s');  % save enter value as string
Y=isprime(X);
if Y==1
    fprintf('   Yes\n')
else
    fprintf('   No\n');
    
end

Z=1:1:X;
Y2=isprime(Z);
I=find(Y2(:)==1);
stem (Z.*Y2);
title('Figure plot by ''stem'' function');
output1=strcat('Total: ',num2str(length(I)));
text(X/2,X,output1,'color','r')  %Show all primes smaller than the input value