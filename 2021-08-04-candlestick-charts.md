---
description: How to make Candlestick Plots in MATLAB<sup>&reg;</sup> with Plotly.
display_as: statistical
language: matlab
layout: base
name: Candlestick Plots
order: 2
page_type: u-guide
permalink: matlab/candlestick-charts/
published: false
thumnail_github: candlestick-charts.png
---

## Generate a Candlestick Chart for a Data Series for a Stock

Load the file `SimulatedStock.mat`, which provides a timetable (`TMW`) for financial data for TMW stock. This is a candlestick chart with blue candles, for the most recent 21 days in SimulatedStock`.mat`.

```{matlab}
load SimulatedStock.mat;
candle(TMW(end-20:end,:),'b');
title('Candlestick chart for TMW');

fig2plotly(gcf);
```
{% capture plot_747533661738 %}{% raw %}{"data": [{"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [736538, 736538, 736538, 736539, 736539, 736539, 736540, 736540, 736540, 736543, 736543, 736543, 736544, 736544, 736544, 736545, 736545, 736545, 736546, 736546, 736546, 736547, 736547, 736547, 736550, 736550, 736550, 736551, 736551, 736551, 736552, 736552, 736552, 736553, 736553, 736553, 736554, 736554, 736554, 736557, 736557, 736557, 736558, 736558, 736558, 736559, 736559, 736559, 736560, 736560, 736560, 736561, 736561, 736561, 736564, 736564, 736564, 736565, 736565, 736565, 736566, 736566, 736566], "y": [151.53, 146.99, null, 149.04, 145.33, null, 150.85, 146.96, null, 151.15, 146.62, null, 154.98, 149.09, null, 154.4, 146.97, null, 154.02, 148.23, null, 156.06, 152.46, null, 157.21, 153.74, null, 155.83, 153.46, null, 157.32, 152.5, null, 160.76, 155.92, null, 157.14, 153.45, null, 156.09, 152.92, null, 158.26, 153.33, null, 160.89, 153.1, null, 162.5, 159.02, null, 162.85, 157.56, null, 161.12, 156.63, null, 159.62, 156.9, null, 159.66, 154.68, null], "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [151.24, 147.73, 147.73, 151.24, 151.24], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(0,0,255)", "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [148.1, 148.11, 148.11, 148.1, 148.1], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(255,255,255)", "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [147.96, 150.36, 150.36, 147.96, 147.96], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(255,255,255)", "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [150.49, 150.02, 150.02, 150.49, 150.49], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(0,0,255)", "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [150, 153.09, 153.09, 150, 150], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(255,255,255)", "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [153.45, 149.54, 149.54, 153.45, 153.45], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(0,0,255)", "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [149.45, 153.43, 153.43, 149.45, 149.45], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(255,255,255)", "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [153.47, 154.28, 154.28, 153.47, 153.47], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(255,255,255)", "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [154.2, 154.68, 154.68, 154.2, 154.2], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(255,255,255)", "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [155.05, 153.9, 153.9, 155.05, 155.05], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(0,0,255)", "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [154.04, 157.01, 157.01, 154.04, 154.04], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(255,255,255)", "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [157.32, 157.3, 157.3, 157.32, 157.32], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(0,0,255)", "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [156.99, 154.99, 154.99, 156.99, 156.99], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(0,0,255)", "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [154.75, 155.63, 155.63, 154.75, 154.75], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(255,255,255)", "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [155.63, 153.33, 153.33, 155.63, 155.63], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(0,0,255)", "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [153.47, 160.21, 160.21, 153.47, 153.47], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(255,255,255)", "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [160.31, 162.11, 162.11, 160.31, 160.31], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(255,255,255)", "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [162.48, 160.18, 160.18, 162.48, 162.48], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(0,0,255)", "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [160.08, 159.11, 159.11, 160.08, 160.08], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(0,0,255)", "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [159.07, 158.66, 158.66, 159.07, 159.07], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(0,0,255)", "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": , "y": [158.77, 154.91, 154.91, 158.77, 158.77], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(0,0,255)", "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [736538, 736545, 736552, 736559, 736566], "range": [736535, 736568], "mirror": "ticks", "ticktext": ["Jul 27", "Aug 03", "Aug 10", "Aug 17", "Aug 24"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [144, 146, 148, 150, 152, 154, 156, 158, 160, 162, 164], "range": [144, 164], "mirror": "ticks", "ticktext": ["144", "146", "148", "150", "152", "154", "156", "158", "160", "162", "164"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>Candlestick chart for TMW<\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_747533661738 index=747533661738 %}


This example shows how to create a candle plot for Disney stock for the dates March 31, 1998 through April 30, 1998.


```{matlab}
load disney.mat;
candle(dis('3/31/98::4/30/98'));
title('Disney 3/31/98 to 4/30/98');

fig2plotly(gcf);
```
<pre class="code-output">
"To be inmplemented soon"
</pre>
