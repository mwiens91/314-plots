% Set x and n values to use
xs = linspace(0, 1, 150);
ns = [1 3 15];
line_styles = ["ko", "k*", "ks"];

% Define functions
h = 1/2 - abs(xs - 1/2);
m = xs - xs.^3;

% Fourier sine series terms
h_sine_term = @(x, n) 4/(pi^2*n^2) * sin(n*pi/2) * sin(pi*n*x);
m_sine_term = @(x, n) 12*(-1)^(n + 1) / (pi^3*n^3) * sin(n*pi*x);

% Compute these series for different n values
hNs = compute_many_series(ns, xs, h_sine_term);

% Plot them
plot_series(xs, ns, h, hNs, line_styles, "h", "hey");
