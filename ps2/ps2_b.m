% Set x and n values to use
xs = linspace(0, 1, 150);
n = 100;

%% 5.3.1 (a)

u_term = @(x, n) 2/(pi^3*n^3) * (1 + (-1)^(n+1)) * sin(pi*n*x);
uN = compute_series(1, n, 0, u_term, xs);

figure()
hold on

plot(xs, uN, 'k');
title("5.3.1 (a)");

hold off

%% 5.3.1 (b)

u_term = @(x, n) 2/(pi^3*n^3) * (1 + (-1)^(n+1)) * sin(pi*n*x);
uN = xs + compute_series(1, n, 0, u_term, xs);

figure()
hold on

plot(xs, uN, 'k');
title("5.3.1 (b)");

hold off
