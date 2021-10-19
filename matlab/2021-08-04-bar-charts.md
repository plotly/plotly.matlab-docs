---
description: How to make Bar Charts plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Bar Charts
display_as: basic
order: 3
permalink: matlab/bar-charts-test/
thumnail_github: thumbnail/bar.jpg
layout: base
language: matlab
page_type: u-guide
---

## Create Bar Graph

```{matlab}
y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(y)

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Bar Locations

Specify the bar locations along the x-axis. 

```{matlab}
x = 1900:10:2000;
y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(x,y)

fig2plotly(gcf);
```



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Bar Width

Set the width of each bar to 40 percent of the total space available for each bar. 

```{matlab}
y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(y,0.4)

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Display Groups of Bars

Display four groups of three bars.

```{matlab}
y = [2 2 3; 2 5 6; 2 8 9; 2 11 12];
bar(y)

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Display Stacked Bars

Display one bar for each row of the matrix. The height of each bar is the sum of the elements in the row.

```{matlab}
y = [2 2 3; 2 5 6; 2 8 9; 2 11 12];
bar(y,'stacked')

fig2plotly(gcf);
```



```{matlab}
measles = [38556 24472 14556 18060 19549 8122 28541 7880 3283 4135 7953 1884]';
mumps = [20178 23536 34561 37395 36072 32237 18597 9408 6005 6268 8963 13882]';
chickenPox = [37140 32169 37533 39103 33244 23269 16737 5411 3435 6052 12825 23332]';

fig = figure;
bar(1:12, [measles mumps chickenPox], 0.5, 'stack');
axis([0 13 0 100000]);
title('Childhood diseases by month');
xlabel('Month');
ylabel('Cases (in thousands)');
legend('Measles', 'Mumps', 'Chicken pox');

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Display Stacked Bars with Negative Data

Define `x` as a vector of three year values. Define `y` as a matrix that contains a combination of negative and positive values. Display the values in a bar graph.

```{matlab}
x = [1980 1990 2000];
y = [15 20 -5; 10 -17 21; -10 5 15];
bar(x,y,'stacked')

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Categorical Data

One way to indicate categories for your bars is to specify `X` as a categorical array. The `bar` function uses a sorted list of the categories, so the bars might display in a different order than you expect. To preserve the order, call the `reordercats` function.

Define `X` as categorical array, and call the `reordercats` function to specify the order for the bars. Then define `Y` as a vector of bar heights and display the bar graph.

```{matlab}
X = categorical({'Small','Medium','Large','Extra Large'});
X = reordercats(X,{'Small','Medium','Large','Extra Large'});
Y = [10 21 33 52];
bar(X,Y)

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Labels at the Ends of Bars

Define `vals` as a matrix containing the values of two data sets. Display the values in a bar graph and specify an output argument. Since there are two data sets, `bar` returns a vector containing two `Bar` objects.

```{matlab}
x = [1 2 3];
vals = [2 3 6; 11 23 26];
b = bar(x,vals);

fig2plotly(gcf);
```


Display the values at the tips of the first series of bars. Get the coordinates of the tips of the bars by getting the `XEndPoints` and `YEndPoints` properties of the first `Bar` object. Pass those coordinates to the `text` function, and specify the vertical and horizontal alignment so that the values are centered above the tips of the bars.

```{matlab}
x = [1 2 3];
vals = [2 3 6; 11 23 26];
b = bar(x,vals);

xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;
labels1 = string(b(1).YData);
text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')

fig2plotly(gcf);
```

Next, display the values above the tips of the second series of bars.

```{matlab}
x = [1 2 3];
vals = [2 3 6; 11 23 26];
b = bar(x,vals);

xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;
labels1 = string(b(1).YData);
text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')

xtips2 = b(2).XEndPoints;
ytips2 = b(2).YEndPoints;
labels2 = string(b(2).YData);
text(xtips2,ytips2,labels2,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Axes for Bar Graph

Starting in R2019b, you can display a tiling of bar graphs using the `tiledlayout` and `nexttile` functions. Call the `tiledlayout` function to create a 2-by-1 tiled chart layout. Call the `nexttile` function to create the axes objects `ax1` and `ax2`. Display a bar graph in the top axes. In the bottom axes, display a stacked bar graph of the same data.

```{matlab}
y = [1 2 3; 4 5 6];
tiledlayout(2,1)

% Top bar graph
ax1 = nexttile;
bar(ax1,y)

% Bottom bar graph
ax2 = nexttile;
bar(ax2,y,'stacked')

fig2plotly(gcf);
```



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Bar Color

Create a bar graph using red bars. 

```{matlab}
y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(y,'r')

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Bar and Outline Colors

Set the bar interior color and outline color using RGB triplets. Set the width of the bar outline.

```{matlab}
y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(y,'FaceColor',[0 .5 .5],'EdgeColor',[0 .9 .9],'LineWidth',1.5)

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Control Individual Bar Colors

Control individual bar colors using the `CData` property of the `Bar` object. 

Create a bar chart and assign the `Bar` object to a variable. Set the `FaceColor` property of the `Bar` object to `'flat'` so that the chart uses the colors defined in the `CData` property. By default, the `CData` property is prepopulated with a matrix of the default RGB color values. To change a particular color, change the corresponding row in the matrix. For example, change the color of the second bar. 

```{matlab}
b = bar(rand(10,1));
b.FaceColor = 'flat';
b.CData(2,:) = [.5 0 .5];

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Bar Chart with Colormap Colors

Create a bar chart that uses colormap colors by setting the `FaceColor` property to `'flat'`. Then set the `CData` property for each `Bar` object to an integer.

```{matlab}
y = [1 3 5; 3 2 7; 3 4 2];
b = bar(y,'FaceColor','flat');
for k = 1:size(y,2)
    b(k).CData = k;
end

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Customize One Series in Grouped or Stacked Bars

Create matrix `y`, where each column is a series of data. Call the `bar` function to display the data in a bar graph, and specify an output argument. The output is a vector of three `Bar` objects, where each object corresponds to a different series. This is true whether the bars are grouped or stacked.

```{matlab}
y = [10 15 20; 30 35 40; 50 55 62];
b = bar(y);

fig2plotly(gcf);
```

Make the third series of bars green.

```{matlab}
y = [10 15 20; 30 35 40; 50 55 62];
b = bar(y);

b(3).FaceColor = [.2 .6 .5];

fig2plotly(gcf);
```


```{matlab}
x = 1900:10:2000;

y1 = [75.99,91.92,105.71,...
       123.23,131.69,...
       150.67,179.33,203.12,...
       226.55,249.63,281.42];

y2 = [55.2,61.972,65.71,...
       76.23,87.669,...
       91.7,103.23,124.21,...
       130.55,135.63,145.22];

fig = figure('Color','w');
bar(x, [y1' y2'],'grouped');
ax = get(gca);
cat = ax.Children;

set(cat(2),'FaceColor',[145 25 206]/255,'BarWidth',2);

set(cat(1),'FaceColor',[45 125 206]/255,'BarWidth',2);

set(gca,'box','off');

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->
