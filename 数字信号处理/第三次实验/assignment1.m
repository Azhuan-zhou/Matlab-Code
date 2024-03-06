clc;clear;
%序列x1（n）
x1n=ones(1,4);
%序列x2（n）
n1=0:3;
n2=4:7;
x2n=[n1+1,8-n2];
%序列x3(n)
x3n=[4-n1,n2-3];
%x1(n)的8点和16点FFT
x1k8=fft(x1n,8);
x1k16=fft(x1n,16);
%x2(n)的8点和16点FFT
x2k8=fft(x2n,8);
x2k16=fft(x2n,16);
%x3(n)的8点和16点FFT
x3k8=fft(x3n,8);
x3k16=fft(x3n,16);
%绘制图像
N1=0:7;
N1=N1*(2/8);
N2=0:15;
N2=N2*(2/16);
figure(1)%x1(n)的FFT
subplot(1,2,1);
stem(N1,abs(x1k8),'k.',"MarkerSize",15);
ylabel("幅度");
xlabel({'\Omega/\pi';"(1a) 8点DFT[x_1(n)]"});
axis([0,2,0,5]);
subplot(1,2,2);
stem(N2,abs(x1k16),'k.',"MarkerSize",15);
xlabel({'\Omega/\pi';"(1b) 16点DFT[x_1(n)]"});
ylabel("幅度");
axis([0,2,0,5]);
figure(2)%x2(n)的FFT
subplot(1,2,1);
stem(N1,abs(x2k8),'k.',"MarkerSize",15);
ylabel("幅度");
xlabel({'\Omega/\pi';"(2a) 8点DFT[x_2(n)]"});
axis([0,2,0,25]);
subplot(1,2,2);
stem(N2,abs(x2k16),'k.',"MarkerSize",15);
xlabel({'\Omega/\pi';"(2b) 16点DFT[x_2(n)]"});
ylabel("幅度");
axis([0,2,0,25]);
figure(3)%x3(n)的FFT
subplot(1,2,1);
stem(N1,abs(x3k8),'k.',"MarkerSize",15);
ylabel("幅度");
xlabel({'\Omega/\pi';"(3a) 8点DFT[x_3(n)]"});
axis([0,2,0,25]);
subplot(1,2,2);
stem(N2,abs(x3k16),'k.',"MarkerSize",15);
xlabel({'\Omega/\pi';"(3b) 16点DFT[x_3(n)]"});
ylabel("幅度");
axis([0,2,0,25]);

