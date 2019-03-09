% Set values for plotting
xs = linspace(-pi, pi, 1500);
ns = [10, 20, 40];

%% 12.1.2

problem_number = '12.1.2';

% Fourier series coefficients
cn = @(n) (-1)^(n+1)/n;

% Fourier series for different truncations; could do this more
% efficiently but I'm not too bothered about it
fs = zeros(length(ns), length(xs));
row = 1;

for n = ns
  f = fs(row, :);

  for i = -n:n
    % c_0 is zero
    if i == 0
      continue
    end

    f = f + cn(i)*sin(i*xs);
  end

  fs(row, :) = f;
  row = row + 1;
end

% Compute absolute errors
errors = abs(fs - repmat(xs, length(ns), 1));

% Plotting the errors
figure();
plot(xs, errors(1, :), 'k', xs, errors(2, :), 'k--', xs, errors(3, :), 'k:');

xlabel('x');
xlim([-pi, pi]);
legend(strcat('error for n=', string(ns)));
title(strcat(problem_number, ' absolute error'));
