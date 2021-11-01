---
description: How to make Marginal Distribution Plots in MATLAB<sup>&reg;</sup> with
  Plotly.
display_as: statistical
language: matlab
layout: base
name: Marginal Distribution Plots
order: 8
page_type: u-guide
permalink: matlab/marginal-plots/
published: false
thumnail_github: marginal-plots.png
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
{% capture plot_923963075559 %}{% raw %}{"data": [{"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "markers", "x": [5.1, 4.9, 4.7, 4.6, 5, 5.4, 4.6, 5, 4.4, 4.9, 5.4, 4.8, 4.8, 4.3, 5.8, 5.7, 5.4, 5.1, 5.7, 5.1, 5.4, 5.1, 4.6, 5.1, 4.8, 5, 5, 5.2, 5.2, 4.7, 4.8, 5.4, 5.2, 5.5, 4.9, 5, 5.5, 4.9, 4.4, 5.1, 5, 4.5, 4.4, 5, 5.1, 4.8, 5.1, 4.6, 5.3, 5, 7, 6.4, 6.9, 5.5, 6.5, 5.7, 6.3, 4.9, 6.6, 5.2, 5, 5.9, 6, 6.1, 5.6, 6.7, 5.6, 5.8, 6.2, 5.6, 5.9, 6.1, 6.3, 6.1, 6.4, 6.6, 6.8, 6.7, 6, 5.7, 5.5, 5.5, 5.8, 6, 5.4, 6, 6.7, 6.3, 5.6, 5.5, 5.5, 6.1, 5.8, 5, 5.6, 5.7, 5.7, 6.2, 5.1, 5.7, 6.3, 5.8, 7.1, 6.3, 6.5, 7.6, 4.9, 7.3, 6.7, 7.2, 6.5, 6.4, 6.8, 5.7, 5.8, 6.4, 6.5, 7.7, 7.7, 6, 6.9, 5.6, 7.7, 6.3, 6.7, 7.2, 6.2, 6.1, 6.4, 7.2, 7.4, 7.9, 6.4, 6.3, 6.1, 7.7, 6.3, 6.4, 6, 6.9, 6.7, 6.9, 5.8, 6.8, 6.7, 6.7, 6.3, 6.5, 6.2, 5.9], "y": [3.5, 3, 3.2, 3.1, 3.6, 3.9, 3.4, 3.4, 2.9, 3.1, 3.7, 3.4, 3, 3, 4, 4.4, 3.9, 3.5, 3.8, 3.8, 3.4, 3.7, 3.6, 3.3, 3.4, 3, 3.4, 3.5, 3.4, 3.2, 3.1, 3.4, 4.1, 4.2, 3.1, 3.2, 3.5, 3.6, 3, 3.4, 3.5, 2.3, 3.2, 3.5, 3.8, 3, 3.8, 3.2, 3.7, 3.3, 3.2, 3.2, 3.1, 2.3, 2.8, 2.8, 3.3, 2.4, 2.9, 2.7, 2, 3, 2.2, 2.9, 2.9, 3.1, 3, 2.7, 2.2, 2.5, 3.2, 2.8, 2.5, 2.8, 2.9, 3, 2.8, 3, 2.9, 2.6, 2.4, 2.4, 2.7, 2.7, 3, 3.4, 3.1, 2.3, 3, 2.5, 2.6, 3, 2.6, 2.3, 2.7, 3, 2.9, 2.9, 2.5, 2.8, 3.3, 2.7, 3, 2.9, 3, 3, 2.5, 2.9, 2.5, 3.6, 3.2, 2.7, 3, 2.5, 2.8, 3.2, 3, 3.8, 2.6, 2.2, 3.2, 2.8, 2.8, 2.7, 3.3, 3.2, 2.8, 3, 2.8, 3, 2.8, 3.8, 2.8, 2.8, 2.6, 3, 3.4, 3.1, 3, 3.1, 3.1, 3.1, 2.7, 3.2, 3.3, 3, 2.5, 3, 3.4, 3], "line": {}, "marker": {"size": 3.6, "symbol": "circle", "maxdisplayed": 151, "line": {"width": 0.5, "color": "rgb(0,113.985,188.955)"}, "color": "rgba(0,0,0,0)"}, "showlegend": false}, {"xaxis": "x2", "yaxis": "y2", "type": "bar", "x": [1.95, 2.25, 2.55, 2.85, 3.15, 3.45, 3.75, 4.05, 4.35], "width": [0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.299999999999999], "y": [0.0222222222222222, 0.222222222222222, 0.288888888888889, 1.31111111111111, 0.666666666666666, 0.488888888888889, 0.244444444444444, 0.0666666666666666, 0.0222222222222223], "name": "", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}, "color": "rgb(0,113.985,188.955)"}, "opacity": 0.75, "visible": true, "showlegend": true}, {"xaxis": "x3", "yaxis": "y3", "type": "bar", "x": [4.25, 4.75, 5.25, 5.75, 6.25, 6.75, 7.25, 7.75], "width": [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5], "y": [0.0533333333333333, 0.24, 0.4, 0.413333333333333, 0.426666666666667, 0.293333333333333, 0.0933333333333333, 0.08], "name": "", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}, "color": "rgb(0,113.985,188.955)"}, "opacity": 0.75, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 4.62, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [4, 4.5, 5, 5.5, 6, 6.5, 7, 7.5, 8], "range": [3.756, 8.244], "mirror": "ticks", "ticktext": ["4", "4.5", "5", "5.5", "6", "6.5", "7", "7.5", "8"], "title": "x", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.35, 0.9], "anchor": "y1"}, "scene1": {"domain": {"x": [0.35, 0.9], "y": [0.35, 0.9]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 4.62, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [2, 2.5, 3, 3.5, 4, 4.5], "range": [1.6353, 4.6647], "mirror": "ticks", "ticktext": ["2", "2.5", "3", "3.5", "4", "4.5"], "title": "y", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.35, 0.9], "anchor": "x1"}, "xaxis2": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 3.465, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [2, 2.5, 3, 3.5, 4, 4.5], "range": [1.6353, 4.6647], "mirror": "ticks", "ticktext": ["2", "2.5", "3", "3.5", "4", "4.5"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.0325806451612903, 0.249596774193548], "anchor": "y2"}, "scene2": {"domain": {"x": [0.0325806451612903, 0.249596774193548], "y": [0.35, 0.9]}}, "yaxis2": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 3.465, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [0, 0.5, 1], "range": [1.32422222222222, -0.0131111111111111], "mirror": "ticks", "ticktext": ["0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.35, 0.9], "anchor": "x2"}, "xaxis3": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 4.62, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [4, 4.5, 5, 5.5, 6, 6.5, 7, 7.5, 8], "range": [3.756, 8.244], "mirror": "ticks", "ticktext": ["4", "4.5", "5", "5.5", "6", "6.5", "7", "7.5", "8"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.35, 0.9], "anchor": "y3"}, "scene3": {"domain": {"x": [0.35, 0.9], "y": [0.0493865030674847, 0.261462898042653]}}, "yaxis3": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 4.62, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [0, 0.2, 0.4], "range": [-0.00426666666666667, 0.430933333333333], "mirror": "ticks", "ticktext": ["0", "0.2", "0.4"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.0493865030674847, 0.261462898042653], "anchor": "x3"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.625, "y": 0.91, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.141088709677419, "y": 0.91, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.625, "y": 0.271462898042653, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}], "title": "<b><b><\/b><\/b>", "titlefont": {"color": "rgba(0,0,0,0)"}}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_923963075559 index=923963075559 %}



Display a data tip for a bin in a histogram. A data tip appears when you hover over a bin in a histogram.


The data tip displays the probability density function estimate of the selected bin and the lower and upper values for the bin edges.





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
<pre class="code-output">
"To be inmplemented soon"
</pre>

The plot shows that the relationship between sepal length and width varies depending on the flower species. 





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
<pre class="code-output">
"To be inmplemented soon"
</pre>



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
<pre class="code-output">
"To be inmplemented soon"
</pre>



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
<pre class="code-output">
"To be inmplemented soon"
</pre>

