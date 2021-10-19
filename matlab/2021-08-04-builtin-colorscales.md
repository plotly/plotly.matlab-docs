---
description: How to use Built-in Continuous Color Scales in MATLAB<sup>&reg;</sup> with Plotly.
name: Built-in Continuous Color Scales
display_as: file_settings
order: 27
permalink: matlab/builtin-colorscales/
thumnail_github: thumbnail/heatmap_colorscale.jpg
layout: base
language: matlab
page_type: u-guide
---

## Change Colormap for Figure

Create a surface plot and set the colormap to `winter`. 

```{matlab}
surf(peaks)
colormap winter

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Set Colormap Back to Default

First, change the colormap for the current figure to `summer`. 

```{matlab}
surf(peaks)
colormap summer

fig2plotly(gcf)
```

Now set the colormap back to your system's default value. If you have not specified a different default value, then the default colormap is `parula`. 

```{matlab}
surf(peaks)
colormap default

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Use Different Colormaps for Each Axes in Figure

Starting in R2019b, you can display a tiling of plots using the `tiledlayout` and `nexttile` functions. Call the `tiledlayout` function to create a 2-by-1 tiled chart layout. Call the `nexttile` function to create the axes objects `ax1` and `ax2`. Specify a different colormap for each axes by passing the axes object to the `colormap` function. In the upper axes, create a surface plot using the `spring` colormap. In the lower axes, create a surface plot using the `winter` colormap.

```{matlab}
tiledlayout(2,1)
ax1 = nexttile;
surf(peaks)
colormap(ax1,spring)

ax2 = nexttile; 
surf(peaks)
colormap(ax2,winter)

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Number of Colors for Colormap

Specify the number of colors used in a colormap by passing an integer as an input argument to the built-in colormap. Use five colors from the parula colormap. 

```{matlab}
mesh(peaks)
colormap(parula(5))

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Create Custom Colormap

Create a custom colormap by defining a three-column matrix of values between 0.0 and 1.0. Each row defines a three-element RGB triplet. The first column specifies the red intensities. The second column specifies the green intensities. The third column specifies the blue intensities.

Use a colormap of blue values by setting the first two columns to zeros.

```{matlab}
map = [0 0 0.3
    0 0 0.4
    0 0 0.5
    0 0 0.6
    0 0 0.8
    0 0 1.0];

surf(peaks)
colormap(map)

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Return Colormap Values Used in Plot

Create a surface plot of the `peaks` function and specify a colormap. 

```{matlab}
mesh(peaks)
colormap(autumn(5))

fig2plotly(gcf)
```

Return the three-column matrix of values that define the colors used in the plot. Each row is an RGB triplet color value that specifies one color of the colormap.

```{matlab}
mesh(peaks)
colormap(autumn(5))

cmap = colormap
```





<!--------------------- EXAMPLE BREAK ------------------------->

## Return Colormap Values for Specific Axes

Return the colormap values for a specific axes by passing the axes object to the `colormap` function. 

Create a tiling of two plots using the `tiledlayout` and `nexttile` functions, which are new functions starting in R2019b. Call the `tiledlayout` function to create a 2-by-1 tiled chart layout. Call the `nexttile` function to create the axes objects `ax1` and `ax2`. Then display two filled contour plots with different colormaps.

```{matlab}
tiledlayout(2,1)
ax1 = nexttile;
contourf(peaks)
colormap(ax1,hot(8))

ax2 = nexttile;
contourf(peaks)
colormap(ax2,pink)

fig2plotly(gcf)
```

Return the colormap values used in the upper plot by passing `ax1` to the `colormap` function. Each row is an RGB triplet color value that specifies one color of the colormap.

```{matlab}
tiledlayout(2,1)
ax1 = nexttile;
contourf(peaks)
colormap(ax1,hot(8))

ax2 = nexttile;
contourf(peaks)
colormap(ax2,pink)

cmap = colormap(ax1)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Change Colormap for Figure with Image

Load the `spine` data set that returns the image `X` and its associated colormap `map`. Display `X` using the `image` function and set the colormap to `map`.

```{matlab}
load spine
image(X)
colormap(map)

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

