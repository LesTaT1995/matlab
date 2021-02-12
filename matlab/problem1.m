clc;
close all;
clear;
syms x;
fplot(@(x)(x^2-x-3),[-3,3])
ax = gca;
ax.XAxisLocation = 'origin';
xlabel('x-axis');
title('F(x)=x^2-x-3')
f=x^2-x-3;%function of x
fprime=diff(f);
x0=input('Enter x0 value:');
tolerance=10^(-5)
for k=0:1000
     f0=vpa(subs(f,x,x0));%value of function itself for given x0
     f1=vpa(subs(fprime,x,x0));%value of derivative of function f for given point x0
  result=x0-(f0/f1);%newthon-raphson formula
fprintf('iteration: %d \n',k);
Error=abs(result-x0)
if Error<tolerance%stoping criteria
    break
end
x0=result;
end
fprintf('iteration: %d \n',k);
fprintf('root: %f \n',result);
