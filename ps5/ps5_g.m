% Set values for plotting
xs = linspace(0, 1, 1000);
ts = linspace(0, 0.01, 4);

% Wave speed and forcing frequency
c = 55;
omega = 120;

% How far to go along the Fourier series
nmax = 1000;

%% 7.3.5

problem_number = '7.3.5';

% Wave function Fourier series
an = @(n, t) (4*(-c*n*sin(pi*omega*t)*cos(pi*omega*t)+sin(c*n*pi*t)*omega))*(cos(3*n*pi*(1/5))-cos(13*n*pi*(1/20)))/(pi^3*(-c^2*n^2+4*omega^2)*c*n^2);

us = zeros(length(ts), length(xs));
row = 1;

for t = ts
  u = 0;

  for n = 1:nmax
    u = u + an(n, t) * sin(n*pi*xs);
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

xlabel('x');
xlim([0, 1]);
legend(strcat('u(x,t) with t=', string(ts)));
title(strcat(problem_number, ' (n=', num2str(nmax), ')'));
