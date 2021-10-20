---
description: How to make 3D Bubble Charts plots in MATLAB<sup>&reg;</sup> with Plotly.
name: 3D Bubble Charts
display_as: 3d_charts
order: 1
permalink: matlab/3d-bubble-charts/
thumnail_github: 3d-bubble-charts.png
layout: base
language: matlab
page_type: u-guide
---

## Plot Random Bubbles

Define a set of bubble coordinates as the vectors `x`, `y`, and `z`. Define `sz` as a vector that specifies the bubble sizes. Then create a bubble chart of `x`, `y`, and `z`. 

```{matlab}
x = rand(1,20);
y = rand(1,20);
z = rand(1,20);
sz = rand(1,20);
bubblechart3(x,y,z,sz);

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Bubble Colors

Define a set of bubble coordinates as the vectors `x`, `y`, and `z`. Define `sz` as a vector that specifies the bubble sizes. Then create a bubble chart of `x`, `y`, and `z`, and specify the color as red. By default, the bubbles are partially transparent.

```{matlab}
x = rand(1,20);
y = rand(1,20);
z = rand(1,20);
sz = rand(1,20);

bubblechart3(x,y,z,sz,'red');

fig2plotly(gcf);
```

For a custom color, you can specify an RGB triplet or a hexadecimal color code. For example, the hexadecimal color code `'#7031BB'`, specifies a shade of purple.

```{matlab}
x = rand(1,20);
y = rand(1,20);
z = rand(1,20);
sz = rand(1,20);

bubblechart3(x,y,z,sz,'#7031BB');

fig2plotly(gcf);
```

You can also specify a different color for each bubble. For example, specify a vector to select colors from the figure's colormap.

```{matlab}
x = rand(1,20);
y = rand(1,20);
z = rand(1,20);
sz = rand(1,20);

c = 1:20;
bubblechart3(x,y,z,sz,c)

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Bubble Transparency and Outline Color

Define a set of bubble coordinates as the vectors `x`, `y`, and `z`. Define `sz` as a vector that specifies the bubble sizes. Then create a bubble chart of `x`, `y`, and `z`. By default, the bubbles are 60% opaque, and the edges are completely opaque with the same color.

```{matlab}
x = rand(1,20);
y = rand(1,20);
z = rand(1,20);
sz = rand(1,20);

bubblechart3(x,y,z,sz);

fig2plotly(gcf);
```

You can customize the opacity and the outline color by setting the `MarkerFaceAlpha` and `MarkerEdgeColor` properties, respectively. One way to set a property is by specifying a name-value pair argument when you create the chart. For example, you can specify 20% opacity by setting the `MarkerFaceAlpha` value to `0.20`.

```{matlab}
x = rand(1,20);
y = rand(1,20);
z = rand(1,20);
sz = rand(1,20);

bc = bubblechart3(x,y,z,sz,'MarkerFaceAlpha',0.20);

fig2plotly(gcf);
```

If you create the chart by calling the `bubblechart3` function with a return argument, you can use the return argument to set properties on the chart after creating it. For example, you can change the outline color to purple.

```{matlab}
x = rand(1,20);
y = rand(1,20);
z = rand(1,20);
sz = rand(1,20);

bc = bubblechart3(x,y,z,sz,'MarkerFaceAlpha',0.20);
bc.MarkerEdgeColor = [0.5 0 0.5];

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Add a Bubble Legend

Define a data set that shows the contamination levels of a certain toxin across different towns in a metropolitan area. 

- Define `towns` as the populations of the towns. 
- Define `nsites` as the number of industrial sites in the corresponding towns. 
- Define `nregulated` as the number of industrial sites that conform to the local environmental regulations.
- Define `levels` as the contamination levels in the towns.

```{matlab}
towns = randi([25000 500000],[1 30]);
nsites = randi(10,1,30);
nregulated = (-3 * nsites) + (5 * randn(1,30) + 20);
levels = (3 * nsites) + (7 * randn(1,30) + 20);
```

Display the data in a bubble chart. Create axis labels using the `xlabel`, `ylabel`, and `zlabel` functions. Use the `bubblesize` function to make all the bubbles between 5 and 30 points in diameter. Then add a bubble legend that shows the relationship between bubble size and population.

```{matlab}
towns = randi([25000 500000],[1 30]);
nsites = randi(10,1,30);
nregulated = (-3 * nsites) + (5 * randn(1,30) + 20);
levels = (3 * nsites) + (7 * randn(1,30) + 20);

bubblechart3(nsites,nregulated,levels,towns)
xlabel('Industrial Sites')
ylabel('Regulated Sites')
zlabel('Contamination Level')

bubblesize([5 30])
bubblelegend('Town Population','Location','eastoutside')

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Display Bubbles in Different Axes on the Same Scale

Define two sets of data that show the contamination levels of a certain toxin across different towns on the east and west sides of a certain metropolitan area.

- Define `towns1` `and` `towns2` as the populations of the towns.
- Define `nsites1` and `nsites2`  as the number of industrial sites in the corresponding towns. 
- Define `nregulated1` and `nregulated2` as the number of industrial sites that conform to the local environmental regulations.
- Define `levels1` and `levels2` as the contamination levels in the towns.

```{matlab}
towns1 = randi([25000 500000],[1 30]);
towns2 = towns1/3;
nsites1 = randi(10,1,30);
nsites2 = randi(10,1,30);
nregulated1 = (-3 * nsites1) + (5 * randn(1,30) + 20);
nregulated2 = (-2 * nsites2) + (5 * randn(1,30) + 20);
levels1 = (3 * nsites1) + (7 * randn(1,30) + 20);
levels2 = (5 * nsites2) + (7 * randn(1,30) + 20);
```

Create a tiled chart layout so you can visualize the data side-by-side. Then create an axes object in the first tile and plot the data for the east side of the city. Add a title and axis labels. Then repeat the process in the second tile to plot the west side data.

```{matlab}
towns1 = randi([25000 500000],[1 30]);
towns2 = towns1/3;
nsites1 = randi(10,1,30);
nsites2 = randi(10,1,30);
nregulated1 = (-3 * nsites1) + (5 * randn(1,30) + 20);
nregulated2 = (-2 * nsites2) + (5 * randn(1,30) + 20);
levels1 = (3 * nsites1) + (7 * randn(1,30) + 20);
levels2 = (5 * nsites2) + (7 * randn(1,30) + 20);

tiledlayout(2,1,'TileSpacing','compact')
ax1 = nexttile;

% East side
bubblechart3(ax1,nsites1,nregulated1,levels1,towns1);
title('East Side')
xlabel('Industrial Sites')
ylabel('Regulated Sites')
zlabel('Contamination Level')

% West side
ax2 = nexttile;
bubblechart3(ax2,nsites2,nregulated2,levels2,towns2);
title('West Side')
xlabel('Industrial Sites')
ylabel('Regulated Sites')
zlabel('Contamination Level')

fig2plotly(gcf);
```

Reduce all the bubble sizes to make it easier to see all the bubbles. In this case, change the range of diameters to be between `5` and `20` points.

```{matlab}
towns1 = randi([25000 500000],[1 30]);
towns2 = towns1/3;
nsites1 = randi(10,1,30);
nsites2 = randi(10,1,30);
nregulated1 = (-3 * nsites1) + (5 * randn(1,30) + 20);
nregulated2 = (-2 * nsites2) + (5 * randn(1,30) + 20);
levels1 = (3 * nsites1) + (7 * randn(1,30) + 20);
levels2 = (5 * nsites2) + (7 * randn(1,30) + 20);

tiledlayout(2,1,'TileSpacing','compact')
ax1 = nexttile;

% East side
bubblechart3(ax1,nsites1,nregulated1,levels1,towns1);
title('East Side')
xlabel('Industrial Sites')
ylabel('Regulated Sites')
zlabel('Contamination Level')

% West side
ax2 = nexttile;
bubblechart3(ax2,nsites2,nregulated2,levels2,towns2);
title('West Side')
xlabel('Industrial Sites')
ylabel('Regulated Sites')
zlabel('Contamination Level')

bubblesize(ax1,[5 20])
bubblesize(ax2,[5 20])

fig2plotly(gcf);
```

The east side towns are three times the size of the west side towns, but the bubble sizes do not reflect this information in the preceding charts. This is because the smallest and largest bubbles map to the smallest and largest data points in each of the axes. To display the bubbles on the same scale, define a vector called `alltowns` that includes the populations from both sides of the city. The use the `bubblelim` function to reset the scaling for both charts. 

```{matlab}
towns1 = randi([25000 500000],[1 30]);
towns2 = towns1/3;
nsites1 = randi(10,1,30);
nsites2 = randi(10,1,30);
nregulated1 = (-3 * nsites1) + (5 * randn(1,30) + 20);
nregulated2 = (-2 * nsites2) + (5 * randn(1,30) + 20);
levels1 = (3 * nsites1) + (7 * randn(1,30) + 20);
levels2 = (5 * nsites2) + (7 * randn(1,30) + 20);

tiledlayout(2,1,'TileSpacing','compact')
ax1 = nexttile;

% East side
bubblechart3(ax1,nsites1,nregulated1,levels1,towns1);
title('East Side')
xlabel('Industrial Sites')
ylabel('Regulated Sites')
zlabel('Contamination Level')

% West side
ax2 = nexttile;
bubblechart3(ax2,nsites2,nregulated2,levels2,towns2);
title('West Side')
xlabel('Industrial Sites')
ylabel('Regulated Sites')
zlabel('Contamination Level')

bubblesize(ax1,[5 20])
bubblesize(ax2,[5 20])

alltowns = [towns1 towns2];
newlims = [min(alltowns) max(alltowns)];
bubblelim(ax1,newlims)
bubblelim(ax2,newlims)

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

