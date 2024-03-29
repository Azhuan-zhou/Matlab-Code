clc;clear
n1=0:7;
%序列x(n)
x4n=cos(pi*n1/4);
x5n=cos(pi*n1/4)+cos(pi*n1/8);
%15点FFT
x4k8=fft(x4n,8);
x5k8=fft(x5n,8);
%序列x(n)
n2=0:15;
x4n=cos(pi*n2/4);
x5n=cos(pi*n2/4)+cos(pi*n2/8);
%16点FFT
x4k16=fft(x4n,16);
x5k16=fft(x5n,16);
%绘制图像
N1=0:7;
N1=N1*(2/8);
N2=0:15;
N2=N2*(2/16);
figure(1)%x4(n)
subplot(1,2,1);
stem(N1,abs(x4k8),"k.","markersize",10);
xlabel({"\omega/\pi";'图(4a)8点DFT[x_4(n)]'});
ylabel("幅度");
axis([0,2,0,5]);
subplot(1,2,2)
stem(N1,abs(x5k8),"k.","markersize",10);
xlabel({"\omega/\pi";'图5(a)8点DFT[x_5(n)]'});
ylabel("幅度");
axis([0,2,0,7]);
figure(2)%x5(n)
subplot(1,2,1);
stem(N2,abs(x4k16),"k.","markersize",10);
xlabel({"\omega/\pi";'图4(b)16点DFT[x_4(n)]'});
ylabel("幅度");
axis([0,2,0,9]);
subplot(1,2,2)
stem(N2,abs(x5k16),"k.","markersize",10);
xlabel({"\omega/\pi";'图5(b)16点DFT[x_5(n)]'});
ylabel("幅度");
axis([0,2,0,9]);


