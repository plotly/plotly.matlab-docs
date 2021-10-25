---
description: How to make 3D Stem Plots in MATLAB<sup>&reg;</sup> with Plotly.
name: 3D Stem Plots
display_as: 3d_charts
order: 19
permalink: matlab/3d-stem-plots/
thumnail_github: 3d-stem-plots.png
layout: base
language: matlab
page_type: u-guide
---

## Row Vector Input

Create a 3-D stem plot of cosine values between -π/2 and π/2 with a row vector input. 

```{matlab}
figure
X = linspace(-pi/2,pi/2,40);
Z = cos(X);
stem3(Z)

fig2plotly(gcf);
```

`stem3` plots elements of `Z` against the same y value at equally space x values. 



<!--------------------- EXAMPLE  BREAK ------------------------->

## Column Vector Input

Create a 3-D stem plot of cosine values between -π/2 and π/2 with a column vector input. 

```{matlab}
figure
X = linspace(-pi/2,pi/2,40)';
Z = cos(X);
stem3(Z)

fig2plotly(gcf);
```

`stem3` plots elements of `Z` against the same x value at equally space y values. 



<!--------------------- EXAMPLE BREAK ------------------------->

## Matrix Input

Create a 3-D stem plot of sine and cosine values between -π/2 and π/2 with a matrix input. 

```{matlab}
figure
X = linspace(-pi/2,pi/2,40);
Z = [sin(X); cos(X)];
stem3(Z)

fig2plotly(gcf);
```

`stem3` plots each row of `Z` against the same y value at equally space x values. 



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Stem Locations with Vector Inputs

Create a 3-D stem plot and specify the stem locations along a curve. Use `view` to adjust the angle of the axes in the figure. 

```{matlab}
figure
X = linspace(-5,5,60);
Y = cos(X);
Z = X.^2;
stem3(X,Y,Z)
view(-8,30)

fig2plotly(gcf);
```

`X` and `Y` determine the stem locations. `Z` determines the marker heights. 



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Stem Locations with Matrix Inputs

Create a 3-D stem plot with matrix data and specify the stem locations in the xy-plane. 

```{matlab}
figure
[X,Y] = meshgrid(0:.1:1);
Z = exp(X+Y);
stem3(X,Y,Z)

fig2plotly(gcf);
```

`X` and `Y` determine the stem locations. `Z` determines the marker heights. 



<!--------------------- EXAMPLE BREAK ------------------------->

## Fill in Markers

Create a 3-D stem plot of cosine values between -π and π and fill in the markers.

```{matlab}
X = linspace(-pi,pi,40);
Z = cos(X);
stem3(Z,'filled')

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Line Style, Marker Symbol, and Color Options

Create a 3-D stem plot of cosine values between -π and π. Use a dashed line style for the stem, set the marker symbols to stars, and set the color to magenta.

```{matlab}
figure
X = linspace(-pi,pi,40);
Z = cos(X);
stem3(Z,'--*m')

fig2plotly(gcf);
```

To specify only two of the three `LineSpec` options, omit the third option from the character vector. For example, `'*m'` sets the marker symbol and the color and uses the default line style.



Create a 3-D stem plot and specify the stem locations along a circle. Set the stem to a dotted line style, the marker symbols to stars, and the color to magenta. 

```{matlab}
figure
theta = linspace(0,2*pi);
X = cos(theta);
Y = sin(theta);
Z = theta;
stem3(X,Y,Z,':*m')

fig2plotly(gcf);
```

`X` and `Y` determine the stem locations. `Z` determines the marker heights. 


<!--------------------- EXAMPLE BREAK ------------------------->

## Additional Style Options

Create a 3-D stem plot of cosine values between -π and π. Set the marker symbols to squares with green faces and magenta edges. 

```{matlab}
figure
X = linspace(-pi,pi,40);
Z = cos(X);
stem3(Z,'Marker','s',...
     'MarkerEdgeColor','m',...
     'MarkerFaceColor','g')

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Stem Plot in Specific Axes

Starting in R2019b, you can display a tiling of plots using the `tiledlayout` and `nexttile` functions. Call the `tiledlayout` function to create a 2-by-1 tiled chart layout. Call the `nexttile` function to create the axes objects `ax1` and `ax2`. Create separate stem plots in the axes by specifying the axes object as the first argument to `stem3`.

```{matlab}
X = linspace(-2,2,50);
Y = X.^3;
Z = exp(X);
tiledlayout(2,1)

% Top plot
ax1 = nexttile;
stem(ax1,X,Z)

% Bottom plot
ax2 = nexttile;  
stem3(ax2,X,Y,Z)

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Modify Stem Series After Creation

Create a 3-D stem plot and return the stem series object.

```{matlab}
X = linspace(0,2);
Y = X.^3;
Z = exp(X).*cos(Y);
h = stem3(X,Y,Z,'filled');

fig2plotly(gcf);
```

Change the color to magenta and set the marker face color to yellow. Use `view` to adjust the angle of the axes in the figure. Use dot notation to set properties.

```{matlab}
X = linspace(0,2);
Y = X.^3;
Z = exp(X).*cos(Y);
h = stem3(X,Y,Z,'filled');

h.Color = 'm';
h.MarkerFaceColor = 'y';
view(-10,35)

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

