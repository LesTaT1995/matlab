clc;
close all;
clear;

X=[0.17000002
0.189999998
0.219999999
0.234999999
0.234999999
0.300000012
0.349999994
0.419999987
0.850000024
];

X=X'

Y=[0.629999995
0.699999988
0.819999993
0.879999995
1.149999976
1.5
4.400000095
7.300000191
11.30000019
];

Y=Y'

[A,B]=lsline(X,Y);
Y_lsq=A*X+B

errors = abs(Y_lsq - Y)
max_error = max(errors)
average_error = sum(errors)/length(errors)

figure(1)
scatter(X,Y)
hold on
plot(X,Y_lsq)
xlabel('Diameter of Sand Granules')
ylabel('Slope on Beach')
title('Diameter of Sand Granules Vs. Slope on Beach')
legend('Data','The least-squares line','Location','Best')

function [A,B]=lsline(X,Y)

xmean=mean(X);
ymean=mean(Y);
sumx2=(X-xmean)*(X-xmean)';
sumxy=(Y-ymean)*(X-xmean)';
A=sumxy/sumx2
B=ymean-A*xmean
end