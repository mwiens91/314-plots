% Compute a series given a term function f(x, n)
function fN = compute_series(start, stop, init, f, x)
  fN = init;

  for n = start:stop
    fN = fN + f(x, n);
  end
end
