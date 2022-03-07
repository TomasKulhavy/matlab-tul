% Kulhavý, Mocek

clear

%C=randn(randi([10 40]),randi([10 40]),randi([10 40]));

C=randn(round(rand(1)*30+10),round(rand(1)*30+10),round(rand(1)*30+10));

sum(C, "all")/numel(C)

temp_pocet = 0;
temp_soucet = 0;
for i=1:numel(C)
    temp_soucet = temp_soucet + C(i);
    temp_pocet = temp_pocet + 1;
end
prumer=temp_soucet/temp_pocet

B=squeeze(C(1,:,:));

for i=1:size(B,1)
     B(i,:)=B(i,:)-mean(B(i,:));
end

sincos(rand(5))

function[xout]=sincos(xin)
    xout=((sin(xin)).^2).*cos(xin);
end