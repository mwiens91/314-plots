% Set values for plotting
xs = linspace(0, 1, 150);

%% 6.1.4

% Fourier series terms
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

%% 6.1.7

% Fourier series terms
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
