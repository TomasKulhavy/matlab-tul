% Kulhavý, Mocek

clear; close all; clc

disp("f(x)")
x=-10:0.01:10;
y=atan((x+1)./(x-1));
plot(x,y)
xlabel('x');
ylabel('$\displaystyle\arctan{\frac{x+1}{x-1}}$','interpreter','latex');

x=-50:50;
y=atan((x+1)./(x-1));
figure
plot(x,y)
xlabel('x');
ylabel('$\displaystyle\arctan{\frac{x+1}{x-1}}$','interpreter','latex');

x=99999; % nekonečno
disp(atan((x+1)/(x-1)))

x=-99999; % minus nekonečno
disp(atan((x+1)/(x-1)))

x=1+eps; % jednička zprava
disp(atan((x+1)/(x-1)))

x=1-eps; % jednička zleva
disp(atan((x+1)/(x-1)))

%------------------------------
disp("g(x)")
x=-10:0.01:10;
y=x./sqrt(x.^2-1);
y(imag(y) ~= 0) = NaN;
figure
plot(x,y)
xlabel('x');
ylabel('$\displaystyle\frac{x}{\sqrt{x^2-1}}$','interpreter','latex');

x=-20:20;
y=x./sqrt(x.^2-1);
y(imag(y) ~= 0) = NaN;
figure
plot(x,y)
xlabel('x');
ylabel('$\displaystyle\frac{x}{\sqrt{x^2-1}}$','interpreter','latex');

x=99999;
disp(x/sqrt(x^2-1))

x=-99999;
disp(x/sqrt(x^2-1))

x=1;
disp(x/sqrt(x^2-1))

x=1+eps;
disp(x/sqrt(x^2-1))

x=1-eps;
disp(x/sqrt(x^2-1))

x=-1;
disp(x/sqrt(x^2-1))

x=-1+eps;
disp(x/sqrt(x^2-1))

x=-1-eps;
disp(x/sqrt(x^2-1))

%------------------------------
disp("h(x)")
x=-50:50;
y=x.^x;
figure
plot(x,y)
xlabel('x');
ylabel('$\displaystyle x^x$','interpreter','latex');

x=-10:0.01:10;
y=x.^x;
y(imag(y) ~= 0) = NaN;
figure
plot(x,y)
xlabel('x');
ylabel('$\displaystyle x^x$','interpreter','latex');

x=99999;
disp(x^x)

x=-99999;
disp(x^x)

x=0+eps;
disp(x^x)

x=0-eps;
disp(x^x)