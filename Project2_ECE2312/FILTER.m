function [] = FILTER()
comread = audioread('TeamNg_speechchirp.wav');
    
Fs = 44100;
    
target_F = 4000; % plot cuts off at half of target 
sampling_freq = Fs/2; % have to keep this same so we get 5 sec

stopband_st = (target_F+500)/sampling_freq;
passband_end = (target_F-500)/sampling_freq;

F = [0 passband_end stopband_st 1];
A = [1 1 0 0];
lpf = firls(256, F, A);
x = filter(lpf, 1, comread);
    
plotSpec(x(:,1), Fs, 'combine sound with filter');
sound(x, Fs)

% Save to WAV file
audiowrite('TeamNg_filteredspeechsine.wav', x, Fs);

end



