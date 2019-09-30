function [r_bar c_bar]=centroid(A)
r=0;
c=0;
for i =1:size(A,1)
    for j=1:size(A,2)
        if A(i,j)~=0
            r=r+i;
%             break
        end
    end
end

for j =1:size(A,2)
    for i=1:size(A,1)
        if A(i,j)~=0
            c=c+j;
%             break
        end
    end
end
r_bar=r/area(A);
c_bar=c/area(A);