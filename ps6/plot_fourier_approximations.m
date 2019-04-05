% Plot complex Fourier series approximations and their error
function plot_fourier_approximations(f, f_name, N, l)
  % Domain and plotting domain
  h = 2*l/N;
  xs_grid = (-l:h:l-h)';
  xs = linspace(-l, l, 2000)';

  % Modes
  modes = pi/l*ifftshift(-N/2:N/2-1);

  % Sample function on grid
  f_vals = f(xs_grid);

  % Get shifted Fourier coefficients
  f_coeff = fft(fftshift(f_vals))/N;
  f_approx = real(exp(1i*modes.*xs) * f_coeff);

  % Plot approximation and errors
  figure();
  plot(xs, f(xs), 'k--', xs, f_approx, 'k');
  legend(f_name, strcat(f_name, ' reconstruction'));
  title(strcat(f_name, ' with reconstruction (N=', num2str(N), ')'));

  figure();
  plot(xs, abs(f(xs) - f_approx), 'k');
  title(strcat("Absolute error for ", f_name, ' reconstruction (N=', num2str(N), ')'));

end
