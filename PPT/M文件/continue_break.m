%continue and break;
%20121201 KJ
A=1:16;
Pos=input('Where will insert 777 into the line:');
A(Pos)=777;
A


for i=1:length(A) 
    if A(i)>25
        continue;   %continue
    else
        Cont(i)=A(i);
    end
end
    
Cont


for i=1:length(A) 
    if A(i)>25
        break;        %break
    else
        Brea(i)=A(i);
    end
end
   
Brea