function k=Neighbor(A,i,j)
k=0;
if i> 1 &&  A(i-1,j)~=0
    k=k+1;
end
if j> 1 &&  A(i,j-1)~=0
    k=k+1;
end
if i<size(A,1) && A(i+1,j)~=0
    k=k+1;
end
if j<size(A,2) && A(i,j+1)~=0
    k=k+1;
end
end