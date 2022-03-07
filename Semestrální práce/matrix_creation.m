function [A] = matrix_creation(size,minecount)
A=zeros(size,size);

for j = 1:minecount
    ran_x = abs(ceil(random('norm',0,size,1,1)));
    ran_y = abs(ceil(random('norm',0,size,1,1)));
    while ran_x>size | ran_x<=0 | ran_y>size | ran_y<=0
        ran_x = abs(ceil(random('norm',0,size,1,1)));
        ran_y = abs(ceil(random('norm',0,size,1,1)));
    end
    A(ran_y,ran_x)=9;
    while sum(sum(A))~=9*j
        ran_x = abs(ceil(random('norm',0,size,1,1)));
        ran_y = abs(ceil(random('norm',0,size,1,1)));
        while ran_x>size | ran_x<=0 | ran_y>size | ran_y<=0
            ran_x = abs(ceil(random('norm',0,size,1,1)));
            ran_y = abs(ceil(random('norm',0,size,1,1)));
        end
        A(ran_y,ran_x)=9;
    end
end

B=zeros(size,size);
midy=-(1-size)/2;
midx=-(1-size)/2;

%the following creates the numbers around the mines
for y1=1:size
    for x1=1:size
        if A(y1,x1)==9
            for e=-1:1
                for f=-1:1
                    if e^2+f^2~=0 & abs(y1+e-midy-1)<=midy & abs(x1+f-midx-1)<=midx
                        if A(y1+e,x1+f)~=9
                            B(y1+e,x1+f)=B(y1+e,x1+f)+1;
                        end
                    end
                end
            end
        end
    end
end
A=A+B;