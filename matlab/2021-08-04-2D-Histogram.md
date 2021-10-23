---
description: How to make 2D Histogram plots in MATLAB<sup>&reg;</sup> with Plotly.
name: 2D Histograms
display_as: statistical
order: 5
permalink: matlab/2D-Histogram/
thumnail_github: 2D-Histogram.png
layout: base
language: matlab
page_type: u-guide
---

## Scatter Histogram Chart with Tabular Data

Create a scatter plot with marginal histograms from a table of data for medical patients.

Load the `patients` data set and create a table from a subset of the variables loaded into the workspace. Then, create a scatter histogram chart comparing the `Height` values to the `Weight` values.

```{matlab}
load patients
tbl = table(LastName,Age,Gender,Height,Weight);
s = scatterhistogram(tbl,'Height','Weight');

fig2plotly(gcf);
```



<!--------------------- EXAMPLE  BREAK ------------------------->

## Specify Table Variable for Grouping Data

Using the `patients` data set, create a scatter plot with marginal histograms and specify the table variable to use for grouping the data.

Load the `patients` data set and create a scatter histogram chart from the data. Compare the patients' `Systolic` and `Diastolic` values. Group the data according to the patients' smoker status by setting the `'GroupVariable'` name-value pair argument to `'Smoker'`.

```{matlab}
load patients
tbl = table(LastName,Diastolic,Systolic,Smoker);
s = scatterhistogram(tbl,'Diastolic','Systolic','GroupVariable','Smoker');

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Visualize Categorical and Numeric Data

Use a scatter plot with marginal histograms to visualize categorical and numeric medical data.

Load the `patients` data set, and convert the `Smoker` data to a categorical array. Then, create a scatter histogram chart that compares patients' `Age` values to their smoker status. The resulting scatter plot contains overlapping data points. However, the y-axis marginal histogram indicates that there are far more nonsmokers than smokers in the data set.

```{matlab}
load patients
Smoker = categorical(Smoker);
s = scatterhistogram(Age,Smoker);
xlabel('Age')
ylabel('Smoker')

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Group Data and Customize Chart Properties

Create a scatter plot with marginal histograms using arrays of shoe data. Group the data according to shoe color, and customize properties of the scatter histogram chart.

Create arrays of data. Then, create a scatter histogram chart to visualize the data. Use custom labels along the x-axis and y-axis to specify the variable names of the first two input arguments. You can specify the title, axis labels, and legend title by setting properties of the `ScatterHistogramChart` object.

```{matlab}
xvalues = [7 6 5 6.5 9 7.5 8.5 7.5 10 8];
yvalues = categorical({'onsale','regular','onsale','onsale', ...
    'regular','regular','onsale','onsale','regular','regular'});
grpvalues = {'Red','Black','Blue','Red','Black','Blue','Red', ...
    'Red','Blue','Black'};
s = scatterhistogram(xvalues,yvalues,'GroupData',grpvalues);

s.Title = 'Shoe Sales';
s.XLabel = 'Shoe Size';
s.YLabel = 'Price';
s.LegendTitle = 'Shoe Color';

fig2plotly(gcf);
```

Change the colors in the scatter histogram chart to match the group labels. Change the histogram bin widths to be the same for all groups.

```{matlab}
xvalues = [7 6 5 6.5 9 7.5 8.5 7.5 10 8];
yvalues = categorical({'onsale','regular','onsale','onsale', ...
    'regular','regular','onsale','onsale','regular','regular'});
grpvalues = {'Red','Black','Blue','Red','Black','Blue','Red', ...
    'Red','Blue','Black'};
s = scatterhistogram(xvalues,yvalues,'GroupData',grpvalues);

s.Title = 'Shoe Sales';
s.XLabel = 'Shoe Size';
s.YLabel = 'Price';
s.LegendTitle = 'Shoe Color';

s.Color = {'Red','Black','Blue'};
s.BinWidths = 1;

fig2plotly(gcf);
```



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Scatter Histogram Chart Appearance

Create a scatter plot with marginal histograms. Specify the number of bins and line widths of the histograms, the location of the scatter plot, and the legend visibility.

Load the `patients` data set and create a scatter histogram chart from the data. Compare the patients' `Diastolic` and `Systolic` values, and group the data according to the patients' `SelfAssessedHealthStatus` values. Adjust the histograms by specifying the `NumBins` and `LineWidth` options. Place the scatter plot in the `'NorthEast'` location of the figure by using the `ScatterPlotLocation` option. Ensure the legend is visible by specifying the `LegendVisible` option as `'on'`.

```{matlab}
load patients
tbl = table(LastName,Diastolic,Systolic,SelfAssessedHealthStatus);
s = scatterhistogram(tbl,'Diastolic','Systolic','GroupVariable','SelfAssessedHealthStatus', ...
    'NumBins',4,'LineWidth',1.5,'ScatterPlotLocation','NorthEast','LegendVisible','on');

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Group Data Using Two Variables

Create a scatter plot with marginal histograms. Group the data by using a combination of two different variables.

Load the `patients` data set. Combine the `Smoker` and `Gender` data to create a new variable. Create a scatter histogram chart that compares the `Diastolic` and `Systolic` values of the patients. Use the new variable `SmokerGender` to group the data in the scatter histogram chart.

```{matlab}
load patients
[idx,genderStatus,smokerStatus] = findgroups(string(Gender),string(Smoker));
SmokerGender = strcat(genderStatus(idx),"-",smokerStatus(idx));
s = scatterhistogram(Diastolic,Systolic,'GroupData',SmokerGender,'LegendVisible','on');
xlabel('Diastolic')
ylabel('Systolic')

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Kernel Density Histograms

Create a scatter plot with kernel density marginal histograms. This
          example requires a Statistics and Machine Learning Toolbox™ license.

Load the `carsmall` data set and create a scatter histogram chart
            from the data. Compare the `Horsepower` and `MPG`
            values. Use the number of cylinders to group the data by setting the
              `GroupVariable` option to `Cylinders`. Specify
            kernel density histograms by setting the `HistogramDisplayStyle` option
            to `'smooth'`. Specify a solid line for all the histograms by setting
            the `LineStyle` option to `'-'`.

```{matlab}
load carsmall
tbl = table(Horsepower,MPG,Cylinders);
s = scatterhistogram(tbl,'Horsepower','MPG', ...
    'GroupVariable','Cylinders','HistogramDisplayStyle','smooth', ...
    'LineStyle','-');

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->



## 2D Histogram of a Bivariate Normal Distribution


```{matlab}
x = randn(500,1);
y = randn(500,1)+1;

data = {...
  struct(...
    'x', x, ...
    'y', y, ...
    'type', 'histogram2d')...
};

plotly(data);
```

<!--------------------- EXAMPLE BREAK ------------------------->


## 2D Histogram Binning and Styling Options


```{matlab}
x = randn(500,1);
y = randn(500,1)+1;

data = {...
  struct(...
    'x', x, ...
    'y', y, ...
    'histnorm', 'probability', ...
    'autobinx', false, ...
    'xbins', struct(...
      'start', -3, ...
      'end', 3, ...
      'size', 0.1), ...
    'autobiny', false, ...
    'ybins', struct(...
      'start', -2.5, ...
      'end', 4, ...
      'size', 0.1), ...
    'colorscale', { { {0, 'rgb(12,51,131)'},{0.25, 'rgb(10,136,186)'},{0.5, 'rgb(242,211,56)'},{0.75, 'rgb(242,143,56)'},{1, 'rgb(217,30,30)'} } }, ...
    'type', 'histogram2d')...
};

plotly(data);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## 2D Histogram Overlaid with a Scatter Chart


```{matlab}
x0 = randn(100,1)./5. + 0.5;
y0 = randn(100,1)./5. + 0.5;
x1 = rand(50,1);
y1 = rand(50,1) + 1.0;

x = [x0; x1];
y = [y0; y1];

trace1 = struct(...
  'x', x0, ...
  'y', y0, ...
  'mode', 'markers', ...
  'marker', struct(...
    'symbol', 'circle', ...
    'opacity', 0.7), ...
  'type', 'scatter');

trace2 = struct(...
  'x', x1, ...
  'y', y1, ...
  'mode', 'markers', ...
  'marker', struct(...
    'symbol', 'square', ...
    'opacity', 0.7), ...
  'type', 'scatter');

trace3 = struct(...
  'x', x, ...
  'y', y, ...
  'type', 'histogram2d');

data = {trace1, trace2, trace3};

plotly(data);
```

<!--------------------- EXAMPLE BREAK ------------------------->
