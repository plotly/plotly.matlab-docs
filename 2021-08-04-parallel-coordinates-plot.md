---
description: How to make Parallel Coordinates Plot in MATLAB<sup>&reg;</sup> with
  Plotly.
display_as: scientific
language: matlab
layout: base
name: Parallel Coordinates Plot
order: 8
page_type: u-guide
permalink: matlab/parallel-coordinates-plot/
published: false
thumnail_github: parallel-coordinates-plot.png
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
{% capture plot_803366621915 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_803366621915 index=803366621915 %}



By default, the software randomly jitters plot lines so that they are unlikely to overlap perfectly along coordinate rulers. This jittering is particularly helpful for visualizing categorical data because it enables you to distinguish between plot lines more easily. For example, observe the plot lines along the `Smoker` coordinate ruler; the plot lines are not flush with either the `true` or `false` tick marks.

To disable the default jittering, set the `Jitter` property to `0`.

```{matlab}
load patients;
tbl = table(Diastolic,Smoker,Systolic);
p = parallelplot(tbl);

p.Jitter = 0;

fig2plotly(gcf);
```
{% capture plot_760397152852 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_760397152852 index=760397152852 %}





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
{% capture plot_312251699985 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 691.2, "height": 460.8, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_312251699985 index=312251699985 %}





## Parallel Coordinates Plot with Binned Data

Create a parallel coordinates plot from a matrix containing medical patient data. Bin the values in one of the columns in the matrix, and group the lines in the plot using the binned values.

Load the `patients` data set, and create a matrix from the `Age`, `Height`, and `Weight` values. Create a parallel coordinates plot using the matrix data. Label the coordinate variables in the plot. The lines in the plot correspond to individual patients.

```{matlab}
load patients;
X = [Age Height Weight];
p = parallelplot(X);

fig2plotly(gcf);
```
{% capture plot_952966526972 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_952966526972 index=952966526972 %}



```{matlab}
load patients;
X = [Age Height Weight];
p = parallelplot(X);

p.CoordinateTickLabels = {'Age (years)','Height (inches)','Weight (pounds)'};

fig2plotly(gcf);
```
{% capture plot_462963575078 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_462963575078 index=462963575078 %}



Create a new categorical variable that groups each patient into one of three categories: `short`, `average`, or `tall`. Set the bin edges such that they include the minimum and maximum `Height` values.

```{matlab}
load patients
X = [Age Height Weight];
p = parallelplot(X);

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
<pre class="code-output">
p = 

  all properties
</pre>
{% capture plot_997837401430 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_997837401430 index=997837401430 %}





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
{% capture plot_753943618435 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_753943618435 index=753943618435 %}


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
{% capture plot_717953114613 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_717953114613 index=717953114613 %}





## Change Data Normalization in Plot

Create a parallel coordinates plot from a table of power outage data. Change the normalization method for the numeric coordinate variables.

Read the power outage data into the workspace as a table. Display the first few rows of the table.

```{matlab}
outages = readtable('outages.csv');
head(outages)
```
<pre class="code-output">
<strong>Region</strong>           <strong>OutageTime</strong>          <strong>Loss</strong>         <strong>Customers</strong>     <strong>RestorationTime</strong>            <strong>Cause</strong>       
    <strong>_____________</strong>    <strong>________________</strong>    <strong>___________</strong>    <strong>___________</strong>    <strong>________________</strong>    <strong>___________________</strong>

    {'SouthWest'}    2002-02-01 12:18    458.9772218    1820159.482    2002-02-07 16:50    {'winter storm'   }
    {'SouthEast'}    2003-01-23 00:49    530.1399497    212035.3001                 NaT    {'winter storm'   }
    {'SouthEast'}    2003-02-07 21:15    289.4035493    142938.6282    2003-02-17 08:14    {'winter storm'   }
    {'West'     }    2004-04-06 05:44    434.8053524    340371.0338    2004-04-06 06:10    {'equipment fault'}
    {'MidWest'  }    2002-03-16 06:18    186.4367788     212754.055    2002-03-18 23:23    {'severe storm'   }
    {'West'     }    2003-06-18 02:49              0              0    2003-06-18 10:54    {'attack'         }
    {'West'     }    2004-06-20 14:39    231.2947226            NaN    2004-06-20 19:16    {'equipment fault'}
    {'West'     }    2002-06-06 19:28    311.8607324            NaN    2002-06-07 00:51    {'equipment fault'}
</pre>


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
{% capture plot_63982832750 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_63982832750 index=63982832750 %}


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
<pre class="code-output">
outliers =

  2x7 table

       <strong>Region</strong>           <strong>OutageTime</strong>          <strong>Loss</strong>         <strong>Customers</strong>     <strong>RestorationTime</strong>            <strong>Cause</strong>               <strong>OutageDays</strong>   
    <strong>_____________</strong>    <strong>________________</strong>    <strong>___________</strong>    <strong>___________</strong>    <strong>________________</strong>    <strong>____________________</strong>    <strong>________________</strong>

    {'NorthEast'}    2009-08-20 02:46            NaN    173554.4231    2042-09-18 23:31    {'severe storm'    }    12082.8645833333
    {'MidWest'  }    2008-02-07 06:18    2378.722331              0    2019-08-14 16:16    {'energy emergency'}    4206.41527777778
</pre>




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
{% capture plot_944205439277 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_944205439277 index=944205439277 %}



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
{% capture plot_907226405343 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_907226405343 index=907226405343 %}



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
{% capture plot_968339877990 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_968339877990 index=968339877990 %}







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
{% capture plot_497014093520 %}{% raw %}{"data": [{"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "setosa", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.1, 3.5, 1.4, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": true}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.9, 3, 1.4, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.7, 3.2, 1.3, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.6, 3.1, 1.5, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5, 3.6, 1.4, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.4, 3.9, 1.7, 0.4], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.6, 3.4, 1.4, 0.3], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5, 3.4, 1.5, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.4, 2.9, 1.4, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.9, 3.1, 1.5, 0.1], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.4, 3.7, 1.5, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.8, 3.4, 1.6, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.8, 3, 1.4, 0.1], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.3, 3, 1.1, 0.1], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.8, 4, 1.2, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.7, 4.4, 1.5, 0.4], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.4, 3.9, 1.3, 0.4], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.1, 3.5, 1.4, 0.3], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.7, 3.8, 1.7, 0.3], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.1, 3.8, 1.5, 0.3], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.4, 3.4, 1.7, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.1, 3.7, 1.5, 0.4], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.6, 3.6, 1, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.1, 3.3, 1.7, 0.5], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.8, 3.4, 1.9, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5, 3, 1.6, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5, 3.4, 1.6, 0.4], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.2, 3.5, 1.5, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.2, 3.4, 1.4, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.7, 3.2, 1.6, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.8, 3.1, 1.6, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.4, 3.4, 1.5, 0.4], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.2, 4.1, 1.5, 0.1], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.5, 4.2, 1.4, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.9, 3.1, 1.5, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5, 3.2, 1.2, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.5, 3.5, 1.3, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.9, 3.6, 1.4, 0.1], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.4, 3, 1.3, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.1, 3.4, 1.5, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5, 3.5, 1.3, 0.3], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.5, 2.3, 1.3, 0.3], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.4, 3.2, 1.3, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5, 3.5, 1.6, 0.6], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.1, 3.8, 1.9, 0.4], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.8, 3, 1.4, 0.3], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.1, 3.8, 1.6, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.6, 3.2, 1.4, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.3, 3.7, 1.5, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5, 3.3, 1.4, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "versicolor", "mode": "lines", "x": [1, 2, 3, 4], "y": [7, 3.2, 4.7, 1.4], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": true}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.4, 3.2, 4.5, 1.5], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.9, 3.1, 4.9, 1.5], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.5, 2.3, 4, 1.3], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.5, 2.8, 4.6, 1.5], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.7, 2.8, 4.5, 1.3], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.3, 3.3, 4.7, 1.6], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.9, 2.4, 3.3, 1], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.6, 2.9, 4.6, 1.3], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.2, 2.7, 3.9, 1.4], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5, 2, 3.5, 1], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.9, 3, 4.2, 1.5], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6, 2.2, 4, 1], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.1, 2.9, 4.7, 1.4], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.6, 2.9, 3.6, 1.3], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.7, 3.1, 4.4, 1.4], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.6, 3, 4.5, 1.5], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.8, 2.7, 4.1, 1], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.2, 2.2, 4.5, 1.5], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.6, 2.5, 3.9, 1.1], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.9, 3.2, 4.8, 1.8], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.1, 2.8, 4, 1.3], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.3, 2.5, 4.9, 1.5], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.1, 2.8, 4.7, 1.2], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.4, 2.9, 4.3, 1.3], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.6, 3, 4.4, 1.4], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.8, 2.8, 4.8, 1.4], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.7, 3, 5, 1.7], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6, 2.9, 4.5, 1.5], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.7, 2.6, 3.5, 1], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.5, 2.4, 3.8, 1.1], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.5, 2.4, 3.7, 1], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.8, 2.7, 3.9, 1.2], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6, 2.7, 5.1, 1.6], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.4, 3, 4.5, 1.5], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6, 3.4, 4.5, 1.6], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.7, 3.1, 4.7, 1.5], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.3, 2.3, 4.4, 1.3], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.6, 3, 4.1, 1.3], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.5, 2.5, 4, 1.3], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.5, 2.6, 4.4, 1.2], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.1, 3, 4.6, 1.4], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.8, 2.6, 4, 1.2], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5, 2.3, 3.3, 1], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.6, 2.7, 4.2, 1.3], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.7, 3, 4.2, 1.2], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.7, 2.9, 4.2, 1.3], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.2, 2.9, 4.3, 1.3], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.1, 2.5, 3, 1.1], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.7, 2.8, 4.1, 1.3], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "virginica", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.3, 3.3, 6, 2.5], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": true}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.8, 2.7, 5.1, 1.9], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [7.1, 3, 5.9, 2.1], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.3, 2.9, 5.6, 1.8], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.5, 3, 5.8, 2.2], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [7.6, 3, 6.6, 2.1], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.9, 2.5, 4.5, 1.7], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [7.3, 2.9, 6.3, 1.8], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.7, 2.5, 5.8, 1.8], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [7.2, 3.6, 6.1, 2.5], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.5, 3.2, 5.1, 2], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.4, 2.7, 5.3, 1.9], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.8, 3, 5.5, 2.1], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.7, 2.5, 5, 2], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.8, 2.8, 5.1, 2.4], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.4, 3.2, 5.3, 2.3], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.5, 3, 5.5, 1.8], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [7.7, 3.8, 6.7, 2.2], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [7.7, 2.6, 6.9, 2.3], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6, 2.2, 5, 1.5], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.9, 3.2, 5.7, 2.3], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.6, 2.8, 4.9, 2], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [7.7, 2.8, 6.7, 2], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.3, 2.7, 4.9, 1.8], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.7, 3.3, 5.7, 2.1], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [7.2, 3.2, 6, 1.8], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.2, 2.8, 4.8, 1.8], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.1, 3, 4.9, 1.8], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.4, 2.8, 5.6, 2.1], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [7.2, 3, 5.8, 1.6], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [7.4, 2.8, 6.1, 1.9], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [7.9, 3.8, 6.4, 2], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.4, 2.8, 5.6, 2.2], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.3, 2.8, 5.1, 1.5], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.1, 2.6, 5.6, 1.4], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [7.7, 3, 6.1, 2.3], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.3, 3.4, 5.6, 2.4], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.4, 3.1, 5.5, 1.8], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6, 3, 4.8, 1.8], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.9, 3.1, 5.4, 2.1], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.7, 3.1, 5.6, 2.4], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.9, 3.1, 5.1, 2.3], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.8, 2.7, 5.1, 1.9], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.8, 3.2, 5.9, 2.3], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.7, 3.3, 5.7, 2.5], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.7, 3, 5.2, 2.3], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.3, 2.5, 5, 1.9], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.5, 3, 5.2, 2], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.2, 3.4, 5.4, 2.3], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.9, 3, 5.1, 1.8], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": true, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4], "range": [1, 4], "mirror": false, "ticktext": ["Sepal Length", "Sepal Width", "Petal Length", "Petal Width"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 1, 2, 3, 4, 5, 6, 7, 8], "range": [0, 8], "mirror": false, "ticktext": ["0", "1", "2", "3", "4", "5", "6", "7", "8"], "title": "Coordinate Value", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}], "legend": {"x": 0.739285714285714, "xref": "paper", "xanchor": "left", "y": 0.80952380952381, "yref": "paper", "yanchor": "bottom", "traceorder": "normal", "borderwidth": 0.5, "bordercolor": "rgb(38.25,38.25,38.25)", "bgcolor": "rgb(255,255,255)", "font": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(0,0,0_)"}}}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_497014093520 index=497014093520 %}


The resulting plot contains one line for each observation (flower). The color of each line indicates the flower species.





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
{% capture plot_747188650463 %}{% raw %}{"data": [{"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "setosa", "mode": "lines", "x": [1, 2, 3, 4], "y": [5, 3.4, 1.5, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": true}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.8, 3.2, 1.4, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.2, 3.7, 1.6, 0.3], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "versicolor", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.9, 2.8, 4.35, 1.3], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": true}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.6, 2.5, 4, 1.2], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.3, 3, 4.6, 1.5], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "virginica", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.5, 3, 5.55, 2], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": true}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.2, 2.8, 5.1, 1.8], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.9, 3.2, 5.9, 2.3], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": true, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4], "range": [1, 4], "mirror": false, "ticktext": ["Sepal Length", "Sepal Width", "Petal Length", "Petal Width"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 1, 2, 3, 4, 5, 6, 7], "range": [0, 7], "mirror": false, "ticktext": ["0", "1", "2", "3", "4", "5", "6", "7"], "title": "Coordinate Value", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}], "legend": {"x": 0.739285714285714, "xref": "paper", "xanchor": "left", "y": 0.80952380952381, "yref": "paper", "yanchor": "bottom", "traceorder": "normal", "borderwidth": 0.5, "bordercolor": "rgb(38.25,38.25,38.25)", "bgcolor": "rgb(255,255,255)", "font": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(0,0,0_)"}}}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_747188650463 index=747188650463 %}


The plot shows the median values for each group as a solid line and the quartile values as dotted lines of the same color. For example, the solid blue line shows the median value measured for each variable on `setosa` irises. The dotted blue line below the solid blue line shows the 25th percentile of measurements for each variable on `setosa` irises. The dotted blue line above the solid blue line shows the 75th percentile of measurements for each variable on `setosa` irises.




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
{% capture plot_847222766164 %}{% raw %}{"data": [{"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "setosa", "mode": "lines", "x": [1, 2, 3, 4], "y": [5, 3.4, 1.5, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 2, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 2}, "color": "rgb(0,113.985,188.955)"}, "showlegend": true}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.8, 3.2, 1.4, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 2, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 2}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.2, 3.7, 1.6, 0.3], "line": {"color": "rgb(0,113.985,188.955)", "width": 2, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 2}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "versicolor", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.9, 2.8, 4.35, 1.3], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 2, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 2}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": true}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.6, 2.5, 4, 1.2], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 2, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 2}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.3, 3, 4.6, 1.5], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 2, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 2}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "virginica", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.5, 3, 5.55, 2], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 2, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 2}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": true}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.2, 2.8, 5.1, 1.8], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 2, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 2}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.9, 3.2, 5.9, 2.3], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 2, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 2}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": true, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4], "range": [1, 4], "mirror": false, "ticktext": ["Sepal Length", "Sepal Width", "Petal Length", "Petal Width"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 1, 2, 3, 4, 5, 6, 7], "range": [0, 7], "mirror": false, "ticktext": ["0", "1", "2", "3", "4", "5", "6", "7"], "title": "Coordinate Value", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}], "legend": {"x": 0.739285714285714, "xref": "paper", "xanchor": "left", "y": 0.80952380952381, "yref": "paper", "yanchor": "bottom", "traceorder": "normal", "borderwidth": 0.5, "bordercolor": "rgb(38.25,38.25,38.25)", "bgcolor": "rgb(255,255,255)", "font": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(0,0,0_)"}}}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_847222766164 index=847222766164 %}


Specifying `'LineWidth'` in this way sets the width of every line in the plot to 2.

Recreate the parallel coordinates plot, but this time, use handles to increase the width of only the line representing the median value for each measurement made on irises in the `setosa` group.

```{matlab}
load fisheriris

labels = {'Sepal Length','Sepal Width','Petal Length','Petal Width'};

h = parallelcoords(meas,'group',species,'labels',labels,... 
               'quantile',.25);

fig2plotly(gcf);
```
{% capture plot_941037220562 %}{% raw %}{"data": [{"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "setosa", "mode": "lines", "x": [1, 2, 3, 4], "y": [5, 3.4, 1.5, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": true}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.8, 3.2, 1.4, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.2, 3.7, 1.6, 0.3], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "versicolor", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.9, 2.8, 4.35, 1.3], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": true}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.6, 2.5, 4, 1.2], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.3, 3, 4.6, 1.5], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "virginica", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.5, 3, 5.55, 2], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": true}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.2, 2.8, 5.1, 1.8], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.9, 3.2, 5.9, 2.3], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": true, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4], "range": [1, 4], "mirror": false, "ticktext": ["Sepal Length", "Sepal Width", "Petal Length", "Petal Width"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 1, 2, 3, 4, 5, 6, 7], "range": [0, 7], "mirror": false, "ticktext": ["0", "1", "2", "3", "4", "5", "6", "7"], "title": "Coordinate Value", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}], "legend": {"x": 0.739285714285714, "xref": "paper", "xanchor": "left", "y": 0.80952380952381, "yref": "paper", "yanchor": "bottom", "traceorder": "normal", "borderwidth": 0.5, "bordercolor": "rgb(38.25,38.25,38.25)", "bgcolor": "rgb(255,255,255)", "font": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(0,0,0_)"}}}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_941037220562 index=941037220562 %}


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
{% capture plot_369527352928 %}{% raw %}{"data": [{"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "setosa", "mode": "lines", "x": [1, 2, 3, 4], "y": [5, 3.4, 1.5, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 2, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 2}, "color": "rgb(0,113.985,188.955)"}, "showlegend": true}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [4.8, 3.2, 1.4, 0.2], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.2, 3.7, 1.6, 0.3], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "versicolor", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.9, 2.8, 4.35, 1.3], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": true}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [5.6, 2.5, 4, 1.2], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.3, 3, 4.6, 1.5], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "virginica", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.5, 3, 5.55, 2], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": true}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.2, 2.8, 5.1, 1.8], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 2, 3, 4], "y": [6.9, 3.2, 5.9, 2.3], "line": {"color": "rgb(236.895,176.97,31.875)", "width": 0.5, "dash": "dot"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(236.895,176.97,31.875)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": true, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4], "range": [1, 4], "mirror": false, "ticktext": ["Sepal Length", "Sepal Width", "Petal Length", "Petal Width"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 1, 2, 3, 4, 5, 6, 7], "range": [0, 7], "mirror": false, "ticktext": ["0", "1", "2", "3", "4", "5", "6", "7"], "title": "Coordinate Value", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}], "legend": {"x": 0.739285714285714, "xref": "paper", "xanchor": "left", "y": 0.80952380952381, "yref": "paper", "yanchor": "bottom", "traceorder": "normal", "borderwidth": 0.5, "bordercolor": "rgb(38.25,38.25,38.25)", "bgcolor": "rgb(255,255,255)", "font": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(0,0,0_)"}}}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_369527352928 index=369527352928 %}


