---
description: How plot discrete sequence data with Stem plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Stem Plots
display_as: statistical
order: 17
permalink: matlab/stem-plots/
thumnail_github: thumbnail/
layout: base
language: matlab
page_type: u-guide
---

## Plot Single Data Series

Create a stem plot of 50 data values between -2π and 2π. 

```{matlab}
figure
Y = linspace(-2*pi,2*pi,50);
stem(Y)

fig2plotly(gcf)
```

Data values are plotted as stems extending from the baseline and terminating at the data value. The length of `Y` automatically determines the position of each stem on the x-axis. 



<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Multiple Data Series

Plot two data series using a two-column matrix. 

```{matlab}
figure
X = linspace(0,2*pi,50)';
Y = [cos(X), 0.5*sin(X)];
stem(Y)

fig2plotly(gcf)
```

Each column of `Y` is plotted as a separate series, and entries in the same row of `Y` are plotted against the same x value. The number of rows in `Y` automatically generates the position of each stem on the x-axis.



<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Single Data Series at Specified x values

Plot 50 data values of cosine evaluated between 0 and 2π and specify the set of x values for the stem plot. 

```{matlab}
figure
X = linspace(0,2*pi,50)';
Y = cos(X);
stem(X,Y)

fig2plotly(gcf)
```

The first vector input determines the position of each stem on the x-axis. 



<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Multiple Data Series at Specified x values

Plot 50 data values of sine and cosine evaluated between 0 and 2π and specify the set of x values for the stem plot. 

```{matlab}
figure
X = linspace(0,2*pi,50)';
Y = [cos(X), 0.5*sin(X)];
stem(X,Y)

fig2plotly(gcf)
```

The vector input determines the x-axis positions for both data series. 



<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Multiple Data Series at Unique Sets of x values

Plot 50 data values of sine and cosine evaluated at different sets of x values. Specify the corresponding sets of x values for each series. 

```{matlab}
figure
x1 = linspace(0,2*pi,50)';
x2 = linspace(pi,3*pi,50)';
X = [x1, x2];
Y = [cos(x1), 0.5*sin(x2)];
stem(X,Y)

fig2plotly(gcf)
```

Each column of `X` is plotted against the corresponding column of `Y`. 



<!--------------------- EXAMPLE BREAK ------------------------->

## Fill in Plot Markers

Create a stem plot and fill in the circles that terminate each stem. 

```{matlab}
X = linspace(0,10,20)';
Y = (exp(0.25*X));
stem(X,Y,'filled')

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Stem and Marker Options

Create a stem plot and set the line style to a dotted line, the marker symbols to diamonds, and the color to red using the `LineSpec` option. 

```{matlab}
figure
X = linspace(0,2*pi,50)';
Y = (exp(X).*sin(X));
stem(X,Y,':diamondr')

fig2plotly(gcf)
```

To color the inside of the diamonds, use the `'fill'` option. 



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Additional Stem and Marker Options

Create a stem plot and set the line style to a dot-dashed line, the marker face color to red, and the marker edge color to green using `Name,Value` pair arguments. 

```{matlab}
figure
X = linspace(0,2*pi,25)';
Y = (cos(2*X));
stem(X,Y,'LineStyle','-.',...
     'MarkerFaceColor','red',...
     'MarkerEdgeColor','green')

fig2plotly(gcf)
```

The stem remains the default color. 



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Axes for Stem Plot

Starting in R2019b, you can display a tiling of plots using the `tiledlayout` and `nexttile` functions. Call the `tiledlayout` function to create a 2-by-1 tiled chart layout. Call the `nexttile` function to create the axes objects `ax1` and `ax2`. Create separate stem plots in the axes by specifying the axes object as the first argument to `stem`.

```{matlab}
x = 0:25;
y1 = exp(0.1*x); 
y2 = -exp(.05*x);
tiledlayout(2,1)

% Top plot
ax1 = nexttile;
stem(ax1,x,y1)

% Bottom plot
ax2 = nexttile;
stem(ax2,x,y2)

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Modify Stem Series After Creation

Create a 3-D stem plot and return the stem series object.

```{matlab}
X = linspace(0,2);
Y = X.^3;
Z = exp(X).*cos(Y);
h = stem3(X,Y,Z,'filled');

fig2plotly(gcf)
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

fig2plotly(gcf)
```



<!--------------------- EXAMPLE BREAK ------------------------->

## Adjust Baseline Properties

Create a stem plot and change properties of the baseline. 

```{matlab}
X = linspace(0,2*pi,50);
Y = exp(0.3*X).*sin(3*X);
h = stem(X,Y);

fig2plotly(gcf)
```

Change the line style of the baseline. Use dot notation to set properties.

```{matlab}
X = linspace(0,2*pi,50);
Y = exp(0.3*X).*sin(3*X);
h = stem(X,Y);

hbase = h.BaseLine; 
hbase.LineStyle = '--';

fig2plotly(gcf)
```

Hide the baseline by setting its `Visible` property to `'off'` . 

```{matlab}
X = linspace(0,2*pi,50);
Y = exp(0.3*X).*sin(3*X);
h = stem(X,Y);

hbase = h.BaseLine; 
hbase.LineStyle = '--';

hbase.Visible = 'off';

fig2plotly(gcf)
```



<!--------------------- EXAMPLE BREAK ------------------------->

## Change Baseline Level

Create a stem plot with a baseline level at 2. 

```{matlab}
X = linspace(0,2*pi,50)';
Y = (exp(0.3*X).*sin(3*X));
stem(X,Y,'BaseValue',2);

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

