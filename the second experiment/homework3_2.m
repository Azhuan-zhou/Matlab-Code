clc;clear;
x0=[3,3,3];%初值点一
x1=[1,1,1];%初值点二
fun=@f3;
a=fsolve(fun,x0);%对第一个初值点求解
b=fsolve(fun,x1); %对第二个初值点求解
disp('当初始点x1=3,x2=3,x3=3时，方程的解为：')
for i=1:size(a,2)
    disp(['x',num2str(i),'=',num2str(a(i))])
end
 disp('当初始点x1=1,x2=1,x3=1时，方程的解为：')
for i=1:size(b,2)
    disp(['x',num2str(i),'=',num2str(b(i))])
end
if a==b%判断两组解是否相同
    disp('因此结果和初始点无关')
else
    disp('因此结果和初始点有关')
end
