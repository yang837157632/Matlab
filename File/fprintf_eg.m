% count=fprintf(fid,format,A)
clear;clc;
fname=input('Enter file containing questions: ','s');
ip=fopen(fname,'rt');
if ip<0
    error('Could not open input file');
end
op=fopen('fprintf_eg2.txt','wt');
if op<0
    error('Could not open input file');
end
q=fgetl(ip);
while ischar(q)
    fprintf('%s\n',q);
    a=input('Answer T(rue) or F(alse): ','s');
    while (a~='T')&&(a~='F')
        a=input('Answer T(rue) or F(alse): ','s');
    end;
    fprintf(op,'%s\nAnswer: %s\n',q,a);
    q=fgetl(ip);
end
fclose(ip);
fclose(op);