% Kulhavý, Mocek

clear

A=randn(1000,2000);
%A=randn(10,10);

B=round(A);
B2=B;

for i = 1:size(B,2)
    for j = 1:size(B,2)-i
        for k=1:size(B,1)   
            if B(k,j) > B(k,j+1)
                break            
            elseif B(k,j) < B(k,j+1)
                temp=B(:,j);
                B(:,j)=B(:,j+1);
                B(:,j+1)=temp;
                break                
            end            
        end        
    end
end

mean(B==sortrows(B2.','descend').', 'all')

            