---
description: How to make Gauge Plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Gauge Plots
display_as: financial
order: 7
permalink: matlab/gauge-charts/
thumnail_github: gauge-charts.png
layout: base
language: matlab
page_type: u-guide
---

## Create Circular Gauge

```{matlab}
fig = uifigure;
cg = uigauge(fig);

fig2plotly(gcf);
```

<!--------------------- EXAMPLE  BREAK ------------------------->

## Create Linear Gauge

```{matlab}
fig = uifigure;
lg  = uigauge(fig,'linear');

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Create Linear Gauge in Panel

Specify a panel as the parent container for a linear gauge.

```{matlab}
fig = uifigure;
pnl = uipanel(fig);
lg = uigauge(pnl,'linear');

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Set and Access Gauge Property Values

Create a circular gauge, and set the `ScaleDirection` property to
            specify that the needle moves counterclockwise.

```{matlab}
fig = uifigure;
cg = uigauge(fig,'ScaleDirection','counterclockwise');
```

Change the number of major ticks, specify matching tick labels, and remove minor ticks.

```{matlab}
fig = uifigure;
cg = uigauge(fig,'ScaleDirection','counterclockwise');

cg.MajorTicks = [0:10:100];
cg.MajorTickLabels = {'0','10','20','30','40','50','60','70','80','90','100'};
cg.MinorTicks = [];

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Scale Colors and Color Limits

```{matlab}
fig = uifigure;
cg = uigauge(fig,'ScaleColors',{'yellow','red'},...
                 'ScaleColorLimits', [60 80; 80 100]);

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

