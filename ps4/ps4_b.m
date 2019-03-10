% Set values for plotting
xs = linspace(-1, 1, 1500);
ns = [10, 20, 40];

% Eigenfunctions
eigenfn = @(n, x) exp(-1i*n*pi*x);

%% 12.5.1

%% f(x)

problem_number = '12.5.1: f(x)';

% Fourier series coefficients
f_cn = @(n) 1/(pi^2*n^2)*((-1)^n - 1);

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
      f = f + f_cn(k)*eigenfn(k, xs);
    end
  end

  fs(row, :) = f;
  row = row + 1;
end

% Ignore the imaginary parts (since without error they should be nill)
fs = real(fs);

% Compute absolute errors
errors = abs(fs - repmat(abs(xs), length(ns), 1));

% Plotting the errors
figure();
plot(xs, errors(1, :), 'k', xs, errors(2, :), 'k--', xs, errors(3, :), 'k:');

xlabel('x');
legend(strcat('error for n=', string(ns)));
title(strcat(problem_number, ' absolute error'));

%% g(x)

problem_number = '12.5.1: g(x)';

% Fourier series coefficients
g_cn = @(n) -6*1i*(-1)^n/(n^3*pi^3);

% Fourier series for different truncations; could do this more
% efficiently but I'm not too bothered about it
gs = zeros(length(ns), length(xs));
row = 1;

for n = ns
  g = gs(row, :);

  for k = -n:n
    % c_0 is 0
    if k == 0
      continue;
    end

    g = g + g_cn(k)*eigenfn(k, xs);
  end

  gs(row, :) = g;
  row = row + 1;
end

% Ignore the imaginary parts (since without error they should be nill)
gs = real(gs);

% Compute absolute errors
errors = abs(gs - repmat(xs - xs.^3, length(ns), 1));

% Plotting the errors
figure();
plot(xs, errors(1, :), 'k', xs, errors(2, :), 'k--', xs, errors(3, :), 'k:');

xlabel('x');
legend(strcat('error for n=', string(ns)));
title(strcat(problem_number, ' absolute error'));

%% h(x)

problem_number = '12.5.1: h(x)';

% Fourier series coefficients
h_cn = @(n) -1i*(-1)^n/(pi*n);

% Fourier series for different truncations; could do this more
% efficiently but I'm not too bothered about it
hs = zeros(length(ns), length(xs));
row = 1;

for n = ns
  h = hs(row, :);

  for k = -n:n
    % c_0 is 1
    if k == 0
      h = h + 1;
    else
      h = h + h_cn(k)*eigenfn(k, xs);
    end
  end

  hs(row, :) = h;
  row = row + 1;
end

% Ignore the imaginary parts (since without error they should be nill)

% Compute absolute errors
errors = abs(hs - repmat(xs + 1, length(ns), 1));

% Plotting the errors
figure();
plot(xs, errors(1, :), 'k', xs, errors(2, :), 'k--', xs, errors(3, :), 'k:');

xlabel('x');
legend(strcat('error for n=', string(ns)));
title(strcat(problem_number, ' absolute error'));
