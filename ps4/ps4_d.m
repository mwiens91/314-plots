% Set values for plotting
xs = linspace(-1, 1, 1500);
ns = [10, 50, 200];

% Eigenfunctions
eigenfn = @(n, x) exp(1i*n*pi*x);

%% 12.6.2

problem_number = '12.6.2';

% Fourier series coefficients
cn = @(n) 1/n;

% Fourier series for different truncations; could do this more
% efficiently but I'm not too bothered about it
fs = zeros(length(ns), length(xs));
row = 1;

for n = ns
  f = fs(row, :);

  for k = -n:n
    % c_0 is 0
    if k == 0
      continue
    end

    f = f + cn(k)*eigenfn(k, xs);
  end

  fs(row, :) = f;
  row = row + 1;
end

% Plotting the real and imaginary parts of the function
figure();
plot( ...
  xs, real(fs(1, :)), 'k', ...
  xs, real(fs(2, :)), 'k--', ...
  xs, real(fs(3, :)), 'k:' ...
);

xlabel('x');
legend(strcat('n=', string(ns)));
title(strcat(problem_number, ' (real component)'));

figure();
plot( ...
  xs, imag(fs(1, :)), 'k', ...
  xs, imag(fs(2, :)), 'k--', ...
  xs, imag(fs(3, :)), 'k:' ...
);

xlabel('x');
legend(strcat('n=', string(ns)));
title(strcat(problem_number, ' (imaginary component)'));
