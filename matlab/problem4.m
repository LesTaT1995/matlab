clc;
close all;
clear;


x=[0 1 2 3];

y=cos(x)%cosine values at defined k values inside x array;

%newthon cubic interpolation

p=newpoly(x,y);

hold on
xlabel('x');
ylabel('y');
xx=0:.25:3;
yy=spline(x,y,xx);
plot(x,cos(x),'b*',xx,yy)
title('curved of interpolation and data points');
legend('data','curved line of interpolation');
grid on

function [C,D]=newpoly(X,Y)

n=length(X);
D=zeros(n,n);
D(:,1)=Y';
% form the divided difference table
for j=2:n
   for k=j:n
      D(k,j)=(D(k,j-1)-D(k-1,j-1))/(X(k)-X(k-j+1));
   end
end
%Determine the coefficients of the Newton interpolatory polynomial
C=D(n,n);
for k=(n-1):-1:1
   C=conv(C,poly(X(k)))
   m=length(C)
   C(m)=C(m)+D(k,k)   
end
end

