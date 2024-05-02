freq=100; %Hz
Period=1/freq;
Ts = 0.05*Period;             % Sampling time
Fs = 1/Ts;            % Sampling frequency
t=0:Ts:11*Period;
t(end)=[];
L = length(t);             % Length of signal
S=10+cos(2*pi*freq*t+44/180*pi);        % signal generation
figure
plot(t,S)
xlabel('t (s)')
ylabel('S(t)')