# 314-plots

This is a collection of plots used for MATH 314: "Introduction to
Fourier Methods and Partial Differential Equations" at Simon Fraser
University. Any x.x.x numbering refers to problem numbers from the
textbook Partial Differential Equations (2nd Edition) by Mark S.
Gockenbach.

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
[[ h(x) ]](ps2/figs/h_sine.png)
[[ m(x) ]](ps2/figs/m_sine.png)

The Dirichlet boundary conditions require that the sine series vanish at
the boundaries. It also happens that both h(x) and m(x) vanish at the
boundaries. This explains why the functions and their respective series
agree at the boundaries.

#### Fourier quarter-wave sine series

plots:
[[ h(x) ]](ps2/figs/h_quarter-sine.png)
[[ m(x) ]](ps2/figs/m_quarter-sine.png)

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
[[ h(x) ]](ps2/figs/h_quarter-cosine.png)
[[ m(x) ]](ps2/figs/m_quarter-cosine.png)

The boundary conditions

![equation](https://latex.codecogs.com/gif.latex?u%281%29%20%3D%20%5Cfrac%7Bdu%7D%7Bdx%7D%280%29%3D0)

apply to the quarter-wave cosine series. The behavior at the boundary
conditions are similar to that of the quarter-wave sine series (except
with the boundaries "flipped"). At x = 1, the series vanish, just like
the functions h(x) and m(x), resulting in a good approximation to these
functions around x = 1. At x = 0, the series derivatives vanish, unlike
h(x) and m(x), resulting in a poor approximation around x = 0.

### Part (b)

Plots to the solutions of a bunch of BVPs along on the interval [0, 1].

#### 5.3.1 (a)

[[ plot ]](ps2/figs/5_3_1_a.png)

![equation](https://latex.codecogs.com/gif.latex?-%20%5Cfrac%7Bd%5E2u%7D%7Bdx%5E2%7D%20%3D%201%2C%20u%280%29%20%3D%20u%281%29%20%3D%200)

The boundary conditions are obviously satisfied here, and it is easy to
verify the solution is correct by comparing against the exact solution.

#### 5.3.1 (b)

[[ plot ]](ps2/figs/5_3_1_b.png)

![equation](https://latex.codecogs.com/gif.latex?-%20%5Cfrac%7Bd%5E2u%7D%7Bdx%5E2%7D%20%3D%201%2C%20u%280%29%20%3D%200%2C%20u%281%29%20%3D1)

The boundary conditions are again satisfied. It's obvious here that the
solution is dominated by the term x (you can see from 5.3.1 (a) that the
contribution from the Fourier sine series terms is small).

#### 5.3.3 (b)

[[ plot ]](ps2/figs/5_3_3_b.png)

![equation](https://latex.codecogs.com/gif.latex?-%20%5Cfrac%7Bd%5E2u%7D%7Bdx%5E2%7D%20%3D%20x%2C%20%5Cfrac%7Bdu%7D%7Bdx%7D%280%29%20%3D%200%2C%20u%281%29%20%3D%201)

The boundary conditions are satisfied. Nothing else significant here.

#### 5.3.3 (c)

[[ plot ]](ps2/figs/5_3_3_c.png)

![equation](https://latex.codecogs.com/gif.latex?-%20%5Cfrac%7Bd%5E2u%7D%7Bdx%5E2%7D%20&plus;%202u%20%3D%201%2C%20u%280%29%20%3D%20u%281%29%20%3D%200)

Boundary conditions satisfied. Nothing exciting here.

#### 5.3.3 (d)

[[ plot ]](ps2/figs/5_3_3_d.png)

![equation](https://latex.codecogs.com/gif.latex?-%20%5Cfrac%7Bd%5E2u%7D%7Bdx%5E2%7D%20&plus;%20u%20%3D%200%2C%20u%280%29%20%3D%200%2C%20u%281%29%20%3D%201)

Boundary conditions satisfied. We see here that just like 5.3.1 (b), the
x term in the solution of u is dominating its behaviour.

#### 5.3.4 (c)

[[ plot ]](ps2/figs/5_3_4_c.png)

![equation](https://latex.codecogs.com/gif.latex?-%20%5Cfrac%7Bd%5E2u%7D%7Bdx%5E2%7D%20%3D%20x%20&plus;%20sin%28%5Cpi%20x%29%2C%20u%280%29%20%3D%20%5Cfrac%7Bdu%7D%7Bdx%7D%281%29%20%3D%200)

Boundary conditions are satisfied. Nothing else exciting.

#### 5.3.4 (d)

[[ plot ]](ps2/figs/5_3_4_d.png)

![equation](https://latex.codecogs.com/gif.latex?-%20%5Cfrac%7Bd%5E2u%7D%7Bdx%5E2%7D%20%3D%20f%28x%29%2C%20%5Cfrac%7Bdu%7D%7Bdx%7D%280%29%20%3D%20u%281%29%20%3D%200)

where

![equation](https://latex.codecogs.com/gif.latex?f%28x%29%20%3D%20%5Cleft%5C%7B%5Cbegin%7Bmatrix%7D%201%2C%200%20%3C%20x%20%3C%20%5Cfrac%7B1%7D%7B2%7D%5C%5C%200%2C%20%5Cfrac%7B1%7D%7B2%7D%20%3C%20x%20%3C%201%20%5Cend%7Bmatrix%7D%5Cright.)

Boundary conditions satisfied. The solution makes sense—the function
initially has negative curvature and then has no curvature.
