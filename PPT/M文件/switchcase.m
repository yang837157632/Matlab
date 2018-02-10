%switch...
%USST Matlab 201212 KJ
teacher=input('Are you a teacher? ','s');
if teacher=='yes'  %if-end
    
    Day=input('Weekday or Weekend? (1 for Weekday, 2 for Weekend): ' );
    
        switch Day;    %switch 2 cases
            
            case 1
                fprintf('\n%s\n','To be a friend of students. Cheers!');
        
            case 2
                fun=input('What will you do in weekend? (1 for study, 2 for lab, 3 for outdoor, 4 for others): ' );
                switch fun    %switch more than 2 cases
                    
                    case 1 
                        fprintf('\n%s\n','Book is a good friend of human.');
                    case 2
                        fprintf('\n%s\n','Good Luck!');
                    case 3
                        fprintf('\n%s\n','Have Fun!');
                    otherwise
                    fun2=input('Please enter your own option: ','s');
                    fprintf('\n%s\n%s\n',strcat(fun2,'?'),'Nice choice.');
                end         %switch more than 2 cases
        end          %switch 2 cases
        
end
    