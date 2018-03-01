p = 0.99;
k = 0:1000;
geomSeries = p .^ k;
g = sum(power(p,k));
plot(linspace(min(k), max(k)), linspace(g, g),'red')
hold on
plot(k, cumsum(geomSeries),'b')
xlabel('index')
ylabel('sum')
title('Convergence of Geometric Series with p=0.99')
legend('infinite sum','finite sum')

p = 2;
n = 1:500;
pSeries = 1 ./ power(n, p);
P = sum(pSeries);
figure('Color','White')
plot(linspace(min(n), max(n)), linspace(P, P),'red')
hold on
plot(n,cumsum(pSeries),'b')
xlabel('index')
ylabel('sum')
title('Convergence of p-series with p=2')
legend('infinite sum','finite sum')
