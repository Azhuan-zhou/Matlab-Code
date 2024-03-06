clc;clear
p_liquid=1000;%液体密度
R=0.5;%木球半径
g=9.8;%重力加速度
p_object=650;%木球密度
V=4*pi*R^3/3;%木球体积
M=p_object*V;%木球质量
t1=linspace(0,0.2474,30);%第一阶段，空气中的自由下落的时间
h1=g.*t1.^2/2;%第一阶段，空气中的自由下落的运动位移
v1=g.*t1;%第一阶段，空气中的自由下落的速度
figure(1);
plot(t1,h1,'b');%画出第一阶段的t-h图
xlabel('时间');%标注t-h图横轴
ylabel('下落位移');%标注t-h图纵轴
title('木球下落的位移');%标注t-h图标题
hold on;
figure(2);
plot(t1,v1,'r');%画出第一阶段的t-v图
xlabel('时间');%标注t-v图横轴
ylabel('下落速度');%标注t-v图纵轴
title('木球下落的速度');%标注t-v图标题
hold on;
t2=[0.2474,0.55115];%第二阶段，部分侵入水中的下沉时间
x0=[0.3;2.4245];%设定初值v(0.2474)=2.4245,x(0.2474)=0.3
[t2,x2]=ode45(@f7,t2,x0);%利用ode45求解微分方程
figure(1);
h2=x2(:,1);%第二阶段，部分侵入水中的下沉位移
v2=x2(:,2);%第二阶段，部分侵入水中的下沉速度
plot(t2,h2,'b');%画出第二阶段的t-h图
hold on;
figure(2);
plot(t2,v2,'r');%画出第二阶段的t-v图
hold on;
a=g-p_liquid*g*V/M;%第三阶段全部侵入水中时，木球匀减速运动的加速度
n=size(v2,1);%v2,h2向量最后一个元素的位置
t3=linspace(0.5512,1.1624,50);%第三阶段，全部侵入水中的下沉的时间
h3=h2(n)+v2(n).*(t3-0.5512)+a.*(t3-0.5512).^2/2;%第三阶段，全部侵入水中的下沉的位移
v3=v2(n)+a.*(t3-0.5512);%第三阶段，全部侵入水中的下沉的速度
figure(1)
plot(t3,h3,'b');%画出第三阶段的t-h图
axis([0,1.2,0,2.5]);
legend({'t-h'},'Location','northwest','NumColumns',1);
legend('boxoff');
hold off;
figure(2);
plot(t3,v3,'r');%画出第三阶段的t-v图
axis([0,1.2,0,4]);
legend({'t-v'},'Location','northwest','NumColumns',1);
legend('boxoff');
hold off;