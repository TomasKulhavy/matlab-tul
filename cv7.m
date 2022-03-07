% Kulhavý, Mocek

clear; clc

% 1 

(sym(12)/63+sym(21)/51)*sym(7)/5-sym(22)/7

% 2

syms x y
f(x,y)=log(abs(cos(x)))+y*x*exp(-x^2)

% 3

g(y)=subs(f(x,y),x,1/y)

f(1/2,2)-g(2)

% 4

%subs(g(y),y,sym(3))

vpa(subs(g(y),y,sym(3)),100)

% 5

v1=vpa(int(g,y,1,2), 6)

krok=0.0001;
rozdeleni=1:krok:(2-krok);
v2=round(vpa(sum(g(rozdeleni+krok/2)*krok)),6)
v2-v1

% 6

pretty(int(f(x,y),x))

% 7

syms k n
v1=symsum(sin((2*pi*k)/3),1,40)

v2=sum(sin((2.*pi.*(1:40)./3)))

v1-v2

% 8

limit(f(x,y),x,pi/2)

% 9

int(diff(f(x,y),y),x,0,Inf)

% 10

syms a
A=[1 2 -a; -3 -6 3; a 9 0]
% nemá řešení pro:
det(A)
roots([-6 33 -27])
solve(det(A))
% charakteristický polynom:
syms x
p=det(subs(A,a,1)-x*eye(3))
roots([-1 -5 26])
eig(subs(A,a,1)) % protože matice je pro daný parametr singulární

% 11

syms x
expand(cos(3*x)-sin(3*x))

% 12

eqn=exp(1)^(-x^(2)+4*x-9) == 1;
S=solve(eqn);
vpa(S)

roots([-1 4 -9])