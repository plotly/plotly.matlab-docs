---
description: How to make Filled Area plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Filled Area
display_as: basic
order: 7
permalink: matlab/filled-area-plots/
thumnail_github: filled-area-plots.png
layout: base
language: matlab
page_type: u-guide
---

## Create Area Plot with One Curve

Create a vector of four values. Display the values in an area plot.

```{matlab}
y = [1 5 6 3];
area(y)

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Create Area Plot with Multiple Curves

Create matrix `Y`. Then display the values in `Y` as an area plot. Because `Y` contains three columns, `area` plots three curves and stacks them.

```{matlab}
Y = [1 5 3; 3 2 7; 1 5 3; 2 6 1];
area(Y)

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Create Area Plot Using Horizontal Axis Values

Define `x` as a vector of three car dealership IDs. Define `Y` as a matrix containing the number of cars sold per model. Display the values in the matrix in an area plot. Then add the axis labels and a legend.

```{matlab}
x = [10 11 12];
Y = [21.6 25.4; 70.8 66.1; 58.0 43.6];
area(x,Y)
xlabel('Dealership ID')
ylabel('Sales')
legend({'Model A','Model B'})

fig2plotly(gcf);
```

Set the tick marks along the x-axis to correspond to the values in `x`. 

```{matlab}
x = [10 11 12];
Y = [21.6 25.4; 70.8 66.1; 58.0 43.6];
area(x,Y)
xlabel('Dealership ID')
ylabel('Sales')
legend({'Model A','Model B'})

ax = gca; % current axes
ax.XTick = [10 11 12];

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Adjust Baseline Value of Area Plot

Create matrix `Y`. Then display the values of `Y` in an area plot with a baseline value of -4`. `area` fills the areas specified by the curves and the line `y = -4`.

```{matlab}
Y = [1 5 3; 3 2 7; 1 5 3; 2 6 1];
basevalue = -4;
area(Y,basevalue)

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Line Style of Area Plot

Create matrix `Y`. Display the values of `Y` in an area plot that uses a dotted line style.

```{matlab}
Y = [1 3 5; 3 2 7; 3 4 2];
area(Y,'LineStyle',':')

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Filled Area into Target Axes

Create a tiled chart layout in the `'flow'` tile arrangement, so that the axes fill the available space in the layout. Next, call the `nexttile` function to create an `Axes` object and return it as `ax1`. Display an area plot by passing `ax1` to the `area` function.

```{matlab}
tiledlayout('flow')
ax1 = nexttile;
Y1 = [3 6; 1 5; 7 2; 5 9];
area(ax1,Y1)

fig2plotly(gcf);
```

Repeat the process to create a second `Axes` object and a second area plot.

```{matlab}
tiledlayout('flow')
ax1 = nexttile;
Y1 = [3 6; 1 5; 7 2; 5 9];
area(ax1,Y1)

ax2 = nexttile;
Y2 = [4 2 11; 5 6 0; 1 7 2; 9 5 9];
area(ax2,Y2)

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Change Area Characteristics After Plotting

Create matrix `Y`. Then create an area plot, specifying an output argument when calling the `area` function. In this case, `area` returns a vector of three `Area` objects. Each object corresponds to a different column of `Y`.

```{matlab}
Y = [2 3 4; 6 1 5; 7 4 9];
a = area(Y);

fig2plotly(gcf);
```

Modify the second area to be green with thick red edges.

```{matlab}
Y = [2 3 4; 6 1 5; 7 4 9];
a = area(Y);

a(2).FaceColor = [0.2 0.6 0.5];
a(2).EdgeColor = [0.63 0.08 0.18];
a(2).LineWidth = 2;

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Set Colors in Area Plot

Display an area plot with three curves.

```{matlab}
area([1 5 3; 3 2 7; 1 5 3; 2 6 1])

fig2plotly(gcf);
```

Set the color order to blue, purple, and gray.

```{matlab}
area([1 5 3; 3 2 7; 1 5 3; 2 6 1])

newcolors = [0 0.5 1; 0.5 0 1; 0.7 0.7 0.7];
colororder(newcolors)

fig2plotly(gcf);
```



<!--------------------- EXAMPLE BREAK ------------------------->

