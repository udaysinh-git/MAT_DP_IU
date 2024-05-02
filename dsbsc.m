A1 = 1;            % Message signal amplitude
Ac = 2;            % Carrier signal amplitude
fm = 10;           % Message signal frequenc
fc = 20 * fm;      % Carrier frequency 

fs = 100 * fm;     % Sampling frequency (1000 Hz)
Ts = 1 / fs;       % Sampling period (0.001 sec)
t = 0:Ts:5/fm;     % 5 periods of message signal (period = 1/fm)

% Defining and plotting message and carrier signals
message = A1 * cos(2 * pi * fm * t);  % Message signal 
carrier = Ac * cos(2 * pi * fc * t);  % Carrier signal 

figure;
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

% DSB Modulated signal
modt = 1 * message .* carrier;  % 1 is modulation index

subplot(3,1,3);
plot(t, modt, 'r');
xlabel('Time [sec]');
ylabel('DSBm(t)');
title('Time domain DSB SC Modulated Signal');
grid on;
