% comet(x,y,p） comet3(x,y,z,p)
% p 彗星长度/z向量长度 默认为0.1 
x=0:pi/250:10*pi;
y=sin(x);
z=cos(x);
comet(x,y);
pause;
comet3(x,y,z);

