#i. Read the audio file of ur choice 
import scipy.io.wavfile as wavfile 
import scipy 
import scipy.fftpack as fftpk 
import numpy as np 
from matplotlib import pyplot as plt 
s_rate, signal = wavfile.read('/content/drive/MyDrive/Colab Notebooks/training datasets/Copy of Sad(10).wav') 
FFT = abs(fftpk.fft(signal)) 
freqs = fftpk.fftfreq(len(FFT), (1.0/s_rate)) 
plt.plot(freqs[range(len(FFT)//2)], FFT[range(len(FFT)//2)]) 
plt.xlabel('Frequency (Hz)') 
plt.ylabel('Amplitude')
plt.show() 

#ii. Measure of dispersion – variance – the second moment: 
std = np.std(freqs) 
maxv = np.amax(freqs) 
minv = np.amin(freqs) 
mean = np.mean(freqs)
median = np.median(freqs) 

#iii. Higher order moments – skewness and kurtosis: 
skew = scipy.stats.skew(freqs) 
kurt = scipy.stats.kurtosis(freqs) # identify anomalies and outliers 
q1 = np.quantile(freqs, 0.25) 
q3 = np.quantile(freqs, 0.75) 
mode = scipy.stats.mode(freqs)[0] 
iqr = scipy.stats.iqr(freqs) 
print('mean as:', mean) 
print('std as:',std) 
print('skew as:',skew) 
print('kurt as:',kurt) 
print('q1 as:',q1) 
#Output:mean as: -5.206706237642656e-06
#std as: 0.28867513457916105 
#skew as: 1.9759477879042912e-16 
#kurt as: -1.2000000002602538 
#q1 as: -0.25000260335311886
