---
description: How to make Stair Plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Stair Plots
display_as: basic
order: 20
permalink: matlab/stair-plots/
thumnail_github: stair-plots.png
layout: base
language: matlab
page_type: u-guide
---

## Plot Single Data Series

Create a stairstep plot of sine evaluated at 40 equally spaced values between 0 and 4π. 

```{matlab}
X = linspace(0,4*pi,40);
Y = sin(X);

figure
stairs(Y)

fig2plotly(gcf);
```


The length of `Y` automatically determines and generates the x-axis scale. 



<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Multiple Data Series

Create a stairstep plot of two cosine functions evaluated at 50 equally spaced values between 0 and 4π. 

```{matlab}
X = linspace(0,4*pi,50)';
Y = [0.5*cos(X), 2*cos(X)];

figure
stairs(Y)

fig2plotly(gcf);
```

The number of rows in `Y` automatically determines and generates the x-axis scale. 


<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Single Data Series at Specified x-Values

Create a stairstep plot of a sine wave evaluated at equally spaced values between 0 and 4π. Specify the set of x-values for the plot. 

```{matlab}
X = linspace(0,4*pi,40);
Y = sin(X);

figure
stairs(X,Y)

fig2plotly(gcf);
```

The entries in `Y` are plotted against the corresponding entries in `X`. 



<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Multiple Data Series at Specified x-Values

Create a stairstep plot of two cosine waves evaluated at equally spaced values between 0 and 4π. Specify the set of x-values for the plot. 

```{matlab}
X = linspace(0,4*pi,50)';
Y = [0.5*cos(X), 2*cos(X)];

figure
stairs(X,Y)

fig2plotly(gcf);
```

The first vector input, `X`, determines the x-axis positions for both data series. 



<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Multiple Data Series at Unique Sets of x-Values

Create a stairstep plot of two sine waves evaluated at different values. Specify a unique set of x-values for plotting each data series. 

```{matlab}
x1 = linspace(0,2*pi)';
x2 = linspace(0,pi)';
X = [x1,x2];
Y = [sin(5*x1),exp(x2).*sin(5*x2)];

figure
stairs(X,Y)

fig2plotly(gcf);
```

Each column of `X` is plotted against the corresponding column of `Y`. 



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Line Style, Marker Symbol and Color

Create a stairstep plot and set the line style to a dot-dashed line, the marker symbol to circles, and the color to red. 

```{matlab}
X = linspace(0,4*pi,20);
Y = sin(X);

figure
stairs(Y, '-.or')

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Additional Style Options

Create a stairstep plot and set the line width to 2, the marker symbols to diamonds, and the marker face color to cyan using `Name,Value` pair arguments. 

```{matlab}
X = linspace(0,4*pi,20);
Y = sin(X);

figure
stairs(Y,'LineWidth',2,'Marker','d','MarkerFaceColor','c')

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Axes for Stairstep Plots

Starting in R2019b, you can display a tiling of plots using the `tiledlayout` and `nexttile` functions. Call the `tiledlayout` function to create a 2-by-1 tiled chart layout. Call the `nexttile` function to create the axes objects `ax1` and `ax2`. Create separate stairstep plots in the axes by specifying the axes object as the first argument to `stairs`.

```{matlab}
x = linspace(0,2*pi);
y1 = 5*sin(x);
y2 = sin(5*x);
tiledlayout(2,1)

% Top plot
ax1 = nexttile;
stairs(ax1,x,y1)

% Bottom plot
ax2 = nexttile;  
stairs(ax2,x,y2)

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Modify Stairstep Plot After Creation

Create a stairstep plot of two data series and return the two stair objects.

```{matlab}
X = linspace(0,1,30)';
Y = [cos(10*X), exp(X).*sin(10*X)];
h = stairs(X,Y);

fig2plotly(gcf);
```

Use small circle markers for the first data series. Use magenta filled circles for the second series. Use dot notation to set properties.

```{matlab}
X = linspace(0,1,30)';
Y = [cos(10*X), exp(X).*sin(10*X)];
h = stairs(X,Y);

h(1).Marker = 'o';
h(1).MarkerSize = 4;
h(2).Marker = 'o';
h(2).MarkerFaceColor = 'm';

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Create a Stairstep Plot using plot Function

Evaluate two cosine functions at 50 equally spaced values between 0 and 4π and create a stairstep plot using `plot`. 

```{matlab}
X = linspace(0,4*pi,50)';
Y = [0.5*cos(X), 2*cos(X)];
[xb,yb] = stairs(X,Y);
```

`stairs` returns two matrices of the same size, `xb` and `yb`, but no plot. 

Use `plot` to create the stairstep plot with `xb` and `yb`. 

```{matlab}
X = linspace(0,4*pi,50)';
Y = [0.5*cos(X), 2*cos(X)];
[xb,yb] = stairs(X,Y);

figure
plot(xb,yb)

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

