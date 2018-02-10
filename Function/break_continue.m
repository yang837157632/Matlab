disp('break');
for ii=1:5
     if ii==3
         break;
     end
     fprintf('ii = %d\n',ii);
 end
fprintf('end of loop!\n\n');
disp('continue');
for ii=1:5
    if ii==3
        continue;
    end
    fprintf('ii = %d\n',ii);
end
disp('end of loop!');