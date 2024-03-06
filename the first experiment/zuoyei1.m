clc;clear
x=-10 :0.2:10;
y=-10:0.2:10;
[X,Y]=meshgrid(x,y);
Z=Y.^2-3*X.*Y+X.^2;
figure(1)
mesh(X,Y,Z);
