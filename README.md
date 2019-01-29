# 314-plots

This is a collection of plots used for MATH 314: "Introduction to
Fourier Methods and Partial Differential Equations" at Simon Fraser
University.

## Problem set 2

### Part (a)

Plots of

![equation](https://latex.codecogs.com/gif.latex?%5Cinline%20h%28x%29%20%3D%20%5Cfrac%7B1%7D%7B2%7D%20-%20%5Cleft%20%7C%20x%20-%20%5Cfrac%7B1%7D%7B2%7D%20%5Cright%20%7C)

and

![equation](https://latex.codecogs.com/gif.latex?m%28x%29%20%3D%20x%20-%20x%5E3)

with their respective Fourier sine, quarter-wave sine, and quarter-wave
cosine series defined on the interval [0,1] for different values of N,
along with a bit of commentary.

#### Plots

All of the plots show h(x) or m(x) plotted alongside truncated Fourier
series for N in {1, 3, 15}. The Fourier series at the boundary of the
interval has different behavior for different kinds of Fourier series,
but in general we can see that, regardless of the kind of Fourier
series, their truncations well approximate the function for low N
(demonstrated by N = 3 in the plots) and produce an excellent
approximation for slightly higher values of N (demonstrated by N = 15 in
the plots).

#### Fourier sine series

plots:
[[h(x)]](ps2/figs/h_sine.png)
[[m(x)]](ps2/figs/m_sine.png)

The Dirichlet boundary conditions require that the sine series vanish at
the boundaries. It also happens that both h(x) and m(x) vanish at the
boundaries. This explains why the functions and their respective series
agree at the boundaries.

#### Fourier quarter-wave sine series

plots:
[[h(x)]](ps2/figs/h_quarter-sine.png)
[[m(x)]](ps2/figs/m_quarter-sine.png)

The boundary conditions

![equation](https://latex.codecogs.com/gif.latex?u%280%29%20%3D%20%5Cfrac%7Bdu%7D%7Bdx%7D%281%29%3D0)

require that the quarter-wave sine series vanish at x = 0 (which, like
the sine series, agrees with both h(x) and m(x), making it a good
approximation to h(x) or m(x) in the neighbourhood of x = 0). However,
requiring the derivative vanish at x = 1 does not agree with either h(x)
or m(x), which both have a significantly negative derivative at x = 1;
the result of this is that the quarter-wave sine series fails to
approximate either h(x) or m(x) well in the neighbourhood of x = 1.

#### Fourier quarter-wave cosine series

plots:
[[h(x)]](ps2/figs/h_quarter-cosine.png)
[[m(x)]](ps2/figs/m_quarter-cosine.png)

The boundary conditions

![equation](https://latex.codecogs.com/gif.latex?u%281%29%20%3D%20%5Cfrac%7Bdu%7D%7Bdx%7D%280%29%3D0)

apply to the quarter-wave cosine series. The behavior at the boundary
conditions are similar to that of the quarter-wave sine series (except
with the boundaries "flipped"). At x = 1, the series vanish, just like
the functions h(x) and m(x), resulting in a good approximation to these
functions around x = 1. At x = 0, the series derivatives vanish, unlike
h(x) and m(x), resulting in a poor approximation around x = 0.
