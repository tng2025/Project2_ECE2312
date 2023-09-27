function [] = FUNSINETONE()
Fs = 44100;                  % samples per second
t = (0:1/Fs:5)';             % seconds (0: dt: stopTime)
   
Fc_all = [7500, 6500, 5200, 1800, 1200];
t_all = [0, 0.5, 1.25, 2.25, 3, 5];

% Creates the signal
for i = 1:length(t_all) -1
    del_t = t_all(i):1/Fs:t_all(i+1);
    wo = 2*pi*Fc_all(i);     % omega, angular frequency
    
    if i == 1
        x = sin(wo*del_t);   % The first time segment geneartes a sine wave
    else
        x = cat(2, x, sin(wo*del_t)); % Concatenates the new sine wave
    end
    
    length(x)
end

length(x)
length(t)

% Plot the signal vs time
figure;
plot(x);
xlabel('Time (Seconds)');
title('Signal vs Time');

plotSpec(x, Fs, 'funsinetone');
sound(x,Fs)

% Save to WAV file
audiowrite('TeamNg_funsinetone.wav', x, Fs);

end
