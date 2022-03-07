clear; clc; close all
%% 1) Šestiúhelník
figure
theta=0:pi/3:2*pi;
x=cos(theta);
y=sin(theta);
plot(x,y,'LineWidth',1);

%% 3) 2D
%% 3a)
figure
hold on
x=-5:0.1:5;
p1=plot(x,f(x),'b','LineWidth',1);
p2=plot(x,f(x,1),'r','LineWidth',1);
p3=plot(x,f(x,2),'y','LineWidth',1);
title('Function f for various arguments');
xlabel('x');
ylabel('f(x,y)');
legend('f(x)','f(x,1)','f(x,2)');
legend('show');
hold off

%% 3b)
figure
a1 = subplot(1,3,1); plot(x,f(x),'b','LineWidth',1); legend('f(x)'); xlabel('x'); ylabel('f(x,y)');
a2 = subplot(1,3,2); plot(x,f(x, 1),'r','LineWidth',1); legend('f(x,1)'); xlabel('x'); ylabel('f(x,y)');
a3 = subplot(1,3,3); plot(x,f(x, 2),'g','LineWidth',1); legend('f(x,2)'); xlabel('x'); ylabel('f(x,y)');
linkaxes([a1 a2 a3],'xy');

%% 4) 3D Meshgrid
figure
clf
y=-6:0.2:6;
x=-5:0.1:5;
[X Y] = meshgrid(x,y);
Z = f(X,Y);
surf(X,Y,Z);
title('Function f for various arguments (use meshgrid)');
xlabel('y');
ylabel('x');
zlabel('f(x,y)');

%% 2) Funkce
function [z] = f(x,y)
if(nargin == 1)
    y = 0;
end
    z = x.*exp(-(x.^2) - (y.^2)) + tanh(x.*y);
end