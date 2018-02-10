%polyder
%求系数导数
x=[1 2 3 4 5];
y=[1 4 9 17 26];
a=polyfit(x,y,2)
a1=polyder(a)
a2=polyder(a1)
