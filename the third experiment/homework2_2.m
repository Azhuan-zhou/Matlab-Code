clc;clear
t=[0,1];%设定求解区间
x0=[2;-1];%设置初值
[t,x]=ode45(@f2,t,x0);
figure(1);
x1=x(:,1);%x（t)
dx=x(:,2);%dx(t)
figure(1);
plot(t,x1,'r');%绘制x（t）图
xlabel('t');
ylabel('x');
legend('x(t)');
figure(2);
plot(t,dx,'r');%绘制dx（t）图
xlabel('t');
ylabel('dx');
legend('dx(t)');
figure(3)
plot(x1,dx,'r');%绘制x-dx图
xlabel('x');
ylabel('dx');
legend('x-dx');