function y=Circumference(A)
A=Edge(A);
k=0;
for i=1:size(A,1)
    for j=1:size(A,2)
            if A(i,j)~=0
                k=k+1;  
            end
    end
end
y=k;