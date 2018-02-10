clear;clc;
n=0;sum_x=0;sum_y=0;sum_xx=0;sum_xy=0;
filename=input('please input the filename: ','s');
[fid msg]=fopen(filename,'rt');
if fid<0
    disp(msg);
else
    while(~feof(fid))
        x=fscanf(fid,'%f',[1 2]);
        disp(x);
        sum_x=sum_x+x(1);
        sum_y=sum_y+x(2);
        sum_xx=sum_xx+x(1)^2;
        sum_xy=sum_xy+x(1)*x(2);
        n=n+1;
    end
    x_bar=sum_x/n;
    y_bar=sum_y/n;
    m=(sum_xy-sum_x*y_bar)/(sum_xx-sum_x*x_bar);
    b=y_bar-m*x_bar;
    fclose(fid);
    disp(['y = ',num2str(m),' x + ',num2str(b)]);
end         