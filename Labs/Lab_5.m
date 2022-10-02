t = 0:0.1:10
x = exp(-t).*sin(2*pi*t)
y = exp(-2*t).*sin(2*pi*t)

plot(t, x, 'r')
hold on
plot(t, y, 'b')
hold off
