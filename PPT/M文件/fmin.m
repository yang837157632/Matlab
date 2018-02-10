%fminbnd
%求最小值
f=@(x)exp(x)-4*sin(x)+5;
fplot(f,[0,1]);
[x,fv]=fminbnd(f,0,1)