% Time Delay/ Time Shifting
inc=0.1;
t=-10:inc:10;
f=0.1;
t0=2; % Shift Units
a=2; % Amplitude
x=a*sin(2*pi*f*t);
y=a*sin(2*pi*f*(t-t0));
subplot(311);
hold on;
plot(t,x);
plot(t,y,'r');
title('Original and Shifted Signal');
subplot(312);
plot(t,x);
title('Original SIgnal');
subplot(313);
plot(t,y);
title('Shifted SIgnal');
