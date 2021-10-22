---
description: How to make OHLC Plots in MATLAB<sup>&reg;</sup> with Plotly.
name: OHLC Plots
display_as: financial
order: 4
permalink: matlab/ohlc-charts/
thumnail_github: ohlc-charts.png
layout: base
language: matlab
page_type: u-guide
---


## Generate a Line Break Chart for a Data Series for a Stock

Load the file `SimulatedStock.mat`, which provides a timetable (TMW) for financial data for TMW stock. This Linebreak chart is for closing prices of the stock TMW for the most recent 21 days. Note that the variable name of asset price is be renamed to 'Price' (case insensitive).

```{matlab}
load SimulatedStock.mat
TMW.Properties.VariableNames{'Close'} = 'Price';
linebreak(TMW(end-20:end,:))
title('Line Break Chart for TMW')

fig2plotly()
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]  [1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_803366621915 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [736538, 736538, 736538, 736540, 736540, 736540, 736544, 736544, 736544, 736545, 736545, 736545, 736546, 736546, 736546, 736547, 736547, 736547, 736550, 736550, 736550, 736551, 736551, 736551, 736552, 736552, 736552, 736553, 736553, 736553, 736554, 736554, 736554, 736558, 736558, 736558, 736559, 736559, 736559, 736560, 736560, 736560, 736561, 736561, 736561, 736564, 736564, 736564, 736565, 736565, 736565, 736566, 736566, 736566], "y": [147.73, 148.11, null, 148.11, 150.36, null, 150.36, 153.09, null, null, null, null, 150.36, 153.43, null, 153.43, 154.28, null, 154.28, 154.68, null, null, null, null, 154.28, 157.01, null, 157.01, 157.3, null, null, null, null, null, null, null, 154.99, 160.21, null, 160.21, 162.11, null, null, null, null, null, null, null, null, null, null, null, null, null], "name": "", "mode": "lines", "line": {"color": "rgb(0,255,0)", "width": 4, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 4}, "color": "rgb(0,255,0)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [736538, 736538, 736538, 736540, 736540, 736540, 736544, 736544, 736544, 736545, 736545, 736545, 736546, 736546, 736546, 736547, 736547, 736547, 736550, 736550, 736550, 736551, 736551, 736551, 736552, 736552, 736552, 736553, 736553, 736553, 736554, 736554, 736554, 736558, 736558, 736558, 736559, 736559, 736559, 736560, 736560, 736560, 736561, 736561, 736561, 736564, 736564, 736564, 736565, 736565, 736565, 736566, 736566, 736566], "y": [null, null, null, null, null, null, null, null, null, 150.36, 149.54, null, null, null, null, null, null, null, null, null, null, 154.28, 153.9, null, null, null, null, null, null, null, 157.01, 154.99, null, 154.99, 153.33, null, null, null, null, null, null, null, 160.21, 160.18, null, 160.18, 159.11, null, 159.11, 158.66, null, 158.66, 154.91, null], "name": "", "mode": "lines", "line": {"color": "rgb(255,0,0)", "width": 4, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 4}, "color": "rgb(255,0,0)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [736538, 736544, 736550, 736556, 736562, 736568], "range": [736538, 736568], "mirror": "ticks", "ticktext": ["Jul 27", "Aug 02", "Aug 08", "Aug 14", "Aug 20", "Aug 26"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [146, 148, 150, 152, 154, 156, 158, 160, 162, 164], "range": [146, 164], "mirror": "ticks", "ticktext": ["146", "148", "150", "152", "154", "156", "158", "160", "162", "164"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>Line Break Chart for TMW<\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_803366621915 index=803366621915 %}


<!--------------------- EXAMPLE BREAK ------------------------->

## Generate a Highlow Chart for a Data Series for a Stock

Load the file `SimulatedStock.mat`, which provides a timetable (TMW) for financial data for TMW stock. The highlow chart plots the price data using blue lines.

```{matlab}
load SimulatedStock.mat
range = 1:25;
highlow(TMW(range,:),'b');
title('High, Low, Open, Close Chart for TMW')

fig2plotly()
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_760397152852 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [735116, 735116, 735116, 735117, 735117, 735117, 735118, 735118, 735118, 735119, 735119, 735119, 735122, 735122, 735122, 735123, 735123, 735123, 735124, 735124, 735124, 735125, 735125, 735125, 735126, 735126, 735126, 735129, 735129, 735129, 735130, 735130, 735130, 735131, 735131, 735131, 735132, 735132, 735132, 735133, 735133, 735133, 735136, 735136, 735136, 735137, 735137, 735137, 735138, 735138, 735138, 735139, 735139, 735139, 735140, 735140, 735140, 735143, 735143, 735143, 735144, 735144, 735144, 735145, 735145, 735145, 735146, 735146, 735146, 735147, 735147, 735147, 735150, 735150, 735150, 735116, 735116.4, null, 735117, 735117.4, null, 735118, 735118.4, null, 735119, 735119.4, null, 735122, 735122.4, null, 735123, 735123.4, null, 735124, 735124.4, null, 735125, 735125.4, null, 735126, 735126.4, null, 735129, 735129.4, null, 735130, 735130.4, null, 735131, 735131.4, null, 735132, 735132.4, null, 735133, 735133.4, null, 735136, 735136.4, null, 735137, 735137.4, null, 735138, 735138.4, null, 735139, 735139.4, null, 735140, 735140.4, null, 735143, 735143.4, null, 735144, 735144.4, null, 735145, 735145.4, null, 735146, 735146.4, null, 735147, 735147.4, null, 735150, 735150.4, null, 735116, 735115.6, null, 735117, 735116.6, null, 735118, 735117.6, null, 735119, 735118.6, null, 735122, 735121.6, null, 735123, 735122.6, null, 735124, 735123.6, null, 735125, 735124.6, null, 735126, 735125.6, null, 735129, 735128.6, null, 735130, 735129.6, null, 735131, 735130.6, null, 735132, 735131.6, null, 735133, 735132.6, null, 735136, 735135.6, null, 735137, 735136.6, null, 735138, 735137.6, null, 735139, 735138.6, null, 735140, 735139.6, null, 735143, 735142.6, null, 735144, 735143.6, null, 735145, 735144.6, null, 735146, 735145.6, null, 735147, 735146.6, null, 735150, 735149.6, null], "y": [102.19, 98.57, null, 101.05, 98.45, null, 102.38, 100.34, null, 102.37, 98.97, null, 101.55, 98.05, null, 98.66, 96.63, null, 99.18, 96.54, null, 98.79, 96.52, null, 98.92, 96.58, null, 97.52, 94.51, null, 95.49, 92.81, null, 94.7, 92.78, null, 95.87, 92.6, null, 95.68, 93.15, null, 95.18, 92.25, null, 95.54, 92.26, null, 96.79, 94.2, null, 98.03, 96.16, null, 97.79, 95.53, null, 100.55, 96.68, null, 103.15, 100.09, null, 102.72, 100.28, null, 103.13, 100.64, null, 102.15, 97.87, null, 102.48, 98.7, null, 100.25, 100.25, null, 100.43, 100.43, null, 101.81, 101.81, null, 99.51, 99.51, null, 98.36, 98.36, null, 96.9, 96.9, null, 96.78, 96.78, null, 97.57, 97.57, null, 97.52, 97.52, null, 94.69, 94.69, null, 93.42, 93.42, null, 93.26, 93.26, null, 95.47, 95.47, null, 93.73, 93.73, null, 92.46, 92.46, null, 95.49, 95.49, null, 96.46, 96.46, null, 97.27, 97.27, null, 97.35, 97.35, null, 100.32, 100.32, null, 102.39, 102.39, null, 101.34, 101.34, null, 101.77, 101.77, null, 99.66, 99.66, null, 102.48, 102.48, null, 100, 100, null, 100.15, 100.15, null, 100.4, 100.4, null, 101.74, 101.74, null, 99.72, 99.72, null, 98.48, 98.48, null, 96.9, 96.9, null, 96.9, 96.9, null, 97.65, 97.65, null, 97.35, 97.35, null, 94.59, 94.59, null, 93.36, 93.36, null, 93.16, 93.16, null, 95.52, 95.52, null, 93.55, 93.55, null, 92.57, 92.57, null, 95.61, 95.61, null, 96.43, 96.43, null, 97.33, 97.33, null, 97.3, 97.3, null, 100.46, 100.46, null, 102.25, 102.25, null, 101.43, 101.43, null, 101.69, 101.69, null, 99.76, 99.76, null], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [735109, 735116, 735123, 735130, 735137, 735144, 735151], "range": [735109, 735151], "mirror": "ticks", "ticktext": ["Aug 28", "Sep 04", "Sep 11", "Sep 18", "Sep 25", "Oct 02", "Oct 09"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [92, 94, 96, 98, 100, 102, 104], "range": [92, 104], "mirror": "ticks", "ticktext": ["92", "94", "96", "98", "100", "102", "104"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>High, Low, Open, Close Chart for TMW<\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_760397152852 index=760397152852 %}


<!--------------------- EXAMPLE BREAK ------------------------->