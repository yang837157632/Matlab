for ii=1:5
    for jj=1:5 
        mul=ii*jj;
        fprintf('%d * %d = %d \n',ii,jj,mul);
    end
    fprintf('End of the %d inner loop\n\n',ii);
end
fprintf('End of outer loop\n');
