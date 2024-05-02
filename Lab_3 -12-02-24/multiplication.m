%multiplication
x=[1 1 1 1];
subplot(3,1,1);
stem(x);
title('X');
y=[1 2 3 4];
subplot(3,1,2);
stem(y);
title('Y');
z=x.*y;
subplot(3,1,3);
stem(z);
title('Z=X*Y');