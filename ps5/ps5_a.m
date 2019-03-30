% Set values for plotting
xs = linspace(-10, 10, 500);
ts = [0, 2.5, 5];

%% 7.1.3

problem_number = '7.1.3';

% Wave speed
c = 1;

% Wave function
psi = @(x) exp(-(x+5).^2) + exp(-(x-5).^2);
u = @(x, t) 1/2 * (psi(x - c*t) + psi(x + c*t));

% Plotting for different time points
us = zeros(length(ts), length(xs));
row = 1;

for t = ts
  us(row, :) = u(xs, t);

  row = row + 1;
end

figure();
plot( ...
  xs, us(1, :), 'k', ...
  xs, us(2, :), 'k:', ...
  xs, us(3, :), 'k--' ...
)

xlabel('x');
xlim([-10, 10]);
legend(strcat('u(x,t) with t=', string(ts)));
title(strcat(problem_number, ' (c=', num2str(c), ')'));
