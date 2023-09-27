Fs = 44100;                  % samples per second
dt = 1/Fs;                   % seconds per sample
stopTime = 5;                % seconds
t = (0:dt:stopTime-dt)';     % seconds

% Sine Wave
Fc = 5000;                   % Frequency [Hertz]
x = sin(2*pi*Fc*t);

% Plot the signal vs time
figure;
plot(t,x);
xlabel('Time [Seconds]');
title('Signal vs Time');
plotSpec(x(:,1), Fs, "Sine Wave");   
sound(x,Fs)

% Save to WAV file
audiowrite('TeamNg_sinetone.wav', x, Fs);

      
