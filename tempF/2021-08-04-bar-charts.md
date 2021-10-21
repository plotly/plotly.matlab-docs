---
description: How to make Bar Charts plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Bar Charts
display_as: basic
order: 3
permalink: matlab/bar-charts/
thumnail_github: bar-charts.png
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
{% capture plot_748705718216 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "y": [75, 91, 105, 123.5, 131, 150, 179, 203, 226, 249, 281.5], "marker": {"color": "rgb(0,113.985,188.955)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "range": [-0.2, 12.2], "mirror": "ticks", "ticktext": ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 50, 100, 150, 200, 250, 300], "range": [0, 300], "mirror": "ticks", "ticktext": ["0", "50", "100", "150", "200", "250", "300"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "bargroupgap": 0.2, "bargap": 0.0625, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_748705718216 index=748705718216 %}


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Bar Locations

Specify the bar locations along the x-axis. 

```{matlab}
x = 1900:10:2000;
y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(x,y)

fig2plotly(gcf);
```
{% capture plot_825583815786 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1900, 1910, 1920, 1930, 1940, 1950, 1960, 1970, 1980, 1990, 2000], "y": [75, 91, 105, 123.5, 131, 150, 179, 203, 226, 249, 281.5], "marker": {"color": "rgb(0,113.985,188.955)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1900, 1910, 1920, 1930, 1940, 1950, 1960, 1970, 1980, 1990, 2000], "range": [1888, 2012], "mirror": "ticks", "ticktext": ["1900", "1910", "1920", "1930", "1940", "1950", "1960", "1970", "1980", "1990", "2000"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 50, 100, 150, 200, 250, 300], "range": [0, 300], "mirror": "ticks", "ticktext": ["0", "50", "100", "150", "200", "250", "300"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "bargroupgap": 0.2, "bargap": 0.0625, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_825583815786 index=825583815786 %}




<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Bar Width

Set the width of each bar to 40 percent of the total space available for each bar. 

```{matlab}
y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(y,0.4)

fig2plotly(gcf);
```
{% capture plot_789963029945 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "y": [75, 91, 105, 123.5, 131, 150, 179, 203, 226, 249, 281.5], "marker": {"color": "rgb(0,113.985,188.955)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "range": [0, 12], "mirror": "ticks", "ticktext": ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 50, 100, 150, 200, 250, 300], "range": [0, 300], "mirror": "ticks", "ticktext": ["0", "50", "100", "150", "200", "250", "300"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "bargroupgap": 0.6, "bargap": 0.0625, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_789963029945 index=789963029945 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Display Groups of Bars

Display four groups of three bars.

```{matlab}
y = [2 2 3; 2 5 6; 2 8 9; 2 11 12];
bar(y)

fig2plotly(gcf);
```
{% capture plot_318524245399 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3, 4], "y": [2, 2, 2, 2], "marker": {"color": "rgb(0,113.985,188.955)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3, 4], "y": [2, 5, 8, 11], "marker": {"color": "rgb(216.75,82.875,24.99)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3, 4], "y": [3, 6, 9, 12], "marker": {"color": "rgb(236.895,176.97,31.875)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4], "range": [0.511111111111111, 4.48888888888889], "mirror": "ticks", "ticktext": ["1", "2", "3", "4"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 2, 4, 6, 8, 10, 12], "range": [0, 12], "mirror": "ticks", "ticktext": ["0", "2", "4", "6", "8", "10", "12"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "bargroupgap": 0.2, "bargap": 0.1875, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_318524245399 index=318524245399 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Display Stacked Bars

Display one bar for each row of the matrix. The height of each bar is the sum of the elements in the row.

```{matlab}
y = [2 2 3; 2 5 6; 2 8 9; 2 11 12];
bar(y,'stacked')

fig2plotly(gcf);
```
{% capture plot_534064127371 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3, 4], "y": [2, 2, 2, 2], "marker": {"color": "rgb(0,113.985,188.955)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3, 4], "y": [2, 5, 8, 11], "marker": {"color": "rgb(216.75,82.875,24.99)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3, 4], "y": [3, 6, 9, 12], "marker": {"color": "rgb(236.895,176.97,31.875)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4], "range": [-0.2, 5.2], "mirror": "ticks", "ticktext": ["1", "2", "3", "4"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 5, 10, 15, 20, 25], "range": [0, 25], "mirror": "ticks", "ticktext": ["0", "5", "10", "15", "20", "25"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "bargroupgap": 0.2, "bargap": 0.1875, "barmode": "relative", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_534064127371 index=534064127371 %}




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
{% capture plot_89950678771 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "Measles", "visible": true, "orientation": "v", "x": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "y": [38556, 24472, 14556, 18060, 19549, 8122, 28541, 7880, 3283, 4135, 7953, 1884], "marker": {"color": "rgb(0,113.985,188.955)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "Mumps", "visible": true, "orientation": "v", "x": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "y": [20178, 23536, 34561, 37395, 36072, 32237, 18597, 9408, 6005, 6268, 8963, 13882], "marker": {"color": "rgb(216.75,82.875,24.99)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "Chicken pox", "visible": true, "orientation": "v", "x": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "y": [37140, 32169, 37533, 39103, 33244, 23269, 16737, 5411, 3435, 6052, 12825, 23332], "marker": {"color": "rgb(236.895,176.97,31.875)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": true, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>Childhood diseases by month<\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"text": "x10^4", "xref": "x1", "yref": "y1", "xanchor": "left", "yanchor": "bottom", "font": {"size": 10, "color": "rgb(38.250000,38.250000,38.250000)", "family": "Arial, sans-serif"}, "showarrow": false, "x": 0, "y": 100000}], "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "range": [0, 13], "mirror": "ticks", "ticktext": ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"], "title": "Month", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 10000, 20000, 30000, 40000, 50000, 60000, 70000, 80000, 90000, 100000], "range": [0, 100000], "mirror": "ticks", "ticktext": ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"], "title": "Cases (in thousands)", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "bargroupgap": 0.5, "bargap": 0.1875, "barmode": "relative", "legend": {"x": 0.675595241660873, "xref": "paper", "xanchor": "left", "y": 0.774603178009154, "yref": "paper", "yanchor": "bottom", "traceorder": "normal", "borderwidth": 0.5, "bordercolor": "rgb(38.25,38.25,38.25)", "bgcolor": "rgb(255,255,255)", "font": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(0,0,0_)"}}}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_89950678771 index=89950678771 %}


<!--------------------- EXAMPLE BREAK ------------------------->

## Display Stacked Bars with Negative Data

Define `x` as a vector of three year values. Define `y` as a matrix that contains a combination of negative and positive values. Display the values in a bar graph.

```{matlab}
x = [1980 1990 2000];
y = [15 20 -5; 10 -17 21; -10 5 15];
bar(x,y,'stacked')

fig2plotly(gcf);
```
{% capture plot_111705744193 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1980, 1990, 2000], "y": [15, 10, -10], "marker": {"color": "rgb(0,113.985,188.955)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1980, 1990, 2000], "y": [20, -17, 5], "marker": {"color": "rgb(216.75,82.875,24.99)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1980, 1990, 2000], "y": [-5, 21, 15], "marker": {"color": "rgb(236.895,176.97,31.875)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1980, 1990, 2000], "range": [1968, 2012], "mirror": "ticks", "ticktext": ["1980", "1990", "2000"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-20, -10, 0, 10, 20, 30, 40], "range": [-20, 40], "mirror": "ticks", "ticktext": ["-20", "-10", "0", "10", "20", "30", "40"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "bargroupgap": 0.2, "bargap": 0.1875, "barmode": "relative", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_111705744193 index=111705744193 %}



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
{% capture plot_136292548938 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": ["Small", "Medium", "Large", "Extra Large"], "y": [10, 21, 33, 52], "marker": {"color": "rgb(0,113.985,188.955)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": true, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "category", "showticklabels": true, "tickmode": "array", "mirror": "ticks", "ticktext": ["Small", "Medium", "Large", "Extra Large"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1", "autotick": true}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 10, 20, 30, 40, 50, 60], "range": [0, 60], "mirror": "ticks", "ticktext": ["0", "10", "20", "30", "40", "50", "60"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "bargroupgap": 0.2, "bargap": 0.0625, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_136292548938 index=136292548938 %}


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Labels at the Ends of Bars

Define `vals` as a matrix containing the values of two data sets. Display the values in a bar graph and specify an output argument. Since there are two data sets, `bar` returns a vector containing two `Bar` objects.

```{matlab}
x = [1 2 3];
vals = [2 3 6; 11 23 26];
b = bar(x,vals);

fig2plotly(gcf);
```
{% capture plot_678652304800 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3], "y": [2, 3, 6], "marker": {"color": "rgb(0,113.985,188.955)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3], "y": [11, 23, 26], "marker": {"color": "rgb(216.75,82.875,24.99)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3], "range": [0.514285714285714, 3.48571428571429], "mirror": "ticks", "ticktext": ["1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 5, 10, 15, 20, 25, 30], "range": [0, 30], "mirror": "ticks", "ticktext": ["0", "5", "10", "15", "20", "25", "30"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "bargroupgap": 0.2, "bargap": 0.125, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_678652304800 index=678652304800 %}



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
{% capture plot_495177019090 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3], "y": [2, 3, 6], "marker": {"color": "rgb(0,113.985,188.955)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3], "y": [11, 23, 26], "marker": {"color": "rgb(216.75,82.875,24.99)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3], "range": [0.514285714285714, 3.48571428571429], "mirror": "ticks", "ticktext": ["1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 5, 10, 15, 20, 25, 30], "range": [0, 30], "mirror": "ticks", "ticktext": ["0", "5", "10", "15", "20", "25", "30"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "bargroupgap": 0.2, "bargap": 0.125, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "6", "x": 2.85714285714286, "y": 6, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "3", "x": 1.85714285714286, "y": 3, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "2", "x": 0.857142857142857, "y": 2, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_495177019090 index=495177019090 %}


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
{% capture plot_189710406018 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3], "y": [2, 3, 6], "marker": {"color": "rgb(0,113.985,188.955)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3], "y": [11, 23, 26], "marker": {"color": "rgb(216.75,82.875,24.99)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3], "range": [0.514285714285714, 3.48571428571429], "mirror": "ticks", "ticktext": ["1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 5, 10, 15, 20, 25, 30], "range": [0, 30], "mirror": "ticks", "ticktext": ["0", "5", "10", "15", "20", "25", "30"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "bargroupgap": 0.2, "bargap": 0.125, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "26", "x": 3.14285714285714, "y": 26, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "23", "x": 2.14285714285714, "y": 23, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "11", "x": 1.14285714285714, "y": 11, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "6", "x": 2.85714285714286, "y": 6, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "3", "x": 1.85714285714286, "y": 3, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "2", "x": 0.857142857142857, "y": 2, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_189710406018 index=189710406018 %}



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
{% capture plot_495005824990 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2], "y": [1, 4], "marker": {"color": "rgb(0,113.985,188.955)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2], "y": [2, 5], "marker": {"color": "rgb(216.75,82.875,24.99)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2], "y": [3, 6], "marker": {"color": "rgb(236.895,176.97,31.875)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x2", "yaxis": "y2", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2], "y": [1, 4], "marker": {"color": "rgb(0,113.985,188.955)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x2", "yaxis": "y2", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2], "y": [2, 5], "marker": {"color": "rgb(216.75,82.875,24.99)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x2", "yaxis": "y2", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2], "y": [3, 6], "marker": {"color": "rgb(236.895,176.97,31.875)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2], "range": [0.511111111111111, 2.48888888888889], "mirror": "ticks", "ticktext": ["1", "2"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.5875, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 2, 4, 6], "range": [0, 6], "mirror": "ticks", "ticktext": ["0", "2", "4", "6"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.5875, 0.925], "anchor": "x1"}, "xaxis2": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2], "range": [-0.2, 3.2], "mirror": "ticks", "ticktext": ["1", "2"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y2"}, "scene2": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.4475]}}, "yaxis2": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 5, 10, 15], "range": [0, 15], "mirror": "ticks", "ticktext": ["0", "5", "10", "15"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.4475], "anchor": "x2"}, "bargroupgap": 0.2, "bargap": 0.375, "barmode": "relative", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 9.9}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.4575, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 9.9}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "paper", "yref": "paper", "align": "center", "xanchor": "center", "yanchor": "bottom", "text": "", "x": 0.5, "y": 0.95, "font": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 15.6, "family": "Arial, sans-serif"}, "textangle": 0}], "title": "<b><b><\/b><\/b>", "titlefont": {"color": "rgba(0,0,0,0)"}}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_495005824990 index=495005824990 %}




<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Bar Color

Create a bar graph using red bars. 

```{matlab}
y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(y,'r')

fig2plotly(gcf);
```
{% capture plot_147608221977 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "y": [75, 91, 105, 123.5, 131, 150, 179, 203, 226, 249, 281.5], "marker": {"color": "rgb(255,0,0)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "range": [-0.2, 12.2], "mirror": "ticks", "ticktext": ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 50, 100, 150, 200, 250, 300], "range": [0, 300], "mirror": "ticks", "ticktext": ["0", "50", "100", "150", "200", "250", "300"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "bargroupgap": 0.2, "bargap": 0.0625, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_147608221977 index=147608221977 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Bar and Outline Colors

Set the bar interior color and outline color using RGB triplets. Set the width of the bar outline.

```{matlab}
y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(y,'FaceColor',[0 .5 .5],'EdgeColor',[0 .9 .9],'LineWidth',1.5)

fig2plotly(gcf);
```
{% capture plot_54974146906 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "y": [75, 91, 105, 123.5, 131, 150, 179, 203, 226, 249, 281.5], "marker": {"color": "rgb(0,127.5,127.5)", "line": {"color": "rgb(0,229.5,229.5)", "width": 1.5, "dash": "solid"}}, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "range": [-0.2, 12.2], "mirror": "ticks", "ticktext": ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 50, 100, 150, 200, 250, 300], "range": [0, 300], "mirror": "ticks", "ticktext": ["0", "50", "100", "150", "200", "250", "300"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "bargroupgap": 0.2, "bargap": 0.0625, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_54974146906 index=54974146906 %}



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
```
Index in position 1 exceeds array bounds.
We had trouble parsing the bar object.
This trace might not render properly.
```
{% capture plot_612566469484 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "y": [0.850712674289007, 0.560559527354885, 0.929608866756663, 0.696667200555228, 0.58279096517584, 0.815397211477421, 0.879013904597178, 0.988911616079589, 0.000522375356944771, 0.865438591013025]}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "range": [-0.2, 11.2], "mirror": "ticks", "ticktext": ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1], "range": [0, 1], "mirror": "ticks", "ticktext": ["0", "0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_612566469484 index=612566469484 %}


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
{% capture plot_989950205709 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3], "y": [1, 3, 3], "marker": {"color": "rgb(61.761,38.352,168.3765)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3], "y": [3, 2, 4], "marker": {"color": "rgb(16.269,189.873,185.946)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3], "y": [5, 7, 2], "marker": {"color": "rgb(249.1095,250.8945,20.5275)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3], "range": [0.511111111111111, 3.48888888888889], "mirror": "ticks", "ticktext": ["1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 1, 2, 3, 4, 5, 6, 7], "range": [0, 7], "mirror": "ticks", "ticktext": ["0", "1", "2", "3", "4", "5", "6", "7"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "bargroupgap": 0.2, "bargap": 0.1875, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_989950205709 index=989950205709 %}


<!--------------------- EXAMPLE BREAK ------------------------->

## Customize One Series in Grouped or Stacked Bars

Create matrix `y`, where each column is a series of data. Call the `bar` function to display the data in a bar graph, and specify an output argument. The output is a vector of three `Bar` objects, where each object corresponds to a different series. This is true whether the bars are grouped or stacked.

```{matlab}
y = [10 15 20; 30 35 40; 50 55 62];
b = bar(y);

fig2plotly(gcf);
```
{% capture plot_527680069338 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3], "y": [10, 30, 50], "marker": {"color": "rgb(0,113.985,188.955)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3], "y": [15, 35, 55], "marker": {"color": "rgb(216.75,82.875,24.99)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3], "y": [20, 40, 62], "marker": {"color": "rgb(236.895,176.97,31.875)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3], "range": [0.511111111111111, 3.48888888888889], "mirror": "ticks", "ticktext": ["1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 10, 20, 30, 40, 50, 60, 70], "range": [0, 70], "mirror": "ticks", "ticktext": ["0", "10", "20", "30", "40", "50", "60", "70"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "bargroupgap": 0.2, "bargap": 0.1875, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_527680069338 index=527680069338 %}


Make the third series of bars green.

```{matlab}
y = [10 15 20; 30 35 40; 50 55 62];
b = bar(y);

b(3).FaceColor = [.2 .6 .5];

fig2plotly(gcf);
```
{% capture plot_479523385210 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3], "y": [10, 30, 50], "marker": {"color": "rgb(0,113.985,188.955)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3], "y": [15, 35, 55], "marker": {"color": "rgb(216.75,82.875,24.99)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1, 2, 3], "y": [20, 40, 62], "marker": {"color": "rgb(51,153,127.5)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3], "range": [0.511111111111111, 3.48888888888889], "mirror": "ticks", "ticktext": ["1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 10, 20, 30, 40, 50, 60, 70], "range": [0, 70], "mirror": "ticks", "ticktext": ["0", "10", "20", "30", "40", "50", "60", "70"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "bargroupgap": 0.2, "bargap": 0.1875, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_479523385210 index=479523385210 %}



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
{% capture plot_801347605522 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1900, 1910, 1920, 1930, 1940, 1950, 1960, 1970, 1980, 1990, 2000], "y": [75.99, 91.92, 105.71, 123.23, 131.69, 150.67, 179.33, 203.12, 226.55, 249.63, 281.42], "marker": {"color": "rgb(145,25,206)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "name": "", "visible": true, "orientation": "v", "x": [1900, 1910, 1920, 1930, 1940, 1950, 1960, 1970, 1980, 1990, 2000], "y": [55.2, 61.972, 65.71, 76.23, 87.669, 91.7, 103.23, 124.21, 130.55, 135.63, 145.22], "marker": {"color": "rgb(45,125,206)", "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}}, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1900, 1910, 1920, 1930, 1940, 1950, 1960, 1970, 1980, 1990, 2000], "range": [1893.42857142857, 2006.57142857143], "mirror": false, "ticktext": ["1900", "1910", "1920", "1930", "1940", "1950", "1960", "1970", "1980", "1990", "2000"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 50, 100, 150, 200, 250, 300], "range": [0, 300], "mirror": false, "ticktext": ["0", "50", "100", "150", "200", "250", "300"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "bargroupgap": -1, "bargap": 0.125, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_801347605522 index=801347605522 %}


<!--------------------- EXAMPLE BREAK ------------------------->
