% Polygon.m: Plot polygon. 
% 20121129  Kejian Chen
clear
n=100;  %number of edge
t = (1:-1/n:1/n/2)'*2*pi; 
x = sin(t);
y = cos(t);
fill(x,y,'r')
axis square

disp(t);
fprintf('%6.2f  %12.8f\n',x,y); %print to screen
fid=fopen('test.txt','a');
fprintf(fid,'%6.2f  %12.8f \n',x,y);
fclose(fid);

% figure
% Flower