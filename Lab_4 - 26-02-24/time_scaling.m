t=0:0.01:8*pi;
x=sin(t);
subplot(3,1,1)
plot(t,x)
title('Simple Signal')
xlabel('T')
ylabel('A')
y=sin(t/2);
subplot(3,1,2)
plot(t,y)
title('Expanded Signal')
xlabel('T')
ylabel('A')
z=sin(t*2) ;
subplot(3,1,3)
plot(t,z)
title('Compressed Signal')
xlabel('T')
ylabel('A')