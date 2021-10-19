---
description: How to make Continuous Color Scales and Color Bars in MATLAB<sup>&reg;</sup> with Plotly.
name: Continuous Color Scales and Color Bars
display_as: file_settings
order: 20
permalink: matlab/colorscales/
thumnail_github: thumbnail/heatmap_colorscale.jpg
layout: base
language: matlab
page_type: u-guide
---

## Add Colorbar to Graph

Add a colorbar to a surface plot indicating the color scale. 

```{matlab}
surf(peaks)
colorbar

fig2plotly(gcf)
```


By default, the `colorbar` function adds a vertical colorbar to the right side of the graph.



<!--------------------- EXAMPLE BREAK ------------------------->

## Add Horizontal Colorbar to Graph

Add a horizontal colorbar below a plot by specifying the colorbar location as `'southoutside'`.

```{matlab}
contourf(peaks)
colorbar('southoutside')

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Reverse Colorbar Direction

Reverse the direction of values in a colorbar on a graph by setting the `'Direction'` property of the colorbar to `'reverse'`.

```{matlab}
surf(peaks)
colorbar('Direction','reverse')

fig2plotly(gcf)
```

The colorbar values ascend from top to bottom instead of ascending from bottom to top.



<!--------------------- EXAMPLE BREAK ------------------------->

## Display Colorbar Ticks on Opposite Side

Display the colorbar tick marks and tick labels on the side of a colorbar facing the surface plot. 

```{matlab}
surf(peaks)
colorbar('AxisLocation','in')

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Add Colorbars to Tiled Chart Layout

Starting in R2019b, you can display a tiling of plots using the `tiledlayout` and `nexttile` functions. Call the `tiledlayout` function to create a 2-by-1 tiled chart layout. Call the `nexttile` function to create the axes. Then display a surface plot in each axes with a colorbar.

```{matlab}
tiledlayout(2,1)

% Top plot
nexttile 
surf(peaks)
colorbar

% Bottom plot
nexttile
mesh(peaks)
colorbar

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Display Shared Colorbar in Tiled Chart Layout

When you want to share a colorbar between two or more plots, you can display the colorbar in a separate tile of the layout. 

Create filled contour plots of the `peaks` and `membrane` data sets in a tiled chart layout.

```{matlab}
Z1 = peaks;
Z2 = membrane;
tiledlayout(2,1);
nexttile
contourf(Z1)
nexttile
contourf(Z2)

fig2plotly(gcf)
```


Add a colorbar, and move it to the east tile.

```{matlab}
cb = colorbar;
cb.Layout.Tile = 'east';

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Colorbar Ticks and Tick Labels

Add a colorbar to a plot and specify the colorbar tick marks and tick labels. Specify the same number of tick labels as tick marks. If you do not specify enough tick labels, then the `colorbar` function repeats the labels.

```{matlab}
contourf(peaks)
colorbar('Ticks',[-5,-2,1,4,7],...
         'TickLabels',{'Cold','Cool','Neutral','Warm','Hot'})

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Label Colorbar

Add a text label along a colorbar. 

```{matlab}
surf(peaks)
c = colorbar;
c.Label.String = 'Elevation (ft in 1000s)';

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Delete Colorbar

Add a colorbar to a surface plot.

```{matlab}
surf(peaks)
colorbar

fig2plotly(gcf)
```

Delete the colorbar from the surface plot.

```{matlab}
surf(peaks)
colorbar
colorbar('off')

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Hold Color Limits for Multiple Surface Plots

Create two paraboloid surfaces that are vertically offset.

```{matlab}
[X,Y] = meshgrid(-5:.5:5);
Z1 = X.^2 + Y.^2;
Z2 = Z1 + 50;
```

Plot the first paraboloid. Add a colorbar, and hold the axes for the second paraboloid. 


```{matlab}
[X,Y] = meshgrid(-5:.5:5);
Z1 = X.^2 + Y.^2;
Z2 = Z1 + 50;

surf(X,Y,Z1);
colorbar
hold on

caxis('manual');
surf(X,Y,Z2);

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->