%Time Shifting
t=-10:0.1:10;
f=0.1;
a=2; % Amplitude
x=a*sin(2*pi*0.1*t);
y=a*sin(2*pi*f*(t-2)); % 2 being the shift in unit
subplot(321);
plot(t,x);
title('Original Signal');
subplot(322);
plot(t,y);
title('Shifted Signal');