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

%% 5.3.3 (b)

u_term = @(x, n) 16/((2*n-1)^4*pi^4) * ((2*n-1)*pi*(-1)^(n+1) - 2) * ...
                 cos((2*n-1)*pi/2*x);
uN = 1 + compute_series(1, n, 0, u_term, xs);

figure()
hold on

plot(xs, uN, 'k');
title("5.3.3 (b)");

hold off

%% 5.3.3 (c)

u_term = @(x, n) 2/(n*pi*(n^2*pi^2+2)) * (1+(-1)^(n+1)) * sin(n*pi*x);
uN = compute_series(1, n, 0, u_term, xs);

figure()
hold on

plot(xs, uN, 'k');
title("5.3.3 (c)");

hold off

%% 5.3.3 (d)

u_term = @(x, n) 2*(-1)^n/(n*pi*(n^2*pi^2+1)) * sin(n*pi*x);
uN = xs + compute_series(1, n, 0, u_term, xs);

figure()
hold on

plot(xs, uN, 'k');
title("5.3.3 (d)");

hold off

%% 5.3.4 (c)

u_term = @(x, n) 128*(-1)^(n+1)/(pi^4*(2*n-1)^4*(pi^2*(2*n-1)^2-4)) * ...
                 (pi^2*(n-1/2)^2*cos(1) + (n-1/2)^2*pi^2 - 1) * ...
                 sin((2*n-1)*pi/2*x);
uN = compute_series(1, n, 0, u_term, xs);

figure()
hold on

plot(xs, uN, 'k');
title("5.3.4 (c)");

hold off

%% 5.3.4 (d)

u_term = @(x, n) 4/(pi^3*(2*n-1)^3) * sin((2*n-1)*pi/4) * ...
                 cos((2*n-1)*pi/2*x);
uN = compute_series(1, n, 0, u_term, xs);

figure()
hold on

plot(xs, uN, 'k');
title("5.3.4 (d)");

hold off
