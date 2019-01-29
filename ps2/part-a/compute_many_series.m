% Compute many series given a vector of n values and term function
% f(x, n). Assumes the n values passed in are in ascending order.
function fNs = compute_many_series(ns, x, f)
  % Compute the series for different values of N
  start_n = 1;
  fN = 0;
  fNs = zeros(length(ns), length(x));
  fN_row = 1;

  for n = ns
    % Starting value is additive identity
    fN = fN + compute_series(start_n, n, 0, f, x);

    % Record values for this N
    fNs(fN_row, :) = fN;

    % Set up next iteration
    start_n = n + 1;
    fN_row = fN_row + 1;
  end
end
