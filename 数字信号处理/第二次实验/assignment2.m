clc;clear
n1=0:13;
n2=14:26;
xn=[n1+1,27-n2];
%x(n)的FT变换
Xk=fft(xn,1024);%近似DFT[x(n)]
figure(1)
subplot(1,2,1);
plot(linspace(0,2*pi*(1023/1024),1024),abs(Xk),"-");%绘制DFT[x(n)]
xlabel("w（rad/s）");
ylabel("|X(e^j^w)|");
title("(a) FT[x(n)]");
subplot(1,2,2);
stem([n1,n2],xn,'.');%绘制IDFT[X(k)]
xlabel("n");
ylabel("x(n)");
title("(b) 三角波序列x(n)");
axis([0,32,0,20]);
%32点频域采样
figure(3)
X32k=fft(xn,32);%X(32K)=DFT32[x(n)]
x32n=ifft(X32k);%x32(n)=IDFT32[X(K)]
figure(3)
subplot(1,2,1);
stem(linspace(0,31,32),abs(X32k),".");%绘制X(K)=DFT32[x(n)]
xlabel("K");
ylabel("|X_3_2(e^j^w)|");
title("(e) 32点频率采样");
subplot(1,2,2);
stem(0:31,x32n,'.');%绘制x(n)=IDFT32[X(K)]
xlabel("n");
ylabel("|X_32(e^j^w)|");
title("(f) 32点IDFT[X_3_2(k)]");
axis([0,32,0,20]);
%16点频域采样
X16k=X32k(1:2:32);%X16(K)=DFT16[x(n)]=X32(2K)
x16n=ifft(X16k);%x16(n)=IDFT32[X(K)]
figure(2)
subplot(1,2,1);
stem(linspace(0,15,16),abs(X16k),".");%绘制X16(K)=DFT16[x(n)]=X32(2K)
xlabel("K");
ylabel("|X_1_6(e^j^w)|");
title("(c) 16点频率采样");
subplot(1,2,2);
stem(0:15,x16n,'.');%绘制x16(n)=IDFT32[X(K)]
axis([0,32,0,20]);
xlabel("n");
ylabel("|X_16(e^j^w)|");
title("(d) 16点IDFT[X_1_6(k)]");