clc;clear
syms y(t) x(t) a b t%申明符号变量
eqns=[diff(x,t)==a*x+b*y,diff(y,t)==a*x-b*y];%构建微分方程
cond=[x(0)==2,y(0)==0];%设定初值
[x,y]=dsolve(eqns,cond);%解出方程的解析解
disp('该微分方程的解析解为：y(t)=');
disp(y);
disp('x(t)=');
disp(x);
a=0.01;%设置a的初值
b=0.01;%设置b的初值
t=linspace(0,1000,10000);%再0到1之间构成100个等差数
x1=(2*a*exp((t*(a - b + (a^2 + 6*a*b + b^2)^(1/2)))/2)*(b/a + (a/2 - b/2 + (a^2 + 6*a*b + b^2)^(1/2)/2)/a))/(a^2 + 6*a*b + b^2)^(1/2) - (2*a*exp(-(t*(b - a + (a^2 + 6*a*b + b^2)^(1/2)))/2)*(b/a - (b/2 - a/2 + (a^2 + 6*a*b + b^2)^(1/2)/2)/a))/(a^2 + 6*a*b + b^2)^(1/2);
y1=(2*a*exp((t*(a - b + (a^2 + 6*a*b + b^2)^(1/2)))/2))/(a^2 + 6*a*b + b^2)^(1/2) - (2*a*exp(-(t*(b - a + (a^2 + 6*a*b + b^2)^(1/2)))/2))/(a^2 + 6*a*b + b^2)^(1/2);
figure(1);
plot(t,x1,'r',t,y1,'b');
legend('x(t)','y(t)');%图例标注
xlabel('t');
ylabel('x,y');
