% getframe  moviein(n)  movie(m,n)
[x y z]=peaks(30);
surf(x,y,z);
axis([-3 3 -3 3 -10 10]);
axis off;
shading interp;
colormap(summer);
m=moviein(20);
for i=1:20
    view(-37.5+24*(i-1),30);
    m(i)=getframe;
end
movie(m,5)
 