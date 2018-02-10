% peaks д╛хо [-3 3 -3 3]
% colormap jet hsv hot cool spring summer autumn winter
% gray bone copper pink lines
subplot(1,2,1);
[x,y]=meshgrid(-5:0.1:5);
z=peaks(x,y);
xlabel('x');ylabel('y');zlabel('z');
waterfall(x,y,z);
subplot(1,2,2);
[x,y,z]=peaks(30);
mesh(x,y,z);
xlabel('x');ylabel('y');zlabel('z');
colormap(cool);