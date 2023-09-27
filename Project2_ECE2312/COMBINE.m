function [] = COMBINE()

s1 = audioread('BrownFox.wav');
s2 = audioread('TeamNg_sinetone.wav');

Fs = 44100;

audioinfo('BrownFox.wav')
audioinfo('TeamNg_sinetone.wav')

% Combines the two audio signal
x = s1 + s2(1:length(s1));

plotSpec(x(:,1), Fs, 'Combining Sound');
sound(x, Fs)

% Save to WAV file
audiowrite('TeamNg_speechchirp.wav', x, Fs);
end
