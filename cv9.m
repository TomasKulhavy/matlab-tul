%% Kulhavý, Mocek
clear; clc; close all

%% 1
min=fminbnd(@funkce,2,4);
disp([min, funkce(min)])
min=fminbnd(@funkce,4,6);
disp([min, funkce(min)])
x=-10:0.01:10;
plot(x,funkce(x))

%% 2
min=fminbnd(@funkce2,-1,20);
disp([min, funkce2(min)])
figure
x=1:0.01:20;
plot(x,funkce2(x))

%% 3
fminsearch(@funkce3,[0,0])
[X,Y]=meshgrid(-2:0.1:2,-2:0.1:2);
Z=funkce31(X, Y);
mesh(X,Y,Z)

%% 4
f=[-5 -2 -6];
A=[1 -1 1; 3 2 4; 3 2 0];
b=[20 42 30];
lb=[0 0 0];
linprog(f,A,b,[],[],lb,[])

%% 5
syms x1 x2 x3

f=4*x1^2+2*x2^2+3*x3^2+2*x1*x2-3*x2*x3-x1;
H=double(hessian(f));

A=[1 -1 1;1 2 -6];
b=[-1 5];
lb=[0 0 0];
ff=[-1 0 0]; 
quadprog(H,ff,A,b,[],[],lb,[])

%% Funkce
function y=funkce(x)
    y=(sin(x)./x)+exp(-(x-4).^2);
end

function y=funkce2(x)
    y=(x.^4./4)-(41.*x.^3./6)+(209.*x.^2./4)-135.*x;
end

function y=funkce3(x)
    y=100.*(x(2)-x(1).^2).^2+(1-x(1)).^2;
end

function y=funkce31(x1,x2)
    y=100.*(x2-x1.^2).^2+(1-x1).^2;
end