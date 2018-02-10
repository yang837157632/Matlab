a=[1 3 5 7 9 11 13 15 17 19];
try
    index=input('please input the subscript: ');
    disp(['a[' num2str(index) '] = ' num2str(a(index))]);
catch error_message
    fprintf('Illegal subscript: %d.\n',index);
end

