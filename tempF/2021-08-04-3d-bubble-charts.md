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
{% capture plot_155653040115 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.2, 0.4, 0.6, 0.8, 1], "range": [-0.167317134619505, 1.15614485439429], "mirror": "ticks", "ticktext": ["0", "0.2", "0.4", "0.6", "0.8", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.5, 1], "range": [-0.146956837022691, 1.16583189146063], "mirror": "ticks", "ticktext": ["0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_155653040115 index=155653040115 %}


<!--------------------- EXAMPLE  BREAK ------------------------->

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
{% capture plot_779486151820 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.2, 0.4, 0.6, 0.8, 1], "range": [-0.16065182388893, 1.10771787588627], "mirror": "ticks", "ticktext": ["0", "0.2", "0.4", "0.6", "0.8", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.5, 1], "range": [-0.226958044836365, 1.21804248237554], "mirror": "ticks", "ticktext": ["0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_779486151820 index=779486151820 %}


For a custom color, you can specify an RGB triplet or a hexadecimal color code. For example, the hexadecimal color code `'#7031BB'`, specifies a shade of purple.

```{matlab}
x = rand(1,20);
y = rand(1,20);
z = rand(1,20);
sz = rand(1,20);

bubblechart3(x,y,z,sz,'#7031BB');

fig2plotly(gcf);
```
{% capture plot_546346483600 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0.2, 0.4, 0.6, 0.8, 1], "range": [0.0377900893585138, 1.11828210000998], "mirror": "ticks", "ticktext": ["0.2", "0.4", "0.6", "0.8", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.5, 1], "range": [-0.17806825374482, 1.20111943432241], "mirror": "ticks", "ticktext": ["0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_546346483600 index=546346483600 %}


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
{% capture plot_927415278634 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.2, 0.4, 0.6, 0.8, 1], "range": [-0.161435589548445, 1.1074460390993], "mirror": "ticks", "ticktext": ["0", "0.2", "0.4", "0.6", "0.8", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.5, 1], "range": [-0.108930408113428, 1.16725006486988], "mirror": "ticks", "ticktext": ["0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_927415278634 index=927415278634 %}


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
{% capture plot_692227330728 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.2, 0.4, 0.6, 0.8, 1], "range": [-0.142268730052541, 1.16528718101709], "mirror": "ticks", "ticktext": ["0", "0.2", "0.4", "0.6", "0.8", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.5, 1], "range": [-0.153893865559318, 1.05428797522182], "mirror": "ticks", "ticktext": ["0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_692227330728 index=692227330728 %}


You can customize the opacity and the outline color by setting the `MarkerFaceAlpha` and `MarkerEdgeColor` properties, respectively. One way to set a property is by specifying a name-value pair argument when you create the chart. For example, you can specify 20% opacity by setting the `MarkerFaceAlpha` value to `0.20`.

```{matlab}
x = rand(1,20);
y = rand(1,20);
z = rand(1,20);
sz = rand(1,20);

bc = bubblechart3(x,y,z,sz,'MarkerFaceAlpha',0.20);

fig2plotly(gcf);
```
{% capture plot_54597323772 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.2, 0.4, 0.6, 0.8, 1], "range": [-0.0298820979098719, 1.12139917174485], "mirror": "ticks", "ticktext": ["0", "0.2", "0.4", "0.6", "0.8", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.5, 1], "range": [-0.180983901803313, 1.14139514620297], "mirror": "ticks", "ticktext": ["0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_54597323772 index=54597323772 %}


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
{% capture plot_227777172073 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.2, 0.4, 0.6, 0.8, 1], "range": [-0.0832568739122291, 1.11986476631589], "mirror": "ticks", "ticktext": ["0", "0.2", "0.4", "0.6", "0.8", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.5, 1], "range": [-0.198707343252397, 1.11823896023576], "mirror": "ticks", "ticktext": ["0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_227777172073 index=227777172073 %}


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
{% capture plot_555126261990 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 5.1345, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 5, 10], "range": [-0.241691874625171, 11.2416918746252], "mirror": "ticks", "ticktext": ["0", "5", "10"], "title": "Industrial Sites", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.0930634920634921, 0.64786507936508], "anchor": "y1"}, "scene1": {"domain": {"x": [0.0930634920634921, 0.64786507936508], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 5.1345, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-20, 0, 20], "range": [-20.9636093472857, 30.8091050439548], "mirror": "ticks", "ticktext": ["-20", "0", "20"], "title": "Regulated Sites", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.370464285714286, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_555126261990 index=555126261990 %}


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
{% capture plot_952573957361 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 2, 4, 6, 8, 10], "range": [-0.683013192256232, 11.6830131922562], "mirror": "ticks", "ticktext": ["0", "2", "4", "6", "8", "10"], "title": "Industrial Sites", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.58227658105275, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-20, 0, 20], "range": [-24.4854068566569, 37.0817775993368], "mirror": "ticks", "ticktext": ["-20", "0", "20"], "title": "Regulated Sites", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.58227658105275, 0.925], "anchor": "x1"}, "xaxis2": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 2, 4, 6, 8, 10], "range": [-0.683013192256232, 11.6830131922562], "mirror": "ticks", "ticktext": ["0", "2", "4", "6", "8", "10"], "title": "Industrial Sites", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y2"}, "scene2": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.45272341894725]}}, "yaxis2": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 10, 20], "range": [-7.80654861935648, 22.9106447913621], "mirror": "ticks", "ticktext": ["0", "10", "20"], "title": "Regulated Sites", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.45272341894725], "anchor": "x2"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>East Side<\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 9.9}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>West Side<\/b>", "x": 0.5175, "y": 0.46272341894725, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 9.9}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "paper", "yref": "paper", "align": "center", "xanchor": "center", "yanchor": "bottom", "text": "", "x": 0.5, "y": 0.95, "font": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 15.6, "family": "Arial, sans-serif"}, "textangle": 0}], "title": "<b>East Side<\/b>", "titlefont": {"color": "rgba(0,0,0,0)"}}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_952573957361 index=952573957361 %}


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
{% capture plot_633241198161 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [2, 4, 6, 8, 10], "range": [0.440996090768513, 10.5590039092315], "mirror": "ticks", "ticktext": ["2", "4", "6", "8", "10"], "title": "Industrial Sites", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.58227658105275, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-20, -10, 0, 10, 20], "range": [-21.84966921357, 24.990977771562], "mirror": "ticks", "ticktext": ["-20", "-10", "0", "10", "20"], "title": "Regulated Sites", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.58227658105275, 0.925], "anchor": "x1"}, "xaxis2": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [2, 4, 6, 8, 10], "range": [0.440996090768513, 10.5590039092315], "mirror": "ticks", "ticktext": ["2", "4", "6", "8", "10"], "title": "Industrial Sites", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y2"}, "scene2": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.45272341894725]}}, "yaxis2": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 10, 20], "range": [-7.48197395067837, 22.8085220030373], "mirror": "ticks", "ticktext": ["0", "10", "20"], "title": "Regulated Sites", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.45272341894725], "anchor": "x2"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>East Side<\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 9.9}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>West Side<\/b>", "x": 0.5175, "y": 0.46272341894725, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 9.9}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "paper", "yref": "paper", "align": "center", "xanchor": "center", "yanchor": "bottom", "text": "", "x": 0.5, "y": 0.95, "font": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 15.6, "family": "Arial, sans-serif"}, "textangle": 0}], "title": "<b>East Side<\/b>", "titlefont": {"color": "rgba(0,0,0,0)"}}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_633241198161 index=633241198161 %}


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
{% capture plot_292201407907 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [2, 4, 6, 8, 10], "range": [0.440996090768513, 10.5590039092315], "mirror": "ticks", "ticktext": ["2", "4", "6", "8", "10"], "title": "Industrial Sites", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.58227658105275, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-20, -10, 0, 10, 20], "range": [-25.600500999813, 29.006200787741], "mirror": "ticks", "ticktext": ["-20", "-10", "0", "10", "20"], "title": "Regulated Sites", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.58227658105275, 0.925], "anchor": "x1"}, "xaxis2": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [2, 4, 6, 8, 10], "range": [0.440996090768513, 10.5590039092315], "mirror": "ticks", "ticktext": ["2", "4", "6", "8", "10"], "title": "Industrial Sites", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y2"}, "scene2": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.45272341894725]}}, "yaxis2": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-10, 0, 10, 20], "range": [-12.5158755651915, 20.5288927178123], "mirror": "ticks", "ticktext": ["-10", "0", "10", "20"], "title": "Regulated Sites", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.45272341894725], "anchor": "x2"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>East Side<\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 9.9}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>West Side<\/b>", "x": 0.5175, "y": 0.46272341894725, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 9.9}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "paper", "yref": "paper", "align": "center", "xanchor": "center", "yanchor": "bottom", "text": "", "x": 0.5, "y": 0.95, "font": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 15.6, "family": "Arial, sans-serif"}, "textangle": 0}], "title": "<b>East Side<\/b>", "titlefont": {"color": "rgba(0,0,0,0)"}}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_292201407907 index=292201407907 %}


<!--------------------- EXAMPLE BREAK ------------------------->

