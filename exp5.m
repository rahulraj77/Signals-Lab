% DFT with 10 samples of the signal
n=[0:1:99];
x=cos(0.48*pi*n)+cos(0.52*pi*n);
% Discrete time signal
% Taking only 10 samples
n1=[0:1:9];
x1=x(1:1:10);
y1=fft(x1);
mag_y1=abs(y1);
phase_y1=angle(y1);
figure(1);
subplot(3,1,1);
stem(n1,x1);
xlabel('n--->');
title('Input samples');
subplot(3,1,2);
F=2*pi*n1/10;
stem(F/pi,mag_y1);
xlabel('Frequency in units of Pi');
title('Magnitude plot');
X1=ifft(y1);
subplot(3,1,3);
stem(F/pi,phase_y1);
% DFT with 10 samples of the signal
xlabel('Frequency in units of Pi');
title('phase plot');

% 10 samples + Zero padding
n2=[0:1:99];
x2=[x(1:1:10) zeros(1,90)];
y2=fft(x2);
mag_y2=abs(y2);
phase_y2=angle(y2);
figure(2);
subplot(3,1,1);
stem(n2,x2);
xlabel('n--->');
title('Input samples');
subplot(3,1,2);
F=2*pi*n2/100;
stem(F/pi,mag_y2);
xlabel('Frequency in units of Pi');
title('Magnitude plot');
X2=ifft(y2);
subplot(3,1,3);
stem(F/pi,phase_y2);
xlabel('Frequency in units of Pi');

% DFT with 10 samples of the signal + padding with zeros
title('phase plot');
% 100 samples
n3=[0:1:99];
x=cos(0.48*pi*n3)+cos(0.52*pi*n3);
x3=x(1:1:100);
y3=fft(x3);
mag_y3=abs(y3);
phase_y3=angle(y3);
figure(3);
subplot(3,1,1);
stem(n3,x3);
xlabel('n--->');
title('Input samples');
subplot(3,1,2);
F=2*pi*n3/100;
%F1=2*pi*[-50:1:49]/100;
stem(F/pi,mag_y3);
xlabel('Frequency in units of Pi');
title('Magnitude plot');
X3=ifft(y3);
subplot(3,1,3);
stem(F/pi,phase_y3);
xlabel('Frequency in units of Pi');
title('phase plot');
