clc;clear
fun=@f2;%创造方程组函数
x0=[1,1];%设置x1和x2的初值
a=fsolve(fun,x0);
for i=1:size(a,2)
    disp(['x',num2str(i),'=',num2str(a(i))])
end
syms x y;
[x,y]=solve(2*x-y-exp(-x)==0,-x+2*y-exp(-y)==0,x,y);%采用solve函数检查fsolve是否求出了方程组的所有根
disp(x);
disp(y);