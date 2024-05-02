%Modulating Signal
x = 0:0.02:10;
y = sin(x);
subplot(4,1,1)
plot(x,y);
title('Modulating Signal')
xlabel('t')
ylabel('v(t)')
%Carrier Wave
Period=1/30; % 30 hz
Ts = 0.05*Period;
Fs = 1/Ts;   % Sampling frequency
t=0:Ts:11*Period;
L = length(t);             % Length of signal
S=10+cos(2*pi*100*t+44/180*pi);        % signal generation
subplot(4,1,2)
plot(t,S)
title('Carrier Signal')
xlabel('t')
ylabel('S(t)')
%modulated signal
Ac=2; %carrier amplitude
Am=.5; %message signal amplitude
t=0:0.1:50;
ct=Ac*cos(2*pi*0.5*t); %carrier signal wave
mt=Am*cos(2*pi*.05*t); %message signal wave
MS=ct.*(1+1*mt); %1 being modulation index
subplot(4,1,3);
plot(MS);
title('Modulated signal')
xlabel('t')
ylabel('M(t)')
%Double Sideband Modulation 
m = cos(2 * pi * 0.5 * t); 
sb = m .* cos(2 * pi * 0.5 * t) - mh .* sin(2 * pi * 0.5 * t);
subplot(3,1,4)
plot(sb)
title('Double SideBand Modulation');
xlabel('Time(sec)');
ylabel('Amplitude');