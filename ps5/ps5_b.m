% Set values for plotting
xs = linspace(0, 25, 500);
ts = 1 ./ linspace(0, 50, 25);

%% 7.2.1

problem_number = '7.2.1';

% Wave speed
c = 2500;

% Wave function Fourier series
nmax = 1000;
an = @(n, t) 4/(5*n^2*pi^2)*sin(n*pi/2)*cos(c*n*pi*t/25);

us = zeros(length(ts), length(xs));
row = 1;

for t = ts
  u = 0;

  for n = 1:nmax
    u = u + an(n, t) * sin(n*pi*xs/25);
  end

  us(row, :) = u;
  row = row + 1;
end

figure();
hold on;

for i = 1:25
  plot(xs, us(i, :), 'k');
end

xlabel('x');
xlim([0, 25]);
title(strcat(problem_number, ' — 25 time snapshots'));

hold off;
