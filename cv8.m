clear; close all; clc

%% 1
% a)
syms x 
f=x/(2+cos(x));
F=int(f, x, 0, 2*pi);
i1=vpa(F, 6)

krok=0.0001;
rozdeleni=0:krok:(2*pi-krok);
iv1=round(vpa(sum((rozdeleni+krok/2)./(2+cos(rozdeleni+krok/2))*krok)),4)
round(i1-iv1,4)

% b)
syms x 
f=x*atan(x);
F=int(f, x, 0, sqrt(3));
i2=vpa(F, 5)

krok=0.0001;
rozdeleni=0:krok:(sqrt(3)-krok);
iv2=round(vpa(sum((rozdeleni+krok/2).*atan(rozdeleni+krok/2))*krok),4)
round(i2-iv2,4)

% c)
syms x 
f=sqrt(1-sin(2*x));
F=int(f, x, 0, 2*pi);
i3=vpa(F, 5)

krok=0.0001;
rozdeleni=0:krok:(2*pi-krok);
iv3=round(vpa(sum(sqrt(1-sin(2*(rozdeleni+krok/2)))*krok)),4)
round(i3-iv3,4)

% d)
syms x 
f=exp(-x^2);
F=int(f, x, -10, 5);
i4=vpa(F, 5)

krok=0.0001;
rozdeleni=-10:krok:(5-krok);
iv4=round(vpa(sum(exp(-(rozdeleni+krok/2).^2)*krok)),4)
round(i4-iv4,4)

% e) Nekonečno v "rozdělení" mi vycházelo potom 0
syms x 
f=exp(-x^2);
F=int(f, x, -Inf, Inf);
i5=vpa(F, 5)

krok=0.0001;
rozdeleni=-100:krok:(100-krok);
iv5=round(vpa(sum(exp(-(rozdeleni+krok/2).^2)*krok)),4)
round(i5-iv5,4)

%% 2
% a)
syms n
e1=vpa(symsum(((-1)^n)*(1/(2^(n-1))),1,Inf), 4)
ev1=sum(((-1).^(1:40)).*(1./(2.^((1:40)-1))))
round(e1-ev1,4)

% b)
syms n
e2=vpa(symsum((1)/(n*(n+1)),1,Inf), 4)
ev2=sum((1)./((1:40).*((1:40)+1)))
round(e2-ev2,4)

% c)
syms n
e3=vpa(symsum(((-1)^n)*(1/n),1,Inf), 4)
ev3=sum(((-1).^(1:40)).*(1./(1:40)))
round(e3-ev3,4)

% d)
syms n
e4=vpa(symsum((2*n-1)/(2^n),1,Inf), 4)
ev4=sum((2.*(1:40)-1)./(2.^(1:40)))
round(e4-ev4,4)

%% 3
% a)
syms a;
A=[1 7 a; (a).^2 3 1-(a); 0 5 6];
f(a)=det(A);
x=-10:0.1:10;
plot(x,f(x))
eqn=diff(f(a))==0;
s=solve(eqn)
hold on
plot(s,f(s),'ro')

% b)
figure
B=[a 8 -3*a; 1 (1-a)^2 a; 3 -1 4];
f(a)=det(B);
plot(x,f(x))
eqn=diff(f(a))==0;
s=solve(eqn)
hold on