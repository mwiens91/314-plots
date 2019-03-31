% Set values for plotting
xs = linspace(0, 1, 1000);

% Physical constants
c = 3535.534;
k = 90e9;

% How far to go along the Fourier series
nmax = 1000;

%% 7.4.3

problem_number = '7.4.3';

% "Data shift byproduct" function
p = @(x, t) (x-1)*sin(c*pi*t/2)/k;

%%% Resonant case

% Time values for this case
ts = linspace(0, 100000000, 4);

% Wave function Fourier series
a1 = @(t) 8/(k*pi^2)*sin(c*pi*t/2) - 2*(-cos((1/2)*pi*c*t)*c*pi*t+2*sin((1/2)*pi*c*t))/(k*pi^3);
an = @(n, t) 8/(k*pi^2*(2*n-1)^3)*sin(c*(2*n-1)*pi*t/2) - 2*((2*n+cos(pi*c*n*t)-1)*sin((1/2)*pi*c*t)-sin(pi*c*n*t)*cos((1/2)*pi*c*t))/(k*pi^3*(2*n-1)^3*n*(n-1));

us = zeros(length(ts), length(xs));
row = 1;

for t = ts
  u = p(xs, t) + a1(t) * cos(pi*xs/2);

  for n = 2:nmax
    u = u + an(n, t) * cos((2*n-1)*pi*xs/2);
  end

  us(row, :) = u;
  row = row + 1;
end

figure();
plot( ...
  xs, us(1, :), 'k', ...
  xs, us(2, :), 'k:', ...
  xs, us(3, :), 'k-.', ...
  xs, us(4, :), 'k--' ...
)

xlabel('x (m)');
xlim([0, 1]);
legend(strcat('u(x,t) with t=', string(ts), 's'));
title(strcat(problem_number, ' (\omega=\omega_r; n=', num2str(nmax), ')'));

%%% Non-resonant case

% Time values for this case
ts = linspace(0, 2*pi, 4);

% Wave function Fourier series
an = @(n, t) 2/(k*pi^2*(2*n-1)^3)*sin(c*(2*n-1)*pi*t/2) - 2*((8*n-4)*sin((1/8)*pi*c*t)+cos(pi*c*n*t)*sin((1/2)*pi*c*t)-sin(pi*c*n*t)*cos((1/2)*pi*c*t))/(k*pi^3*(2*n-1)^3*(64*n^2-64*n+15));

us = zeros(length(ts), length(xs));
row = 1;

for t = ts
  u = p(xs, t);

  for n = 1:nmax
    u = u + an(n, t) * cos((2*n-1)*pi*xs/2);
  end

  us(row, :) = u;
  row = row + 1;
end

figure();
plot( ...
  xs, us(1, :), 'k', ...
  xs, us(2, :), 'k:', ...
  xs, us(3, :), 'k-.', ...
  xs, us(4, :), 'k--' ...
)

xlabel('x (m)');
xlim([0, 1]);
legend(strcat('u(x,t) with t=', string(ts), 's'));
title(strcat(problem_number, ' (\omega=\omega_r / 4; n=', num2str(nmax), ')'));
