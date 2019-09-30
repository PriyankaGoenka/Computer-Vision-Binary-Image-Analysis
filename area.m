function y=area(A)
Area=0;
for i =1:size(A,1)
    for j=1:size(A,2)
        if A(i,j)~=0
            Area=Area+1;
        end   
    end
end
y=Area;