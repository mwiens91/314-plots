% Set x and n values to use
xs = linspace(0, 1, 150);
ns = [1 3 15];
line_styles = ["ko", "k*", "ks"];

% Define functions
h = 1/2 - abs(xs - 1/2);
m = xs - xs.^3;

%% Fourier sine series
% Term functions
h_term = @(x, n) 4/(pi^2*n^2) * sin(n*pi/2) * sin(pi*n*x);
m_term = @(x, n) 12*(-1)^(n + 1) / (pi^3*n^3) * sin(pi*n*x);

% Compute these series for different n values
hNs = compute_many_series(ns, xs, h_term);
mNs = compute_many_series(ns, xs, m_term);

% Plot them
plot_series(xs, ns, h, hNs, line_styles, "h", "h(x) with sine series");
plot_series(xs, ns, m, mNs, line_styles, "m", "m(x) with sine series");

%% Fourier quarter-wave sine series
% Term functions
h_term = @(x, n) 1/(pi^2*(2*n-1)^2) * ...
                 (8*sqrt(2)*(sin(n*pi/2) - cos(n*pi/2)) + 8*(-1)^n) * ...
                 sin((2*n-1)*pi/2*x);
m_term = @(x, n) 64*(-1)^n/(pi^4*(2*n-1)^4) * ...
                 ((n-1/2)^2*pi^2 - 3) * ...
                 sin((2*n-1)*pi/2*x);

% Compute these series for different n values
hNs = compute_many_series(ns, xs, h_term);
mNs = compute_many_series(ns, xs, m_term);

% Plot them
plot_series(xs, ns, h, hNs, line_styles, "h", "h(x) with quarter-wave sine series");
plot_series(xs, ns, m, mNs, line_styles, "m", "m(x) with quarter-wave sine series");

%% Fourier quarter-wave cosine series
% Term functions
h_term = @(x, n) 8/(pi^2*(2*n-1)^2) * ...
                 (sqrt(2)*(sin(pi*n/2) + cos(pi*n/2)) - 1) * ...
                 cos((2*n-1)*pi/2*x);
m_term = @(x, n) 8/((2*n-1)^4*pi^4) * ...
                 (  -4*pi^2*n^2 ...
                    + 4*pi^2*n ...
                    - pi^2 ...
                    + 24*(-1)^(1+n)*n*pi ...
                    - 24 ...
                    + 12*(-1)^n*pi ...
                 ) * ...
                 cos((2*n-1)*pi/2*x);

% Compute these series for different n values
hNs = compute_many_series(ns, xs, h_term);
mNs = compute_many_series(ns, xs, m_term);

% Plot them
plot_series(xs, ns, h, hNs, line_styles, "h", "h(x) with quarter-wave cosine series");
plot_series(xs, ns, m, mNs, line_styles, "m", "m(x) with quarter-wave cosine series");
