clc;clear;
a=[1,0,2,0,3,0,5,7];%一元多次方程的常系数
z1=[];
t=1;
b=roots(a);%求根
for i=1:size(b,1)%通过循环判断b中方程的根是否为实数
    flag=isreal(b(i));
    if flag==1%如果是，将第i个根赋值给第t位置的z1
        z1(t)=b(i);
        t=t+1;
    end
end
c=size(z1,1);%计算出方程实根的个数
disp(['方程共有',num2str(c),'个实根']);
disp(['使用roots函数解出来的实根为：',num2str(z1)])
fun=@(x) x^7+2*x^5+3*x^3+5*x+7;%构造函数
x0=0;%设置初始值
z2=fsolve(fun,x0);
disp(['使用fsolve函数解出来的实根为：',num2str(z2)])
z3=fzero(fun,x0);
disp(['使用fzero函数解出来的实根为：',num2str(z3)])
x=1;%设置迭代初值
for i=1:50
    x=x-( x^7+2*x^5+3*x^3+5*x+7)/(7*x^6+10*x^4+9*x^2+5);%利用牛顿迭代法计算
end
z4=x;
disp(['使用牛顿法解出来的实根为：',num2str(z4)])