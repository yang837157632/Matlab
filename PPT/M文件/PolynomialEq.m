% Polynomial operation
%USST KJ

Op=input('Roots or Polyval ? (1 for Roots, 2 for Polyval):  ');
if Op==1  % demo for roots
    
p1=[1 3 5];
P1=poly2sym(p1)

p2=[2,4];
P2=poly2sym(p2)   

p=input('Whose root(s) do you want to calculate, P1 or P2? (1 for P1, 2 for P2): ');
if p==1
    s=char(poly2sym(p1));
    fprintf('%s = 0\n',s);
    x=roots(p1)
else if p==2
    s2=strcat(char(poly2sym(p2)),' = 0');
    disp(s2);
    x=roots(p2)
    else
    disp('Wrong Value!');        
    end
end
    
else if Op==2 % demo for Plyval
   p3=[1 2 1];
   s=poly2sym(p3);
   disp(s);
   x=input('Please enter value of x: ');   
   polyval(p3,x)
    else
        disp('Wrong Value!'); 
    end
    
end



