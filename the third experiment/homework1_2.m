clc;clear
syms y(x) x%申明符号变量
eqns=diff(y,x)==cos(x)-y;%构建微分方程
Dy=diff(y,x);
cond=[y(0)==1,Dy(0)==0];%设定初值
S=dsolve(eqns,cond);%解出方程的解析解
disp('该微分方程的解析解为：y(x)=')
disp(S);
x=linspace(0,50,100);%再0到1之间构成100个等差数
y=exp(-x)/2 + (2^(1/2)*cos(x - pi/4))/2;%计算出y值大小
figure(1);
plot(x,y,'r');
xlabel('x');%纵轴标注
ylabel('y');%横轴标注
title('e^(-x)/2 + (2^(1/2)*cos(x - Π/4))/2');%标题
legend('y(x)');%图例标注
axis([0,50,-2,2]);%显示坐标范围
figure(2);
fplot(S,[0,50]);