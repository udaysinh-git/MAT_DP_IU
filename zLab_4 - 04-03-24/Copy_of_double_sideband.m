% Modulating Signal
x = 0:0.02:10;
y = sin(x);
subplot(5,2,1)
plot(x,y);
grid on
title('Modulating Signal')
xlabel('t')
ylabel('v(t)')

% Carrier Wave
Period = 1/30; % 30 Hz
Ts = 0.05 * Period;
Fs = 1/Ts;   % Sampling frequency
t = 0:Ts:11*Period;
L = length(t);             % Length of signal
S = 10 + cos(2*pi*100*t+44/180*pi); % Signal generation
subplot(5,2,2)
plot(t,S)
grid on
title('Carrier Signal')
xlabel('t')
ylabel('S(t)')

% Amplitude Modulation (AM)
Ac = 2; % Carrier amplitude
Am = 0.5; % Message signal amplitude
t = 0:0.1:50;
ct = Ac * cos(2*pi*0.5*t); % Carrier signal wave
mt = Am * cos(2*pi*0.05*t); % Message signal wave
MS = ct .* (1 + 1 * mt); % Modulated signal (AM)
subplot(5,2,3);
plot(t, MS);
grid on
title('Modulated signal (AM)')
xlabel('t')
ylabel('M(t)')

% Single Sideband Modulation (SSB)
m = cos(2 * pi * 0.5 * t); 
sb = m .* cos(2 * pi * 0.5 * t) - Am .* sin(2 * pi * 0.5 * t);
subplot(5,2,4)
plot(t, sb)
grid on
title('Single Sideband Modulation (SSB)');
xlabel('Time(sec)');
ylabel('Amplitude');

% Double Sideband Modulation (DSB)
DSB = Ac * (Am * cos(2*pi*0.5*t) .* cos(2*pi*0.05*t));
subplot(5,1,5);
plot(t, DSB);
grid on
title('Double Sideband Modulation (DSB)');
xlabel('Time(sec)');
ylabel('Amplitude');

% Fourier Transform of the Message Signal
N = length(mt);
frequencies = linspace(-Fs/2, Fs/2, N);
MT_fft = fftshift(abs(fft(mt))/N);

% Fourier Transform of the Modulated Signal
MS_fft = fftshift(abs(fft(MS))/N);

% Plot Magnitude Spectrum
subplot(5,2,5); 
plot(frequencies, MT_fft);
grid on
title('Message Signal Magnitude Spectrum');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

subplot(5,2,6);
plot(frequencies, MS_fft);
grid on
title('Modulated Signal Magnitude Spectrum');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
