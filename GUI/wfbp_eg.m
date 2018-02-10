% details,H1,H2,Handle,k,type,y1,y2,yn
close all;
x=-3*pi:pi/10:3*pi;
y1=sin(x);
y2=cos(x);
H1=plot(x,y1);
set(H1,'LineWidth',2);
hold on;
H2=plot(x,y2);
set(H2,'LineWidth',2,'LineStyle',':','Color','r');
title('\bfPlot of sin\itx\rm\bf and cos\itx');
xlabel('\bf\itx');
ylabel('\bfsin\itx\rm\bf and cos\itx');
legend('sine','cosine');
hold off;
k=waitforbuttonpress;
while k==0
    Handle=gco;
    type=get(Handle,'Type');
    disp(['Object type=' type '.']);
    yn=input('Do you want to display details?(y/n)','s');
    if yn=='y'
        details=get(Handle);
        disp(details);
    end
    k=waitforbuttonpress;
end