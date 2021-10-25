---
description: How to make Time Series plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Time Series and Date Axes
display_as: financial
order: 1
permalink: matlab/time-series/
thumnail_github: time-series.png
layout: base
language: matlab
page_type: u-guide
published: false
---

## Plot Timetable Variables

Read data from a spreadsheet to a table. Then convert the table to a timetable. The first variable that contains dates and times, `OutageTime`, provides the row times for the timetable. Display the first five rows.

```{matlab}
tbl = readtable('outages.csv');
tbl = table2timetable(tbl);
head(tbl,5)
```



Sort the timetable so that its row times are in order. The row times of a timetable do not need to be in order. However, if you use the row times as the x-axis of a plot, then it is better to ensure the timetable is sorted by its row times.

```{matlab}
tbl = readtable('outages.csv');
tbl = table2timetable(tbl);

tbl = sortrows(tbl);
head(tbl,5)
```

Create a stacked plot of data from `tbl`. The row times, `OutageTime`, provide the values along the x-axis. The `stackedplot` function plots the values from the `Loss`, `Customers`, and `RestorationTime` variables, with each variable plotted along its own y-axis. However, the plot does not include the `Region` and `Cause` variables because they contain data that cannot be plotted.

```{matlab}
tbl = readtable('outages.csv');
tbl = table2timetable(tbl);

tbl = sortrows(tbl);

stackedplot(tbl)

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Variables

Create a table from patient data. Display the first three rows.

```{matlab}
tbl = readtable('patients.xls');
head(tbl,3)
```



Plot only four of the variables from the table.

```{matlab}
tbl = readtable('patients.xls');

stackedplot(tbl,{'Height','Weight','Systolic','Diastolic'})

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Reorder Variables

Create a timetable and display its first three rows.

```{matlab}
tbl = readtable('outages.csv');
tbl = table2timetable(tbl);
tbl = sortrows(tbl);
head(tbl,3)
```


Reorder the variables by specifying them in an order that differs from their order in the table. For example, `RestorationTime` is the last variable in the timetable that can be plotted. By default, `stackedplot` places it at the bottom of the plot. But you can reorder the variables to put `RestorationTime` at the top.

```{matlab}
tbl = readtable('outages.csv');
tbl = table2timetable(tbl);
tbl = sortrows(tbl);

stackedplot(tbl,{'RestorationTime','Loss','Customers'})

fig2plotly(gcf);
```

There are also other ways to reorder the variables.

- Specify them by their numeric order in the table: `stackedplot(tbl,[4 2 3]);`
- Return a `StackedLineChart` object and reorder the values in its `DisplayVariables` property: `s = stackedplot(tbl); s.DisplayVariables = {'RestorationTime','Loss','Customers'}`


<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Multiple Variables Using One Y-Axis

Create a table from a subset of patient data, using the `Weight`, `Systolic`, and `Diastolic` variables.

```{matlab}
load patients
tbl = table(Weight,Systolic,Diastolic);
head(tbl,3)
```

Create a stacked plot, with `Systolic` and `Diastolic` plotted using the same y-axis. To plot variables together, specify them within a nested cell array.

```{matlab}
load patients
tbl = table(Weight,Systolic,Diastolic);

vars = [{'Systolic','Diastolic'},'Weight'];
```

```{matlab}
load patients
tbl = table(Weight,Systolic,Diastolic);

vars = [{'Systolic','Diastolic'},'Weight'];

stackedplot(tbl,vars);

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Columns of Matrix

Create a numeric matrix and a numeric vector.

Create a stacked plot using `X` and `Y`.

```{matlab}
X = [0:4:20]

Y = randi(100,6,3)

stackedplot(X,Y)

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Title and Labels Using Name-Value Pairs

Load a timetable that has a set of weather measurements. Display its first three rows.

```{matlab}
load outdoors
outdoors(1:3,:);
```

Create a stacked plot. Specify the title and labels for the y-axes using name-value pair arguments. You can use name-values pairs to change any properties from their defaults values. (Also note that you can specify the degree symbol using `char(176)`.)

```{matlab}
load outdoors
outdoors(1:3,:);

degreeSymbol = char(176);
newYlabels = {'RH (%)',['T (' degreeSymbol 'F)'],'P (in Hg)'};
stackedplot(outdoors,'Title','Weather Data','DisplayLabels',newYlabels);

fig2plotly(gcf);
```



<!--------------------- EXAMPLE BREAK ------------------------->

## Change Individual Plots to Scatter and Stair Plots

The `stackedplot` function returns a `StackedLineChart` object. You can use it to set the same property value for all plots, or to set different property values for individual plots. In this example, first change the line widths for all plots in a stacked plot. Then, use the `PlotType` property of individual plots, so that the stacked plot has a line plot, scatter plot, and stair plot.

Load a timetable that has a set of weather measurements. 

```{matlab}
load outdoors
outdoors(1:3,:);
```



Create a stacked plot and return a `StackedLineChart` object.

```{matlab}
load outdoors
outdoors(1:3,:);

s = stackedplot(outdoors);

fig2plotly(gcf);
```

The object provides access to many properties that apply to all of the plots. For example, you can use `s.LineWidth` to make the lines wider.

```{matlab}
load outdoors
outdoors(1:3,:);

s = stackedplot(outdoors);

s.LineWidth = 2;

fig2plotly(gcf);
```


The object also provides access to arrays of objects that you can use to modify the lines and y-axes for individual plots. To access properties of individual lines, use `s.LineProperties`. For each plot, you can specify a different line style, marker, plot type, and so on.

```{matlab}
load outdoors
outdoors(1:3,:);

s = stackedplot(outdoors);

s.LineWidth = 2;

s.LineProperties
```

Change the second plot to a scatter plot, and the third plot to a stair plot, using the `PlotType` property.

```{matlab}
load outdoors
outdoors(1:3,:);

s = stackedplot(outdoors);

s.LineWidth = 2;

s.LineProperties(2).PlotType = 'scatter';
s.LineProperties(3).PlotType = 'stairs';

fig2plotly(gcf);
```


You also can access individual y-axes through the `s.AxesProperties` property.

```{matlab}
load outdoors
outdoors(1:3,:);

s = stackedplot(outdoors);

s.LineWidth = 2;

s.LineProperties(2).PlotType = 'scatter';
s.LineProperties(3).PlotType = 'stairs';

s.AxesProperties
```



<!--------------------- EXAMPLE BREAK ------------------------->


## Date Strings


```{matlab}
data = {...
  struct(...
    'x', { {'2013-10-04 22:23:00', '2013-11-04 22:23:00', '2013-12-04 22:23:00'} }, ...
    'y', [1, 3, 6], ...
    'type', 'scatter')...
};

plotly(data);
```

<!--------------------- EXAMPLE BREAK ------------------------->

