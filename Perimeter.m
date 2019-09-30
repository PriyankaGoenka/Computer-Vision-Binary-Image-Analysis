function k=Perimeter(A)
%A is input object in binary form
k=0;
for i=1:size(A,1)
    for j=1:size(A,2)
       if A(i,j)~=0
           k=k+(4-Neighbor(A,i,j));
       end
    end
end
end