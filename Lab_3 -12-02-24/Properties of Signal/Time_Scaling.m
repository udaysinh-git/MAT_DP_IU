t=0:0.01:8*pi;
x=sin(t);
subplot(3,1,1)
plot(t,x)
title('Simple Signal')
xlabel('Time')
ylabel('Amplitude')
grid on;
y=sin(t/2);
subplot(3,1,2)
plot(t,y)
title('Expanded Signal')
xlabel('Time')
ylabel('Amplitude')
grid on;
z=sin(t*2) ;
subplot(3,1,3)
plot(t,z)
title('Compressed Signal')
xlabel('Time')
ylabel('Amplitude')
grid on;