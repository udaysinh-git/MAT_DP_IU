%amplitude scaling
Period=1/100; % 100 hz
Ts = 0.05*Period;
Fs = 1/Ts;   % Sampling frequency
t=0:Ts:11*Period;
L = length(t);             % Length of signal
S=10+cos(2*pi*100*t+44/180*pi);        % signal generation
plot(t,S)
xlabel('t (s)')
ylabel('S(t)')
