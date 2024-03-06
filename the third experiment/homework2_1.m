clc;clear
t=[0,20];
x0=2.35;
[t,x]=ode45(@f1,t,x0);
plot(t,x,'r');
xlabel('t');
ylabel('x');
legend('x(t)');

