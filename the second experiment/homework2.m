clc;clear;
A=[7,2,1,-2;9,15,3,-2;-2,-2,11,5;1,3,2,13];
B=[4;7;-1;0];
if det(A)==0%判断矩阵A是否为满秩阵
    disp('该线性非齐次方程组无解或者有无穷解')
    pause
else
    disp('该线性非齐次方程组有唯一解')
    x=A\B;
end
for i=1:size(x,1)
    disp(['x',num2str(i),'=',num2str(x(i))])
end
