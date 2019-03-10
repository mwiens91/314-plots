% Set values for plotting
xs = linspace(-1, 1, 1500);
ns = [10, 50, 200];

% Eigenfunctions
eigenfn = @(n, x) exp(-1i*n*pi*x);

%% 12.5.5

problem_number = '12.5.5';

% Fourier series coefficients
cn = @(n) -1i/(2*pi*n)*((-1)^n - 1);

% Fourier series for different truncations; could do this more
% efficiently but I'm not too bothered about it
fs = zeros(length(ns), length(xs));
row = 1;

for n = ns
  f = fs(row, :);

  for k = -n:n
    % c_0 is 1/2
    if k == 0
      f = f + 1/2;
    else
      f = f + cn(k)*eigenfn(k, xs);
    end
  end

  fs(row, :) = f;
  row = row + 1;
end

% Ignore the imaginary parts (since without error they should be nill)
fs = real(fs);

% Plotting the series and the line y(x) = -0.09
figure();
plot( ...
  xs, fs(1, :), 'k', ...
  xs, fs(2, :), 'k--', ...
  xs, fs(3, :), 'k:', ...
  xs, -0.09*ones(1, length(xs)), 'k-.' ...
);

xlabel('x');
legend([strcat('n=', string(ns)), 'y(x)=-0.09']);
title(problem_number);
