function [variable] = GetField(i,j)
    num=append(int2str(i),int2str(j));
    num2=str2double(num);
    variable=sprintf('pushbutton%1i', num2);
end