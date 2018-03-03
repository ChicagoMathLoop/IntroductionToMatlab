h = 0.5;
g = 9.8;
v = 30;
theta = 45;

t = linspace(0,5,1000);

rads = theta * (pi / 180);

x = v * cos(rads) * t;
y = h + ( v * sin(rads) * t ) - (0.5 * g * power(t, 2));

d = x(find(y < 0, 1));

disp(['The ball hits the ground at ', num2str(d), ' meters'])

figure
plot(x,y)
xlabel('distance')
ylabel('height')
title('ball toss')
hold on
plot(linspace(0,max(x)),linspace(0,0),'k--')
