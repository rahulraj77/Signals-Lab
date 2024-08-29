#i. read audio file from google drive 
import librosa #librosa is a Python package for music and audio processing 
import librosa.display # 
import IPython.display as ipd #to play the audio signal 
import matplotlib.pyplot as plt #plot the audio signal in time domain 
ipd.Audio('/content/drive/MyDrive/ColabNotebooks/trainingdatasets/cars001.wav') #load a local WAV file
audio_path=('/content/drive/MyDrive/ColabNotebooks/trainingdatasets/cars001.wav') 
x , sr = librosa.load(audio_path) # 22050Hz

#ii. measure the duration of the audio signal 
ipd.Audio('/content/drive/MyDrive/ColabNotebooks/trainingdatasets/cars001.wav') #Duration of audio file 
y=len(x) #number of samples x 
print(y) #print(len(x)) 
y1=sr #sampling frequency sr 
print(y1) duration_of_sound=y/y1 #number of samples/sampling frequency 
print(duration_of_sound,"second") 
#Output: 5.9346938775510205 second 

#iii. Amplitude variation of signal in time domain 
plt.figure(figsize=(14, 5)) #variable to change the x and y axix range 
plt.grid(True ) #plotting the sampled signal 
librosa.display.waveshow(x) 
plt.xlabel("Time") 
plt.ylabel("Amplitude") 
plt.title("Time Domain Anlysis of Audio file")

#iv. Spectrogram representation of Audio signal 
X = librosa.stft(x) #converting into energy levels(dB) 
Xdb = librosa.amplitude_to_db(abs(X)) 
plt.figure(figsize=(20, 5)) 
librosa.display.specshow(Xdb, sr=sr, x_axis='time', y_axis='hz') 
plt.colorbar() 

#v. Mel Frequency Cepstral Coefficients (MFCC ) 
librosa.load('/content/drive/MyDrive/ColabNotebooks/training datasets/cars001.wav') 
mfccs = librosa.feature.mfcc(y=x, sr=sr, n_mfcc=40) 
plt.figure(figsize=(10,4)) 
librosa.display.specshow(mfccs, x_axis="time") 
plt.colorbar()
plt.title('MFCC') 
plt.tight_layout() 
plt.show() 

#vi. Chroma: 
x, sr = librosa.load('/content/drive/MyDrive/Colab Notebooks/training datasets/cars014.wav') 
hop_length = 512 
S = np.abs(librosa.stft(x)) 
chroma = librosa.feature.chroma_stft(S=S, sr=sr) 
plt.figure(figsize=(15, 5)) 
librosa.display.specshow(chroma, x_axis='time', y_axis='chroma', hop_length=hop_length, cmap='coolwarm')
