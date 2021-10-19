---
description: How to Format Plot's Ticks in MATLAB<sup>&reg;</sup> with Plotly.
name: Formatting Ticks
display_as: file_settings
order: 11
permalink: matlab/tick-formatting/
thumnail_github: thumbnail/tick-formatting.gif
layout: base
language: matlab
page_type: u-guide
---

## Display Tick Labels in Dollars

Display x-axis tick labels in dollars with and without decimal values.

Create a bar chart. Display the tick labels along the x-axis in dollars. 

```{matlab}
x = 0:20:100;
y = [88 67 98 43 45 65];
bar(x,y)
xtickformat('usd')

fig2plotly(gcf)
```

Query the tick label format. MATLAB® returns the format as a character vector containing the formatting operators.

```{matlab}
x = 0:20:100;
y = [88 67 98 43 45 65];
bar(x,y)
xtickformat('usd')

fmt = xtickformat
```


Display the tick labels with no decimal values by tweaking the numeric format to use a precision value of 0 instead of 2. 

```{matlab}
x = 0:20:100;
y = [88 67 98 43 45 65];
bar(x,y)
xtickformat('usd')

fmt = xtickformat

xtickformat('$%,.0f')

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Display Text After Each Tick Label

After creating a line chart, display the tick labels along the x-axis with the text "GHz" after each value.

```{matlab}
x = 1:10;
y = [.17 .25 .27 .28 .3 .32 .33 .34 .345 .35];
plot(x,y,'-V')
xtickformat('%g GHz')

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Control Number of Decimals Displayed

After creating a scatter plot, display the x-axis tick labels with two decimal places. Control the decimal places by passing `xtickformat` a character vector of a numeric format that uses fixed-point notation for the conversion character and a precision value of 2.

```{matlab}
x = linspace(0,1,100);
y = randn(1,100).*cos(x);
scatter(x,y)
xtickformat('%.2f')

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Format for Date Tick Labels

Create a line plot with datetime values along the x-axis. Then, change the format of the dates.

```{matlab}
t = datetime(2014,6,28) + caldays(1:10);
y = rand(1,10);
plot(t,y);
xtickformat('MM-dd')

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Query Current Tick Label Format

Create a scatter plot and display the x-axis tick labels in Euro. Then, query the tick label format. MATLAB® returns the format as a character vector containing the formatting operators. 

```{matlab}
x = rand(100,1);
y = rand(100,1);
scatter(x,y)
xtickformat('eur')

fig2plotly(gcf)
```


```{matlab}
x = rand(100,1);
y = rand(100,1);
scatter(x,y)
xtickformat('eur')

xfmt = xtickformat
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Tick Label Format for Specific Axes

Starting in R2019b, you can display a tiling of plots using the `tiledlayout` and `nexttile` functions. Call the `tiledlayout` function to create a 2-by-1 tiled chart layout. Call the `nexttile` function to create the axes objects `ax1` and `ax2`. Plot into each of the axes. Specify the tick label format for the x-axis of the lower plot by specifying `ax2` as the first input argument to `xtickformat`. Display the tick labels in U.S. dollars.

```{matlab}
tiledlayout(2,1)
ax1 = nexttile;
plot(ax1,rand(6))

ax2 = nexttile;
plot(ax2,rand(6))
xtickformat(ax2,'usd')

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

