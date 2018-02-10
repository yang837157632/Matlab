function f=ffib(n)
if n>2
    f=ffib(n-1)+ffib(n-2);
elseif (n==1||n==2)
    f=1;
else
    errordlg('The input number must be larger than 0.','Error','modal');
end
    