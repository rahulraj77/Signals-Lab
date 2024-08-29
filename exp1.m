%Generation of UNIT impulse signal
clc; close all; clear all;
n=-2:1:2;
y=[zeros(1,2),ones(1,1),zeros(1,2)];
figure(1);
plot(n,y);
xlabel("Time ")
ylabel("Amplitude")
title('unit impulse');

%Generation of UNIT step signal
clc; close all; clear all;
n=input('enter the n value');
t=0:1:n-1;
y=ones(1,n);
figure(2)
plot(t,y);
title('unit step');
xlabel("Time (sec)")
ylabel("Amplitude")

%Generation of unit RAMP signal
clc; close all; clear all;
n=input('enter the n value');
t=0:n;
y=t;
figure(3)
stem(y,t);
title('unit ramp');
xlabel("Time (sec)")
ylabel("Amplitude")

%Generation of sinc pulse
t1 = linspace(-5,5);
y1 = sinc(t1);
plot(t1,y1)
xlabel("Time (sec)")
ylabel("Amplitude")
title("Sinc Function")

%Generation of Gaussian pulse
Fs = 60; % sampling freq
t = -.5:1/Fs:.5;
x = 1/(sqrt(2*pi*0.01))*(exp(-t.^2/(2*0.01)));
figure(1);
plot(t,x);
title('Gaussian Pulse Signal');
xlabel('Time (s)');
ylabel('Amplitude');

%Generation of 2D LIDAR
x = linspace(-2,2);
ranges = abs((1.5).*x.^2 + 5);
ranges(45:55) = 3.5;
angles = linspace(-pi/2,pi/2,numel(ranges));
scan = lidarScan(ranges,angles);
plot(scan)

%Generation of 2D Binary image:
% create black and white image
clc;% clear command window
clear all;% clear workspace
close all;% clear all figures
w = ones(64,64);
b = zeros(64,64);
bin1= [w b w b
b w b w
w b w b
b w b w];
bin2 = [w b w b
w b w b
w b w b
w b w b];
subplot(2,2,1);subimage(bin1); title('binary image 1');
subplot(2,2,2);subimage(bin2); title('binary image 2');
imwrite(bin1,'bin_image1.tif');
imwrite(bin2,'bin_image2.tif');
i1 = not(bin1);
i2 = not(bin2);
% for block & white image use subimage
subplot(2,2,3);subimage(i1); title('inverted image 1');
subplot(2,2,4);subimage(i2); title('inverted image 2');
%rgb2gray
clc; % clear command window
clear all;% clear workspace
close all;% clear all figures
I1=imread('D:\waterlily.jpg');
figure;
imshow(I1);
title('color image');
I2=rgb2gray(I1);
figure;
imshow(I2);
title('Gray image');
subplot(2,2,1);subimage(I1); title('Color Image');
subplot(2,2,2);subimage(I2); title('Gray Image');


% reading and displaying color image
clc;% clear command window
clear all; close all;
a = imread('D:\waterlily.jpg');
[row col dim] = size(a);
figure(1); imshow(a); title('original image');
red = a(:,:,1);% gray scale image of the red plane
green = a(:,:,2);% gray scale image of the green plane
blue = a(:,:,3);% gray scale image of the blue plane
plane = zeros(row,col);
RED = cat(3,red,plane,plane);
GREEN = cat(3,plane,green,plane);
BLUE = cat(3,plane,plane,blue);
figure(3);
subplot(1,3,1);imshow(RED),title('red image');
subplot(1,3,2);imshow(GREEN),title('green image');
subplot(1,3,3);imshow(BLUE),title('blue image');
