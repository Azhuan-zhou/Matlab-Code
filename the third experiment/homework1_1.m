clc;clear
syms y(x) x%申明符号变量
eqns=diff(y,x)==y+2*x;%构建微分方程
cond=y(0)==1;%设定初值
S=dsolve(eqns,cond);%解出方程的解析解
disp('该微分方程的解析解为：y(x)=')
disp(S);
x=linspace(0,1,100);%再0到1之间构成100个等差数
y=3*exp(x) - 2*x - 2;%计算出y值大小
figure(1);
plot(x,y,'r');
xlabel('x');%纵轴标注
ylabel('y');%横轴标注
title('3e^x-2x-2');%标题
legend('y(x)');%图例标注
axis([0,1,0,5]);%显示坐标范围
figure(2);