clc;
close all;
clear;

tspan = [0 50];
y0 = [20; 20];

[t,y] = ode45(@odes ,tspan, y0);

figure(1);
plot(t,y);
legend('Mice Population','Snake Population');
xlabel('time');

function rhs = odes(t,y)

    %r = [0.75 1 1.5];
    %d = [0.45 0.75 1];
    d = 0.45;
    r = 0.75;
    a = 3;
    b = 0.6;
    c = 50;
    k = 125;

    rhs = zeros(2,1);
    
    rhs(1) = r*y(1)*(1 - y(1)/k) - (a*y(1)*y(2))/(c + y(1));
    rhs(2) = b*(a*y(1)*y(2))/((c+y(1)) - d*y(2));
end