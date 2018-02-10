% Test menu
%menu_stu;   
x=0:0.1:2*pi;
y=sin(x);
plot(sin(0:0.1:2*pi),'k')

k=menu('Color','Green','Blue','Red')
type=['g','b','r'];

plot(x,y,type(k));

