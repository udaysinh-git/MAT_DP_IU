A1 = 2;            % message signal ampli
Ac = 4;            % carrier signal ampli
fm = 10;           % Message signal freq
fc = 20 * fm;      % Carrier 
fs = 100 * fm;     % Sampling 
Ts = 1 / fs;       % period
t = 0:Ts:5/fm;     % 5 periods of message signal

message = A1 * cos(2 * pi * fm * t);      % Message signal 
carrier = Ac * cos(2 * pi * fc * t);      % Carrier signal
carrierpi = Ac * sin(2 * pi * fc * t);    % Carrier signal to use hilbert

figure('Position', [100, 100, 800, 600]);

subplot(3,1,1);
plot(t, message);
xlabel('Time [sec]');
ylabel('m(t)');
title('Time Domain Message Signal');
grid on;

subplot(3,1,2);
plot(t, carrier);
xlabel('Time [sec]');
ylabel('C(t)');
title('Time Domain Carrier signal');
grid on;

%Fourier Transform of ssb

% Hilbert transform of baseband
mh = imag(hilbert(message));  

% Single Side Band with Upper Side Band  
modt = message .* carrier - mh .* carrierpi; 

subplot(3,1,3);
plot(t, modt, 'r');
xlabel('Time [sec]');
ylabel('SSB y(t)');
title('Time domain SSB SC Modulated Signal ');

