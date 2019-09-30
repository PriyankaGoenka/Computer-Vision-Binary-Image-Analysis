function y=CCL(A)
% y= output matrix which labels different objects in matrix.
% connnect component labeling algorithm to extract connected
% components from the original image matrix.
% A= Original image matrix which is input from the user.

k=5;
for i = 1:size(A,1)
    for j=1:size(A,2)
        if j>1 && A(i,j)~=0 && A(i,j-1)~= 0
            A(i,j)=A(i,j-1);
        elseif i>1 && A(i,j)~=0 && A(i-1,j)~= 0
            A(i,j)=A(i-1,j);
        elseif A(i,j)~=0 && A(i,j-1)== 0 && A(i,j-1) == A(i-1,j)
            k=k+20;
            A(i,j)=k;
        end
    end 
end
y=A;