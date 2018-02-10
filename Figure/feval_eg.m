function feval_eg(fname,limits)
x=limits(1):0.01:limits(2);
y=feval(fname,x);
plot(x,y);
% feval_eg(@sin,[-1 1])