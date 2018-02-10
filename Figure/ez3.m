[x,y,z]=meshgrid(linspace(-10,10));
val=x.^2+y.^2-z.^2;
isosurface(x,y,z,val,1);
axis equal;