% Parameters
l = 5;
c = 1;
N = 2^9;

% Space and time values
h = 2*l/N;
xs = -l:h:l-h;

ts = linspace(0, 4.2, 3)';

% Wave numbers
kns = pi/l*ifftshift(-N/2:N/2-1);

% Fourier coefficients
u0 = exp(-(xs-1).^4);
u0_coeff = fft(fftshift(u0));
u_coeff = u0_coeff .* cos(c*ts.*kns);

% Solution
u_approx = fftshift(ifft(u_coeff, [], 2, 'symmetric'), 2);

% Plot
figure();
plot(xs, u_approx(1, :), xs, u_approx(2, :), xs, u_approx(3, :));
legend(strcat('u(x,t) with t=', string(ts)));
title(strcat('Numerically computed solution u(x,t) (N=', num2str(N), ')'));
