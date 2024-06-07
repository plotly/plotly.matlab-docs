---
description: How to set the title, legend-entries, and axis-titles in MATLAB<sup>&reg;</sup>.
display_as: file_settings
language: matlab
layout: base
name: Setting the Font, Title, Legend Entries, and Axis Titles
order: 6
page_type: u-guide
permalink: matlab/figure-labels/
thumnail_github: figure-labels.png
---

## Setting Title Font Size and Font Family


```{matlab}
x = randi([0 100],1,100);
y = randi([0 100],1,100);
fig = figure;
plot(x,y,'bo');
title('Custom Title','FontSize',24,'Color','g','FontName','FixedWidth');

fig2plotly(fig,'strip',false);
```
{% capture plot_920332039837 %}{% raw %}{"data": [{"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "markers", "x": [62, 35, 51, 40, 7, 24, 12, 18, 24, 42, 5, 91, 95, 49, 49, 34, 90, 37, 11, 78, 39, 24, 40, 9, 13, 95, 96, 58, 6, 23, 35, 82, 1, 4, 17, 65, 73, 65, 45, 55, 29, 75, 19, 69, 18, 37, 63, 78, 8, 93, 78, 49, 44, 45, 30, 51, 51, 82, 80, 65, 38, 81, 53, 35, 94, 88, 55, 62, 59, 20, 30, 47, 23, 85, 19, 22, 17, 22, 44, 31, 93, 43, 18, 91, 98, 44, 11, 26, 41, 60, 26, 60, 71, 22, 11, 29, 32, 42, 51, 8], "y": [26, 80, 2, 93, 73, 49, 58, 23, 46, 97, 55, 52, 23, 49, 63, 68, 39, 37, 99, 3, 89, 92, 80, 9, 26, 33, 68, 13, 72, 10, 66, 49, 78, 72, 91, 89, 33, 70, 19, 3, 75, 50, 48, 91, 61, 62, 86, 81, 58, 18, 24, 89, 2, 49, 16, 98, 71, 50, 47, 6, 68, 4, 7, 52, 9, 82, 82, 72, 15, 66, 52, 98, 65, 80, 45, 43, 83, 8, 13, 17, 39, 83, 81, 6, 40, 53, 42, 66, 63, 29, 43, 1, 99, 16, 10, 37, 20, 49, 34, 96], "line": {}, "marker": {"size": 3.6, "symbol": "circle", "maxdisplayed": 101, "line": {"width": 0.5, "color": "rgb(0,0,255)"}, "color": "rgba(0,0,0,0)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100], "range": [0, 100], "mirror": "ticks", "ticktext": ["0", "10", "20", "30", "40", "50", "60", "70", "80", "90", "100"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.915476190476191]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100], "range": [0, 100], "mirror": "ticks", "ticktext": ["0", "10", "20", "30", "40", "50", "60", "70", "80", "90", "100"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.915476190476191], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>Custom Title<\/b>", "x": 0.5175, "y": 0.925476190476191, "font": {"color": "rgb(0,255,0)", "family": "Open Sans, sans-serif", "size": 24}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_920332039837 index=920332039837 %}





## Changing Axis Label Size, Font and Position


```{matlab}
x = randi([0 100],1,100);
y = randi([0 100],1,100);
fig = figure;
plot(x,y,'bo');
title('Custom Axis Labels');
xlabel('X Label','FontSize',20,'Color','b','Position',[50 -10]);
ylabel('Y Label','FontSize',20,'Color','r','Position',[-10 50] );

fig2plotly(fig, 'strip', false);
```
{% capture plot_586092067231 %}{% raw %}{"data": [{"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "markers", "x": [5, 74, 27, 42, 55, 95, 42, 99, 30, 70, 67, 54, 70, 67, 17, 12, 100, 17, 3, 56, 89, 67, 19, 37, 46, 99, 15, 86, 65, 38, 19, 43, 48, 12, 59, 22, 38, 58, 25, 29, 62, 26, 83, 99, 73, 34, 58, 10, 91, 88, 82, 26, 60, 2, 42, 31, 16, 18, 42, 9, 60, 47, 70, 70, 64, 3, 6, 32, 53, 66, 41, 82, 72, 97, 53, 32, 10, 61, 78, 42, 9, 26, 15, 28, 44, 53, 46, 88, 52, 95, 64, 96, 24, 68, 29, 67, 70, 6, 25, 22], "y": [67, 85, 34, 78, 68, 0, 60, 39, 92, 0, 46, 42, 46, 77, 32, 79, 47, 3, 17, 72, 47, 15, 34, 61, 19, 74, 24, 92, 27, 77, 19, 29, 9, 58, 69, 55, 42, 65, 65, 68, 64, 95, 21, 71, 23, 12, 61, 45, 46, 66, 77, 35, 66, 42, 85, 84, 25, 61, 58, 54, 87, 26, 32, 12, 94, 65, 48, 64, 55, 65, 54, 72, 52, 100, 22, 10, 11, 6, 40, 45, 36, 77, 63, 77, 94, 98, 19, 14, 70, 9, 53, 53, 86, 48, 39, 67, 74, 52, 35, 15], "line": {}, "marker": {"size": 3.6, "symbol": "circle", "maxdisplayed": 101, "line": {"width": 0.5, "color": "rgb(0,0,255)"}, "color": "rgba(0,0,0,0)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100], "range": [0, 100], "mirror": "ticks", "ticktext": ["0", "10", "20", "30", "40", "50", "60", "70", "80", "90", "100"], "title": "X Label", "titlefont": {"color": "rgb(0.000000,0.000000,255.000000)", "size": 20, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100], "range": [0, 100], "mirror": "ticks", "ticktext": ["0", "10", "20", "30", "40", "50", "60", "70", "80", "90", "100"], "title": "Y Label", "titlefont": {"color": "rgb(255.000000,0.000000,0.000000)", "size": 20, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>Custom Axis Labels<\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_586092067231 index=586092067231 %}


