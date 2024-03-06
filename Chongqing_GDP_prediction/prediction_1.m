clc;clear;
G=[11595.3700000000	13027.6000000000	14623.7780000000	16040.5400000000	18023.0400000000	20066.2900000000	21588.8000000000	23605.7700000000	25002.7900000000	27894.0200000000	29129.0300000000];%2012年到2022年的GDP总量
Y=[2012	2013	2014	2015	2016	2017	2018	2019	2020	2021	2022];
figure(1);
plot(Y,G,'r*');%先画出GDP和年份的散点图
hold on;
ln_G=log(G);%对GDP总量求对数
figure(2);
plot(Y,ln_G,'r*');%画出ln(GDP)和年份的散点图
hold on;
a=polyfit(Y,ln_G,4);%多项式函数拟合求出次数项前的系数
fun=@(x) exp(a(1)*x.^4+a(2)*x.^3+a(3)*x.^2+a(4)*x+a(5));%利用系数构造GDP拟合函数
t=2012:0.1:2022;
fit_lnG=polyval(a,t);%求出拟合函数lnGDP在t时刻的解
figure(2);
plot(t,fit_lnG,'b-');%画lnGDP的拟合曲线
legend('实际GDP','拟合的ln(GDP)曲线','拟合ln(GDP)','Location','southeast');
xlabel('年份');
ylabel('ln(GDP)(亿元）');
hold off;
fit_G=fun(t);%求出GDP的拟合值
figure(1);
plot(t,fit_G,'b-',Y,fun(Y),'b*');%画出拟合GDP总量的曲线
legend('实际GDP','拟合的GDP曲线','拟合GDP','Location','southeast');
xlabel('年份');
ylabel('GDP(亿元）');
hold off;
error=(fun(Y)-G)./G.*100;%求出每年实际GDP与拟合GDP的百分误差
for i=1:length(G)
    disp([num2str(Y(i)),'年实际GDP和拟合的GDP误差为',num2str(error(i)),'%']);
end
predict_GDP_in_2026=fun(2026);%将2026年带入拟合函数，求出2026年的GDP
disp(['2026年GDP总量为：',num2str(predict_GDP_in_2026),'亿元']);
rate=[];
for i=2:length(Y)
    rate(i-1)=(G(i)-G(i-1))/G(i);%求出每年GDP相较于上一年的增长率
end
n=1:length(rate);
figure(3);
plot(n+2012,rate,'b*-');%画出增长率的散点图
axis([2013 2022 0 1]);
legend('增长率');
ylabel('增长率');
xlabel('年份');
