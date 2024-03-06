
clc;clear
syms  x y;
fun=@f4;
t=[1,1,1,1,1];%设置初值
A=fsolve(fun,t);
f=@(x,y) A(1)*x^2+A(2)*y^2+A(3)*x+A(4)*y+A(5)*x*y+1;%构建椭圆函数
figure(1);
fimplicit(f,[3 8 -1 5]);%画出曲线图像
a_1=[4.0146,-0.04];%长轴左端点
a_2=[7.3558,3.6];%长轴右端点
a_0=(a_1+a_2)./2;%椭圆中心
a=sum((a_1-a_2).^2)^(1/2)/2;%半长轴
b_1=[5.27965,2.55737];%短轴上端点
b_2=[6.07855,0.967763];%短轴下断点
b=sum((b_1-b_2).^2)^(1/2)/2;%半短轴
c=(a^2-b^2)^(1/2);%焦距
f1=a_1+((a-c)/a)*(a_0-a_1);%焦点坐标1
f2=a_0+(c/a)*(a_2-a_0);%焦点坐标2
xlabel('X');
ylabel('Y');
title('小行星绕太阳运行的轨道');
text(4.1267,0.0821,'o');
text(7.2437,3.4779,'o');
disp(['太阳的位置坐标为：（',num2str(f1(1)),',',num2str(f1(2)),')或（',num2str(f2(1)),',',num2str(f2(2)),')。']);