x = 0:0.5:10;
y = sin(x);
z = cos(x);
za = tan(x);
plot(x, y);
plot(x,z);
plot(x,za);
stem(x,y);
stem(x,z);
stem(x,za);