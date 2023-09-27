function [] = CHIRP()
Fs = 44100;                  % samples per second

% Create time signal
t0 = 0;                      % second
t1 = 5;                      % second
t = t0:1/Fs:t1;

% Create swept sine
f0 = 0;                      % Hz
f1 = 8000;                   % second
method = 'linear';
x = chirp(t, f0, t1, f1, method); 

% Plot the signal vs time
figure;
plot(t,x);
xlabel('Time (Seconds)');
title('Chirp Signal vs Time');
plotSpec(x, Fs, 'Chirp Signal vs Time');
sound(x,Fs);
   
% Saving to WAV file
audiowrite('TeamNg_chirp.wav', x, Fs);
end