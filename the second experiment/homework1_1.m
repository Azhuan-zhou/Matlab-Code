clc;clear;
x0=[-1,1];%初始区间
fun=@f1;%创造函数
z1=fzero(fun,x0);%利用fzero求解方程的根
disp(['通过fzero函数求解方程e*x-3*x=0的根为：',num2str(z1)]);
disp('请按下空格键，显示fsolve求解的根');
pause;
z2=fsolve(fun,x0);%利用fsolve求解方程的根
disp(['通过fsolve函数求解方程e*x-3*x=0的根为：',num2str(z2(1))]);

 