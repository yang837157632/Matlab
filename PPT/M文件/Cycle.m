%Cycle : for and while
%20121201 KJ
clc
Mark_Rutherford='Most of us have no real loves and no real hatreds. Blessed is love, less blessed is hatred. but thrice accursed is that indifference which is neither one  nor the other.';
Mark_Rutherford
fprintf('\n');
Char_s=input('Which char do you want to find? ','s');
find_Position=find(Mark_Rutherford==Char_s)   %function of find.

for_position=[];   %method of for
for i=1:length(Mark_Rutherford)
    if (Mark_Rutherford(i)==Char_s)
        for_position=[for_position,i];
    end
end
for_position

while_position=[];
j=1;
while j<=length(Mark_Rutherford)   %method of while
     if (Mark_Rutherford(j)==Char_s)
        while_position=[while_position,j];
     end
     j=j+1;
end
while_position

