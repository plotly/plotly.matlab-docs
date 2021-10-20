---
description: How to make Histogram plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Histograms
display_as: statistical
order: 3
permalink: matlab/histograms/
thumnail_github: histograms.png
layout: base
language: matlab
page_type: u-guide
---

## Histogram of Vector

Generate 10,000 random numbers and create a histogram. The `histogram` function automatically chooses an appropriate number of bins to cover the range of values in `x` and show the shape of the underlying distribution.

```{matlab}
x = randn(10000,1);
h = histogram(x)

fig2plotly(gcf);
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [10000×1 double]
           Values: [1×38 double]
          NumBins: 38
         BinEdges: [1×39 double]
         BinWidth: 0.2000
        BinLimits: [-4 3.6000]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>
```
{% capture plot_275402343959 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-3.9, -3.7, -3.5, -3.3, -3.1, -2.9, -2.7, -2.5, -2.3, -2.1, -1.9, -1.7, -1.5, -1.3, -1.1, -0.9, -0.7, -0.5, -0.3, -0.0999999999999999, 0.1, 0.3, 0.5, 0.700000000000001, 0.9, 1.1, 1.3, 1.5, 1.7, 1.9, 2.1, 2.3, 2.5, 2.7, 2.9, 3.1, 3.3, 3.5], "width": [0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.199999999999999, 0.2, 0.2, 0.2, 0.2, 0.199999999999999, 0.2, 0.2, 0.2, 0.2, 0.199999999999999, 0.2, 0.2, 0.2], "y": [1, 0, 0, 3, 7, 9, 26, 35, 61, 90, 154, 193, 265, 330, 426, 547, 639, 678, 779, 821, 760, 737, 713, 628, 544, 407, 319, 262, 194, 146, 95, 60, 28, 17, 13, 6, 4, 3], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-4, -3, -2, -1, 0, 1, 2, 3], "range": [-4.38, 3.98], "mirror": "ticks", "ticktext": ["-4", "-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 100, 200, 300, 400, 500, 600, 700, 800, 900], "range": [0, 900], "mirror": "ticks", "ticktext": ["0", "100", "200", "300", "400", "500", "600", "700", "800", "900"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_275402343959 index=275402343959 %}




When you specify an output argument to the `histogram` function, it returns a histogram object. You can use this object to inspect the properties of the histogram, such as the number of bins or the width of the bins.

Find the number of histogram bins. 

```{matlab}
x = randn(10000,1);
h = histogram(x)
nbins = h.NumBins
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [10000×1 double]
           Values: [1×38 double]
          NumBins: 38
         BinEdges: [1×39 double]
         BinWidth: 0.2000
        BinLimits: [-3.4000 4.2000]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>


nbins =

    38
```



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Number of Histogram Bins

Plot a histogram of 1,000 random numbers sorted into 25 equally spaced bins.

```{matlab}
x = randn(1000,1);
nbins = 25;
h = histogram(x,nbins)

fig2plotly(gcf);
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [1×25 double]
          NumBins: 25
         BinEdges: [1×26 double]
         BinWidth: 0.2900
        BinLimits: [-3.6000 3.6500]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>
```
{% capture plot_687259779716 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-3.455, -3.165, -2.875, -2.585, -2.295, -2.005, -1.715, -1.425, -1.135, -0.845, -0.555, -0.265, 0.0249999999999995, 0.315, 0.605, 0.895, 1.185, 1.475, 1.765, 2.055, 2.345, 2.635, 2.925, 3.215, 3.505], "width": [0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.289999999999999, 0.29], "y": [1, 2, 3, 5, 12, 15, 24, 47, 63, 85, 96, 121, 86, 98, 101, 88, 69, 42, 20, 11, 7, 1, 2, 0, 1], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3, 4], "range": [-3.9625, 4.0125], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3", "4"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 20, 40, 60, 80, 100, 120, 140], "range": [0, 140], "mirror": "ticks", "ticktext": ["0", "20", "40", "60", "80", "100", "120", "140"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_687259779716 index=687259779716 %}



Find the bin counts.

```{matlab}
x = randn(1000,1);
nbins = 25;
h = histogram(x,nbins)

counts = h.Values
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [1×25 double]
          NumBins: 25
         BinEdges: [1×26 double]
         BinWidth: 0.2700
        BinLimits: [-3.8000 2.9500]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>


counts =

  Columns 1 through 12

     1     0     1     3     8     6     9    26    29    42    57    77

  Columns 13 through 24

   107   106   103   122    85    77    53    34    24    13    12     3

  Column 25

     2
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Change Number of Histogram Bins

Generate 1,000 random numbers and create a histogram. 

```{matlab}
X = randn(1000,1);
h = histogram(X)

fig2plotly(gcf);
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [1×23 double]
          NumBins: 23
         BinEdges: [1×24 double]
         BinWidth: 0.3000
        BinLimits: [-3.6000 3.3000]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>
```
{% capture plot_112166354444 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-3.45, -3.15, -2.85, -2.55, -2.25, -1.95, -1.65, -1.35, -1.05, -0.75, -0.45, -0.15, 0.15, 0.45, 0.75, 1.05, 1.35, 1.65, 1.95, 2.25, 2.55, 2.85, 3.15], "width": [0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.300000000000001, 0.3, 0.3, 0.3, 0.3, 0.300000000000001, 0.3, 0.3, 0.300000000000001, 0.3], "y": [1, 0, 2, 3, 6, 17, 30, 45, 73, 90, 127, 114, 134, 105, 75, 77, 40, 30, 11, 15, 4, 0, 1], "name": "X", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3], "range": [-3.945, 3.645], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 20, 40, 60, 80, 100, 120, 140], "range": [0, 140], "mirror": "ticks", "ticktext": ["0", "20", "40", "60", "80", "100", "120", "140"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_112166354444 index=112166354444 %}


Use the `morebins` function to coarsely adjust the number of bins.

```{matlab}
X = randn(1000,1);
h = histogram(X)

Nbins = morebins(h);

fig2plotly(gcf);
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [1×20 double]
          NumBins: 20
         BinEdges: [1×21 double]
         BinWidth: 0.3000
        BinLimits: [-3.0000 3.0000]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>
```
{% capture plot_177010929660 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-2.865, -2.595, -2.325, -2.055, -1.785, -1.515, -1.245, -0.975, -0.705, -0.435, -0.165, 0.105, 0.375, 0.645, 0.915, 1.185, 1.455, 1.725, 1.995, 2.265, 2.535, 2.805], "width": [0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27], "y": [2, 5, 3, 17, 20, 26, 54, 69, 77, 91, 99, 111, 112, 84, 77, 56, 38, 19, 21, 10, 8, 1], "name": "X", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3], "range": [-3.297, 3.237], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 20, 40, 60, 80, 100, 120], "range": [0, 120], "mirror": "ticks", "ticktext": ["0", "20", "40", "60", "80", "100", "120"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_177010929660 index=177010929660 %}



Adjust the bins at a fine grain level by explicitly setting the number of bins.

```{matlab}
X = randn(1000,1);
h = histogram(X)

Nbins = morebins(h);

h.NumBins = 31;

fig2plotly(gcf);
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [1×24 double]
          NumBins: 24
         BinEdges: [1×25 double]
         BinWidth: 0.3000
        BinLimits: [-3.0000 4.2000]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>
```
{% capture plot_189049071004 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-2.885, -2.655, -2.425, -2.195, -1.965, -1.735, -1.505, -1.275, -1.045, -0.815, -0.585, -0.355, -0.125, 0.105, 0.335, 0.565, 0.795, 1.025, 1.255, 1.485, 1.715, 1.945, 2.175, 2.405, 2.635, 2.865, 3.095, 3.325, 3.555, 3.785, 4.015], "width": [0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23], "y": [2, 3, 4, 12, 14, 20, 22, 40, 45, 72, 62, 89, 89, 98, 81, 101, 67, 45, 39, 34, 20, 18, 10, 4, 5, 2, 1, 0, 0, 0, 1], "name": "X", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3, 4], "range": [-3.3565, 4.4865], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3", "4"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 20, 40, 60, 80, 100, 120], "range": [0, 120], "mirror": "ticks", "ticktext": ["0", "20", "40", "60", "80", "100", "120"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_189049071004 index=189049071004 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Bin Edges of Histogram

Generate 1,000 random numbers and create a histogram. Specify the bin edges as a vector with wide bins on the edges of the histogram to capture the outliers that do not satisfy |x|<2. The first vector element is the left edge of the first bin, and the last vector element is the right edge of the last bin.

```{matlab}
x = randn(1000,1);
edges = [-10 -2:0.25:2 10];
h = histogram(x,edges);

fig2plotly(gcf);
```
{% capture plot_555658716563 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-6, -1.875, -1.625, -1.375, -1.125, -0.875, -0.625, -0.375, -0.125, 0.125, 0.375, 0.625, 0.875, 1.125, 1.375, 1.625, 1.875, 6], "width": [8, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 8], "y": [14, 20, 36, 39, 56, 59, 97, 84, 94, 119, 94, 86, 60, 50, 38, 18, 15, 21], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-10, -8, -6, -4, -2, 0, 2, 4, 6, 8, 10], "range": [-11, 11], "mirror": "ticks", "ticktext": ["-10", "-8", "-6", "-4", "-2", "0", "2", "4", "6", "8", "10"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 20, 40, 60, 80, 100, 120], "range": [0, 120], "mirror": "ticks", "ticktext": ["0", "20", "40", "60", "80", "100", "120"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_555658716563 index=555658716563 %}



Specify the `Normalization` property as `'countdensity'` to flatten out the bins containing the outliers. Now, the area of each bin (rather than the height) represents the frequency of observations in that interval.

```{matlab}
x = randn(1000,1);
edges = [-10 -2:0.25:2 10];
h = histogram(x,edges);

h.Normalization = 'countdensity';

fig2plotly(gcf);
```
{% capture plot_795594751710 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-6, -1.875, -1.625, -1.375, -1.125, -0.875, -0.625, -0.375, -0.125, 0.125, 0.375, 0.625, 0.875, 1.125, 1.375, 1.625, 1.875, 6], "width": [8, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 8], "y": [3.375, 52, 92, 172, 164, 208, 340, 400, 408, 448, 404, 332, 276, 184, 140, 124, 80, 2.125], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-10, -8, -6, -4, -2, 0, 2, 4, 6, 8, 10], "range": [-11, 11], "mirror": "ticks", "ticktext": ["-10", "-8", "-6", "-4", "-2", "0", "2", "4", "6", "8", "10"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 50, 100, 150, 200, 250, 300, 350, 400, 450], "range": [0, 450], "mirror": "ticks", "ticktext": ["0", "50", "100", "150", "200", "250", "300", "350", "400", "450"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_795594751710 index=795594751710 %}




<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Categorical Histogram

Create a categorical vector that represents votes. The categories in the vector are `'yes'`, `'no'`, or `'undecided'`.

```{matlab}
A = [0 0 1 1 1 0 0 0 0 NaN NaN 1 0 0 0 1 0 1 0 1 0 0 0 1 1 1 1];
C = categorical(A,[1 0 NaN],{'yes','no','undecided'})
```
```
C = 

  1×27 <a href="matlab:helpPopup categorical" style="font-weight:bold">categorical</a> array

  Columns 1 through 9

     no      no      yes      yes      yes      no      no      no      no 

  Columns 10 through 16

     undecided      undecided      yes      no      no      no      yes 

  Columns 17 through 24

     no      yes      no      yes      no      no      no      yes 

  Columns 25 through 27

     yes      yes      yes
```


Plot a categorical histogram of the votes, using a relative bar width of `0.5`.

```{matlab}
A = [0 0 1 1 1 0 0 0 0 NaN NaN 1 0 0 0 1 0 1 0 1 0 0 0 1 1 1 1];
C = categorical(A,[1 0 NaN],{'yes','no','undecided'})

h = histogram(C,'BarWidth',0.5)

fig2plotly(gcf);
```
```
C = 

  1×27 <a href="matlab:helpPopup categorical" style="font-weight:bold">categorical</a> array

  Columns 1 through 9

     no      no      yes      yes      yes      no      no      no      no 

  Columns 10 through 16

     undecided      undecided      yes      no      no      no      yes 

  Columns 17 through 24

     no      yes      no      yes      no      no      no      yes 

  Columns 25 through 27

     yes      yes      yes 


h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.categorical.Histogram" style="font-weight:bold">Histogram</a> with properties:

              Data: [1×27 categorical]
            Values: [11 14 2]
    NumDisplayBins: 3
        Categories: {'yes'  'no'  'undecided'}
      DisplayOrder: 'data'
     Normalization: 'count'
      DisplayStyle: 'bar'
         FaceColor: 'auto'
         EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.categorical.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>
```
{% capture plot_23998921747 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "width": 0.5, "y": [11, 14, 2], "name": "", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}, "color": "rgb(0,113.985,188.955)"}, "opacity": 0.75, "visible": true, "showlegend": true, "x": ["yes", "no", "undecided"]}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": true, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "category", "showticklabels": true, "tickmode": "array", "mirror": "ticks", "ticktext": ["yes", "no", "undecided"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1", "autotick": true, "range": [-0.5, 2.5]}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 2, 4, 6, 8, 10, 12, 14], "range": [0, 14], "mirror": "ticks", "ticktext": ["0", "2", "4", "6", "8", "10", "12", "14"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_23998921747 index=23998921747 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Histogram with Specified Normalization

Generate 1,000 random numbers and create a histogram using the `'probability'` normalization.

```{matlab}
x = randn(1000,1);
h = histogram(x,'Normalization','probability')

fig2plotly(gcf);
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [1×22 double]
          NumBins: 22
         BinEdges: [1×23 double]
         BinWidth: 0.3000
        BinLimits: [-3.6000 3.0000]
    Normalization: 'probability'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>
```
{% capture plot_429637873610 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-3.45, -3.15, -2.85, -2.55, -2.25, -1.95, -1.65, -1.35, -1.05, -0.75, -0.45, -0.15, 0.15, 0.45, 0.75, 1.05, 1.35, 1.65, 1.95, 2.25, 2.55, 2.85], "width": [0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.300000000000001, 0.3, 0.3, 0.3, 0.3, 0.300000000000001, 0.3, 0.3, 0.300000000000001], "y": [0.001, 0.001, 0.004, 0.006, 0.011, 0.014, 0.019, 0.05, 0.072, 0.097, 0.099, 0.112, 0.135, 0.128, 0.079, 0.064, 0.049, 0.027, 0.015, 0.01, 0.005, 0.002], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3], "range": [-3.93, 3.33], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14], "range": [0, 0.14], "mirror": "ticks", "ticktext": ["0", "0.02", "0.04", "0.06", "0.08", "0.1", "0.12", "0.14"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_429637873610 index=429637873610 %}



Compute the sum of the bar heights. With this normalization, the height of each bar is equal to the probability of selecting an observation within that bin interval, and the height of all of the bars sums to 1.

```{matlab}
x = randn(1000,1);
h = histogram(x,'Normalization','probability')

S = sum(h.Values)

fig2plotly(gcf);
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [1×23 double]
          NumBins: 23
         BinEdges: [1×24 double]
         BinWidth: 0.3000
        BinLimits: [-3.3000 3.6000]
    Normalization: 'probability'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>


S =

     1
```
{% capture plot_467019166495 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-3.15, -2.85, -2.55, -2.25, -1.95, -1.65, -1.35, -1.05, -0.75, -0.45, -0.15, 0.15, 0.45, 0.75, 1.05, 1.35, 1.65, 1.95, 2.25, 2.55, 2.85, 3.15, 3.45], "width": [0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.300000000000001, 0.3, 0.3, 0.3, 0.3, 0.300000000000001, 0.3, 0.3, 0.300000000000001, 0.3], "y": [0.001, 0.002, 0.005, 0.01, 0.013, 0.032, 0.037, 0.058, 0.101, 0.115, 0.128, 0.132, 0.11, 0.085, 0.059, 0.051, 0.031, 0.015, 0.008, 0.003, 0.002, 0.001, 0.001], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3], "range": [-3.645, 3.945], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14], "range": [0, 0.14], "mirror": "ticks", "ticktext": ["0", "0.02", "0.04", "0.06", "0.08", "0.1", "0.12", "0.14"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_467019166495 index=467019166495 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Multiple Histograms

Generate two vectors of random numbers and plot a histogram for each vector in the same figure. 

```{matlab}
x = randn(2000,1);
y = 1 + randn(5000,1);
h1 = histogram(x);
hold on
h2 = histogram(y);

fig2plotly(gcf);
```
{% capture plot_643765096056 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-3.15, -2.85, -2.55, -2.25, -1.95, -1.65, -1.35, -1.05, -0.75, -0.45, -0.15, 0.15, 0.45, 0.75, 1.05, 1.35, 1.65, 1.95, 2.25, 2.55, 2.85, 3.15], "width": [0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.300000000000001, 0.3, 0.3, 0.3, 0.3, 0.300000000000001, 0.3, 0.3, 0.300000000000001], "y": [2, 1, 16, 15, 36, 62, 106, 131, 186, 235, 231, 229, 189, 178, 130, 117, 61, 40, 18, 9, 5, 3], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-2.9, -2.7, -2.5, -2.3, -2.1, -1.9, -1.7, -1.5, -1.3, -1.1, -0.9, -0.7, -0.5, -0.3, -0.0999999999999999, 0.1, 0.3, 0.5, 0.7, 0.9, 1.1, 1.3, 1.5, 1.7, 1.9, 2.1, 2.3, 2.5, 2.7, 2.9, 3.1, 3.3, 3.5, 3.7, 3.9, 4.1, 4.3, 4.5, 4.7], "width": [0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.199999999999999, 0.2, 0.2, 0.2, 0.2, 0.199999999999999, 0.2, 0.2, 0.2, 0.2, 0.199999999999999, 0.2, 0.2, 0.2, 0.2], "y": [1, 0, 0, 5, 4, 7, 13, 17, 34, 52, 63, 102, 131, 153, 221, 269, 312, 365, 376, 354, 416, 396, 350, 316, 263, 219, 161, 134, 92, 74, 36, 24, 24, 9, 2, 1, 0, 2, 2], "name": "y", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3, 4, 5], "range": [-3.705, 5.205], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3", "4", "5"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 50, 100, 150, 200, 250, 300, 350, 400, 450], "range": [0, 450], "mirror": "ticks", "ticktext": ["0", "50", "100", "150", "200", "250", "300", "350", "400", "450"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_643765096056 index=643765096056 %}


Since the sample size and bin width of the histograms are different, it is difficult to compare them. Normalize the histograms so that all of the bar heights add to 1, and use a uniform bin width.

```{matlab}
x = randn(2000,1);
y = 1 + randn(5000,1);
h1 = histogram(x);
hold on
h2 = histogram(y);

h1.Normalization = 'probability';
h1.BinWidth = 0.25;
h2.Normalization = 'probability';
h2.BinWidth = 0.25;

fig2plotly(gcf);
```
{% capture plot_686400722602 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-2.875, -2.625, -2.375, -2.125, -1.875, -1.625, -1.375, -1.125, -0.875, -0.625, -0.375, -0.125, 0.125, 0.375, 0.625, 0.875, 1.125, 1.375, 1.625, 1.875, 2.125, 2.375, 2.625, 2.875, 3.125], "width": [0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25], "y": [0.0015, 0.0015, 0.0065, 0.011, 0.0145, 0.022, 0.0425, 0.0545, 0.0685, 0.0835, 0.0925, 0.098, 0.0925, 0.093, 0.09, 0.06, 0.0595, 0.039, 0.027, 0.024, 0.009, 0.0045, 0.002, 0.0015, 0.0015], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-2.125, -1.875, -1.625, -1.375, -1.125, -0.875, -0.625, -0.375, -0.125, 0.125, 0.375, 0.625, 0.875, 1.125, 1.375, 1.625, 1.875, 2.125, 2.375, 2.625, 2.875, 3.125, 3.375, 3.625, 3.875, 4.125, 4.375, 4.625], "width": [0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25], "y": [0.0002, 0.002, 0.0024, 0.0064, 0.0118, 0.0156, 0.0258, 0.0388, 0.0498, 0.0686, 0.0872, 0.0942, 0.1032, 0.1, 0.084, 0.081, 0.0712, 0.0502, 0.0398, 0.0268, 0.0192, 0.011, 0.006, 0.0028, 0.0014, 0.0002, 0.0002, 0.0002], "name": "y", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3, 4, 5], "range": [-3.3875, 5.1375], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3", "4", "5"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.02, 0.04, 0.06, 0.08, 0.1, 0.12], "range": [0, 0.12], "mirror": "ticks", "ticktext": ["0", "0.02", "0.04", "0.06", "0.08", "0.1", "0.12"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_686400722602 index=686400722602 %}


<!--------------------- EXAMPLE BREAK ------------------------->

## Adjust Histogram Properties

Generate 1,000 random numbers and create a histogram. Return the histogram object to adjust the properties of the histogram without recreating the entire plot.

```{matlab}
x = randn(1000,1);
h = histogram(x)

fig2plotly(gcf);
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [1×23 double]
          NumBins: 23
         BinEdges: [1×24 double]
         BinWidth: 0.3000
        BinLimits: [-3.3000 3.6000]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>
```
{% capture plot_636513199319 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-3.15, -2.85, -2.55, -2.25, -1.95, -1.65, -1.35, -1.05, -0.75, -0.45, -0.15, 0.15, 0.45, 0.75, 1.05, 1.35, 1.65, 1.95, 2.25, 2.55, 2.85, 3.15, 3.45], "width": [0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.300000000000001, 0.3, 0.3, 0.3, 0.3, 0.300000000000001, 0.3, 0.3, 0.300000000000001, 0.3], "y": [2, 4, 5, 15, 18, 26, 40, 68, 90, 83, 123, 133, 106, 88, 80, 51, 25, 18, 13, 7, 2, 2, 1], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3], "range": [-3.645, 3.945], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 20, 40, 60, 80, 100, 120, 140], "range": [0, 140], "mirror": "ticks", "ticktext": ["0", "20", "40", "60", "80", "100", "120", "140"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_636513199319 index=636513199319 %}


Specify exactly how many bins to use.

```{matlab}
x = randn(1000,1);
h = histogram(x)

h.NumBins = 15;

fig2plotly(gcf);
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [1×22 double]
          NumBins: 22
         BinEdges: [1×23 double]
         BinWidth: 0.3000
        BinLimits: [-3.3000 3.3000]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>
```
{% capture plot_582615859299 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-3.37, -2.91, -2.45, -1.99, -1.53, -1.07, -0.61, -0.15, 0.31, 0.77, 1.23, 1.69, 2.15, 2.61, 3.07], "width": [0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46], "y": [1, 1, 7, 32, 66, 101, 155, 172, 149, 157, 96, 33, 18, 8, 4], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3], "range": [-3.945, 3.645], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 20, 40, 60, 80, 100, 120, 140, 160, 180], "range": [0, 180], "mirror": "ticks", "ticktext": ["0", "20", "40", "60", "80", "100", "120", "140", "160", "180"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_582615859299 index=582615859299 %}


Specify the edges of the bins with a vector. The first value in the vector is the left edge of the first bin. The last value is the right edge of the last bin.

```{matlab}
x = randn(1000,1);
h = histogram(x)

h.NumBins = 15;

h.BinEdges = [-3:3];

fig2plotly(gcf);
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [1×21 double]
          NumBins: 21
         BinEdges: [1×22 double]
         BinWidth: 0.3000
        BinLimits: [-3.3000 3]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>
```
{% capture plot_309079777133 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-2.5, -1.5, -0.5, 0.5, 1.5, 2.5], "width": [1, 1, 1, 1, 1, 1], "y": [21, 134, 344, 340, 148, 12], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3], "range": [-3.3, 3.3], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 50, 100, 150, 200, 250, 300, 350], "range": [0, 350], "mirror": "ticks", "ticktext": ["0", "50", "100", "150", "200", "250", "300", "350"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_309079777133 index=309079777133 %}


Change the color of the histogram bars.

```{matlab}
x = randn(1000,1);
h = histogram(x)

h.NumBins = 15;

h.BinEdges = [-3:3];

h.FaceColor = [0 0.5 0.5];
h.EdgeColor = 'r';

fig2plotly(gcf);
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [1×25 double]
          NumBins: 25
         BinEdges: [1×26 double]
         BinWidth: 0.3000
        BinLimits: [-3.9000 3.6000]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>
```
{% capture plot_747933537109 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-2.5, -1.5, -0.5, 0.5, 1.5, 2.5], "width": [1, 1, 1, 1, 1, 1], "y": [21, 129, 343, 341, 135, 26], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(255,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3], "range": [-3.3, 3.3], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 50, 100, 150, 200, 250, 300, 350], "range": [0, 350], "mirror": "ticks", "ticktext": ["0", "50", "100", "150", "200", "250", "300", "350"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_747933537109 index=747933537109 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Determine Underlying Probability Distribution

Generate 5,000 normally distributed random numbers with a mean of 5 and a standard deviation of 2. Plot a histogram with `Normalization` set to `'pdf'` to produce an estimation of the probability density function.

```{matlab}
x = 2*randn(5000,1) + 5;
histogram(x,'Normalization','pdf')

fig2plotly(gcf);
```
{% capture plot_670584763202 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-2.75, -2.25, -1.75, -1.25, -0.75, -0.25, 0.25, 0.75, 1.25, 1.75, 2.25, 2.75, 3.25, 3.75, 4.25, 4.75, 5.25, 5.75, 6.25, 6.75, 7.25, 7.75, 8.25, 8.75, 9.25, 9.75, 10.25, 10.75, 11.25, 11.75, 12.25], "width": [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5], "y": [0.0004, 0, 0.0012, 0.002, 0.0032, 0.0056, 0.0112, 0.0228, 0.0352, 0.0456, 0.084, 0.1, 0.134, 0.1744, 0.1812, 0.2012, 0.1828, 0.1868, 0.1508, 0.1388, 0.1088, 0.0888, 0.0528, 0.0372, 0.0248, 0.0136, 0.0068, 0.0036, 0.0016, 0.0004, 0.0004], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-2, 0, 2, 4, 6, 8, 10, 12], "range": [-3.775, 13.275], "mirror": "ticks", "ticktext": ["-2", "0", "2", "4", "6", "8", "10", "12"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.05, 0.1, 0.15, 0.2, 0.25], "range": [0, 0.25], "mirror": "ticks", "ticktext": ["0", "0.05", "0.1", "0.15", "0.2", "0.25"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_670584763202 index=670584763202 %}


In this example, the underlying distribution for the normally distributed data is known. You can, however, use the `'pdf'` histogram plot to determine the underlying probability distribution of the data by comparing it against a known probability density function.

The probability density function for a normal distribution with mean ÿ, standard deviation ÿ, and variance ÿ<sup>2</sup> is



<div class="code_responsive">

<span><span class="MathEquation" role="math" style="font-size: 15px;"><span class="MathRoot HBox" role="img" aria-label="f leftParenthesis x , mu , sigma rightParenthesis equals StartFraction 1 over sigma StartRoot SquareRootOf 2 pi EndRoot EndFraction exp bracketleft minus StartFraction leftParenthesis x minus mu rightParenthesis Squared baseline over 2 sigma Squared baseline EndFraction bracketright ldotp" style="display: inline-block; position: relative;"><span class="MathRow HBox" style="display: inline-block; position: relative; font-size: 15px;"><span class="MathText MathTextBox text" style="position: relative; margin-left: 0.2em; margin-right: 0.2em;">f</span><span class="MathText MathTextBox extra1" style="position: relative;">(</span><span class="MathText MathTextBox text" style="position: relative; margin-left: 0.05em;">x</span><span class="MathText MathTextBox symbol" style="position: relative;">,</span><span class="MathText MathTextBox symbol" style="position: relative; margin-left: 0.216667em; font-style: italic;">ÿ</span><span class="MathText MathTextBox symbol" style="position: relative;">,</span><span class="MathText MathTextBox symbol" style="position: relative; margin-left: 0.166667em; margin-right: 0.05em; font-style: italic;">ÿ</span><span class="MathText MathTextBox extra1" style="position: relative;">)</span><span class="MathText MathTextBox symbol" style="position: relative; margin-left: 0.277778em;">=</span><span class="MathFraction VBox" style="display: inline-block; position: relative; margin-left: 0.277778em; text-align: center; vertical-align: -13px;"><span class="MathRow HBox" style="display: block; position: relative; font-size: 15px; margin-top: 0px;"><span class="MathText MathTextBox number" style="position: relative;">1</span></span><span class="WhiteSpaceBox" style="display: none;"></span><span class="rulebox" style="display: block; border-bottom-style: solid; border-bottom-width: 1px; width: 100%; height: 0px; z-index: 1; margin-top: 0px;"></span><span class="WhiteSpaceBox" style="display: none;"></span><span class="MathRow HBox" style="display: block; position: relative; font-size: 15px; margin-top: 1px;"><span class="MathText MathTextBox symbol" style="position: relative; margin-right: 0.05em; font-style: italic;">ÿ</span><span class="MathRadical HBox" style="display: inline-block; position: relative; font-size: 15px; margin-left: 0.166667em;"><span class="VBox" style="display: inline-block; position: relative; text-align: center; vertical-align: 2px;"><span class="StretchyBox" style="display: inline-block; position: relative; text-align: right;"><span class="MathTextBox extra1" style="position: relative; display: inline-block;">G</span></span></span><span class="VBox" style="display: inline-block; position: relative; text-align: center; vertical-align: 0px;"><span class="rulebox" style="display: block; border-bottom-style: solid; border-bottom-width: 1px; width: 100%; height: 0px; z-index: 1; margin-top: 0px;"></span><span class="WhiteSpaceBox" style="display: none;"></span><span class="MathRow HBox" style="display: block; position: relative; font-size: 15px; margin-top: 1px;"><span class="MathText MathTextBox number" style="position: relative;">2</span><span class="MathText MathTextBox symbol" style="position: relative; margin-right: 0.1em; font-style: italic;">ÿ</span></span></span></span></span></span><span class="MathRow HBox" style="display: inline-block; position: relative; font-size: 15px; margin-left: 0.166667em;"><span class="MathText MathTextBox mtext" style="position: relative;"> </span><span class="MathText MathTextBox mtext" style="position: relative; font-style: normal;">exp</span></span><span class="MathRow HBox" style="display: inline-block; position: relative; font-size: 15px;"><span class="MathDelimiter StretchyBox" style="display: inline-block; position: relative; text-align: center;"><span class="MathTextBox extra4" style="position: relative; display: inline-block; vertical-align: 20px; line-height: 36px; margin-top: -6px; margin-bottom: 6px;">[</span></span><span class="MathText MathTextBox symbol" style="position: relative;">ÿ</span><span class="MathFraction VBox" style="display: inline-block; position: relative; margin-left: 0.166667em; text-align: center; vertical-align: -12px;"><span class="MathRow HBox" style="display: block; position: relative; font-size: 15px; margin-top: 0px;"><span class="MathText MathTextBox extra1" style="position: relative;">(</span><span class="MathText MathTextBox text" style="position: relative; margin-left: 0.05em;">x</span><span class="MathText MathTextBox symbol" style="position: relative; margin-left: 0.222222em;">ÿ</span><span class="MathText MathTextBox symbol" style="position: relative; margin-left: 0.272222em; font-style: italic;">ÿ</span><span class="MathScript HBox" style="display: inline-block; position: relative; font-size: 15px;"><span class="MathRow HBox" style="display: inline-block; position: relative; font-size: 15px;"><span class="MathText MathTextBox extra1" style="position: relative;">)</span></span><span class="VBox" style="display: inline-block; position: relative; text-align: left; vertical-align: 5px;"><span class="MathRow HBox" style="display: block; position: relative; font-size: 10px; margin-top: 0px;"><span class="MathText MathTextBox number" style="position: relative;">2</span></span></span></span></span><span class="WhiteSpaceBox" style="display: none;"></span><span class="rulebox" style="display: block; border-bottom-style: solid; border-bottom-width: 1px; width: 100%; height: 0px; z-index: 1; margin-top: 0px;"></span><span class="WhiteSpaceBox" style="display: none;"></span><span class="MathRow HBox" style="display: block; position: relative; font-size: 15px; margin-top: 1px;"><span class="MathText MathTextBox number" style="position: relative;">2</span><span class="MathScript HBox" style="display: inline-block; position: relative; font-size: 15px;"><span class="MathRow HBox" style="display: inline-block; position: relative; font-size: 15px;"><span class="MathText MathTextBox symbol" style="position: relative; margin-right: 0.05em; font-style: italic;">ÿ</span></span><span class="VBox" style="display: inline-block; position: relative; text-align: left; vertical-align: 5px;"><span class="MathRow HBox" style="display: block; position: relative; font-size: 10px; margin-top: 0px;"><span class="MathText MathTextBox number" style="position: relative;">2</span></span></span></span></span></span><span class="MathDelimiter StretchyBox" style="display: inline-block; position: relative; text-align: center;"><span class="MathTextBox extra4" style="position: relative; display: inline-block; vertical-align: 20px; line-height: 36px; margin-top: -6px; margin-bottom: 6px;">]</span></span></span><span class="MathText MathTextBox symbol" style="position: relative;">.</span></span></span></span></span>

</div>



Overlay a plot of the probability density function for a normal distribution with a mean of 5 and a standard deviation of 2.

```{matlab}
x = 2*randn(5000,1) + 5;
histogram(x,'Normalization','pdf')

hold on
y = -5:0.1:15;
mu = 5;
sigma = 2;
f = exp(-(y-mu).^2./(2*sigma^2))./(sigma*sqrt(2*pi));
plot(y,f,'LineWidth',1.5)

fig2plotly(gcf);
```
{% capture plot_631901139217 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-2.25, -1.75, -1.25, -0.75, -0.25, 0.25, 0.75, 1.25, 1.75, 2.25, 2.75, 3.25, 3.75, 4.25, 4.75, 5.25, 5.75, 6.25, 6.75, 7.25, 7.75, 8.25, 8.75, 9.25, 9.75, 10.25, 10.75, 11.25, 11.75, 12.25, 12.75, 13.25], "width": [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5], "y": [0.0008, 0.0004, 0.0028, 0.0044, 0.0052, 0.0104, 0.0164, 0.0352, 0.0528, 0.0796, 0.1024, 0.1384, 0.1528, 0.1716, 0.2, 0.2028, 0.198, 0.152, 0.1444, 0.1004, 0.0816, 0.0616, 0.0344, 0.0244, 0.0104, 0.0084, 0.0044, 0.0028, 0.0004, 0.0004, 0, 0.0004], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [-5, -4.9, -4.8, -4.7, -4.6, -4.5, -4.4, -4.3, -4.2, -4.1, -4, -3.9, -3.8, -3.7, -3.6, -3.5, -3.4, -3.3, -3.2, -3.1, -3, -2.9, -2.8, -2.7, -2.6, -2.5, -2.4, -2.3, -2.2, -2.1, -2, -1.9, -1.8, -1.7, -1.6, -1.5, -1.4, -1.3, -1.2, -1.1, -1, -0.899999999999999, -0.8, -0.7, -0.6, -0.5, -0.399999999999999, -0.3, -0.199999999999999, -0.0999999999999996, 0, 0.100000000000001, 0.2, 0.300000000000001, 0.4, 0.5, 0.600000000000001, 0.7, 0.800000000000001, 0.9, 1, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8, 1.9, 2, 2.1, 2.2, 2.3, 2.4, 2.5, 2.6, 2.7, 2.8, 2.9, 3, 3.1, 3.2, 3.3, 3.4, 3.5, 3.6, 3.7, 3.8, 3.9, 4, 4.1, 4.2, 4.3, 4.4, 4.5, 4.6, 4.7, 4.8, 4.9, 5, 5.1, 5.2, 5.3, 5.4, 5.5, 5.6, 5.7, 5.8, 5.9, 6, 6.1, 6.2, 6.3, 6.4, 6.5, 6.6, 6.7, 6.8, 6.9, 7, 7.1, 7.2, 7.3, 7.4, 7.5, 7.6, 7.7, 7.8, 7.9, 8, 8.1, 8.2, 8.3, 8.4, 8.5, 8.6, 8.7, 8.8, 8.9, 9, 9.1, 9.2, 9.3, 9.4, 9.5, 9.6, 9.7, 9.8, 9.9, 10, 10.1, 10.2, 10.3, 10.4, 10.5, 10.6, 10.7, 10.8, 10.9, 11, 11.1, 11.2, 11.3, 11.4, 11.5, 11.6, 11.7, 11.8, 11.9, 12, 12.1, 12.2, 12.3, 12.4, 12.5, 12.6, 12.7, 12.8, 12.9, 13, 13.1, 13.2, 13.3, 13.4, 13.5, 13.6, 13.7, 13.8, 13.9, 14, 14.1, 14.2, 14.3, 14.4, 14.5, 14.6, 14.7, 14.8, 14.9, 15], "y": [7.43359757367149e-07, 9.53300451561405e-07, 1.21948037294668e-06, 1.55608778957447e-06, 1.98064954551604e-06, 2.51475364429622e-06, 3.18491258943354e-06, 4.02359122824615e-06, 5.07042603274338e-06, 6.37366619091673e-06, 7.99187055345274e-06, 9.9958983534614e-06, 1.24712356450268e-05, 1.55207035289251e-05, 1.92675983710436e-05, 2.38593182706025e-05, 2.94715338782699e-05, 3.63129651511262e-05, 4.46308285885665e-05, 5.47170217199003e-05, 6.69151128824427e-05, 8.1628204383121e-05, 9.93277356963864e-05, 0.000120563290112997, 0.00014597346289573, 0.000176297841183723, 0.000212390135275376, 0.000255232487172093, 0.000305950965056887, 0.000365832231415155, 0.00043634134752288, 0.000519140647830705, 0.00061610958423651, 0.000729365402333374, 0.000861284469526841, 0.00101452402864988, 0.00119204410073242, 0.00139712920743972, 0.00163340952809996, 0.00190488104911091, 0.002215924205969, 0.00257132046152697, 0.00297626620988793, 0.00343638334530699, 0.00395772579148998, 0.00454678125079553, 0.0052104674072113, 0.00595612180380259, 0.00679148461684282, 0.00772467356719759, 0.00876415024678427, 0.00991867719589767, 0.0111972651474214, 0.0126091099575972, 0.0141635188708006, 0.0158698259178337, 0.0177372964231157, 0.0197750207946851, 0.0219917979902136, 0.0243960092895914, 0.026995483256594, 0.0297973530344081, 0.0328079073873383, 0.036032437168109, 0.0394750791504471, 0.0431386594132558, 0.0470245386884435, 0.051132462281989, 0.0554604173397278, 0.0600045003484928, 0.0647587978329459, 0.0697152832226802, 0.0748637328178724, 0.0801916636709598, 0.0856842960239037, 0.091324542694511, 0.0970930274916065, 0.102968134359987, 0.108926088516275, 0.114941070342117, 0.120985362259572, 0.127029528234594, 0.133042624949377, 0.138992443065498, 0.144845776380741, 0.150568716077402, 0.156126966683381, 0.161486179833957, 0.1666123014459, 0.171471927509692, 0.17603266338215, 0.180263481230824, 0.184135070151662, 0.187620173458469, 0.190693907730262, 0.193334058401425, 0.195521346987728, 0.197239665453944, 0.198476273738506, 0.199221957047382, 0.199471140200716, 0.199221957047382, 0.198476273738506, 0.197239665453944, 0.195521346987728, 0.193334058401425, 0.190693907730262, 0.187620173458469, 0.184135070151662, 0.180263481230824, 0.17603266338215, 0.171471927509692, 0.1666123014459, 0.161486179833957, 0.156126966683381, 0.150568716077402, 0.144845776380741, 0.138992443065498, 0.133042624949377, 0.127029528234594, 0.120985362259572, 0.114941070342117, 0.108926088516275, 0.102968134359987, 0.0970930274916065, 0.091324542694511, 0.0856842960239037, 0.0801916636709598, 0.0748637328178724, 0.0697152832226802, 0.0647587978329459, 0.0600045003484928, 0.0554604173397278, 0.051132462281989, 0.0470245386884435, 0.0431386594132558, 0.0394750791504471, 0.036032437168109, 0.0328079073873383, 0.0297973530344081, 0.026995483256594, 0.0243960092895914, 0.0219917979902136, 0.0197750207946851, 0.0177372964231157, 0.0158698259178337, 0.0141635188708006, 0.0126091099575972, 0.0111972651474214, 0.00991867719589768, 0.00876415024678427, 0.00772467356719759, 0.00679148461684282, 0.00595612180380259, 0.00521046740721131, 0.00454678125079553, 0.00395772579148998, 0.00343638334530699, 0.00297626620988792, 0.00257132046152698, 0.002215924205969, 0.00190488104911091, 0.00163340952809996, 0.00139712920743972, 0.00119204410073242, 0.00101452402864988, 0.000861284469526841, 0.000729365402333374, 0.000616109584236509, 0.000519140647830705, 0.00043634134752288, 0.000365832231415155, 0.000305950965056887, 0.000255232487172092, 0.000212390135275376, 0.000176297841183723, 0.00014597346289573, 0.000120563290112997, 9.93277356963862e-05, 8.1628204383121e-05, 6.69151128824427e-05, 5.47170217199003e-05, 4.46308285885665e-05, 3.63129651511262e-05, 2.94715338782699e-05, 2.38593182706025e-05, 1.92675983710436e-05, 1.55207035289251e-05, 1.24712356450268e-05, 9.9958983534614e-06, 7.99187055345274e-06, 6.37366619091673e-06, 5.07042603274338e-06, 4.02359122824615e-06, 3.18491258943354e-06, 2.51475364429622e-06, 1.98064954551604e-06, 1.55608778957447e-06, 1.21948037294668e-06, 9.53300451561405e-07, 7.43359757367149e-07], "name": "", "mode": "lines", "line": {"color": "rgb(216.75,82.875,24.99)", "width": 1.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 1.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-5, 0, 5, 10, 15], "range": [-5, 15], "mirror": "ticks", "ticktext": ["-5", "0", "5", "10", "15"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.05, 0.1, 0.15, 0.2, 0.25], "range": [0, 0.25], "mirror": "ticks", "ticktext": ["0", "0.05", "0.1", "0.15", "0.2", "0.25"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_631901139217 index=631901139217 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Saving and Loading Histogram Objects

Use the `savefig` function to save a `histogram` figure.

```{matlab}
histogram(randn(10));
savefig('histogram.fig');
close gcf
```

Use `openfig` to load the histogram figure back into MATLAB. `openfig` also returns a handle to the figure, `h`. 

```{matlab}
h = openfig('histogram.fig');

fig2plotly(gcf);
```
{% capture plot_532884106734 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-3.5, -2.5, -1.5, -0.5, 0.5, 1.5, 2.5], "width": [1, 1, 1, 1, 1, 1, 1], "y": [1, 3, 15, 29, 38, 11, 3], "name": "", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-4, -3, -2, -1, 0, 1, 2, 3], "range": [-4.35, 3.35], "mirror": "ticks", "ticktext": ["-4", "-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 5, 10, 15, 20, 25, 30, 35, 40], "range": [0, 40], "mirror": "ticks", "ticktext": ["0", "5", "10", "15", "20", "25", "30", "35", "40"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_532884106734 index=532884106734 %}


Use the `findobj` function to locate the correct object handle from the figure handle. This allows you to continue manipulating the original histogram object used to generate the figure.

```{matlab}
h = openfig('histogram.fig');

y = findobj(h,'type','histogram')

fig2plotly(gcf);
```
```
y = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [10×10 double]
           Values: [1 3 15 29 38 11 3]
          NumBins: 7
         BinEdges: [-4 -3 -2 -1 0 1 2 3]
         BinWidth: 1
        BinLimits: [-4 3]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('y', 'var'), matlab.graphics.internal.getForDisplay('y', y, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('y'), end">all properties</a>
```
{% capture plot_545306109295 %}
{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-3.5, -2.5, -1.5, -0.5, 0.5, 1.5, 2.5], "width": [1, 1, 1, 1, 1, 1, 1], "y": [1, 3, 15, 29, 38, 11, 3], "name": "", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-4, -3, -2, -1, 0, 1, 2, 3], "range": [-4.35, 3.35], "mirror": "ticks", "ticktext": ["-4", "-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 5, 10, 15, 20, 25, 30, 35, 40], "range": [0, 40], "mirror": "ticks", "ticktext": ["0", "5", "10", "15", "20", "25", "30", "35", "40"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_545306109295 index=545306109295 %}



<!--------------------- EXAMPLE BREAK ------------------------->

