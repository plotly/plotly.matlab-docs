---
description: How to make Contour Plots plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Contour Plots
display_as: scientific
order: 1
permalink: matlab/contour-plots/
thumnail_github: contour-plots.png
layout: base
language: matlab
page_type: u-guide
---

## Contours of a Function

Create matrices `X` and `Y`, that define a grid in the x-y plane. Define matrix `Z` as the heights above that grid. Then plot the contours of `Z`.

```{matlab}
x = linspace(-2*pi,2*pi);
y = linspace(0,4*pi);
[X,Y] = meshgrid(x,y);
Z = sin(X)+cos(Y);

contour(X,Y,Z)

fig2plotly(gcf);
```


<!--------------------- EXAMPLE  BREAK ------------------------->

## Contours at Twenty Levels

Define `Z` as a function of `X` and `Y`. In this case, call the `peaks` function to create `X`, `Y`, and `Z`. Then plot 20 contours of `Z`.

```{matlab}
[X,Y,Z] = peaks;
contour(X,Y,Z,20)

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Contours at One Level

Display the contours of the `peaks` function at `Z = 1`.

```{matlab}
[X,Y,Z] = peaks;
v = [1,1];
contour(X,Y,Z,v)

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Dashed Contour Lines

Create a contour plot of the `peaks` function, and specify the dashed line style.

```{matlab}
[X,Y,Z] = peaks;
contour(X,Y,Z,'--')

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Contours with Labels

Define `Z` as a function of two variables, `X` and `Y`. Then create a contour plot of that function, and display the labels by setting the `ShowText` property to `'on'`.

```{matlab}
x = -2:0.2:2;
y = -2:0.2:3;
[X,Y] = meshgrid(x,y);
Z = X.*exp(-X.^2-Y.^2);
contour(X,Y,Z,'ShowText','on')

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Custom Line Width

Create a contour plot of the `peaks` function. Make the contour lines thicker by setting the `LineWidth` property to `3`. 

```{matlab}
Z = peaks;
[M,c] = contour(Z);
c.LineWidth = 3;

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Contours Over Discontinuous Surface

Insert `NaN` values wherever there are discontinuities on a surface. The `contour` function does not draw contour lines in those regions.

Define matrix `Z` as a sampling of the `peaks` function. Replace all values in column `26` with `NaN` values. Then plot the contours of the modified `Z` matrix.

```{matlab}
Z = peaks;
Z(:,26) = NaN;
contour(Z)

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->


## Contours of Peaks Function

Define `Z` as a function of two variables. In this case, call the `peaks` function to create `Z`. Then display a filled contour plot of `Z`, letting MATLAB® choose the contour levels.

```{matlab}
Z = peaks;
contourf(Z)

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Contours at Ten Levels

Define `Z` as a function of two variables, `X` and `Y`. Then display contours at 10 levels of `Z`.

```{matlab}
x = linspace(-2*pi,2*pi);
y = linspace(0,4*pi);
[X,Y] = meshgrid(x,y);
Z = sin(X) + cos(Y);
contourf(X,Y,Z,10)

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Contours at Specific Levels with Labels

Define `Z` as a function of `X` and `Y`. In this case, call the `peaks` function to create `X`, `Y`, and `Z`. Then display contours at levels `2` and `3`. 

The white region corresponds to the heights less than `2`. The purple region corresponds to heights between `2` and `3`. And the yellow region corresponds to heights that are greater than `3`.

```{matlab}
[X,Y,Z] = peaks(50);
contourf(X,Y,Z,[2 3],'ShowText','on')

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Contours at One Level

Define `Z` as a function of `X` and `Y`. In this case, call the `peaks` function to create `X`, `Y`, and `Z`. Then display contours at `Z = 2`.

```{matlab}
[X,Y,Z] = peaks;
contourf(X,Y,Z,[2 2])

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Dashed Contour Lines

Create a contour plot, and specify the dashed line style.

```{matlab}
[X,Y,Z] = peaks;
contourf(X,Y,Z,'--')

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Custom Line Width

Create a filled contour plot. Make the contour lines thicker by setting the `LineWidth` property to `3`.

```{matlab}
Z = peaks;
[M,c] = contourf(Z);
c.LineWidth = 3;

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Contours Over Discontinuous Surface

Insert `NaN` values wherever there are discontinuities on a surface. The `contourf` function does not draw contour lines in those regions.

Define matrix `Z` as a sampling of the `peaks` function. Replace all values in column `26` with `NaN` values. Then plot the contours of the modified `Z` matrix.

```{matlab}
Z = peaks;
Z(:,26) = NaN;
contourf(Z)

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->


## Contour Plot with Histogram Subplots


```{matlab}
t = linspace(-1, 1.2, 2000);
x = (t.^3)+(0.3.*randn(1, 2000));
y = (t.^6)+(0.3.*randn(1, 2000));

trace1 = struct(...
  'x', x, ...
  'y', y, ...
  'mode', 'markers', ...
  'name', 'points', ...
  'marker', struct(...
    'color', 'rgb(102,0,0)', ...
    'size', 2, ...
    'opacity', 0.4), ...
  'type', 'scatter');

trace2 = struct(...
  'x', x, ...
  'y', y, ...
  'name', 'density', ...
  'ncontours', 20, ...
  'colorscale', 'Hot', ...
  'reversescale', true, ...
  'showscale', false, ...
  'type', 'histogram2dcontour');

trace3 = struct(...
  'x', x, ...
  'name', 'x density', ...
  'marker', struct('color', 'rgb(102,0,0)'), ...
  'yaxis', 'y2', ...
  'type', 'histogram');

trace4 = struct(...
  'y', y, ...
  'name', 'y density', ...
  'marker', struct('color', 'rgb(102,0,0)'), ...
  'xaxis', 'x2', ...
  'type', 'histogram');

data = {trace1, trace2, trace3, trace4};

layout = struct(...
    'showlegend', false, ...
    'autosize', false, ...
    'width', 600, ...
    'height', 550, ...
    'xaxis', struct(...
      'domain', [0, 0.85], ...
      'showgrid', false, ...
      'zeroline', false), ...
    'yaxis', struct(...
      'domain', [0, 0.85], ...
      'showgrid', false, ...
      'zeroline', false), ...
    'margin', struct('t', 50), ...
    'hovermode', 'closest', ...
    'bargap', 0, ...
    'xaxis2', struct(...
      'domain', [0.85, 1], ...
      'showgrid', false, ...
      'zeroline', false), ...
    'yaxis2', struct(...
      'domain', [0.85, 1], ...
      'showgrid', false, ...
      'zeroline', false));

plotly(data, struct('layout', layout));
```

<!--------------------- EXAMPLE BREAK ------------------------->