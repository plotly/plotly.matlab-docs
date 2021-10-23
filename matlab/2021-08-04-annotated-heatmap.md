---
description: How to make Annotated Heatmap plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Annotated Heatmaps
display_as: scientific
order: 7
permalink: matlab/annotated-heatmap/
thumnail_github: annotated-heatmap.png
layout: base
language: matlab
page_type: u-guide
---

## Create Heatmap from Tabular Data

Create a heatmap from a table of data for medical patients.

Load the `patients` data set and create a table from a subset of the variables loaded into the workspace. Then create a heatmap that counts the total number of patients with the same set of `Smoker` and `SelfAssessedHealthStatus` values.

```{matlab}
load patients
tbl = table(LastName,Age,Gender,SelfAssessedHealthStatus,...
    Smoker,Weight,Location);
h = heatmap(tbl,'Smoker','SelfAssessedHealthStatus');

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Reorder Heatmap Labels

Create a heatmap and reorder the labels along the y-axis. 

Load the `patients` data set and create a heatmap from the data. Assign the `HeatmapChart` object to the variable `h`.

```{matlab}
load patients
tbl = table(LastName,Age,Gender,SelfAssessedHealthStatus,...
    Smoker,Weight,Location);
h = heatmap(tbl,'Smoker','SelfAssessedHealthStatus');

fig2plotly(gcf);
```

Reorder the labels along the y-axis. 

```{matlab}
load patients
tbl = table(LastName,Age,Gender,SelfAssessedHealthStatus,...
    Smoker,Weight,Location);
h = heatmap(tbl,'Smoker','SelfAssessedHealthStatus');

h.YDisplayData = {'Excellent','Good','Fair','Poor'};

fig2plotly(gcf);
```

Alternatively, you can reorder the labels by changing the data to categorical data and then reordering the categories using the `reordercats` function. Similarly, you can add, remove, or rename the heatmap labels using the `addcats`, `removecats`, or `renamecats` functions, respectively.


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Table Variable for Heatmap Colors

Create a heatmap and specify the table variable to use when determining the heatmap cell colors.

Load the `patients` data set and create a heatmap from the data. Color each cell using the average age of patients with a particular pair of `Smoker` and `SelfAssessedHealthStatus` values by setting the `ColorVariable` option to `'Age'`.

```{matlab}
load patients
tbl = table(LastName,Age,Gender,SelfAssessedHealthStatus,...
    Smoker,Weight,Location);
h = heatmap(tbl,'Smoker','SelfAssessedHealthStatus','ColorVariable','Age');

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Calculation Method for Color Data

Create a heatmap and specify the table variable and calculation method to use when determining the heatmap cell colors.

Load the patients data set and create a heatmap from the data. Color each cell using the median age of patients with a particular pair of `Smoker` and `SelfAssessedHealthStatus` values. Specify the `ColorVariable` option as `'Age'` and the `ColorMethod` option as `'median'`.

```{matlab}
load patients
tbl = table(LastName,Age,Gender,SelfAssessedHealthStatus,...
    Smoker,Weight,Location);
h = heatmap(tbl,'Smoker','SelfAssessedHealthStatus','ColorVariable','Age','ColorMethod','median');

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Create Heatmap from Matrix Data

Create a matrix of data. Then create a heatmap of the matrix values. The default labels along the x-axis and y-axis appear as 1, 2, 3, and so on. 

```{matlab}
cdata = [45 60 32; 43 54 76; 32 94 68; 23 95 58];
h = heatmap(cdata);

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Create Heatmap from Matrix Data Using Custom Axis Labels

Create a matrix of data. Then create a heatmap of the matrix values. Use custom labels along the x-axis and y-axis by specifying the first two input arguments as the labels you want. Specify the title and axis labels by setting properties of the `HeatmapChart` object.

```{matlab}
cdata = [45 60 32; 43 54 76; 32 94 68; 23 95 58];
xvalues = {'Small','Medium','Large'};
yvalues = {'Green','Red','Blue','Gray'};
h = heatmap(xvalues,yvalues,cdata);

h.Title = 'T-Shirt Orders';
h.XLabel = 'Sizes';
h.YLabel = 'Colors';

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Normalize Colors Along Each Row or Column

Create a heatmap and normalize the colors along each column or row by setting the `ColorScaling` property. 

Read the sample file `outages.csv` into a table. The sample file contains data representing electric utility outages in the Unites States. The table contains six columns: `Region`, `OutageTime`, `Loss`, `Customers`, `RestorationTime`, and `Cause`. Display the first five rows of each column.

```{matlab}
T = readtable('outages.csv');
T(1:5,:)
```

Create a heatmap that shows the different regions along the x-axis and the different outage causes along the y-axis. In each cell, show how many times each region experienced a power outage due to a particular cause.

```{matlab}
T = readtable('outages.csv');

h = heatmap(T,'Region','Cause');

fig2plotly(gcf);
```

Normalize the colors along each column. The smallest value in each column maps to the first color in the colormap and the largest value maps to the last color. The last color indicates the cause that caused the most power outages for each region.

```{matlab}
T = readtable('outages.csv');

h = heatmap(T,'Region','Cause');

h.ColorScaling = 'scaledcolumns';

fig2plotly(gcf);
```

Normalize the colors along each row instead. The smallest value in each row maps to the first color in the colormap and the largest value maps to the last color. The last color indicates the region that experienced the most power outages due to each cause.

```{matlab}
T = readtable('outages.csv');

h = heatmap(T,'Region','Cause');

h.ColorScaling = 'scaledrows';

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Compute Color Data Using Custom Aggregation Method

Create a heatmap and color the cells using data computed with a custom aggregation method. Use the `accumarray` function to compute the color data.

Read the sample file `Temperature.csv` into a table. The file contains three columns: `Month`, `Year`, and `TemperatureF`. 

```{matlab}
tbl = readtable('TemperatureData.csv');
```

Create categorical arrays from the `Month` and `Year` columns of the table. Then determine the unique months and years to use as labels along the x-axis and y-axis.

```{matlab}
tbl = readtable('TemperatureData.csv');

months = categorical(tbl.Month);
years = categorical(tbl.Year);
xlabels = categories(months);
ylabels = categories(years);
```

Determine the final size of the resulting color data based on the number of unique months and years. 

```{matlab}
tbl = readtable('TemperatureData.csv');

months = categorical(tbl.Month);
years = categorical(tbl.Year);
xlabels = categories(months);
ylabels = categories(years);

nummonths = numel(xlabels);
numyears = numel(ylabels);
```

Convert the categorical `months` and `years` arrays into numeric indices to use with the `accumarray` function. Compute the color data as the maximum temperature for each month and year combination using the `accumarray` function. Use `NaN` for missing month and year combinations.

```{matlab}
tbl = readtable('TemperatureData.csv');

months = categorical(tbl.Month);
years = categorical(tbl.Year);
xlabels = categories(months);
ylabels = categories(years);

nummonths = numel(xlabels);
numyears = numel(ylabels);

x = double(months);
y = double(years);
temps = tbl.TemperatureF;
cdata = accumarray([y,x],temps,[numyears,nummonths],@max,NaN);
```

Create the heatmap. Label the x-axis and y-axis with the months and years, respectively. Color the heatmap cells using the computed matrix data.

```{matlab}
tbl = readtable('TemperatureData.csv');

months = categorical(tbl.Month);
years = categorical(tbl.Year);
xlabels = categories(months);
ylabels = categories(years);

nummonths = numel(xlabels);
numyears = numel(ylabels);

x = double(months);
y = double(years);
temps = tbl.TemperatureF;
cdata = accumarray([y,x],temps,[numyears,nummonths],@max,NaN);

h = heatmap(xlabels,ylabels,cdata);

fig2plotly(gcf);
```

Note: You can use the `reordercats` function for categorical arrays to reorder the axis labels.



<!--------------------- EXAMPLE BREAK ------------------------->

