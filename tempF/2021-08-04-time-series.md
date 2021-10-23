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
---

## Plot Timetable Variables

Read data from a spreadsheet to a table. Then convert the table to a timetable. The first variable that contains dates and times, `OutageTime`, provides the row times for the timetable. Display the first five rows.

```{matlab}
tbl = readtable('outages.csv');
tbl = table2timetable(tbl);
head(tbl,5)
```
<pre class="code-output">
ans =

  5×5 timetable

       <strong>OutageTime</strong>          <strong>Region</strong>           <strong>Loss</strong>         <strong>Customers</strong>     <strong>RestorationTime</strong>            <strong>Cause</strong>       
    <strong>________________</strong>    <strong>_____________</strong>    <strong>___________</strong>    <strong>___________</strong>    <strong>________________</strong>    <strong>___________________</strong>

    <strong>2002-02-01 12:18</strong>    {'SouthWest'}    458.9772218    1820159.482    2002-02-07 16:50    {'winter storm'   }
    <strong>2003-01-23 00:49</strong>    {'SouthEast'}    530.1399497    212035.3001                 NaT    {'winter storm'   }
    <strong>2003-02-07 21:15</strong>    {'SouthEast'}    289.4035493    142938.6282    2003-02-17 08:14    {'winter storm'   }
    <strong>2004-04-06 05:44</strong>    {'West'     }    434.8053524    340371.0338    2004-04-06 06:10    {'equipment fault'}
    <strong>2002-03-16 06:18</strong>    {'MidWest'  }    186.4367788     212754.055    2002-03-18 23:23    {'severe storm'   }
</pre>



Sort the timetable so that its row times are in order. The row times of a timetable do not need to be in order. However, if you use the row times as the x-axis of a plot, then it is better to ensure the timetable is sorted by its row times.

```{matlab}
tbl = readtable('outages.csv');
tbl = table2timetable(tbl);

tbl = sortrows(tbl);
head(tbl,5)
```
<pre class="code-output">
ans =

  5×5 timetable

       <strong>OutageTime</strong>          <strong>Region</strong>           <strong>Loss</strong>         <strong>Customers</strong>     <strong>RestorationTime</strong>          <strong>Cause</strong>      
    <strong>________________</strong>    <strong>_____________</strong>    <strong>___________</strong>    <strong>___________</strong>    <strong>________________</strong>    <strong>________________</strong>

    <strong>2002-02-01 12:18</strong>    {'SouthWest'}    458.9772218    1820159.482    2002-02-07 16:50    {'winter storm'}
    <strong>2002-03-05 17:53</strong>    {'MidWest'  }    96.56294147    286657.9948    2002-03-10 14:41    {'wind'        }
    <strong>2002-03-16 06:18</strong>    {'MidWest'  }    186.4367788     212754.055    2002-03-18 23:23    {'severe storm'}
    <strong>2002-03-26 01:59</strong>    {'MidWest'  }    388.0408135    564223.7059    2002-03-28 19:55    {'winter storm'}
    <strong>2002-04-20 16:46</strong>    {'MidWest'  }    23141.16309            NaN                 NaT    {'unknown'     }
</pre>

Create a stacked plot of data from `tbl`. The row times, `OutageTime`, provide the values along the x-axis. The `stackedplot` function plots the values from the `Loss`, `Customers`, and `RestorationTime` variables, with each variable plotted along its own y-axis. However, the plot does not include the `Region` and `Cause` variables because they contain data that cannot be plotted.

```{matlab}
tbl = readtable('outages.csv');
tbl = table2timetable(tbl);

tbl = sortrows(tbl);

stackedplot(tbl)

fig2plotly(gcf);
```
{% capture plot_625937626080 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_625937626080 index=625937626080 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Variables

Create a table from patient data. Display the first three rows.

```{matlab}
tbl = readtable('patients.xls');
head(tbl,3)
```
<pre class="code-output">
ans =

  3×10 table

      <strong>LastName</strong>        <strong>Gender</strong>      <strong>Age</strong>              <strong>Location</strong>               <strong>Height</strong>    <strong>Weight</strong>    <strong>Smoker</strong>    <strong>Systolic</strong>    <strong>Diastolic</strong>    <strong>SelfAssessedHealthStatus</strong>
    <strong>____________</strong>    <strong>__________</strong>    <strong>___</strong>    <strong>_____________________________</strong>    <strong>______</strong>    <strong>______</strong>    <strong>______</strong>    <strong>________</strong>    <strong>_________</strong>    <strong>________________________</strong>

    {'Smith'   }    {'Male'  }    38     {'County General Hospital'  }      71       176      true        124          93             {'Excellent'}      
    {'Johnson' }    {'Male'  }    43     {'VA Hospital'              }      69       163      false       109          77             {'Fair'     }      
    {'Williams'}    {'Female'}    38     {'St. Mary's Medical Center'}      64       131      false       125          83             {'Good'     }
</pre>



Plot only four of the variables from the table.

```{matlab}
tbl = readtable('patients.xls');

stackedplot(tbl,{'Height','Weight','Systolic','Diastolic'})

fig2plotly(gcf);
```
{% capture plot_137868992413 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_137868992413 index=137868992413 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Reorder Variables

Create a timetable and display its first three rows.

```{matlab}
tbl = readtable('outages.csv');
tbl = table2timetable(tbl);
tbl = sortrows(tbl);
head(tbl,3)
```
<pre class="code-output">
ans =

  3×5 timetable

       <strong>OutageTime</strong>          <strong>Region</strong>           <strong>Loss</strong>         <strong>Customers</strong>     <strong>RestorationTime</strong>          <strong>Cause</strong>      
    <strong>________________</strong>    <strong>_____________</strong>    <strong>___________</strong>    <strong>___________</strong>    <strong>________________</strong>    <strong>________________</strong>

    <strong>2002-02-01 12:18</strong>    {'SouthWest'}    458.9772218    1820159.482    2002-02-07 16:50    {'winter storm'}
    <strong>2002-03-05 17:53</strong>    {'MidWest'  }    96.56294147    286657.9948    2002-03-10 14:41    {'wind'        }
    <strong>2002-03-16 06:18</strong>    {'MidWest'  }    186.4367788     212754.055    2002-03-18 23:23    {'severe storm'}
</pre>


Reorder the variables by specifying them in an order that differs from their order in the table. For example, `RestorationTime` is the last variable in the timetable that can be plotted. By default, `stackedplot` places it at the bottom of the plot. But you can reorder the variables to put `RestorationTime` at the top.

```{matlab}
tbl = readtable('outages.csv');
tbl = table2timetable(tbl);
tbl = sortrows(tbl);

stackedplot(tbl,{'RestorationTime','Loss','Customers'})

fig2plotly(gcf);
```
{% capture plot_217801593712 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_217801593712 index=217801593712 %}


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
<pre class="code-output">
ans =

  3×3 table

    <strong>Weight</strong>    <strong>Systolic</strong>    <strong>Diastolic</strong>
    <strong>______</strong>    <strong>________</strong>    <strong>_________</strong>

     176        124          93    
     163        109          77    
     131        125          83
</pre>

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
{% capture plot_182141075890 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_182141075890 index=182141075890 %}


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
<pre class="code-output">
X =

     0     4     8    12    16    20


Y =

     5    99    67
    11    95    25
    62    68    30
    94    99    69
    36    77    53
    42    34    42
</pre>
{% capture plot_602638218036 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_602638218036 index=602638218036 %}



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
{% capture plot_750520055924 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_750520055924 index=750520055924 %}




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
{% capture plot_583533174262 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_583533174262 index=583533174262 %}


The object provides access to many properties that apply to all of the plots. For example, you can use `s.LineWidth` to make the lines wider.

```{matlab}
load outdoors
outdoors(1:3,:);

s = stackedplot(outdoors);

s.LineWidth = 2;

fig2plotly(gcf);
```
{% capture plot_551792514936 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_551792514936 index=551792514936 %}



The object also provides access to arrays of objects that you can use to modify the lines and y-axes for individual plots. To access properties of individual lines, use `s.LineProperties`. For each plot, you can specify a different line style, marker, plot type, and so on.

```{matlab}
load outdoors
outdoors(1:3,:);

s = stackedplot(outdoors);

s.LineWidth = 2;

s.LineProperties
```
<pre class="code-output">
ans = 

  3×1 StackedLineProperties array with properties:

    Color
    MarkerFaceColor
    MarkerEdgeColor
    LineStyle
    LineWidth
    Marker
    MarkerSize
    PlotType
</pre>

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
{% capture plot_583570618758 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_583570618758 index=583570618758 %}



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
<pre class="code-output">
ans = 

  3×1 StackedAxesProperties array with properties:

    YLimits
    LegendLabels
    LegendLocation
    LegendVisible
</pre>



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
{% capture plot_511819919958 %}{% raw %}{"data": [{"x": ["2013-10-04 22:23:00", "2013-11-04 22:23:00", "2013-12-04 22:23:00"], "y": [1, 3, 6], "type": "scatter"}], "layout": {"width": 840, "height": 630}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_511819919958 index=511819919958 %}


<!--------------------- EXAMPLE BREAK ------------------------->

