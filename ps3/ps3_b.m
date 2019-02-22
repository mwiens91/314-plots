% Set values for plotting
xs = linspace(0, 1, 300);
ts = [0, 1, 2, 3];
max_n = 6900;

% Damping terms
as = [-1, 0, 1];

% Initial condition Fourier coefficients
c0 = 1/2;
c = @(n) 2/(n*pi)*(sin(3*n*pi/4) - sin(n*pi/4));
d = @(n) -2/(n*pi)*(cos(3*n*pi/4) - cos(n*pi/4));

% Eigenfunctions
gamma = @(n, x) cos(n*pi*x);
psi = @(n, x) sin(n*pi*x);

% Eigenvalue
lambda = @(n, a) a + n^2*pi^2;

%% 1 (a)

% Fourier sine series terms
n_term = @(x, t, n, a) c(n)*exp(-lambda(n, a)*t)*gamma(n, x);

% Fourier series values for different damping terms
for a = as
  % Fourier series values for different t
  fs = zeros(length(ts), length(xs));
  row = 1;

  for t = ts
    f = c0 * exp(-lambda(0, a) * t);

    for n = 1:max_n
      f = f + n_term(xs, t, n, a);
    end

    fs(row, :) = f;
    row = row + 1;
  end

  % Plotting the computed series
  figure();
  plot( ...
    xs, fs(1, :), 'k', ...
    xs, fs(2, :), 'k--', xs, ...
    fs(3, :), 'k:', ...
    xs, fs(4, :), 'k-.' ...
  );

  legend(strcat('u(x, ', string(ts), ')'));
  title(strcat('1(a) with \alpha=', string(a), ' (n=', string(max_n), ')'));
end

%% 1 (b)

% Fourier sine series terms
n_term = @(x, t, n, a) exp(-lambda(n, a)*t)*(c(n)*gamma(n, x)+d(n)*psi(n, x));

% Fourier series values for different damping terms
for a = as
  % Fourier series values for different t
  fs = zeros(length(ts), length(xs));
  row = 1;

  for t = ts
    f = c0 * exp(-lambda(0, a) * t);

    for n = 1:max_n
      f = f + n_term(xs, t, n, a);
    end

    fs(row, :) = f;
    row = row + 1;
  end

  % Plotting the computed series
  figure();
  plot( ...
    xs, fs(1, :), 'k', ...
    xs, fs(2, :), 'k--', xs, ...
    fs(3, :), 'k:', ...
    xs, fs(4, :), 'k-.' ...
  );

  legend(strcat('u(x, ', string(ts), ')'));
  title(strcat('1(b) with \alpha=', string(a), ' (n=', string(max_n), ')'));
end
