% Plot some truncated Fourier series against a function
function plot_series(xs, ns, f, fNs, line_styles, f_name, title_text)
  figure()
  hold on

  % Plot the original function
  plot(xs, f, 'k');

  % Plot the truncated series
  for i=1:length(ns)
    plot(xs, fNs(i, :), line_styles(i));
  end

  % Set the legend
  legend_labels = [f_name];

  for n = ns
    legend_labels = [legend_labels strcat(f_name, "_{", num2str(n), "}")];
  end

  legend(legend_labels)

  % Set the title
  title(title_text)

  hold off
end
