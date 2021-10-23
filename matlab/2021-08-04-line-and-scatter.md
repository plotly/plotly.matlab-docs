---
description: How to make Scatter Plots plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Scatter Plots
display_as: basic
order: 1
permalink: matlab/line-and-scatter/
thumnail_github: line-and-scatter.png
layout: base
language: matlab
page_type: u-guide
---

## Create Scatter Plot

Create `x` as 200 equally spaced values between 0 and 3π. Create `y` as cosine values with random noise. Then, create a scatter plot.

```{matlab}
x = linspace(0,3*pi,200);
y = cos(x) + rand(1,200);  
scatter(x,y)

fig2plotly(gcf);
```


<!--------------------- EXAMPLE  BREAK ------------------------->

## Vary Circle Size

Create a scatter plot using circles with different sizes. Specify the size in points squared

```{matlab}
x = linspace(0,3*pi,200);
y = cos(x) + rand(1,200);
sz = linspace(1,100,200);
scatter(x,y,sz)

fig2plotly(gcf);
```

Corresponding elements in `x`, `y`, and `sz` determine the location and size of each circle. To plot all circles with the equal area, specify `sz` as a numeric scalar.



<!--------------------- EXAMPLE BREAK ------------------------->

## Vary Circle Color

Create a scatter plot and vary the circle color. 

```{matlab}
x = linspace(0,3*pi,200);
y = cos(x) + rand(1,200);
c = linspace(1,10,length(x));
scatter(x,y,[],c)

fig2plotly(gcf);
```

Corresponding elements in `x`, `y`, and `c` determine the location and color of each circle. The `scatter` function maps the elements in `c` to colors in the current colormap.



<!--------------------- EXAMPLE BREAK ------------------------->

## Fill the Markers

Create a scatter plot and fill in the markers. `scatter` fills each marker using the color of the marker edge.

```{matlab}
x = linspace(0,3*pi,200);
y = cos(x) + rand(1,200);
sz = 25;
c = linspace(1,10,length(x));
scatter(x,y,sz,c,'filled')

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Marker Symbol

Create vectors `x` and `y` as sine and cosine values with random noise. Then, create a scatter plot and use diamond markers with an area of 140 points squared.

```{matlab}
theta = linspace(0,2*pi,150);
x = sin(theta) + 0.75*rand(1,150);
y = cos(theta) + 0.75*rand(1,150);  
sz = 140;
scatter(x,y,sz,'d')

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Change Marker Color and Line Width

Create vectors `x` and `y` as sine and cosine values with random noise. Create a scatter plot and set the marker edge color, marker face color, and line width.

```{matlab}
theta = linspace(0,2*pi,300);
x = sin(theta) + 0.75*rand(1,300);
y = cos(theta) + 0.75*rand(1,300);  
sz = 40;
scatter(x,y,sz,'MarkerEdgeColor',[0 .5 .5],...
              'MarkerFaceColor',[0 .7 .7],...
              'LineWidth',1.5)

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Vary Transparency Across Data Points

You can vary the transparency of scattered points by setting the `AlphaData` property to a vector of different opacity values. To ensure the scatter plot uses the `AlphaData` values, set the `MarkerFaceAlpha` property to `'flat'`. 

Create a set of normally distributed random numbers. Then create a scatter plot of the data with filled markers. 

```{matlab}
x = randn(1000,1);
y = randn(1000,1);
s = scatter(x,y,'filled');

fig2plotly(gcf);
```

Set the opacity of each point according to its distance from zero.

```{matlab}
x = randn(1000,1);
y = randn(1000,1);
s = scatter(x,y,'filled');

distfromzero = sqrt(x.^2 + y.^2);
s.AlphaData = distfromzero;
s.MarkerFaceAlpha = 'flat';

fig2plotly(gcf);
```



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Target Axes and Marker Type

Starting in R2019b, you can display a tiling of plots using the `tiledlayout` and `nexttile` functions. Call the `tiledlayout` function to create a 2-by-1 tiled chart layout. Call the `nexttile` function to create the axes objects `ax1` and `ax2`. Plot scattered data into each axes. In the bottom scatter plot, specify diamond filled diamond markers.

```{matlab}
x = linspace(0,3*pi,200);
y = cos(x) + rand(1,200);
tiledlayout(2,1)

% Top plot
ax1 = nexttile;
scatter(ax1,x,y)

% Bottom plot
ax2 = nexttile;
scatter(ax2,x,y,'filled','d')

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Modify Scatter Series After Creation

Create a scatter plot and return the scatter series object, `s`.

```{matlab}
theta = linspace(0,1,500);
x = exp(theta).*sin(100*theta);
y = exp(theta).*cos(100*theta);
s = scatter(x,y);

fig2plotly(gcf);
```

Use `s` to query and set properties of the scatter series after it has been created. Set the line width to `0.6` point. Set the marker edge color to blue. Set the marker face color using an RGB triplet color.

```{matlab}
theta = linspace(0,1,500);
x = exp(theta).*sin(100*theta);
y = exp(theta).*cos(100*theta);
s = scatter(x,y);

s.LineWidth = 0.6;
s.MarkerEdgeColor = 'b';
s.MarkerFaceColor = [0 0.5 0.5];

fig2plotly(gcf);
```


## Simple Scatter Plot


```{matlab}
load seamount x y z;

fig = figure;
scatter(x, y, 10, z);

title('Undersea Elevation');
xlabel('Longitude');
ylabel('Latitude');

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Plotting Complex Data (Real and Imaginary Parts)


```{matlab}
x = -2:0.25:2;
z1 = x.^exp(-x.^2);
z2 = 2*x.^exp(-x.^2);
real_z1 = real(z1);
imag_z1 = imag(z1);

real_z2 = real(z2);
imag_z2 = imag(z2);

plot(real_z1,imag_z1,'g*',real_z2,imag_z2,'bo');
title('Plotting Complex Data');

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->



## Thick line on top of points


```{matlab}
fs = 500;

dur = 1;

t = 1 + linspace(-dur,dur,fs);

sig = [t(1:length(t)/2) t(1:length(t)/2)];

sign = sig + 0.1*randn(1,length(sig));

fig = figure;
sp = plot(t,sig,'LineWidth',8);
hold on
sn = plot(t,sign,'ro');

title('Singal Noise');
xlabel('Time (s.)');
ylabel('Amplitude');

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->