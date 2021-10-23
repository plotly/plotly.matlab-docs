---
description: How to make 3D Horizontal Bar Plots in MATLAB<sup>&reg;</sup> with Plotly.
name: 3D Horizontal Bar Plots
display_as: 3d_charts
order: 16
permalink: matlab/3d-horizontal-bar-plots/
thumnail_github: 3d-horizontal-bar-plots.png
layout: base
language: matlab
page_type: u-guide
---

## Create 3-D Horizontal Bar Graph

Load the data set `count.dat`, which returns a three-column matrix, `count`. Store `Y` as the first ten rows of `count`.

```{matlab}
load count.dat
Y = count(1:10,:);
```

Create a 3-D horizontal bar graph of `Y`. By default, the style is `detached`.

```{matlab}
load count.dat
Y = count(1:10,:);

figure
bar3h(Y)

fig2plotly(gcf, 'TreatAs', 'bar3h');
```


<!--------------------- EXAMPLE  BREAK ------------------------->

## Specify Bar Width for 3-D Horizontal Bar Graph

Load the data set `count.dat`, which returns a three-column matrix, `count`. Store `Y` as the first ten rows of `count`.

```{matlab}
load count.dat;
Y = count(1:10,:);
```

Create a 3-D horizontal bar graph of `Y` and set the bar width to 0.5.

```{matlab}
load count.dat;
Y = count(1:10,:);

width = 0.5;

figure
bar3h(Y,width)
title('Width of 0.5')

fig2plotly(gcf, 'TreatAs', 'bar3h');
```

<!--------------------- EXAMPLE BREAK ------------------------->

## 3-D Horizontal Bar Graph with Grouped Style

Load the data set `count.dat`, which returns a three-column matrix, `count`. Store `Y` as the first ten rows of `count`.

```{matlab}
load count.dat
Y = count(1:10,:);
```

Create a 3-D horizontal bar graph of Y and specify the style option as `grouped`.

```{matlab}
load count.dat
Y = count(1:10,:);

figure
bar3h(Y,'grouped')
title('Grouped Style Option')

fig2plotly(gcf, 'TreatAs', 'bar3h');
```


<!--------------------- EXAMPLE BREAK ------------------------->

## 3-D Horizontal Bar Graph with Stacked Option

Load the data set `count.dat`, which returns a three-column matrix, `count`. Store `Y` as the first ten rows of `count`.

```{matlab}
load count.dat
Y = count(1:10,:);
```

Create a 3-D horizontal bar graph of Y and specify the style option as `stacked`.

```{matlab}
load count.dat
Y = count(1:10,:);

figure
bar3h(Y,'stacked')
title('Stacked Style Option')

fig2plotly(gcf, 'TreatAs', 'bar3h');
```


<!--------------------- EXAMPLE BREAK ------------------------->

