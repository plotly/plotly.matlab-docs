---
description: How to make Marginal Distribution Plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Marginal Distribution Plots
display_as: statistical
order: 13
permalink: matlab/marginal-plots/
thumnail_github: marginal-plots.png
layout: base
language: matlab
page_type: u-guide
published: false
---

## Create a scatterhist Plot

Load the sample data. Create data vector `x` from the
                        first column of the data matrix, which contains sepal length measurements
                        from iris flowers. Create data vector `y` from the second
                        column of the data matrix, which contains sepal width measurements from the
                        same flowers.

```{matlab}
load fisheriris.mat;
x = meas(:,1);
y = meas(:,2);
```

Create a scatter plot and two marginal histograms to visualize the relationship between sepal length and sepal width.

```{matlab}
load fisheriris.mat;
x = meas(:,1);
y = meas(:,2);

scatterhist(x,y)

fig2plotly(gcf);
```


Display a data tip for a bin in a histogram. A data tip appears when you hover over a bin in a histogram.


The data tip displays the probability density function estimate of the selected bin and the lower and upper values for the bin edges.



<!--------------------- EXAMPLE  BREAK ------------------------->

## Plot Grouped Data

Load the sample data. Create data vector `x` from the first column of the data matrix, which contains sepal length measurements from three species of iris flowers. Create data vector `y` from the second column of the data matrix, which contains sepal width measurements from the same flowers. 

```{matlab}
load fisheriris.mat;
x = meas(:,1);
y = meas(:,2);
```

Create a scatter plot and six kernel density plots to visualize the relationship between sepal length and sepal width, grouped by species. 

```{matlab}
load fisheriris.mat;
x = meas(:,1);
y = meas(:,2);

scatterhist(x,y,'Group',species,'Kernel','on')

fig2plotly(gcf);
```

The plot shows that the relationship between sepal length and width varies depending on the flower species. 



<!--------------------- EXAMPLE BREAK ------------------------->

## Customize the Plot Display

Load the sample data. Create data vector `x` from the first column of the data matrix, which contains sepal length measurements from three different species of iris flowers. Create data vector `y` from the second column of the data matrix, which contains sepal width measurements from the same flowers. 

```{matlab}
load fisheriris.mat;
x = meas(:,1);
y = meas(:,2);
```

Create a scatter plot and six kernel density plots to visualize the relationship between sepal length and sepal width as measured on three species of iris flowers, grouped by species. Customize the appearance of the plots. 

```{matlab}
load fisheriris.mat;
x = meas(:,1);
y = meas(:,2);

scatterhist(x,y,'Group',species,'Kernel','on','Location','SouthEast',...
    'Direction','out','Color','kbr','LineStyle',{'-','-.',':'},...
    'LineWidth',[2,2,2],'Marker','+od','MarkerSize',[4,5,6]);
    
fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Customize Plots Using Axes Handles

Load the sample data. Create data vector `x` from the first column of the data matrix, which contains sepal length measurements from three species of iris flowers. Create data vector `y` from the second column of the data matrix, which contains sepal width measurements from the same flowers.

```{matlab}
load fisheriris.mat;
x = meas(:,1);
y = meas(:,2);

```

Use axis handles to replace the marginal histograms with box plots.

```{matlab}
load fisheriris.mat;
x = meas(:,1);
y = meas(:,2);

h = scatterhist(x,y,'Group',species);
hold on;
clr = get(h(1),'colororder');
boxplot(h(2),x,species,'orientation','horizontal',...
     'label',{'','',''},'color',clr);
boxplot(h(3),y,species,'orientation','horizontal',...
     'label', {'','',''},'color',clr);
set(h(2:3),'XTickLabel','');
view(h(3),[270,90]);  % Rotate the Y plot
axis(h(1),'auto');  % Sync axes
hold off;

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Create a scatterhist Plot in a Specified Parent Container

Load the sample data. Create data vector `x` from the first column of the data matrix, which contains sepal length measurements from iris flowers. Create data vector `y` from the second column of the data matrix, which contains sepal width measurements from the same flowers.

```{matlab}
load fisheriris
x = meas(:,1);
y = meas(:,2);
```

Create a new figure and define two `uipanel` objects to divide the figure into two parts. In the upper half of the figure, plot the sample data using `scatterhist`. Include marginal kernel density plots grouped by species. In the lower half of the figure, plot a histogram of the sepal length measurements contained in `x`.

```{matlab}
load fisheriris
x = meas(:,1);
y = meas(:,2);

figure
hp1 = uipanel('position',[0 .5 1 .5]);
hp2 = uipanel('position',[0 0 1 .5]);
scatterhist(x,y,'Group',species,'Kernel','on','Parent',hp1);
axes('Parent',hp2);
hist(x);

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

