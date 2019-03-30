% Set values for plotting
xs = linspace(0, 25, 1000);
ts = linspace(0, pi, 4);

%% 7.2.3

problem_number = '7.2.3';

% Wave speed
c = 2500;

% Wave function Fourier series
nmax = 1000;
an = @(n, t) (50000000+(-16*sqrt(2)*c^2*pi*(n-1/2)*cos((1/2)*pi*n)+16*sqrt(2)*c^2*pi*(n-1/2)*sin((1/2)*pi*n)-16*c^2*pi*n*(-1)^(1+n)-8*c^2*pi*(-1)^n-50000000)*cos((1/50)*c*(2*n-1)*pi*t))/(5*(2*n-1)^3*pi^3*c^2);

us = zeros(length(ts), length(xs));
row = 1;

for t = ts
  u = 0;

  for n = 1:nmax
    u = u + an(n, t) * sin((2*n-1)*pi*xs/50);
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
xlim([0, 25]);
legend(strcat('u(x,t) with t=', string(ts)));
title(strcat(problem_number, ' (n=', num2str(nmax), ')'));
