%Program to find linearity of system 1
Clc; clear all; close all
% System 1
% Linearity
b = [1 0];
a = [1 0.9];
x1= rand(1,10);
x2 = rand (1,10);
x3 = rand (1,10);
y2 = filter (b, a, 2.*x1);
y5 = filter (b, a,2.* x2);
y = filter (b, a, x1);
y0 = filter (b, a, x2);
y6 = y2+y5;
y7 = 2*y+2*y0;
if (y6-y7 == 0)
disp ('System 1 is Linear ')
else
disp ('System 1 is Non Linear ')
end;

% Causality--------%%%
n1= -10:1:10;
x = [zeros(1,10) 1 zeros(1,10)];
y1 = filter (a, b, x);
subplot (2, 1, 1);
stem (n1,y1);
title('System 1');
xlabel (' Samples ');
ylabel (' Amplitude ');

% Stability
T = abs (y1);
t = sum (T);
if (t < 1000)
disp ('System 1 is Stable ')
else
disp ('System 1 is Unstable ')
end;

%System 2
% 1 % Linearity
y8 = exp (x2);
y9 = exp (x3);
y10 = 5*y8+5*y9;
y11 = exp(5*x2+5*x3);
if (y11-y10==0)
disp ('System 2 is Linear ')
else
disp ('System 2 is Non Linear ')
end;

% 2 % Causality
Y8= exp (x);
subplot (2, 1, 2);
stem (y8);
title('System 2');
xlabel (' Samples ');
ylabel (' Amplitude ');

% 3 % Stability
T1= abs (y8);
t1 = sum (T1);
if (t1 < 1000)
disp ('System 2 is Stable ')
else
disp ('System 2 is Unstable ')
end;
