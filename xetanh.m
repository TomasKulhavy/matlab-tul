function [z] = xetanh(x,y)
if(nargin == 1)
    y=0;
end
    z=x.*exp(-(x.^2)-(y.^2))+tanh(x.*y);
end