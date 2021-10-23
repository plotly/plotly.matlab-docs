---
description: How to make Parallel Coordinates Plot in MATLAB<sup>&reg;</sup> with Plotly.
name: Parallel Coordinates Plot
display_as: scientific
order: 9
permalink: matlab/parallel-coordinates-plot/
thumnail_github: parallel-coordinates-plot.png
layout: base
language: matlab
page_type: u-guide
---

## Parallel Coordinates Plot with Tabular Data

Create a parallel coordinates plot from a table of medical patient data.

Load the `patients` data set, and create a table from a subset of the variables loaded into the workspace. Create a parallel coordinates plot using the table. The lines in the plot correspond to individual patients. Use the plot to observe trends in the data. For example, the plot indicates that smokers tend to have higher blood pressure values (both diastolic and systolic).

```{matlab}
load patients;
tbl = table(Diastolic,Smoker,Systolic);
p = parallelplot(tbl);

fig2plotly(gcf);
```


By default, the software randomly jitters plot lines so that they are unlikely to overlap perfectly along coordinate rulers. This jittering is particularly helpful for visualizing categorical data because it enables you to distinguish between plot lines more easily. For example, observe the plot lines along the `Smoker` coordinate ruler; the plot lines are not flush with either the `true` or `false` tick marks.

To disable the default jittering, set the `Jitter` property to `0`.

```{matlab}
load patients;
tbl = table(Diastolic,Smoker,Systolic);
p = parallelplot(tbl);

p.Jitter = 0;

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Coordinate and Group Variables

Create a parallel coordinates plot from a table of tsunami data. Specify the table variables to display and their order, and group the lines in the plot according to one of the variables.

Read the tsunami data into the workspace as a table.

```{matlab}
tsunamis = readtable('tsunamis.xlsx');
```

Create a parallel coordinates plot using a subset of the variables in the table. First, increase the figure window size to prevent overcrowding in the plot. Then, to specify the variables and their order, use the `'CoordinateVariables'` name-value pair argument. To group occurrences according to their validity, set the `'GroupVariable'` name-value pair argument to `'Validity'`. The lines in the plot correspond to individual tsunami occurrences. The plot indicates that most of the occurrences in the data set that have a `Validity` value are considered definite tsunamis.

```{matlab}
tsunamis = readtable('tsunamis.xlsx');

figure('Units','normalized','Position',[0.3 0.3 0.45 0.4]);
coordvars = {'Year','Validity','Cause','Country'};
p = parallelplot(tsunamis,'CoordinateVariables',coordvars,'GroupVariable','Validity');

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Parallel Coordinates Plot with Binned Data

Create a parallel coordinates plot from a matrix containing medical patient data. Bin the values in one of the columns in the matrix, and group the lines in the plot using the binned values.

Load the `patients` data set, and create a matrix from the `Age`, `Height`, and `Weight` values. Create a parallel coordinates plot using the matrix data. Label the coordinate variables in the plot. The lines in the plot correspond to individual patients.

```{matlab}
load patients;
X = [Age Height Weight];
p = parallelplot(X);

fig2plotly(gcf);
```


```{matlab}
load patients;
X = [Age Height Weight];
p = parallelplot(X);

p.CoordinateTickLabels = {'Age (years)','Height (inches)','Weight (pounds)'};

fig2plotly(gcf);
```


Create a new categorical variable that groups each patient into one of three categories: `short`, `average`, or `tall`. Set the bin edges such that they include the minimum and maximum `Height` values.

```{matlab}
load patients
X = [Age Height Weight];
p = parallelplot(X)

p.CoordinateTickLabels = {'Age (years)','Height (inches)','Weight (pounds)'};

binEdges = [60 64 68 72];
bins = {'short','average','tall'};
groupHeight = discretize(Height,binEdges,'categorical',bins);
```

Now use the `groupHeight` values to group the lines in the parallel coordinates plot. The plot indicates that `short` patients tend to weigh less than `tall` patients.

```{matlab}
load patients
X = [Age Height Weight];
p = parallelplot(X)

p.CoordinateTickLabels = {'Age (years)','Height (inches)','Weight (pounds)'};

binEdges = [60 64 68 72];
bins = {'short','average','tall'};
groupHeight = discretize(Height,binEdges,'categorical',bins);

p.GroupData = groupHeight;

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Coordinate and Group Data

Create parallel coordinates plots from a matrix containing medical patient data. For each plot, specify the columns of the matrix to display, and group the lines in the plot according to a separate variable.

Load the `patients` data set, and create a matrix from some of the variables loaded into the workspace.

```{matlab}
load patients
X = [Age Height Weight];
```

Create a parallel coordinates plot using a subset of the columns in the matrix `X`. To specify the columns and their order, use the `'CoordinateData'` name-value pair argument. Group patients according to their smoker status by passing the `Smoker` values to the `'GroupData'` name-value pair argument. The lines in the plot correspond to individual patients. The plot indicates that no clear relationship exists between smoker status and either age or weight.

```{matlab}
load patients
X = [Age Height Weight];

coorddata = [1 3];
p = parallelplot(X,'CoordinateData',coorddata,'GroupData',Smoker);

p.CoordinateTickLabels = {'Age','Weight'};

fig2plotly(gcf);
```

Create another parallel coordinates plot using a different subset of the columns in `X`. Group the patients according to their gender. The plot indicates that the men are taller and weigh more than the women.

```{matlab}
load patients
X = [Age Height Weight];

coorddata = [1 3];
p = parallelplot(X,'CoordinateData',coorddata,'GroupData',Smoker);

p.CoordinateTickLabels = {'Age','Weight'};

coorddata2 = [2 3];
p2 = parallelplot(X,'CoordinateData',coorddata2,'GroupData',Gender);

p2.CoordinateTickLabels = {'Height','Weight'};

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Change Data Normalization in Plot

Create a parallel coordinates plot from a table of power outage data. Change the normalization method for the numeric coordinate variables.

Read the power outage data into the workspace as a table. Display the first few rows of the table.

```{matlab}
outages = readtable('outages.csv');
head(outages)
```


Create a new variable called `OutageDuration` that indicates how long each power outage lasted. Convert `OutageDuration` to the number of days each power outage lasted. Add the new variable to the `outages` table, and call it `OutageDays`.

```{matlab}
outages = readtable('outages.csv');

OutageDuration = outages.RestorationTime - outages.OutageTime;
outages.OutageDays = days(OutageDuration);
```

Create a parallel coordinates plot using the `Loss`, `Customers`, and `OutageDays` variables. Because the coordinate variables are numeric, display the values in the plot as z-scores, without any jittering, using the `'DataNormalization'` and `'Jitter'` name-value pair arguments.

```{matlab}
outages = readtable('outages.csv');

OutageDuration = outages.RestorationTime - outages.OutageTime;
outages.OutageDays = days(OutageDuration);

coordvars = {'Loss','Customers','OutageDays'};
p = parallelplot(outages,'CoordinateVariables',coordvars,'DataNormalization','zscore','Jitter',0);

fig2plotly(gcf);
```

The `OutageDays` variable contains one value that is more than 30 standard deviations away from the mean `OutageDays` value and another value that is more than 10 standard deviations away from the mean. Hover over the values in the plot to display data tips. Each data tip indicates the row in the table corresponding to the line in the plot.

Find the rows in the `outages` table that have the identified extreme `OutageDays` values. Notice that the `RestorationTime` values for these two power outages are suspicious.

```{matlab}
outages = readtable('outages.csv');

OutageDuration = outages.RestorationTime - outages.OutageTime;
outages.OutageDays = days(OutageDuration);

coordvars = {'Loss','Customers','OutageDays'};
p = parallelplot(outages,'CoordinateVariables',coordvars,'DataNormalization','zscore','Jitter',0);

outliers = outages([1011 269],:)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Reorder Categories of Coordinate Variable in Plot

Create a parallel coordinates plot. Reorder the categories of one of the coordinate variables.

Read data on power outages into the workspace as a table.

```{matlab}
outages = readtable('outages.csv');
```

Create a parallel coordinates plot using a subset of the columns in the table. Group the lines in the plot according to the event that caused the power outage.

```{matlab}
outages = readtable('outages.csv');

coordvars = [1 3 4 6];
p = parallelplot(outages,'CoordinateVariables',coordvars,'GroupVariable','Cause');

fig2plotly(gcf);
```


Change the order of the events in `Cause` by updating the source table. First, convert `Cause` to a `categorical` variable, specify the new order of the events, and use the `reordercats` function to create a new variable called `orderCause`. Then, replace the original `Cause` variable with the new `orderCause` variable in the source table of the plot.

```{matlab}
outages = readtable('outages.csv');

coordvars = [1 3 4 6];
p = parallelplot(outages,'CoordinateVariables',coordvars,'GroupVariable','Cause');

categoricalCause = categorical(p.SourceTable.Cause);
newOrder = {'attack','earthquake','energy emergency','equipment fault', ...
    'fire','severe storm','thunder storm','wind','winter storm','unknown'};
orderCause = reordercats(categoricalCause,newOrder);
p.SourceTable.Cause = orderCause;

fig2plotly(gcf);
```


Because the `Cause` variable contains more than seven categories, some of the groups have the same color in the plot. Assign distinct colors to every group by changing the `Color` property of `p`.

```{matlab}
outages = readtable('outages.csv');

coordvars = [1 3 4 6];
p = parallelplot(outages,'CoordinateVariables',coordvars,'GroupVariable','Cause');

categoricalCause = categorical(p.SourceTable.Cause);
newOrder = {'attack','earthquake','energy emergency','equipment fault', ...
    'fire','severe storm','thunder storm','wind','winter storm','unknown'};
orderCause = reordercats(categoricalCause,newOrder);
p.SourceTable.Cause = orderCause;

p.Color = parula(10);

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->



## Parallel Coordinates Plot for Grouped Data

Load the Fisher iris sample data.

```{matlab}
load fisheriris
```

The data contains four measurements (sepal length, sepal width, petal length, and petal width) from three species of iris flowers. The matrix `meas` contains all four measurements for each of 150 flowers. The cell array `species` contains the species name for each of the 150 flowers.

Create a cell array that contains the name of each measurement variable in the sample data.

```{matlab}
load fisheriris

labels = {'Sepal Length','Sepal Width','Petal Length','Petal Width'};
```

Create a parallel coordinate plot using the measurement data in `meas`. Use a different color for each group as identified in `species`, and label the horizontal axis using the variable names.

```{matlab}
load fisheriris

labels = {'Sepal Length','Sepal Width','Petal Length','Petal Width'};

parallelcoords(meas,'Group',species,'Labels',labels)

fig2plotly(gcf);
```

The resulting plot contains one line for each observation (flower). The color of each line indicates the flower species.



<!--------------------- EXAMPLE BREAK ------------------------->

## Parallel Coordinates Plot with Quantile Values

Load the Fisher iris sample data.

```{matlab}
load fisheriris
```

The data contains four measurements (sepal length, sepal width, petal length, and petal width) from three species of iris flowers. The matrix `meas` contains all four measurements for each of 150 flowers. The cell array `species` contains the species name for each of the 150 flowers.

Create a cell array that contains the name of each measurement variable in the sample data.

```{matlab}
load fisheriris

labels = {'Sepal Length','Sepal Width','Petal Length','Petal Width'};
```

Create a parallel coordinates plot using the measurement data in `meas`. Plot only the median, 25 percent, and 75 percent quartile values for each group identified in `species`. Label the horizontal axis using the variable names.

```{matlab}
load fisheriris

labels = {'Sepal Length','Sepal Width','Petal Length','Petal Width'};

parallelcoords(meas,'group',species,'labels',labels,... 
               'quantile',.25)

fig2plotly(gcf);
```

The plot shows the median values for each group as a solid line and the quartile values as dotted lines of the same color. For example, the solid blue line shows the median value measured for each variable on `setosa` irises. The dotted blue line below the solid blue line shows the 25th percentile of measurements for each variable on `setosa` irises. The dotted blue line above the solid blue line shows the 75th percentile of measurements for each variable on `setosa` irises.


<!--------------------- EXAMPLE BREAK ------------------------->

## Adjust Line Properties in Parallel Coordinates Plot

Load the Fisher iris sample data.

```{matlab}
load fisheriris
```

The data contains four measurements (sepal length, sepal width, petal length, and petal width) from three species of iris flowers. The matrix `meas` contains all four measurements for each of 150 flowers. The cell array `species` contains the species name for each of the 150 flowers.

Create a cell array that contains the name of each measurement variable in the sample data.

```{matlab}
load fisheriris

labels = {'Sepal Length','Sepal Width','Petal Length','Petal Width'};
```

Create a parallel coordinates plot using the measurement data in `meas`. Plot only the median, 25 percent, and 75 percent quartile values for each group identified in `species`. Label the horizontal axis using the variable names. Set the line width to 2.

```{matlab}
load fisheriris

labels = {'Sepal Length','Sepal Width','Petal Length','Petal Width'};

parallelcoords(meas,'group',species,'labels',labels,... 
               'quantile',.25,'LineWidth',2)

fig2plotly(gcf);
```

Specifying `'LineWidth'` in this way sets the width of every line in the plot to 2.

Recreate the parallel coordinates plot, but this time, use handles to increase the width of only the line representing the median value for each measurement made on irises in the `setosa` group.

```{matlab}
load fisheriris

labels = {'Sepal Length','Sepal Width','Petal Length','Petal Width'};

h = parallelcoords(meas,'group',species,'labels',labels,... 
               'quantile',.25);

fig2plotly(gcf);
```

The returned column vector `h` contains handles that correspond to each line object created by `parallelcoords`. For example, h(1) corresponds to the median line for the first grouping variable (`setosa`).

Use dot notation to increase the width of the line showing the median value for each measurement made on irises in the `setosa` group.

```{matlab}
load fisheriris

labels = {'Sepal Length','Sepal Width','Petal Length','Petal Width'};

h = parallelcoords(meas,'group',species,'labels',labels,... 
               'quantile',.25);

h(1).LineWidth = 2;

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

