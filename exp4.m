%% plotting of signal
Ts=0.01
t = 0:Ts:1
x = sin(2*pi*15*t)
subplot(2,2,1)
plot(t,x)
xlabel('Time (seconds)')
ylabel('Amplitude')
title(‘Sinusoidal signal’)

% Fourier Transform of the signal
y = fft(x);
fs = 1/Ts;
f = (0:length(y)-1)*fs/length(y);
n = length(x);
fshift = (-n/2:n/2-1)*(fs/n);
z = fftshift(y);
subplot(2,2,2)
stem(fshift,abs(z))
xlabel('Frequency (Hz)')
ylabel('Magnitude')
title('Magnitude response')
theta = angle(z);
subplot(2,2,3)
stem(f,theta/pi)
xlabel("Frequency (Hz)")
ylabel("Phase /\pi")
title('phase response')

%%FT of rectangular pulse
clear all
close all
clc
%fs = 500;
T = 1;
t = -2.5 : 0.1 : 2.5;
x = rectpuls(t,T);
subplot(2,2,1)
plot(t,x,'r','Linewidth',3);
axis([-2.5 2.5 0 1.2])
title({'Rectangular Pulse'})
xlabel({'Time(s)'});
ylabel('Ampltude');
grid
y=fft(x)
subplot(2,2,2)
plot(fftshift(abs(y)))
xlabel('frequency')
ylabel('amplitude')
title('Magnitude response')
theta = angle(y);
subplot(2,2,3)
stem(theta)
xlabel("Frequency (Hz)")
ylabel("Phase / \pi")
title('phase response')

% FT of sawtooth waveform
T = 10*(1/50);
fs = 1000;
t = 0:1/fs:T-1/fs;
x = sawtooth(2*pi*50*t);
subplot(2,2,1)
plot(t,x)
y=fft(x)
subplot(2,2,2)
plot(fftshift(abs(y)))
xlabel('frequency')
ylabel('amplitude')
title('Magnitude response')
theta = angle(y);
subplot(2,2,3)
stem(theta)
xlabel("Frequency (Hz)")
ylabel("Phase / \pi")
title('phase response')
