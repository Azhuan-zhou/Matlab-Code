clc;clear;
I_sp=2556.2*2;%比冲(s)
F=29024000*2;%推力(N)
g=9.8;%重力加速度(kg/m^2)
V=I_sp*g;%喷出气体的速度(m/s)
m=F./V;%单位时间喷出气体的质量(kg)
M=425800;%发射前的质量（kg)
disp('推进器阶段')
[t,y]=ode23('f_1',[0,125.55],[0,0]);%求出微分方程的数值解
v=y(:,1);%火箭的速度
x=y(:,2);%火箭的位移
figure(1);
[hAx,hline1,hline2]=plotyy(t,v,t,x);
xlabel('t(s)');
ylabel(hAx(1),'x(m)');
ylabel(hAx(2),'v(m/s)');
set(hline1,'LineStyle','--');
set(hline2,'LineStyle',':');
title('火箭发射推进阶段');
legend([hline1,hline2],{'x-t';'v-t'});
figure(2);
plot(x,v,'r');
xlabel('x(m)');
ylabel('v(m/s)');
title('火箭发射推进阶段');
legend('v-x');