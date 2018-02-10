%IF...
%USST Matlab
stu=input('Are you a student? ','s');
if stu=='yes'  %if-end
    
    Day=input('Weekday or Weekend? (1 for Weekday, 2 for Weekend): ' );
    
        if Day==1;    %if-else-end
            fprintf('\n%s\n','Good Good Study, Day Day UP!');
        else
             fun=input('What will you do in weekend? (1 for study, 2 for outdoor, 3, others): ' );
                if fun==1    %if-elseif-end
                     fprintf('\n%s\n','Take a rest?');
                elseif fun==2
                     fprintf('\n%s\n','Have fun!');
                else 
                    fun2=input('Please enter your own option: ','s');
                    fprintf('\n%s\n%s\n',strcat(fun2,'?'),'Nice choice.');
                end         %if-elseif-end
        end          %if-else-end
    
        
end     %if-end


