% Vertices Faces FaceVertexCData FaceColor XData
clear;clc;
k=input('Please input : ');
x=  [0 1 1 0;1 1 1 1;1 0 0 1;0 0 0 0;1 0 0 1;0 1 1 0]';
y=k*[0 0 0 0;0 1 1 0;1 1 1 1;1 0 0 1;0 0 1 1;0 0 1 1]';
z=  [0 0 1 1;0 0 1 1;0 0 1 1;0 0 1 1;0 0 0 0;1 1 1 1]';
tcolor=rand(size(x,1),size(x,2));
patch(x,y,z,tcolor,'FaceColor','interp');
xlabel('x');ylabel('y');zlabel('z');
view(-37.5,35);
