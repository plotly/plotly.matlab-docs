---
description: How to make Pie Charts plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Pie Charts
display_as: basic
order: 4
permalink: matlab/pie-charts/
thumnail_github: thumbnail/pie-chart.jpg
layout: base
language: matlab
page_type: u-guide
---

## Create Pie Chart with Offset Slices

Create a pie chart of vector `X`.

```{matlab}
X = [1 3 0.5 2.5 2];
pie(X)

fig2plotly(gcf)
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_596913859472 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": [0, 6.12323399573677e-17, -0.0581448289104758, -0.11609291412523, -0.17364817766693, -0.23061587074244, -0.28680323271109, -0.342020143325669, -0.396079766039157, -0.448799180200462, -0.5, -0.549508978070806, -0.597158591702786, -0.642787609686539, 0, 0], "y": [0, 1, 0.998308158271268, 0.993238357741943, 0.984807753012208, 0.973044870579824, 0.957989512315489, 0.939692620785908, 0.918216106880274, 0.893632640323412, 0.866025403784439, 0.835487811412936, 0.802123192755044, 0.766044443118978, 0, 0], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,0)"}, "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(61.761,38.352,168.3765)", "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "bottom", "text": "22%", "x": 0.707066370655194, "y": 0.842648887430876, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "top", "text": "28%", "x": 0.842648887430876, "y": -0.707066370655194, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "center", "align": "center", "yanchor": "top", "text": "6%", "x": -0.191012995433623, "y": -1.08328852831343, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "middle", "text": "33%", "x": -1.08328852831343, "y": -0.191012995433623, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "11%", "x": -0.376222157658236, "y": 1.0336618828645, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_596913859472 index=596913859472 %}


Offset the second and fourth pie slices by setting the corresponding `explode` elements to 1.

```{matlab}
X = [1 3 0.5 2.5 2];

explode = [0 1 0 1 0];
pie(X,explode)

fig2plotly(gcf)
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_181336735385 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": [0, 6.12323399573677e-17, -0.0581448289104758, -0.11609291412523, -0.17364817766693, -0.23061587074244, -0.28680323271109, -0.342020143325669, -0.396079766039157, -0.448799180200462, -0.5, -0.549508978070806, -0.597158591702786, -0.642787609686539, 0, 0], "y": [0, 1, 0.998308158271268, 0.993238357741943, 0.984807753012208, 0.973044870579824, 0.957989512315489, 0.939692620785908, 0.918216106880274, 0.893632640323412, 0.866025403784439, 0.835487811412936, 0.802123192755044, 0.766044443118978, 0, 0], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,0)"}, "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(61.761,38.352,168.3765)", "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "bottom", "text": "22%", "x": 0.707066370655194, "y": 0.842648887430876, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "top", "text": "28%", "x": 0.919253331742773, "y": -0.771345131623848, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "center", "align": "center", "yanchor": "top", "text": "6%", "x": -0.191012995433623, "y": -1.08328852831343, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "middle", "text": "33%", "x": -1.18176930361465, "y": -0.208377813200316, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "11%", "x": -0.376222157658236, "y": 1.0336618828645, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_181336735385 index=181336735385 %}




<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Text Labels for Pie Chart

Create a pie chart of vector `X` and label the slices.

```{matlab}
X = 1:3;
labels = {'Taxes','Expenses','Profit'};
pie(X,labels)

fig2plotly(gcf)
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]  [1×1 struct]  [1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_120434434707 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": [0, 6.12323399573677e-17, -0.0615609061339428, -0.122888290664714, -0.18374951781657, -0.243913720108377, -0.303152674113043, -0.361241666187153, -0.417960344886783, -0.47309355683601, -0.526432162877356, -0.577773831408251, -0.626923805894106, -0.673695643646557, -0.717911923064442, -0.759404916654707, -0.798017227280239, -0.833602385221119, -0.866025403784438, 0, 0], "y": [0, 1, 0.998103328737044, 0.992420509671936, 0.982973099683902, 0.969796936035009, 0.952942000427157, 0.932472229404356, 0.908465271819524, 0.881012194285785, 0.850217135729614, 0.816196912356222, 0.779080574525671, 0.739008917220659, 0.696133945962927, 0.650618300204242, 0.602634636379256, 0.552364972960506, 0.5, 0, 0], "name": "Taxes", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,0)"}, "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(61.761,38.352,168.3765)", "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": "Profit", "x": 1.1, "y": -2.69422295812418e-16, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "top", "text": "Expenses", "x": -0.952627944162883, "y": -0.549999999999999, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "bottom", "text": "Taxes", "x": -0.55, "y": 0.952627944162883, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_120434434707 index=120434434707 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Modify Text Label for Pie Chart

Create a labeled pie chart, and then modify the color and font size of the text labels.

```{matlab}
X = 1:3;
labels = {'Taxes','Expenses','Profit'};
p = pie(X,labels)

fig2plotly(gcf)
```
```
p = 

  1×6 <a href="matlab:helpview ([docroot '/matlab/creating_plots/creating_plots.map'],'heterogeneous_graphics_arrays')">graphics</a> array:

    Patch    Text     Patch    Text     Patch    Text 


pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]  [1×1 struct]  [1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_363344892089 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": [0, 6.12323399573677e-17, -0.0615609061339428, -0.122888290664714, -0.18374951781657, -0.243913720108377, -0.303152674113043, -0.361241666187153, -0.417960344886783, -0.47309355683601, -0.526432162877356, -0.577773831408251, -0.626923805894106, -0.673695643646557, -0.717911923064442, -0.759404916654707, -0.798017227280239, -0.833602385221119, -0.866025403784438, 0, 0], "y": [0, 1, 0.998103328737044, 0.992420509671936, 0.982973099683902, 0.969796936035009, 0.952942000427157, 0.932472229404356, 0.908465271819524, 0.881012194285785, 0.850217135729614, 0.816196912356222, 0.779080574525671, 0.739008917220659, 0.696133945962927, 0.650618300204242, 0.602634636379256, 0.552364972960506, 0.5, 0, 0], "name": "Taxes", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,0)"}, "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(61.761,38.352,168.3765)", "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": "Profit", "x": 1.1, "y": -2.69422295812418e-16, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "top", "text": "Expenses", "x": -0.952627944162883, "y": -0.549999999999999, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "bottom", "text": "Taxes", "x": -0.55, "y": 0.952627944162883, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_363344892089 index=363344892089 %}



Get the text object for the label 'Profit'. Change its color and font size. Use dot notation to set properties.

```{matlab}
X = 1:3;
labels = {'Taxes','Expenses','Profit'};
p = pie(X,labels)

t = p(6);
t.BackgroundColor = 'cyan';
t.EdgeColor = 'red';
t.FontSize = 14;

fig2plotly(gcf)
```
```
p = 

  1×6 <a href="matlab:helpview ([docroot '/matlab/creating_plots/creating_plots.map'],'heterogeneous_graphics_arrays')">graphics</a> array:

    Patch    Text     Patch    Text     Patch    Text 


pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]  [1×1 struct]  [1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_947326744660 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": [0, 6.12323399573677e-17, -0.0615609061339428, -0.122888290664714, -0.18374951781657, -0.243913720108377, -0.303152674113043, -0.361241666187153, -0.417960344886783, -0.47309355683601, -0.526432162877356, -0.577773831408251, -0.626923805894106, -0.673695643646557, -0.717911923064442, -0.759404916654707, -0.798017227280239, -0.833602385221119, -0.866025403784438, 0, 0], "y": [0, 1, 0.998103328737044, 0.992420509671936, 0.982973099683902, 0.969796936035009, 0.952942000427157, 0.932472229404356, 0.908465271819524, 0.881012194285785, 0.850217135729614, 0.816196912356222, 0.779080574525671, 0.739008917220659, 0.696133945962927, 0.650618300204242, 0.602634636379256, 0.552364972960506, 0.5, 0, 0], "name": "Taxes", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,0)"}, "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(61.761,38.352,168.3765)", "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": "Profit", "x": 1.1, "y": -2.69422295812418e-16, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 14}}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "top", "text": "Expenses", "x": -0.952627944162883, "y": -0.549999999999999, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "bottom", "text": "Taxes", "x": -0.55, "y": 0.952627944162883, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_947326744660 index=947326744660 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Format for Percentage Labels

Create a pie chart, and specify a format expression to display each label with three digits after the decimal point. To include a percent sign in the labels, specify `'%%'` at the end of the expression.

```{matlab}
X = [1/3 2/3];
pie(X,'%.3f%%')

fig2plotly(gcf)
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
{% capture plot_705827847614 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": [0, 6.12323399573677e-17, -0.0615609061339428, -0.122888290664714, -0.18374951781657, -0.243913720108377, -0.303152674113043, -0.361241666187153, -0.417960344886783, -0.47309355683601, -0.526432162877356, -0.577773831408251, -0.626923805894106, -0.673695643646557, -0.717911923064442, -0.759404916654707, -0.798017227280239, -0.833602385221119, -0.866025403784438, -0.895163291355062, -0.920905517944954, -0.943154434471277, -0.961825643172819, -0.976848317759601, -0.988165472081259, -0.995734176295035, -0.999525719713366, -0.999525719713366, -0.995734176295035, -0.988165472081259, -0.976848317759601, -0.961825643172819, -0.943154434471278, -0.920905517944954, -0.895163291355062, -0.866025403784439, 0, 0], "y": [0, 1, 0.998103328737044, 0.992420509671936, 0.982973099683902, 0.969796936035009, 0.952942000427157, 0.932472229404356, 0.908465271819524, 0.881012194285785, 0.850217135729614, 0.816196912356222, 0.779080574525671, 0.739008917220659, 0.696133945962927, 0.650618300204242, 0.602634636379256, 0.552364972960506, 0.5, 0.445738355776538, 0.389785873292679, 0.33235479947966, 0.273662990072083, 0.213933083206498, 0.153391654878686, 0.0922683594633018, 0.0307950585561704, -0.0307950585561701, -0.0922683594633016, -0.153391654878685, -0.213933083206497, -0.273662990072083, -0.332354799479659, -0.389785873292679, -0.445738355776538, -0.5, 0, 0], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,0)"}, "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(61.761,38.352,168.3765)", "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "top", "text": "66.667%", "x": 0.952627944162882, "y": -0.55, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "bottom", "text": "33.333%", "x": -0.952627944162882, "y": 0.55, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_705827847614 index=705827847614 %}


<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Partial Pie Chart

Create a pie chart of vector `X` where the sum of the elements is less than 1.

```{matlab}
X = [0.19 0.22 0.41];
pie(X)

fig2plotly(gcf)
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]  [1×1 struct]  [1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_445730517467 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": [0, 6.12323399573677e-17, -0.0627905195293134, -0.125333233564304, -0.187381314585725, -0.248689887164855, -0.309016994374947, -0.368124552684678, -0.425779291565073, -0.481753674101715, -0.535826794978996, -0.587785252292473, -0.637423989748689, -0.684547105928689, -0.728968627421411, -0.770513242775789, -0.809016994374947, -0.844327925502015, -0.876306680043864, -0.904827052466019, -0.929776485888251, 0, 0], "y": [0, 1, 0.998026728428272, 0.992114701314478, 0.982287250728689, 0.968583161128631, 0.951056516295154, 0.929776485888251, 0.904827052466019, 0.876306680043864, 0.844327925502015, 0.809016994374947, 0.770513242775789, 0.728968627421411, 0.684547105928689, 0.63742398974869, 0.587785252292473, 0.535826794978997, 0.481753674101715, 0.425779291565073, 0.368124552684678, 0, 0], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,0)"}, "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(61.761,38.352,168.3765)", "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "top", "text": "41%", "x": 0.727443051856016, "y": -0.825122176593506, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "middle", "text": "22%", "x": -1.04616216792467, "y": -0.339918693812442, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "bottom", "text": "19%", "x": -0.618291715637344, "y": 0.909788631702018, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_445730517467 index=445730517467 %}


`pie` draws a partial pie because the sum of the elements is less than 1.


<!--------------------- EXAMPLE BREAK ------------------------->

## Compare Two Pie Charts

Create vectors `y2010` and `y2011`, that contain financial data for two years. Then create a cell array containing the labels for the values.

```{matlab}
y2010 = [50 0 100 95];
y2011 = [65 22 97 120];
labels = {'Investments','Cash','Operations','Sales'};
```

Create a 1-by-2 tiled chart layout, and display two pie charts that each have a title. Then display a shared legend in the east tile of the layout. To do this, call the `legend` function with a return argument to store the legend object. Then move the legend to the east tile by setting the `Layout.Tile` property to `'east'`.

```{matlab}
y2010 = [50 0 100 95];
y2011 = [65 22 97 120];
labels = {'Investments','Cash','Operations','Sales'};

t = tiledlayout(1,2,'TileSpacing','compact');

% Create pie charts
ax1 = nexttile;
pie(ax1,y2010)
title('2010')

ax2 = nexttile;
pie(ax2,y2011)
title('2011')

% Create legend
lgd = legend(labels);
lgd.Layout.Tile = 'east';

fig2plotly(gcf)
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_88297251866 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": [0, 6.12323399573677e-17, -0.0610231448524026, -0.121818838296015, -0.182160476701088, -0.241823148836038, -0.300584474178487, -0.358225431793611, -0.414531176690295, -0.46929184061231, -0.522303314279718, -0.573368008164859, -0.622295588967282, -0.668903689042559, -0.713018586140736, -0.754475850920814, -0.793120959827811, -0.828809871048002, -0.861409561395595, -0.890798522129708, -0.91686721185358, -0.939518464807934, -0.958667853036661, 0, 0], "y": [0, 1, 0.998136351302928, 0.992552351584645, 0.98326881407275, 0.970320341272419, 0.953755195992579, 0.933635121456065, 0.910035111164267, 0.883043129374047, 0.852759783228795, 0.819297947765685, 0.78278234519684, 0.743349080032561, 0.701145131779339, 0.656327807103518, 0.609064153502577, 0.55953033666942, 0.50791098387045, 0.454398495784844, 0.399192329369996, 0.342498254426125, 0.284527586631032, 0, 0], "name": "", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,0)"}, "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(61.761,38.352,168.3765)", "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": true, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 2.30083333333333, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, 0, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "0", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.40390873015873], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.40390873015873], "y": [0.33489417989418, 0.70010582010582]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 2.30083333333333, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.33489417989418, 0.70010582010582], "anchor": "x1"}, "xaxis2": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 2.30083333333333, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, 0, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "0", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.47390873015873, 0.74781746031746], "anchor": "y2"}, "scene2": {"domain": {"x": [0.47390873015873, 0.74781746031746], "y": [0.33489417989418, 0.70010582010582]}}, "yaxis2": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 2.30083333333333, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.33489417989418, 0.70010582010582], "anchor": "x2"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>2010<\/b>", "x": 0.266954365079365, "y": 0.71010582010582, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 9.9}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>2011<\/b>", "x": 0.610863095238095, "y": 0.71010582010582, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 9.9}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": "39%", "x": 1.03231526425474, "y": 0.379901559863439, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "top", "text": "41%", "x": -0.600088391331603, "y": -0.921896915381025, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "middle", "text": "0%", "x": -1.05453463834033, "y": 0.312980345294136, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "bottom", "text": "20%", "x": -0.657921583540338, "y": 0.881554984054752, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x2", "yref": "y2", "xanchor": "left", "align": "left", "yanchor": "middle", "text": "39%", "x": 1.0403989658707, "y": 0.357169416125152, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x2", "yref": "y2", "xanchor": "center", "align": "center", "yanchor": "top", "text": "32%", "x": -0.367901829700148, "y": -1.03665242183833, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x2", "yref": "y2", "xanchor": "right", "align": "right", "yanchor": "middle", "text": "7%", "x": -1.1, "y": 1.34711147906209e-16, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x2", "yref": "y2", "xanchor": "right", "align": "right", "yanchor": "bottom", "text": "21%", "x": -0.684568384904267, "y": 0.861026205402346, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "paper", "yref": "paper", "align": "center", "xanchor": "center", "yanchor": "bottom", "text": "", "x": 0.5, "y": 0.95, "font": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 15.6, "family": "Arial, sans-serif"}, "textangle": 0}], "legend": {"x": 0.785912698412698, "xref": "paper", "xanchor": "left", "y": 0.445343915343915, "yref": "paper", "yanchor": "bottom", "traceorder": "normal", "borderwidth": 0.5, "bordercolor": "rgb(38.25,38.25,38.25)", "bgcolor": "rgb(255,255,255)", "font": {"size": 8.1, "family": "Arial, sans-serif", "color": "rgb(0,0,0_)"}}, "title": "<b>2010<\/b>", "titlefont": {"color": "rgba(0,0,0,0)"}}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_88297251866 index=88297251866 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Categorical Pie Chart with Offsets

Plot a categorical pie chart with offset slices corresponding to categories.

```{matlab}
X = categorical({'North','South','North','East','South','West'});
explode = {'North','South'};
pie(X,explode)

fig2plotly(gcf)
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_905473055881 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": [0, 6.12323399573677e-17, -0.0615609061339428, -0.122888290664714, -0.18374951781657, -0.243913720108377, -0.303152674113043, -0.361241666187153, -0.417960344886783, -0.47309355683601, -0.526432162877356, -0.577773831408251, -0.626923805894106, -0.673695643646557, -0.717911923064442, -0.759404916654707, -0.798017227280239, -0.833602385221119, -0.866025403784438, 0, 0], "y": [0, 1, 0.998103328737044, 0.992420509671936, 0.982973099683902, 0.969796936035009, 0.952942000427157, 0.932472229404356, 0.908465271819524, 0.881012194285785, 0.850217135729614, 0.816196912356222, 0.779080574525671, 0.739008917220659, 0.696133945962927, 0.650618300204242, 0.602634636379256, 0.552364972960506, 0.5, 0, 0], "name": "East", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,0)"}, "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(61.761,38.352,168.3765)", "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "bottom", "text": "West (17%)", "x": 0.550000000000001, "y": 0.952627944162882, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "top", "text": "South (33%)", "x": 1.03923048454133, "y": -0.600000000000001, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "top", "text": "North (33%)", "x": -1.03923048454133, "y": -0.599999999999999, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "bottom", "text": "East (17%)", "x": -0.55, "y": 0.952627944162883, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_905473055881 index=905473055881 %}


Now, use a logical vector to offset the same slices.

```{matlab}
X = categorical({'North','South','North','East','South','West'});

explode = [0 1 1 0];
pie(X,explode)

fig2plotly(gcf)
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_41728460915 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": [0, 6.12323399573677e-17, -0.0615609061339428, -0.122888290664714, -0.18374951781657, -0.243913720108377, -0.303152674113043, -0.361241666187153, -0.417960344886783, -0.47309355683601, -0.526432162877356, -0.577773831408251, -0.626923805894106, -0.673695643646557, -0.717911923064442, -0.759404916654707, -0.798017227280239, -0.833602385221119, -0.866025403784438, 0, 0], "y": [0, 1, 0.998103328737044, 0.992420509671936, 0.982973099683902, 0.969796936035009, 0.952942000427157, 0.932472229404356, 0.908465271819524, 0.881012194285785, 0.850217135729614, 0.816196912356222, 0.779080574525671, 0.739008917220659, 0.696133945962927, 0.650618300204242, 0.602634636379256, 0.552364972960506, 0.5, 0, 0], "name": "East", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,0)"}, "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(61.761,38.352,168.3765)", "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "bottom", "text": "West (17%)", "x": 0.550000000000001, "y": 0.952627944162882, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "top", "text": "South (33%)", "x": 1.03923048454133, "y": -0.600000000000001, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "top", "text": "North (33%)", "x": -1.03923048454133, "y": -0.599999999999999, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "bottom", "text": "East (17%)", "x": -0.55, "y": 0.952627944162883, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_41728460915 index=41728460915 %}




<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Categorical Pie Chart with Labels

Plot a categorical pie chart without any offset slices and label the slices. When `X` is of data type `categorical` you must specify the input argument `explode`. To specify labels without any offset slices, specify `explode` as an empty cell array, and `labels` as the labels.

```{matlab}
X = categorical({'North','South','North','East','South','West'});
explode = {};
labels = {'E','N','S','W'};
pie(X,explode,labels)

fig2plotly(gcf)
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_194654731669 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": [0, 6.12323399573677e-17, -0.0615609061339428, -0.122888290664714, -0.18374951781657, -0.243913720108377, -0.303152674113043, -0.361241666187153, -0.417960344886783, -0.47309355683601, -0.526432162877356, -0.577773831408251, -0.626923805894106, -0.673695643646557, -0.717911923064442, -0.759404916654707, -0.798017227280239, -0.833602385221119, -0.866025403784438, 0, 0], "y": [0, 1, 0.998103328737044, 0.992420509671936, 0.982973099683902, 0.969796936035009, 0.952942000427157, 0.932472229404356, 0.908465271819524, 0.881012194285785, 0.850217135729614, 0.816196912356222, 0.779080574525671, 0.739008917220659, 0.696133945962927, 0.650618300204242, 0.602634636379256, 0.552364972960506, 0.5, 0, 0], "name": "East", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,0)"}, "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(61.761,38.352,168.3765)", "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "bottom", "text": "W", "x": 0.550000000000001, "y": 0.952627944162882, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "top", "text": "S", "x": 0.952627944162882, "y": -0.55, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "top", "text": "N", "x": -0.952627944162883, "y": -0.549999999999999, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "bottom", "text": "E", "x": -0.55, "y": 0.952627944162883, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_194654731669 index=194654731669 %}


Now, offset a slice and label all slices.

```{matlab}
X = categorical({'North','South','North','East','South','West'});
explode = {'West'};
labels = {'E','N','S','W'};
pie(X,explode,labels)

fig2plotly(gcf)
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_859487128296 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "x": [0, 6.12323399573677e-17, -0.0615609061339428, -0.122888290664714, -0.18374951781657, -0.243913720108377, -0.303152674113043, -0.361241666187153, -0.417960344886783, -0.47309355683601, -0.526432162877356, -0.577773831408251, -0.626923805894106, -0.673695643646557, -0.717911923064442, -0.759404916654707, -0.798017227280239, -0.833602385221119, -0.866025403784438, 0, 0], "y": [0, 1, 0.998103328737044, 0.992420509671936, 0.982973099683902, 0.969796936035009, 0.952942000427157, 0.932472229404356, 0.908465271819524, 0.881012194285785, 0.850217135729614, 0.816196912356222, 0.779080574525671, 0.739008917220659, 0.696133945962927, 0.650618300204242, 0.602634636379256, 0.552364972960506, 0.5, 0, 0], "name": "East", "visible": true, "fill": "tozeroy", "mode": "lines", "marker": {"sizeref": 1, "sizemode": "diameter", "size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,0)"}, "line": {"color": "rgb(0,0,0)", "width": 0.5, "dash": "solid"}, "fillcolor": "rgb(61.761,38.352,168.3765)", "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-1, -0.5, 0, 0.5, 1], "range": [-1.2, 1.2], "mirror": false, "ticktext": ["-1", "-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "bottom", "text": "W", "x": 0.600000000000001, "y": 1.03923048454133, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "top", "text": "S", "x": 0.952627944162882, "y": -0.55, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "top", "text": "N", "x": -0.952627944162883, "y": -0.549999999999999, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "right", "align": "right", "yanchor": "bottom", "text": "E", "x": -0.55, "y": 0.952627944162883, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_859487128296 index=859487128296 %}



<!--------------------- EXAMPLE BREAK ------------------------->

