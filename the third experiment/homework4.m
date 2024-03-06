clc;clear
t=[0,40];%设置时间
x0=[10;10];%设置初值
[t,x]=ode45(@f4,t,x0);%求解第一问
x1=x(:,1);%从方程的解x中取出x1甲种群的数量
x2=x(:,2);%从方程的解x中取出x2乙种群的数量
figure(1);
subplot(1,2,1);
plot(t,x1,'r',t,x2,'b');%绘制出x1（t）和x2（t）的曲线图
xlabel('时间');
ylabel('种群数量');
title('甲、乙种群相互竞争');
legend('甲','乙');
subplot(1,2,2);
plot(x1,x2,'g');%绘制甲种群数量和乙种群数量的关系图
xlabel('甲种群数量');
ylabel('乙种群的数量');
legend('甲-乙');
title('甲、乙种群相互竞争');
[t,y]=ode45(@f5,t,x0);%求解第二问，当α和β改变后的变化
y1=y(:,1);%从方程的解y中取出y1甲种群的数量
y2=y(:,2);%从方程的解y中取出y2乙种群的数量
figure(2);
subplot(1,2,1);
plot(t,y1,'r',t,y2,'b');%绘制出y1（t）和y2（t）的曲线图
xlabel('时间');
ylabel('种群数量');
title('甲、乙种群相互竞争');
legend('甲','乙');
subplot(1,2,2);
plot(y1,y2,'g');%绘制甲种群数量和乙种群数量的关系图
xlabel('甲种群数量');
ylabel('乙种群的数量');
legend('甲-乙');
title('甲、乙种群相互竞争')
[t,z]=ode45(@f6,t,x0);%求解第三问，当甲种群受到人为影响后的变化
z1=z(:,1);%从方程的解z中取出z1甲种群的数量
z2=z(:,2);%从方程的解z中取出z2甲种群的数量
figure(3);
subplot(1,2,1);
plot(t,z1,'r',t,z2,'b');%绘制出z1（t）和z2（t）的曲线图
xlabel('时间');
ylabel('种群数量');
title('甲、乙种群相互竞争');
legend('甲','乙');
subplot(1,2,2);
plot(z1,z2,'g');%绘制甲种群数量和乙种群数量的关系图
xlabel('甲种群数量');
ylabel('乙种群的数量');
legend('甲-乙');
title('甲、乙种群相互竞争')