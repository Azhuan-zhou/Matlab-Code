function L=Lambda(Ts,T_inf)
R=8.314;
M=0.018;%水的摩尔质量
C_vm_=C_vm(Ts,T_inf);%恒压比热容（kJ/kg.k）
C_vm_=C_vm_*0.018;%(KJ/mol.k)
mu_=mu(Ts,T_inf);%水蒸气在20°c，101325pa时的动力粘度（pa.s）
L=( mu_ * C_vm_/M ) * ( 1 + 4 / ( 9 * (C_vm_/R) ) );
end