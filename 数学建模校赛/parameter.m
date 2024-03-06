Tb=273.15+99.925;%标准大气压下水的沸点(k)
Tc=273.15+373.946;%水的临界沸点(k)
Tbr=Tb/Tc;
Pc=22.064*1000000;%水的临界压强(pa)
Ps=101325;%环境大气压(Pa)
T_inf=20+273.15;%环境温度
Ts=20+273.15;%稳态时候的温度
C_pg=C_vm(Ts,T_inf);%水蒸气的恒压比热容(J/(kg.K))
L=2257.2;%水的气化潜热(kJ/kg)
lambda=Lambda(Ts,T_inf);%空水蒸气的导热率(W/m.k)
p_g=1.29;%空气的密度(kg/m^3)
D_g=D(Ts,T_inf);%水蒸气的扩散率(m^2/s)
h=Tbr*log(Pc/Ps)/(1-Tbr);%水的换热系数(W/(m^2.K))
M_vap=0.018;%kg/mol
M_air=0.029;%kg/mol
Ts=0:0.001:20;
Ts=Ts+273.15;
%
m_vaps1=1-1./( (1+ (C_pg*(273.15+20-Ts)/L) ).^(lambda/(C_pg*p_g*D_g)) );
%
Y=(Pc/(Ps))*exp(h*(1-Tc./Ts));
m_vaps2=M_vap ./( M_air ./Y  + M_vap - M_air );
%绘制图像
plot(Ts,m_vaps1,"b-");
hold on;
plot(Ts,m_vaps2,"k-");


