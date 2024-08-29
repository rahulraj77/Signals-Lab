#(a) Program to perform auto correlation and cross correlation
import numpy as np
import matplotlib.pyplot as plt
# First sequence
x = [1, 2, 3, 4, 5]
# Second sequence
y = [2, 4, 6, 8, 10]
# Perform cross-correlation
cross_corr = np.correlate(x, y, mode='full')
print('cross correlation',cross_corr)
Perform auto-correlation
auto_corr = np.correlate(x, x, mode='full')
print('autocorrelation', auto_corr)
# Plotting the results
lags = np.arange(-len(x) + 1, len(x))
plt.stem(lags, cross_corr)
plt.xlabel('Lag')
plt.ylabel('Cross-Correlation')
plt.title('Cross-Correlation of x and y')
plt.grid(True)
plt.show()
plt.stem(lags, auto_corr)
plt.xlabel('Lag')
plt.ylabel('Auto-Correlation')
plt.title('Auto-Correlation of x')
plt.grid(True)
plt.show()
#RESULT
#cross correlation [ 10 28 52 80 110 80 52 28 10]
#auto correlation [ 5 14 26 40 55 40 26 14 5]

#Linear convolution, circular convolution and correlation) without using inbuilt functions
import numpy as np
import matplotlib.pyplot as plt
#Defining functions
def linear_convolution_nf(x,y):
  x_len=len(x)
  y_len=len(y)
  result=[]
  for n in range(x_len+y_len-1):
    res_sum=0
    for k in range(x_len):
      if n-k<y_len and n-k>=0:
        res_sum+=x[k]*y[n-k]
      result.append(res_sum)
    return result

def circular_convolution_nf(x,y):
  if(len(x)!=len(y)):
    Max=max(len(x),len(y))
    x=np.pad(x,(0,Max-len(x)),mode='constant')
    y=np.pad(y,(0,Max-len(y)),mode='constant')
  N=len(x)
  result=[]
  for n in range(N):
    res_sum=0
    for k in range(N):
      res_sum+=x[k]*y[(n-k)%N]
    result.append(res_sum)
  return result

def circular_correlation_nf(x,y):
  N=len(x)
  res=[]
  for n in range(-(N-1),N):
    res_sum=0
    for k in range(N):
      if k-n>=0 and k-n<N:
        res_sum+=x[k] * y[(k-n)]
      res.append(res_sum)
    return res

#Inputs
x1=[1,2,3,4]
x2=[2,3,4,5]
#Printing Outputs
print("Linear convolution of x1 and x2 is:",linear_convolution_nf(x1,x2))
print("Circular convolution of x1 and x2 is:",circular_convolution_nf(x1,x2))
print("Circular correlation of x1 and x2 is:",circular_correlation_nf(x1,x2))
