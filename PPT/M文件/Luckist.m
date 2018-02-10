%luckydraw and pick out the luckiest one.
%20121130 KJ
Luckypool=[];
num_lucky=input('How many students will be picked out for one time?  ');
Time_repeat=input('How many times?  ');
for i=1:1:Time_repeat
 B=Luckydraw(num_lucky);
 num2str(B)
 Luckypool=[Luckypool,B']; %collecting information
 
end
 
[m n]=hist(Luckypool,unique(Luckypool));

m
Maxtime=max(m)
LuckyPerson=num2str(n(find(m==Maxtime)))