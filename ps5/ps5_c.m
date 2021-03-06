% Set values for plotting
xs = linspace(0, 50, 1000);
ts = linspace(0, 0.06, 4);

%% 7.2.2

problem_number = '7.2.2';

% Wave speed
c = 400;

% Wave function Fourier series
nmax = 1000;
an = @(n, t) 2000/(c*n^2*pi^2)*(cos(13*n*pi/25)-cos(12*n*pi/25))*sin(c*n*pi*t/50);

us = zeros(length(ts), length(xs));
row = 1;

for t = ts
  u = 0;

  for n = 1:nmax
    u = u + an(n, t) * sin(n*pi*xs/50);
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

xlabel('x (cm)');
xlim([0, 50]);
legend(strcat('u(x,t) with t=', string(ts)));
title(strcat(problem_number, ' (n=', num2str(nmax), ')'));
