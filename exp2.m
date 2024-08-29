% Addition of two signals
t=0:0.01:0.1
f=25;
t1=2*pi*f*t;
x1=sin(t1);
subplot(3,1,1)
plot(t,x1)
title('x1')
xlabel('Time')
ylabel('Amplitude')
grid on;
x2=cos(t1)
subplot(3,1,2)
plot(t,x2)
title('x2')
xlabel('Time')
ylabel('Amplitude')
y=x1+x2
subplot(3,1,3)
plot(t,y)
title('Addition of 2 signals y= x1+x2')
xlabel('Time')
ylabel('Amplitude')

% ii) Subtraction of Signals
t=0:0.01:0.1
f=25;
t1=2*pi*f*t;
x1=sin(t1);
subplot(3,1,1)
plot(t,x1)
title('x1')
xlabel('Time')
ylabel('Amplitude')
grid on;
x2=cos(t1)
subplot(3,1,2)
grid on;
plot(t,x2)
title('x2')
xlabel('Time')
ylabel('Amplitude')
grid on;
y=x1-x2 % Here the subtraction takes place
subplot(3,1,3)
grid on;
plot(t,y)
title('Subtraction of Signals:y= x1-x2')
xlabel('Time')
ylabel('Amplitude')

% iii) Multiplication of Signals
t=0:0.01:0.1
f=25;
t1=2*pi*f*t;
x1=sin(t1);
subplot(3,1,1)
plot(t,x1)
title('x1')
xlabel('Time')
ylabel('Amplitude')
grid on;
x2=cos(t1)
subplot(3,1,2)
plot(t,x2)
title('x2')
xlabel('Time')
ylabel('Amplitude')
grid on;
y=x1.*x2 % Here the multiplication takes place
subplot(3,1,3)
plot(t,y)
title('Multiplication of signals: y= x1*x2')
xlabel('Time')
ylabel('Amplitude')
grid on;

% iv) Time Shifting of Signals
t=0:10;
x=[0 1 2 1 0 1 2 0 1 2 1 ];
subplot(3,1,1)
plot(t,x)
title('Signal')
xlabel('Time')
ylabel('Amplitude')
grid on;
axis([-2 8 0 4]);
subplot(3,1,2)
plot(t+2,x)
title('Left Shift')
xlabel('Time')
ylabel('Amplitude')
grid on;
axis([-2 8 0 4]);
subplot(3,1,3)
plot(t-2,x)
title('Right Shift')
xlabel('Time')
ylabel('Amplitude')
grid on;
axis([-2 8 0 4]);

% v)Time Scaling of Signals
t=0:0.01:8*pi
x=sin(t);
subplot(3,1,1)
plot(t,x)
title('Signal')
xlabel('Time')
ylabel('Amplitude')
grid on;
y=sin(t/2)
subplot(3,1,2)
plot(t,y)
title('Expanded Signal')
xlabel('Time')
ylabel('Amplitude')
grid on;
z=sin(t*2)
subplot(3,1,3)
plot(t,z)
title('Compressed Signal')
xlabel('Time')
ylabel('Amplitude')
grid on;

% vi)Time reversal
t=0:10;
x=[0 1 2 3 4 -5 -6 -7 -8 -9 -10];
subplot(2,1,1); stem(t,x);
title('Simple Signal')
xlabel('Time')
ylabel('Amplitude')
grid on;
y=fliplr(x);
subplot(2,1,2); stem(t,y);
title('Reflected Signal')
xlabel('Time')
ylabel('Amplitude')
grid on;
