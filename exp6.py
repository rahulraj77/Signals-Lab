#Program to perform linear convolution 
import numpy as np 
#impulse response 
h = [1,2,3,3,2,1] 
#input response 
x = [1,2,3,4,5] 
y = np.convolve(x,h,mode='full') 
print('Linear convolution using NumPy built-in function output response y=\n',y) 
#Results Linear convolution using NumPy built-in function output response y= [ 1 4 10 19 30 36 35 26 14 5] 

#(b) Python program to compute circular convolution of two arrays 
import numpy as np 
import matplotlib.pyplot as plt 
h = [1,2,3,4,5] 
#input response 
x = [1,2,1] 
# Pad sequences to the same length 
N=max(len(x), len(h)) 
x_padded = np.pad(x, (0, N-len(x)), mode='constant') 
h_padded= np.pad(h, (0, N-len(h)), mode='constant') 

# Perform circular convolution using np.fft.ifft() 
X = np.fft.fft(x_padded) 
H = np.fft.fft(h_padded) 
Y = np.fft.ifft(X * H) 
print("Circular Convolution Result:", np.real(Y)) 
# Result of circular convolution is [15 9 8 12 16]
