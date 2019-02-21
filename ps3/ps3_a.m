% Set values for plotting
num_xs = 150;
xs = linspace(0, 1, num_xs);

%% 6.1.4

% Fourier sine series terms
lambda = @(n) n^2 * pi^2;
n_term = @(x, t, n) ...
  2 * (1 - (-1)^n) * ...
  1/(n*pi*(lambda(n)^2 + 1)) * ...
  (lambda(n)*sin(t) - cos(t) + exp(-lambda(n)*t)) * ...
  sin(n*pi*x);

% Fourier series values for different t
ts = [0, 2, 3, 5];
fs = zeros(length(ts), length(xs));
row = 1;

for t = ts
  f = 0;

  for n = 1:100
    f = f + n_term(xs, t, n);
  end

  fs(row, :) = f;
  row = row + 1;
end

% Plotting the computed series
figure();
plot(xs, fs(1, :), 'k', xs, fs(2, :), 'k--', xs, fs(3, :), 'k:', xs, fs(4, :), 'k-.');

legend(strcat('u(x, ', string(ts), ')'));
title('6.1.4');

%% 6.1.7

% Fourier sine series terms
lambda = @(n) n^2 * pi^2;
n_term = @(x, t, n) ...
  2*(-1)^n/(n*pi*(lambda(n)^2 + 1)) * ...
  (-lambda(n)*sin(t) + cos(t) - exp(-lambda(n)*t)) * ...
  sin(n*pi*x);
p = @(x, t) x*cos(t);

% Fourier series values for different t
ts = [0, 2, 3, 5];
fs = zeros(length(ts), length(xs));
row = 1;

for t = ts
  f = 0;

  for n = 1:100
    f = f + n_term(xs, t, n);
  end

  f = f + p(xs, t);

  fs(row, :) = f;
  row = row + 1;
end

% Plotting the computed series
figure();
plot(xs, fs(1, :), 'k', xs, fs(2, :), 'k--', xs, fs(3, :), 'k:', xs, fs(4, :), 'k-.');

legend(strcat('u(x, ', string(ts), ')'));
title('6.1.7');

%% 6.2.2

% Fourier cosine series terms (n > 0)
lambda = @(n) n^2 * pi^2;
n_term = @(x, t, n) ...
  2/lambda(n)*( ...
    (1-(-1)^n)*(1-exp(-lambda(n)*t))/lambda(n) - ...
    (1+(-1)^n)*exp(-lambda(n)*t) ...
  ) * ...
  cos(n*pi*x);
a0 = 1/6;
a0_vec = a0 * ones(1, num_xs);

% Fourier series values for different t
ts = [0, 0.02, 0.04, 0.06];
fs = zeros(length(ts), length(xs));
row = 1;

for t = ts
  f = 0;

  for n = 1:2
    f = f + n_term(xs, t, n);
  end

  f = f + a0;

  fs(row, :) = f;
  row = row + 1;
end

% Plotting the computed series
figure();
plot(xs, fs(1, :), 'k.', xs, fs(2, :), 'k--', xs, fs(3, :), 'k:', xs, fs(4, :), 'k-.', xs, a0_vec, 'k-');

legend([strcat('u(x, ', string(ts), ')'), 'steady state']);
title('6.2.2');
