---
description: How to make 3D Scatter Plots plots in MATLAB<sup>&reg;</sup> with Plotly.
name: 3D Scatter Plots
display_as: 3d_charts
order: 2
permalink: matlab/3d-scatter-plots/
thumnail_github: thumbnail/3d-scatter.jpg
layout: base
language: matlab
page_type: u-guide
---

## Create 3-D Scatter Plot

Create a 3-D scatter plot. Use `sphere` to define vectors `x`, `y`, and `z`. 

```{matlab}
figure
[X,Y,Z] = sphere(16);
x = [0.5*X(:); 0.75*X(:); X(:)];
y = [0.5*Y(:); 0.75*Y(:); Y(:)];
z = [0.5*Z(:); 0.75*Z(:); Z(:)];
scatter3(x,y,z)

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Vary Marker Size

Use `sphere` to define vectors `x`, `y`, and `z`. 

```{matlab}
[X,Y,Z] = sphere(16);
x = [0.5*X(:); 0.75*X(:); X(:)];
y = [0.5*Y(:); 0.75*Y(:); Y(:)];
z = [0.5*Z(:); 0.75*Z(:); Z(:)];
```

Define vector `s` to specify the marker sizes. 

```{matlab}
[X,Y,Z] = sphere(16);
x = [0.5*X(:); 0.75*X(:); X(:)];
y = [0.5*Y(:); 0.75*Y(:); Y(:)];
z = [0.5*Z(:); 0.75*Z(:); Z(:)];

S = repmat([100,50,5],numel(X),1);
s = S(:);
```

Create a 3-D scatter plot and use `view` to change the angle of the axes in the figure. 

```{matlab}
[X,Y,Z] = sphere(16);
x = [0.5*X(:); 0.75*X(:); X(:)];
y = [0.5*Y(:); 0.75*Y(:); Y(:)];
z = [0.5*Z(:); 0.75*Z(:); Z(:)];

S = repmat([100,50,5],numel(X),1);
s = S(:);

figure
scatter3(x,y,z,s)
view(40,35)

fig2plotly(gcf)
```

Corresponding entries in `x`, `y`, `z`, and `s` determine the location and size of each marker. 



<!--------------------- EXAMPLE BREAK ------------------------->

## Vary Marker Color

Use `sphere` to define vectors `x`, `y`, and `z`. 

```{matlab}
[X,Y,Z] = sphere(16);
x = [0.5*X(:); 0.75*X(:); X(:)];
y = [0.5*Y(:); 0.75*Y(:); Y(:)];
z = [0.5*Z(:); 0.75*Z(:); Z(:)];
```

Define vectors `s` and `c` to specify the size and color of each marker. 

```{matlab}
[X,Y,Z] = sphere(16);
x = [0.5*X(:); 0.75*X(:); X(:)];
y = [0.5*Y(:); 0.75*Y(:); Y(:)];
z = [0.5*Z(:); 0.75*Z(:); Z(:)];

S = repmat([50,25,10],numel(X),1);
C = repmat([1,2,3],numel(X),1);
s = S(:);
c = C(:);
```

Create a 3-D scatter plot and use `view` to change the angle of the axes in the figure. 

```{matlab}
[X,Y,Z] = sphere(16);
x = [0.5*X(:); 0.75*X(:); X(:)];
y = [0.5*Y(:); 0.75*Y(:); Y(:)];
z = [0.5*Z(:); 0.75*Z(:); Z(:)];

S = repmat([50,25,10],numel(X),1);
C = repmat([1,2,3],numel(X),1);
s = S(:);
c = C(:);

figure
scatter3(x,y,z,s,c)
view(40,35)

fig2plotly(gcf)
```

Corresponding entries in `x`, `y`, `z`, and `c` determine the location and color of each marker. 



<!--------------------- EXAMPLE BREAK ------------------------->

## Fill in Markers

Create vectors `x` and `y` as cosine and sine values with random noise. 

```{matlab}
z = linspace(0,4*pi,250);
x = 2*cos(z) + rand(1,250);
y = 2*sin(z) + rand(1,250);
```

Create a 3-D scatter plot and fill in the markers. Use `view` to change the angle of the axes in the figure. 

```{matlab}
z = linspace(0,4*pi,250);
x = 2*cos(z) + rand(1,250);
y = 2*sin(z) + rand(1,250);

scatter3(x,y,z,'filled')
view(-30,10)

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Set Marker Type

Initialize the random-number generator to make the output of `rand` repeatable. Define vectors `x` and `y` as cosine and sine values with random noise. 

```{matlab}
rng default
z = linspace(0,4*pi,250);
x = 2*cos(z) + rand(1,250);
y = 2*sin(z) + rand(1,250);
```

Create a 3-D scatter plot and set the marker type. Use `view` to change the angle of the axes in the figure. 

```{matlab}
rng default
z = linspace(0,4*pi,250);
x = 2*cos(z) + rand(1,250);
y = 2*sin(z) + rand(1,250);

figure
scatter3(x,y,z,'*')
view(-30,10)

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Set Marker Properties

Initialize the random-number generator to make the output of `rand` repeatable. Define vectors `x` and `y` as cosine and sine values with random noise. 

```{matlab}
rng default
z = linspace(0,4*pi,250);
x = 2*cos(z) + rand(1,250);
y = 2*sin(z) + rand(1,250);
```

Create a 3-D scatter plot and set the marker edge color and the marker face color. Use `view` to change the angle of the axes in the figure. 

```{matlab}
rng default
z = linspace(0,4*pi,250);
x = 2*cos(z) + rand(1,250);
y = 2*sin(z) + rand(1,250);

figure
scatter3(x,y,z,...
        'MarkerEdgeColor','k',...
        'MarkerFaceColor',[0 .75 .75])
view(-30,10)

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Axes for 3-D Scatter Plot

Starting in R2019b, you can display a tiling of plots using the `tiledlayout` and `nexttile` functions. 

Load the `seamount` data set to get vectors `x`, `y`, and `z`. Call the `tiledlayout` function to create a 2-by-1 tiled chart layout. Call the `nexttile` function to create the axes objects `ax1` and `ax2`. Then create separate scatter plots in the axes by specifying the axes object as the first argument to `scatter3`.

```{matlab}
load seamount
tiledlayout(2,1)
ax1 = nexttile;
ax2 = nexttile;
scatter3(ax1,x,y,z,'MarkerFaceColor',[0 .75 .75])
scatter3(ax2,x,y,z,'*')

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Set Scatter Series Properties Using Handle

Use the `sphere` function to create vectors `x`, `y`, and `z`. 

```{matlab}
[X,Y,Z] = sphere(16);
x = [0.5*X(:); 0.75*X(:); X(:)];
y = [0.5*Y(:); 0.75*Y(:); Y(:)];
z = [0.5*Z(:); 0.75*Z(:); Z(:)];
```

Create vectors `s` and `c` to specify the size and color for each marker.

```{matlab}
[X,Y,Z] = sphere(16);
x = [0.5*X(:); 0.75*X(:); X(:)];
y = [0.5*Y(:); 0.75*Y(:); Y(:)];
z = [0.5*Z(:); 0.75*Z(:); Z(:)];

S = repmat([70,50,20],numel(X),1);
C = repmat([1,2,3],numel(X),1);
s = S(:);
c = C(:);
```

Create a 3-D scatter plot and return the scatter series object. 

```{matlab}
[X,Y,Z] = sphere(16);
x = [0.5*X(:); 0.75*X(:); X(:)];
y = [0.5*Y(:); 0.75*Y(:); Y(:)];
z = [0.5*Z(:); 0.75*Z(:); Z(:)];

S = repmat([70,50,20],numel(X),1);
C = repmat([1,2,3],numel(X),1);
s = S(:);
c = C(:);

h = scatter3(x,y,z,s,c);

fig2plotly(gcf)
```

Use an RGB triplet color value to set the marker face color. Use dot notation to set properties.

```{matlab}
[X,Y,Z] = sphere(16);
x = [0.5*X(:); 0.75*X(:); X(:)];
y = [0.5*Y(:); 0.75*Y(:); Y(:)];
z = [0.5*Z(:); 0.75*Z(:); Z(:)];

S = repmat([70,50,20],numel(X),1);
C = repmat([1,2,3],numel(X),1);
s = S(:);
c = C(:);

h = scatter3(x,y,z,s,c);

h.MarkerFaceColor = [0 0.5 0.5];

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Plotting Spherical Points


```{matlab}
[X,Y,Z] = sphere(16);
x = [0.5*X(:); 0.75*X(:); X(:)];
y = [0.5*Y(:); 0.75*Y(:); Y(:)];
z = [0.5*Z(:); 0.75*Z(:); Z(:)];
scatter3(x,y,z)

fig2plotly(fig)
```

<!--------------------- EXAMPLE BREAK ------------------------->