---
description: How to make Ternary Plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Ternary Plots
display_as: scientific
order: 4
permalink: matlab/ternary-plots/
thumnail_github: ternary-plots.png
layout: base
language: matlab
page_type: u-guide
---

To make this plot, you'll need the the Ternplot package<br>
from the MATLAB<sup>&reg;</sup> <a href="http://www.mathworks.com/matlabcentral/fileexchange/2299-alchemyst-ternplot">File exchange</a>

## Ternary Contour Plot


```{matlab}
A = [0 .2 .2 .2 0 .6 .75 .9 0 1 .8 .3];
B = [1 .2 .4 .1 0 .4 .05 0 .8 0 .05 .3];
C = [0 .6 .4 .7 1 0 .2 .1 .2 0 .15 .4];
Z = [.1 .5 .1 .2 1 .8 .4 0 .1 .6 1 .7];

fig = figure;
terncontour(A, B, C, Z)
ternlabel('A', 'B', 'C')

fig2plotly(fig, 'strip', false);
```

<!--------------------- EXAMPLE  BREAK ------------------------->

## Ternary Scatter Plot


```{matlab}
OrA = [79.30 54.10 68.64 87.70 80.36 72.98 75.70 78.06 ...
       71.88 66.01 60.82 75.47 66.27 66.72 76.57 76.31];

AnA = [2.53 3.64 2.96 1.94 3.45 1.75 1.74 1.43 0.85 0.88 ...
       0.88 0.86 1.02 1.24 0.71 0.50];

AbA = [18.17 42.26 28.40 10.36 16.19 25.27 22.56 20.51 ...
       27.27 33.11 38.30 23.67 32.71 32.04 22.72 23.19];

OrP = [4.16 8.07 6.60 1.79 4.60 8.81 6.55 6.08 5.77 ...
       6.45 21.69 7.78 6.75 6.85 6.34 6.02];

AnP = [71.81 28.29 39.49 87.15 70.96 26.72 33.76 35.96 ...
       21.00 15.31 4.68 20.04 13.24 15.12 20.66 16.75];

AbP = [24.03 63.64 53.91 11.06 24.44 64.47 59.69 57.96 ...
       73.23 78.24 73.63 72.18 80.01 78.03 73.00 77.23];

OrB = [29.03 68.60 70.91 11.00 34.00 44.47];

AnB = [31.80 10.29 19.49 17.15 10.96 26.72];

AbB = [29.03 60.60 50.91 11.00 24.00 44.47];


fig = figure;
ternplot(OrA, AnA, AbA, 'x', 'markersize', 6)
hold on
ternplot(OrP, AnP, AbP, 'o', 'markersize', 6)
ternplot(OrB, AnB, AbB, '*', 'markersize', 6)
ternlabel('Or','An','Ab')
legend('Alkalai','Plagioclase','Barium')
hold off


fig2plotly(fig, 'strip', false);
```

<!--------------------- EXAMPLE BREAK ------------------------->
