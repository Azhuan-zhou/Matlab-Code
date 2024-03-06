clc;clear
%输入序列的参数
Alpha=50*pi*2^(1/2);
Omiga=50*pi*2^(1/2);
A=444.128;
Tp=64/1000;
%采样频率
Fs_1=1000;
Fs_2=300;
Fs_3=200;
%采样后序列的长度
N_1=Tp*Fs_1;
N_2=Tp*Fs_2;
N_3=Tp*Fs_3;
M=64;%FFT变换的点数
%序列x1(n)
n_1=0:N_1-1;
xn_1=A*exp(-Alpha*n_1*(1/Fs_1)).*sin(Omiga*n_1*(1/Fs_1));
XK_1=(1/Fs_1)*fft(xn_1,M);
%绘制图像
figure(1)
subplot(1,2,1)
stem(n_1,xn_1,'.');%x1(n)
xlabel("n");
ylabel("x_a(nT)");
title("(a) Fs=1000Hz");
subplot(1,2,2);
plot(n_1/Tp,abs(XK_1),"-");%FFT[x1(n)]
axis([0,1000,0,1]);
xlabel("f/Hz");
ylabel("|x(k)|");
title("(a) T*FT[x_a(nT)],Fs=1000Hz");
%序列x2(n)
n_2=0:N_2-1;
xn_2=A*exp(-Alpha*n_2*(1/Fs_2)).*sin(Omiga*n_2*(1/Fs_2));
DFT_2=(1/Fs_2)*fft(xn_2,M);
%绘制图像
figure(2)
subplot(1,2,1)
stem(n_2,xn_2,'.');%x2(n)
xlabel("n");
ylabel("x_a(nT)");
title("(b) Fs=300Hz");
subplot(1,2,2);
plot(linspace(0,300,64),abs(DFT_2),"-");%FFT[x2(n)]
axis([0,300,0,1]);
xlabel("f/hz");
ylabel("|x(k)|");
title("(b) T*FT[x_a(nT)],Fs=300Hz");
%序列x2(n)
n_3=0:N_3-1;
xn_3=A*exp(-Alpha*n_3*(1/Fs_3)).*sin(Omiga*n_3*(1/Fs_3));
DFT_3=(1/Fs_3)*fft(xn_3,M);
%绘制图像
figure(3)
subplot(1,2,1)
stem(n_3,xn_3,'.');%x2(n)
xlabel("n");
ylabel("x_a(nT)");
title("(c) Fs=200Hz");
subplot(1,2,2);
plot(linspace(0,200,64),abs(DFT_3),"-");%FFT[x2(n)]
xlabel("f/hz");
ylabel("|x(k)|");
title("(c) T*FT[x_a(nT)],Fs=200Hz");
axis([0,200,0,1]);