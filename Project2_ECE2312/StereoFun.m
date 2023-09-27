function [] = StereoFun()
[y,fs] = audioread('BrownFox.wav');
length(y); %44100*5 = 220500
y1 = y(:,1);

[y,fs] = audioread('TeamNg_sinetone.wav');
y2 = y(:,1) + y1;
newOutput = cat(2,y1,y2);

%saving to WAV file
audiowrite('TeamNg_stereospeechsine.wav', newOutput, fs);

sound(newOutput,fs)

%sample code from project description
plotSpec(y1, fs, 'Left Side Audio: Frequency(Hz) vs. Time(s)');

plotSpec(y2, fs, 'Right Side Audio: Frequency(Hz) vs. Time(s)');
end