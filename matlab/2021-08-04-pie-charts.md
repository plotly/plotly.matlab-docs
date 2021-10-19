---
description: How to make Pie Charts plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Pie Charts
display_as: basic
order: 4
permalink: matlab/pie-charts/
thumnail_github: thumbnail/pie-chart.jpg
layout: base
language: matlab
page_type: u-guide
---

## Create Pie Chart with Offset Slices

Create a pie chart of vector `X`.

```{matlab}
X = [1 3 0.5 2.5 2];
pie(X)

fig2plotly(gcf)
```

Offset the second and fourth pie slices by setting the corresponding `explode` elements to 1.

```{matlab}
X = [1 3 0.5 2.5 2];

explode = [0 1 0 1 0];
pie(X,explode)

fig2plotly(gcf)
```



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Text Labels for Pie Chart

Create a pie chart of vector `X` and label the slices.

```{matlab}
X = 1:3;
labels = {'Taxes','Expenses','Profit'};
pie(X,labels)

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Modify Text Label for Pie Chart

Create a labeled pie chart, and then modify the color and font size of the text labels.

```{matlab}
X = 1:3;
labels = {'Taxes','Expenses','Profit'};
p = pie(X,labels)

fig2plotly(gcf)
```


Get the text object for the label 'Profit'. Change its color and font size. Use dot notation to set properties.

```{matlab}
X = 1:3;
labels = {'Taxes','Expenses','Profit'};
p = pie(X,labels)

t = p(6);
t.BackgroundColor = 'cyan';
t.EdgeColor = 'red';
t.FontSize = 14;

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Format for Percentage Labels

Create a pie chart, and specify a format expression to display each label with three digits after the decimal point. To include a percent sign in the labels, specify `'%%'` at the end of the expression.

```{matlab}
X = [1/3 2/3];
pie(X,'%.3f%%')

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Partial Pie Chart

Create a pie chart of vector `X` where the sum of the elements is less than 1.

```{matlab}
X = [0.19 0.22 0.41];
pie(X)

fig2plotly(gcf)
```

`pie` draws a partial pie because the sum of the elements is less than 1.


<!--------------------- EXAMPLE BREAK ------------------------->

## Compare Two Pie Charts

Create vectors `y2010` and `y2011`, that contain financial data for two years. Then create a cell array containing the labels for the values.

```{matlab}
y2010 = [50 0 100 95];
y2011 = [65 22 97 120];
labels = {'Investments','Cash','Operations','Sales'};
```

Create a 1-by-2 tiled chart layout, and display two pie charts that each have a title. Then display a shared legend in the east tile of the layout. To do this, call the `legend` function with a return argument to store the legend object. Then move the legend to the east tile by setting the `Layout.Tile` property to `'east'`.

```{matlab}
y2010 = [50 0 100 95];
y2011 = [65 22 97 120];
labels = {'Investments','Cash','Operations','Sales'};

t = tiledlayout(1,2,'TileSpacing','compact');

% Create pie charts
ax1 = nexttile;
pie(ax1,y2010)
title('2010')

ax2 = nexttile;
pie(ax2,y2011)
title('2011')

% Create legend
lgd = legend(labels);
lgd.Layout.Tile = 'east';

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Categorical Pie Chart with Offsets

Plot a categorical pie chart with offset slices corresponding to categories.

```{matlab}
X = categorical({'North','South','North','East','South','West'});
explode = {'North','South'};
pie(X,explode)

fig2plotly(gcf)
```

Now, use a logical vector to offset the same slices.

```{matlab}
X = categorical({'North','South','North','East','South','West'});

explode = [0 1 1 0];
pie(X,explode)

fig2plotly(gcf)
```



<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Categorical Pie Chart with Labels

Plot a categorical pie chart without any offset slices and label the slices. When `X` is of data type `categorical` you must specify the input argument `explode`. To specify labels without any offset slices, specify `explode` as an empty cell array, and `labels` as the labels.

```{matlab}
X = categorical({'North','South','North','East','South','West'});
explode = {};
labels = {'E','N','S','W'};
pie(X,explode,labels)

fig2plotly(gcf)
```

Now, offset a slice and label all slices.

```{matlab}
X = categorical({'North','South','North','East','South','West'});
explode = {'West'};
labels = {'E','N','S','W'};
pie(X,explode,labels)

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

