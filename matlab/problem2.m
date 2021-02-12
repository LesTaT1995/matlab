% Gauss_seidel method
% FOR Ax=b
% 
% clc;
% close all;
% clear;
% fprintf('Gauss_seidel method FOR Ax=b');
% A=[4 -1 -1 0; -1 4 0 -1; -1 0 4 -1; 0 -1 -1 4]%matrix A
% x=[0 0 0 0]'%x matrix contain value of x1 x2 x3 x4 as initial guess
% b=[0 0 1 1]'
% 
% n=size(x,1);
% v=Inf;
% 
% tolerance=10^(-5);
% k=0;%iteration
% 
%     while v>tolerance
%        
%         latest_x=x;
%         
%         for i=1:n
%              
%             E=0;
%             for j=1:i-1
%                 E=E+A(i,j)*x(j);
%             end
%              for j=i+1:n
%                 E=E+A(i,j)*latest_x(j);
%              end
%             x(i)=(1/A(i,i))*(b(i)-E);
%         end
%         k=k+1;
%         if k>500
%             break
%         end
%         v=norm(latest_x-x);
%     end
% fprintf('Result: [x1:%f; x2:%f; x3:%f; x4:%f] as %d iterations',x,k);

% jacobi method
% FOR Ax=b

clc;
close all;
clear;
 
A=[4 -1 -1 0; -1 4 0 -1; -1 0 4 -1; 0 -1 -1 4]%matrix A
x=[0 0 0 0]'%x matrix contain value of x1 x2 x3 x4 as initial guess
b=[0 0 1 1]'

[jacobi_result, j_iter] = jacobi(A,b,x,0.0001,500)