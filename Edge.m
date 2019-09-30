function y=Edge(A)
%using dilation
A_dil=zeros(size(A,1),size(A,2));
for i=2:size(A,1)-1
    for j=2:size(A,2)-1
            if A(i,j)==50
                A_dil(i-1:i+1,j-1:j+1)=50;  
            end
    end
end
y=A_dil-A;