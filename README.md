# 314-plots

This is a collection of plots used for MATH 314: "Introduction to
Fourier Methods and Partial Differential Equations" at Simon Fraser
University. Any x.x.x numbering refers to problem numbers from the
textbook Partial Differential Equations (2nd Edition) by Mark S.
Gockenbach.

Most of the solutions are cooked up by hand, and usually with help of
Maple; the plotting of the solutions is done in MATLAB. Only the MATLAB
code is included in the repository. Some of the MATLAB code is not as
efficient as it could be; there's usually a trade-off between
convenience, flexibility, and efficiency—and for this code efficiency
hasn't been the top priority. So long as a given piece of code runs in a
reasonable amount of time—say, <1s—I'm happy.

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

## Problem set 3

### Part (a)

Plots of solutions of IBVPs for different points in time.

#### 6.1.4

[[ plot ]](ps3/figs/parta/6_1_4.png)

![equation](https://latex.codecogs.com/gif.latex?%5Cbegin%7Baligned%7D%20%5Cfrac%20%7B%20%5Cpartial%20u%20%7D%20%7B%20%5Cpartial%20t%20%7D%20-%20%5Cfrac%20%7B%20%5Cpartial%20%5E%20%7B%202%20%7D%20u%20%7D%20%7B%20%5Cpartial%20x%20%5E%20%7B%202%20%7D%20%7D%20%26%20%3D%20%5Csin%20%28%20t%20%29%20%2C%200%20%3C%20x%20%3C%201%20%2C%20t%20%3E%200%20%5C%5C%20u%20%28%20x%20%2C%200%20%29%20%26%20%3D%200%2C0%20%3C%20x%20%3C%201%20%5C%5C%20u%20%28%200%20%2C%20t%20%29%20%26%20%3D%200%20%2C%20t%20%3E%200%20%5C%5C%20u%20%28%201%20%2C%20t%20%29%20%26%20%3D%200%20%2C%20t%20%3E%200%20%5Cend%7Baligned%7D)

#### 6.1.7

[[ plot ]](ps3/figs/parta/6_1_7.png)

![equation](https://latex.codecogs.com/gif.latex?%5Cbegin%7Baligned%7D%20%5Cfrac%20%7B%20%5Cpartial%20u%20%7D%20%7B%20%5Cpartial%20t%20%7D%20-%20%5Cfrac%20%7B%20%5Cpartial%20%5E%20%7B%202%20%7D%20u%20%7D%20%7B%20%5Cpartial%20x%20%5E%20%7B%202%20%7D%20%7D%20%26%20%3D%200%2C0%20%3C%20x%20%3C%201%20%2C%20t%20%3E%200%20%5C%5C%20u%20%28%20x%20%2C%200%20%29%20%26%20%3D%20x%20%2C%200%20%3C%20x%20%3C%201%20%5C%5C%20u%20%28%200%20%2C%20t%20%29%20%26%20%3D%200%20%2C%20t%20%3E%200%20%5C%5C%20u%20%28%201%20%2C%20t%20%29%20%26%20%3D%20%5Ccos%20%28%20t%20%29%20%2C%20t%20%3E%200%20%5Cend%7Baligned%7D)

#### 6.2.2

[[ plot ]](ps3/figs/parta/6_2_2.png)

![equation](https://latex.codecogs.com/gif.latex?%5Cbegin%7Baligned%7D%20%5Cfrac%20%7B%20%5Cpartial%20u%20%7D%20%7B%20%5Cpartial%20t%20%7D%20-%20%5Cfrac%20%7B%20%5Cpartial%20%5E%20%7B%202%20%7D%20u%20%7D%20%7B%20%5Cpartial%20x%20%5E%20%7B%202%20%7D%20%7D%20%26%20%3D%20%5Cfrac%20%7B%201%20%7D%20%7B%202%20%7D%20-%20x%20%2C%200%20%3C%20x%20%3C%201%20%2C%20t%20%3E%200%20%5C%5C%20u%20%28%20x%20%2C%200%20%29%20%26%20%3D%20x%20%28%201%20-%20x%20%29%20%2C%200%20%3C%20x%20%3C%201%20%5C%5C%20%5Cfrac%20%7B%20%5Cpartial%20u%20%7D%20%7B%20%5Cpartial%20x%20%7D%20%28%200%20%2C%20t%20%29%20%26%20%3D%200%20%2C%20t%20%3E%200%20%5C%5C%20%5Cfrac%20%7B%20%5Cpartial%20u%20%7D%20%7B%20%5Cpartial%20x%20%7D%20%28%201%20%2C%20t%20%29%20%26%20%3D%200%20%2C%20t%20%3E%200%20%5Cend%7Baligned%7D)

### Part (b)

[[ plots ]](ps3/figs/partb/)

Plots of solutions to the modified heat equation for different
values of the parameter α in

![equation](https://latex.codecogs.com/gif.latex?%5Cbegin%7Barray%7D%20%7B%20l%20%7D%20%7B%20u%20_%20%7B%20t%20%7D%20%3D%20u%20_%20%7B%20x%20x%20%7D%20-%20%5Calpha%20u%20%5Cquad%20%5Ctext%20%7B%20on%20%7D%20%5Cquad%200%20%5Cleq%20x%20%5Cleq%201%20%2C%20%5Cquad%20t%20%3E%200%20%7D%20%5C%5C%20%7B%20u%20%28%20x%20%2C%200%20%29%20%3D%20%5Cpsi%20%28%20x%20%29%20%5Cquad%20%5Ctext%20%7B%20for%20%7D%20%5Cquad%200%20%5Cleq%20x%20%5Cleq%201%20%7D%20%5Cend%7Barray%7D)

for Neumann and, separately, periodic boundary conditions, with the
initial condition

![equation](https://latex.codecogs.com/gif.latex?%5Cpsi%28x%29%3D%5Cleft%5C%7B%5Cbegin%7Barray%7D%7Bl%7D%7B1%2C%5Cfrac%7B1%7D%7B4%7D%3Cx%3C%5Cfrac%7B3%7D%7B4%7D%7D%20%5C%5C%20%7B0%2C%20otherwise%7D%5Cend%7Barray%7D%5Cright.)

## Problem set 4

### Part (a)

Plots of the error of the truncated Fourier complex series

![equation](https://latex.codecogs.com/gif.latex?f%20%28%20x%20%29%20-%20%5Csum%20_%20%7B%20n%20%3D%20-%20N%20%7D%20%5E%20%7B%20N%20%7D%20c%20_%20%7B%20n%20%7D%20e%20%5E%20%7B%20i%20n%20x%20%7D)

for different values of N.

#### 12.1.2

[[ plot ]](ps4/figs/parta/12_1_2.png)

![equation](https://latex.codecogs.com/gif.latex?f%28x%29%20%3D%20x)

on the interval [-π, π].

### Part (b)

Plots of the speed of convergence for Fourier series of various
functions.

#### 12.5.1

plots:
[[ f(x) ]](ps4/figs/partb/f.png)
[[ g(x) ]](ps4/figs/partb/g.png)
[[ h(x) ]](ps4/figs/partb/h.png)

![equation](https://latex.codecogs.com/gif.latex?%5Cbegin%7Baligned%7D%20f%28x%29%20%26%3D%7Cx%7C%20%5C%5C%20g%28x%29%20%26%3Dx-x%5E%7B3%7D%20%5C%5C%20h%28x%29%20%26%3D1&plus;x%20%5Cend%7Baligned%7D)

all on the interval [-1, 1].

### Part (c)

Numerical verification that the overshoot in Gibb's phenomenon is ≈9% of
the "distance" of a jump discontinuity.

#### 12.5.5

[[ plot ]](ps4/figs/partc/12_5_5.png)

![equation](https://latex.codecogs.com/gif.latex?f%28x%29%3D%5Cleft%5C%7B%5Cbegin%7Barray%7D%7Bll%7D%7B0%2C%7D%20%26%20%7B-1%20%5Cleq%20x%3C0%7D%20%5C%5C%20%7B1%2C%7D%20%26%20%7B0%20%5Cleq%20x%20%5Cleq%201%7D%5Cend%7Barray%7D%5Cright.)

on the interval [-1, 1].

### Part (d)

Plot of a complex Fourier series.

#### 12.6.2

plots:
[[ real component ]](ps4/figs/partd/real.png)
[[ imaginary component ]](ps4/figs/partd/imag.png)

![equation](https://latex.codecogs.com/gif.latex?%5Csum_%7Bn%3D-%5Cinfty%7D%5E%7B%5Cinfty%7D%20c_%7Bn%7D%20e%5E%7Bi%20n%20%5Cpi%20x%7D)

on the interval (-1, 1) where c_n = 1/n for n ≠ 0 and c_0 = 0.

## Problem set 5

### Part (a)

Plots of the time evolution of solutions to the wave equation.

#### 7.1.3

[[ plot ]](ps5/figs/parta/7_1_3.png)

![equation](https://latex.codecogs.com/gif.latex?%5Cbegin%7Baligned%7D%20%5Cfrac%7B%5Cpartial%5E%7B2%7D%20u%7D%7B%5Cpartial%20t%5E%7B2%7D%7D-c%5E%7B2%7D%20%5Cfrac%7B%5Cpartial%5E%7B2%7D%20u%7D%7B%5Cpartial%20x%5E%7B2%7D%7D%20%26%3D0%2C-%5Cinfty%3Cx%3C%5Cinfty%2C%20t%3E0%20%5C%5C%20u%28x%2C%200%29%20%26%3De%5E%7B-%28x&plus;5%29%5E%7B2%7D%7D&plus;e%5E%7B-%28x-5%29%5E%7B2%7D%7D%2C-%5Cinfty%3Cx%3C%5Cinfty%20%5C%5C%20%5Cfrac%7B%5Cpartial%20u%7D%7B%5Cpartial%20t%7D%28x%2C%200%29%20%26%3D0%2C-%5Cinfty%3Cx%3C%5Cinfty%20%5Cend%7Baligned%7D)

#### 7.1.4

[[ plot ]](ps5/figs/parta/7_1_4.png)

![equation](https://latex.codecogs.com/gif.latex?%5Cbegin%7Baligned%7D%20%5Cfrac%7B%5Cpartial%5E%7B2%7D%20u%7D%7B%5Cpartial%20t%5E%7B2%7D%7D-c%5E%7B2%7D%20%5Cfrac%7B%5Cpartial%5E%7B2%7D%20u%7D%7B%5Cpartial%20x%5E%7B2%7D%7D%20%26%3D0%2C-%5Cinfty%3Cx%3C%5Cinfty%2C%20t%3E0%20%5C%5C%20u%28x%2C%200%29%20%26%3De%5E%7B-%28x&plus;5%29%5E%7B2%7D%7D-e%5E%7B-%28x-5%29%5E%7B2%7D%7D%2C-%5Cinfty%3Cx%3C%5Cinfty%20%5C%5C%20%5Cfrac%7B%5Cpartial%20u%7D%7B%5Cpartial%20t%7D%28x%2C%200%29%20%26%3D0%2C-%5Cinfty%3Cx%3C%5Cinfty%20%5Cend%7Baligned%7D)

### Part (b)

Plot of an unforced string.

#### 7.2.1

[[ plot ]](ps5/figs/partb/7_2_1.png)

![equation](https://latex.codecogs.com/gif.latex?%5Cbegin%7Baligned%7D%20%5Cfrac%7B%5Cpartial%5E%7B2%7D%20u%7D%7B%5Cpartial%20t%5E%7B2%7D%7D-c%5E%7B2%7D%20%5Cfrac%7B%5Cpartial%5E%7B2%7D%20u%7D%7B%5Cpartial%20x%5E%7B2%7D%7D%20%26%3D0%2C0%3Cx%3C25%2C%20t%3E0%20%5C%5C%20u%28x%2C%200%29%20%26%3D%5Cpsi%28x%29%2C%200%3Cx%3C25%20%5C%5C%20%5Cfrac%7B%5Cpartial%20u%7D%7B%5Cpartial%20t%7D%28x%2C%200%29%20%26%3D0%2C0%3Cx%3C25%20%5C%5C%20u%280%2C%20t%29%20%26%3D0%2C%20t%3E0%20%5C%5C%20u%2825%2C%20t%29%20%26%3D0%2C%20t%3E0%20%5Cend%7Baligned%7D)

with

![equation](https://latex.codecogs.com/gif.latex?%5Cpsi%28x%29%3D%5Cfrac%7B1%7D%7B10%7D%5Cleft%281-%5Cfrac%7B2%7D%7B25%7D%5Cleft%7Cx-%5Cfrac%7B25%7D%7B2%7D%5Cright%7C%5Cright%29)

and c = 2500.

### Part (c)

Plot of a Dirchlet string at rest with an initial velocity "kick".

#### 7.2.2

[[ plot ]](ps5/figs/partc/7_2_2.png)

A string with length 50cm, given an initial velocity of

![equation](https://latex.codecogs.com/gif.latex?%5Cgamma%28x%29%3D%5Cleft%5C%7B%5Cbegin%7Barray%7D%7Bll%7D%7B-20%2C%7D%20%26%20%7B24%3Cx%3C26%7D%20%5C%5C%20%7B0%2C%7D%20%26%20%7B0%20%5Cleq%20x%20%5Cleq%2024%20%5Ctext%20%7B%20or%20%7D%2026%20%5Cleq%20x%20%5Cleq%2050%7D%5Cend%7Barray%7D%5Cright.)

where c = 400cm/s.

### Part (d)

Plot of a forced string with various boundary conditions.

#### 7.2.3

[[ plot ]](ps5/figs/partd/7_2_3.png)

![equation](https://latex.codecogs.com/gif.latex?%5Cbegin%7Baligned%7D%20%5Cfrac%7B%5Cpartial%5E%7B2%7D%20u%7D%7B%5Cpartial%20t%5E%7B2%7D%7D-c%5E%7B2%7D%20%5Cfrac%7B%5Cpartial%5E%7B2%7D%20u%7D%7B%5Cpartial%20x%5E%7B2%7D%7D%20%26%3D1000%2C0%3Cx%3C25%2C%20t%3E0%20%5C%5C%20u%28x%2C%200%29%20%26%3D%5Cpsi%28x%29%2C%200%3Cx%3C25%20%5C%5C%20%5Cfrac%7B%5Cpartial%20u%7D%7B%5Cpartial%20t%7D%28x%2C%200%29%20%26%3D0%2C0%3Cx%3C25%20%5C%5C%20u%280%2C%20t%29%20%26%3D0%2C%20t%3E0%20%5C%5C%20%5Cfrac%7B%5Cpartial%20u%7D%7B%5Cpartial%20t%7D%2825%2C%20t%29%20%26%3D0%2C%20t%3E0%20%5Cend%7Baligned%7D)

with

![equation](https://latex.codecogs.com/gif.latex?%5Cpsi%28x%29%3D%5Cfrac%7B1%7D%7B10%7D%5Cleft%281-%5Cfrac%7B2%7D%7B25%7D%5Cleft%7Cx-%5Cfrac%7B25%7D%7B2%7D%5Cright%7C%5Cright%29)

and c = 2500cm/s.

#### 7.2.5

[[ plot ]](ps5/figs/partd/7_2_5.png)

![equation](https://latex.codecogs.com/gif.latex?%5Cbegin%7Baligned%7D%20%5Cfrac%7B%5Cpartial%5E%7B2%7D%20u%7D%7B%5Cpartial%20t%5E%7B2%7D%7D-c%5E%7B2%7D%20%5Cfrac%7B%5Cpartial%5E%7B2%7D%20u%7D%7B%5Cpartial%20x%5E%7B2%7D%7D%20%26%3D1000%2C0%3Cx%3C25%2C%20t%3E0%20%5C%5C%20u%28x%2C%200%29%20%26%3D%5Cpsi%28x%29%2C%200%3Cx%3C25%20%5C%5C%20%5Cfrac%7B%5Cpartial%20u%7D%7B%5Cpartial%20t%7D%28x%2C%200%29%20%26%3D0%2C0%3Cx%3C25%20%5C%5C%20%5Cfrac%7B%5Cpartial%20u%7D%7B%5Cpartial%20t%7D%280%2C%20t%29%20%26%3D0%2C%20t%3E0%20%5C%5C%20%5Cfrac%7B%5Cpartial%20u%7D%7B%5Cpartial%20t%7D%2825%2C%20t%29%20%26%3D0%2C%20t%3E0%20%5Cend%7Baligned%7D)

with

![equation](https://latex.codecogs.com/gif.latex?%5Cpsi%28x%29%3D%5Cfrac%7B1%7D%7B10%7D%5Cleft%281-%5Cfrac%7B2%7D%7B25%7D%5Cleft%7Cx-%5Cfrac%7B25%7D%7B2%7D%5Cright%7C%5Cright%29)

and c = 2500cm/s.

### Part (e)

Plot of an "unphysical" IBVP (i.e., there's a discontinuous IC).

#### 7.2.3

[[ plot ]](ps5/figs/parte/7_2_10.png)

![equation](https://latex.codecogs.com/gif.latex?%5Cbegin%7Baligned%7D%20%5Cfrac%7B%5Cpartial%5E%7B2%7D%20v%7D%7B%5Cpartial%20t%5E%7B2%7D%7D-c%5E%7B2%7D%20%5Cfrac%7B%5Cpartial%5E%7B2%7D%20v%7D%7B%5Cpartial%20x%5E%7B2%7D%7D%20%26%3D0%2C0%3Cx%3C50%2C%20t%3E0%20%5C%5C%20v%28x%2C%200%29%20%26%3D%5Cpsi%28x%29%2C%200%3Cx%3C50%20%5C%5C%20%5Cfrac%7B%5Cpartial%20v%7D%7B%5Cpartial%20t%7D%28x%2C%200%29%20%26%3D0%2C0%3Cx%3C50%20%5C%5C%20v%280%2C%20t%29%20%26%3D0%2C%20t%3E0%20%5C%5C%20v%2850%2C%20t%29%20%26%3D0%2C%20t%3E0%20%5Cend%7Baligned%7D)

with

![equation](https://latex.codecogs.com/gif.latex?%5Cpsi%28x%29%3D%5Cleft%5C%7B%5Cbegin%7Barray%7D%7Bll%7D%7B-1%2C%7D%20%26%20%7B24%3Cx%3C26%7D%20%5C%5C%20%7B0%2C%7D%20%26%20%7B0%20%5Cleq%20x%20%5Cleq%2024%20%5Ctext%20%7B%20or%20%7D%2026%20%5Cleq%20x%20%5Cleq%2050%7D%5Cend%7Barray%7D%5Cright.)

and c = 1cm/s.

### Part (f)

Plot of an iron bar's displacement (see the textbook for details about
physical constants, etc.).

#### 7.4.3

plots:
[[ least resonant frequency ]](ps5/figs/partf/resonant.png)
[[ quarter of least resonant frequency ]](ps5/figs/partf/nonresonant.png)

An iron bar subject to an oscillatory pressure

![equation](https://latex.codecogs.com/gif.latex?k%20%5Cfrac%7B%5Cpartial%20u%7D%7B%5Cpartial%20x%7D%280%2C%20t%29%3DB%20%5Csin%20%282%20%5Cpi%20%5Comega%20t%29%2C%20t%3E0)

### Part (g)

Plot of a periodically forced IBVP.

#### 7.4.5

[[ plot ]](ps5/figs/partg/7_3_5.png)

![equation](https://latex.codecogs.com/gif.latex?%5Cbegin%7Baligned%7D%20%5Cfrac%7B%5Cpartial%5E%7B2%7D%20u%7D%7B%5Cpartial%20t%5E%7B2%7D%7D-c%5E%7B2%7D%20%5Cfrac%7B%5Cpartial%5E%7B2%7D%20u%7D%7B%5Cpartial%20x%5E%7B2%7D%7D%20%26%3Df%28x%2C%20t%29%2C%200%3Cx%3C1%2C%20t%3E0%20%5C%5C%20u%28x%2C%200%29%20%26%3D0%2C0%3Cx%3C1%20%5C%5C%20%5Cfrac%7B%5Cpartial%20u%7D%7B%5Cpartial%20t%7D%28x%2C%200%29%20%26%3D0%2C0%3Cx%3C1%20%5C%5C%20u%280%2C%20t%29%20%26%3D0%2C%20t%3E0%20%5C%5C%20u%281%2C%20t%29%20%26%3D0%2C%20t%3E0%20%5Cend%7Baligned%7D)

where

![equation](https://latex.codecogs.com/gif.latex?f%28x%2C%20t%29%3D%5Cleft%5C%7B%5Cbegin%7Barray%7D%7Bcc%7D%7B%5Csin%20%282%20%5Cpi%20%5Comega%20t%29%2C%7D%20%26%20%7B0.6%3Cx%3C0.65%7D%20%5C%5C%20%7B0%7D%20%26%20%7B%5Ctext%20%7B%20otherwise%20%7D%7D%5Cend%7Barray%7D%5Cright.)

c = 55 and omega = 120.

## Problem set 6

### Part (a)

Plots of numerically computed complex Fourier series (using fast
Fourier transforms) for functions f,g: [-l, l] -> ℝ:

![equation](https://latex.codecogs.com/gif.latex?f%28x%29%3De%5E%7Bx%5E%7B3%7D%7D)

![equation](https://latex.codecogs.com/gif.latex?g%28x%29%3De%5E%7B-x%5E%7B4%7D%7D)

#### f(x)

plots:
[[ Fourier series ]](ps6/figs/parta/f_reconstruction.png)
[[ absolute error ]](ps6/figs/parta/f_error.png)

#### g(x)

plots:
[[ Fourier series ]](ps6/figs/parta/g_reconstruction.png)
[[ absolute error ]](ps6/figs/parta/g_error.png)
