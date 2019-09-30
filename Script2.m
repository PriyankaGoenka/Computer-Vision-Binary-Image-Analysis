%%%%%%%%%%%%%%%%%%%%%%%%%
%Problem 2 Image 2A.jpg
%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear
close all
A = imread('2A.jpg');
A=double(A);
th=50;
for i=1:size(A,1)
    for j=1:size(A,2)
        if A(i,j)<th
            A(i,j)=0;
        else 
            A(i,j)=5;
        end    
    end
end 
figure(1)
sgtitle('Img 2A')
image(A)
hold on
y=CCL(A);
obj1=zeros(size(A,1),size(A,2));
obj2=zeros(size(A,1),size(A,2));
obj3=zeros(size(A,1),size(A,2));
obj4=zeros(size(A,1),size(A,2));

% obj2([v I])=1;
for i =1:size(y,1)
    for j=1 :size(y,2)
        if y(i,j)==25
            obj1(i,j)=50;
        elseif y(i,j)==45
            obj2(i,j)=50;
        elseif y(i,j)==85
            obj3(i,j)=50;
        elseif y(i,j)~=85 && y(i,j)>65
            obj4(i,j)=50;
        end   
    end
end

figure(2)
sgtitle('Img 2A');
subplot(221)
image(obj1)
title('Object1')
subplot(222)
image(obj2)
title('Object2')
subplot(223)
image(obj3)
title('Object3')
subplot(224)
image(obj4)
title('Object4')


area_obj1=area(obj1);
[r1,c1]=centroid(obj1);
[rr1, rc1, cc1]=SecondMoments(obj1);

area_obj2=area(obj2);
[r2,c2]=centroid(obj2);
[rr2, rc2, cc2]=SecondMoments(obj2);

area_obj3=area(obj3);
[r3,c3]=centroid(obj3);
[rr3, rc3, cc3]=SecondMoments(obj3);

area_obj4=area(obj4);
[r4,c4]=centroid(obj4);
[rr4, rc4, cc4]=SecondMoments(obj4);
display('Img-2A');
Object = {'Object1';'Object2';'Object3';'Object4'};
Area = [area_obj1;area_obj2;area_obj3;area_obj4];
r=[r1;r2;r3;r4];
c=[c1;c2;c3;c4];
rr = [rr1;rr2;rr3;rr4];
rc = [rc1;rc2;rc3;rc4];
cc = [cc1;cc2;cc3;cc4];
% Imax = [0;0;0;0];
% Imin=[0;0;0;0];
display('Img-2A');
T1 = table(Object,r,c,rr,rc,cc)
%%
%%%%%%%%%%%%%%%%%%%%%%%%%
%Problem 2 Image 2B.jpg
%%%%%%%%%%%%%%%%%%%%%%%%%
clear
A = imread('hw2-2B.jpg');
A=double(A);
th=50;
for i=1:size(A,1)
    for j=1:size(A,2)
        if A(i,j)<th
            A(i,j)=0;
        else 
            A(i,j)=5;
        end    
    end
end 
figure(3)
sgtitle('Img 2B')
image(A)
y=CCL(A);

obj1=zeros(size(A,1),size(A,2));
obj2=zeros(size(A,1),size(A,2));
obj3=zeros(size(A,1),size(A,2));
obj4=zeros(size(A,1),size(A,2));

for i =1:size(y,1)
    for j=1 :size(y,2)
        if y(i,j)==225
            obj1(i,j)=50;
        elseif y(i,j)==25
            obj2(i,j)=50;
        elseif y(i,j)==45
            obj3(i,j)=50;
        elseif y(i,j)>=85 && y(i,j)<=205
            obj4(i,j)=50;
        end   
    end
end

figure(4)
sgtitle('Img 2B');
subplot(221)
image(obj1)
title('Object1')
subplot(222)
image(obj2)
title('Object2')
subplot(223)
image(obj3)
title('Object3')
subplot(224)
image(obj4)
title('Object4')


area_obj1=area(obj1);
[r1,c1]=centroid(obj1);
[rr1, rc1, cc1]=SecondMoments(obj1);

area_obj2=area(obj2);
[r2,c2]=centroid(obj2);
[rr2, rc2, cc2]=SecondMoments(obj2);

area_obj3=area(obj3);
[r3,c3]=centroid(obj3);
[rr3, rc3, cc3]=SecondMoments(obj3);

area_obj4=area(obj4);
[r4,c4]=centroid(obj4);
[rr4, rc4, cc4]=SecondMoments(obj4);
display('Img-2B');
Object = {'Object1';'Object2';'Object3';'Object4'};
Area = [area_obj1;area_obj2;area_obj3;area_obj4];
r=[r1;r2;r3;r4];
c=[c1;c2;c3;c4];
rr = [rr1;rr2;rr3;rr4];
rc = [rc1;rc2;rc3;rc4];
cc = [cc1;cc2;cc3;cc4];
Imax = [10;23.5;1.25;8];
Imin=[0;20.6;0.66;0];
display('Img-2B');
T1 = table(Object,r,c,rr,rc,cc,Imax,Imin)

