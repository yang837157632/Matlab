value=input('please input a value: ');
switch value
    case{1,3,5,7,9}
        disp('The value is odd');
    case{2,4,6,8,10}
        disp('The value is even');
    otherwise
        disp('The value is out of range');
end

color=input('please input the color: ','s');
switch (color)
    case 'red'
        disp('forbidden');
    case 'yellow'
        disp('wait');
    case 'green'
        disp('go');
    otherwise
        disp('wrong input');
end
