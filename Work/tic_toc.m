% tstart tic toc
a=magic(100);
tstart=tic;
 for ii=1:100
     for jj=1:100
         if a(ii,jj)>500
             a(ii,jj)=sqrt(a(ii,jj));
         end
     end
 end
t1=toc(tstart);
disp(['for_if: ' , num2str(t1)]);
tstart=tic;
c=a>500;
a(c)=sqrt(a(c));
t2=toc(tstart);
disp(['logical: ' , num2str(t2)]);