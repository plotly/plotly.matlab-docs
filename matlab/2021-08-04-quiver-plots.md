---
description: How to make Quiver Plots plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Quiver Plots
display_as: scientific
order: 10
permalink: matlab/quiver-plots/
thumnail_github: thumbnail/quiver-plot.jpg
layout: base
language: matlab
page_type: u-guide
---

## Create Quiver Plot

Load sample data that represents air currents over North America. For this example, select a subset of the data.

```{matlab}
load('wind','x','y','u','v')
X = x(11:22,11:22,1);
Y = y(11:22,11:22,1);
U = u(11:22,11:22,1);
V = v(11:22,11:22,1);
```

Create a quiver plot of the subset you selected. The vectors `X` and `Y` represent the location of the base of each arrow, and `U` and `V` represent the directional components of each arrow. By default, the `quiver` function shortens the arrows so they do not overlap. Call `axis equal` to use equal data unit lengths along each axis. This makes the arrows point in the correct direction.

```{matlab}
load('wind','x','y','u','v')
X = x(11:22,11:22,1);
Y = y(11:22,11:22,1);
U = u(11:22,11:22,1);
V = v(11:22,11:22,1);

quiver(X,Y,U,V)
axis equal

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Disable Automatic Scaling

By default, the `quiver` function shortens arrows so they do not overlap. Disable automatic scaling so that arrow lengths are determined entirely by `U` and `V` by setting the `scale` argument to `0`.

For instance, create a grid of `X` and `Y` values using the `meshgrid` function. Specify the directional components using these values. Then, create a quiver plot with no automatic scaling.

```{matlab}
[X,Y] = meshgrid(0:6,0:6);
U = 0.25*X;
V = 0.5*Y;
quiver(X,Y,U,V,0)

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Gradient and Contours

Plot the gradient and contours of the function z=xe<sup>-x<sup>2</sup>-y<sup>2</sup></sup>. Use the `quiver` function to plot the gradient and the `contour` function to plot the contours.

First, create a grid of x- and y-values that are equally spaced. Use them to calculate z. Then, find the gradient of z by specifying the spacing between points.

```{matlab}
spacing = 0.2;
[X,Y] = meshgrid(-2:spacing:2);
Z = X.*exp(-X.^2 - Y.^2);
[DX,DY] = gradient(Z,spacing);
```

Display the gradient vectors as a quiver plot. Then, display contour lines in the same axes. Adjust the display so that the gradient vectors appear perpendicular to the contour lines by calling `axis equal`.

```{matlab}
spacing = 0.2;
[X,Y] = meshgrid(-2:spacing:2);
Z = X.*exp(-X.^2 - Y.^2);
[DX,DY] = gradient(Z,spacing);

quiver(X,Y,DX,DY)
hold on
contour(X,Y,Z)
axis equal
hold off

fig2plotly(gcf)
```



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Arrow Color

Create a quiver plot and specify a color for the arrows.

```{matlab}
[X,Y] = meshgrid(-pi:pi/8:pi,-pi:pi/8:pi);
U = sin(Y);
V = cos(X);
quiver(X,Y,U,V,'r')

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Axes for Quiver Plot

Create a grid of `X` and `Y` values and two sets of `U` and `V` directional components.

```{matlab}
[X,Y] = meshgrid(0:pi/8:pi,-pi:pi/8:pi);
U1 = sin(X);
V1 = cos(Y);
U2 = sin(Y);
V2 = cos(X); 
```

Create a tiled layout of plots with two axes, `ax1` and `ax2`. Add a quiver plot and title to each axes. (Before R2019b, use `subplot` instead of `tiledlayout` and `nexttile`.)

```{matlab}
[X,Y] = meshgrid(0:pi/8:pi,-pi:pi/8:pi);
U1 = sin(X);
V1 = cos(Y);
U2 = sin(Y);
V2 = cos(X); 

tiledlayout(1,2)

ax1 = nexttile;
quiver(ax1,X,Y,U1,V1)
axis equal
title(ax1,'Left Plot')

ax2 = nexttile;
quiver(ax2,X,Y,U2,V2)
axis equal
title(ax2,'Right Plot')

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Modify Quiver Plot After Creation

Create a quiver plot and return the quiver object. Then, remove the arrowheads and add dot markers at the base of each arrow.

```{matlab}
[X,Y] = meshgrid(-pi:pi/8:pi,-pi:pi/8:pi);
U = sin(Y);
V = cos(X);

q = quiver(X,Y,U,V);
q.ShowArrowHead = 'off';
q.Marker = '.';

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

