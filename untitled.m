%%M=[(rand(2745,2335))];
%%a=fce(M);
%%C=mean(a, "all");


%%function xout=fce(x)
    %%xout=tanh(x.^2);
%%end

%
 M=[(randn(1495,1378,2))];
 a=cos(M);
 C=mean(a,"all")
 function xout=cos(x)
    xout=cos((1)/((x.^2)+1));
 end

%%
% syms x y
% C=fce(x,y)
% function xout=fce(x,y)
%     f=cos(y^2)*sin(x)
%     xout=diff(f);
% end

%%
% syms x 
% f=x/(x-1);
% F=int(f, x, -exp(1), 0);
% i1=vpa(F,8)

%% vlastní čísla trace(M)
%%řešení rovnice v intervalu
% syms x
% f = exp(-2*x^2-4*x+3)+cos(x); 
% vpasolve(f,[1 2]) %change solve 

%%součet hodnot v intervalu
% sum(A(A>-1&A<=5))
% sum(A((A<=5)&(A>-1)))

%%global minimum
%% předtím fplot funkce a urctim interval
% min=fminbnd(@funkce,1,2);
% function xout=funkce(x)
%     xout=(x.^5-5.*x.^3+4*x-7);
% end

% %% det = 0
% syms a
% A=[5.5 -2 a; -3 -5.5 1; 5.5 1 2];
% vpa(solve(det(A)))
