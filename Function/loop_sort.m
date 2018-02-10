% sort ascend descend
a=[3 4 2 6 8 -1 10 5 7 0];
disp(['before  : ' num2str(a) ]);
for ii=1:9
    for jj=1:10-ii
        if(a(jj)>a(jj+1))
            k=a(jj);
            a(jj)=a(jj+1);
            a(jj+1)=k;
        end
    end
end
disp(['after   : ' num2str(a) ]);
b=sort(a);
disp(['ascend  : ' num2str(b) ]);
c=sort(a,'descend');
disp(['descend : ' num2str(c) ]);
