function d=D(Ts,T_inf)%Ts是t时刻的液体表面温度，T_inf是环境温度
M_vap=18;%g/mol
M_air=29;%g/mol
T=(2*Ts+T_inf)/3;%平均温度(k)
M=(1/M_vap+1/M_air)^(1/2);
v_air=20.1;%空气的分子扩散体积
v_vap=12.7;%水分子的分子扩散体积
v=(v_air^(1/3)+v_vap^(1/3))^2;
p=101325;%环境气压（pa）
d=1.013*0.01*(T^1.75)*M/(p*v);%水蒸气的扩散率(m^2/s)
end
