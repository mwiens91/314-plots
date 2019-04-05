% Parameters
N = 2^7;

% f

f = @(x) exp(x.^3);
l = 1;

plot_fourier_approximations(f, 'f', N, l);

% g

g = @(x) exp(-x.^4);
l = 4;

plot_fourier_approximations(g, 'g', N, l);
