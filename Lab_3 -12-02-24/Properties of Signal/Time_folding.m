n = 1:1.5:10;
x = sin(n);
y = fliplr(x);
t = -fliplr(n);
subplot(2,1,1)
stem(n,x)
title("Original Signal");
subplot(2,1,2)
stem(t,y)
title('Folded Signal');
