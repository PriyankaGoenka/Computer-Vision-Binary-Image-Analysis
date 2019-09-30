function [Mu_rr, Mu_rc, Mu_cc]=SecondMoments(A)
Mu_rr=0;
Mu_cc=0;
Mu_rc=0;
[r_bar, c_bar]=centroid(A);
for i =1:size(A,1)
    for j=1:size(A,2)
        if A(i,j)~=0
            Mu_rr=Mu_rr+(i-r_bar)^2;
            Mu_cc=Mu_cc+(j-c_bar)^2;
            Mu_rc=Mu_rc+(i-r_bar)*(j-c_bar);
        end
        
    end
end
Mu_rr=Mu_rr/area(A);
Mu_cc=Mu_cc/area(A);
Mu_rc=Mu_rc/area(A);
