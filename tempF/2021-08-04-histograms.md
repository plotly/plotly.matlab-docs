---
description: How to make Histogram plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Histograms
display_as: statistical
order: 3
permalink: matlab/histograms/
thumnail_github: thumbnail/histogram.jpg
layout: base
language: matlab
page_type: u-guide
---

## Histogram of Vector

Generate 10,000 random numbers and create a histogram. The `histogram` function automatically chooses an appropriate number of bins to cover the range of values in `x` and show the shape of the underlying distribution.

```{matlab}
x = randn(10000,1);
h = histogram(x)

fig2plotly(gcf)
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [10000×1 double]
           Values: [1 0 0 3 7 9 26 35 61 90 154 193 265 330 426 547 639 678 779 821 760 737 713 628 544 407 319 262 194 146 95 60 28 17 13 6 4 3]
          NumBins: 38
         BinEdges: [1×39 double]
         BinWidth: 0.200000000000000
        BinLimits: [-4 3.600000000000001]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>


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
{% capture plot_275402343959 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-3.9, -3.7, -3.5, -3.3, -3.1, -2.9, -2.7, -2.5, -2.3, -2.1, -1.9, -1.7, -1.5, -1.3, -1.1, -0.9, -0.7, -0.5, -0.3, -0.0999999999999999, 0.1, 0.3, 0.5, 0.700000000000001, 0.9, 1.1, 1.3, 1.5, 1.7, 1.9, 2.1, 2.3, 2.5, 2.7, 2.9, 3.1, 3.3, 3.5], "width": [0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.199999999999999, 0.2, 0.2, 0.2, 0.2, 0.199999999999999, 0.2, 0.2, 0.2, 0.2, 0.199999999999999, 0.2, 0.2, 0.2], "y": [1, 0, 0, 3, 7, 9, 26, 35, 61, 90, 154, 193, 265, 330, 426, 547, 639, 678, 779, 821, 760, 737, 713, 628, 544, 407, 319, 262, 194, 146, 95, 60, 28, 17, 13, 6, 4, 3], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-4, -3, -2, -1, 0, 1, 2, 3], "range": [-4.38, 3.98], "mirror": "ticks", "ticktext": ["-4", "-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 100, 200, 300, 400, 500, 600, 700, 800, 900], "range": [0, 900], "mirror": "ticks", "ticktext": ["0", "100", "200", "300", "400", "500", "600", "700", "800", "900"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
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
           Values: [3 8 9 25 47 52 86 122 212 292 357 419 470 633 691 772 794 792 754 690 626 575 442 343 251 188 140 79 54 33 15 12 8 2 3 0 0 1]
          NumBins: 38
         BinEdges: [1×39 double]
         BinWidth: 0.200000000000000
        BinLimits: [-3.400000000000000 4.200000000000000]
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

fig2plotly(gcf)
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [1 2 3 5 12 15 24 47 63 85 96 121 86 98 101 88 69 42 20 11 7 1 2 0 1]
          NumBins: 25
         BinEdges: [1×26 double]
         BinWidth: 0.290000000000000
        BinLimits: [-3.600000000000000 3.649999999999999]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>


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
{% capture plot_687259779716 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-3.455, -3.165, -2.875, -2.585, -2.295, -2.005, -1.715, -1.425, -1.135, -0.845, -0.555, -0.265, 0.0249999999999995, 0.315, 0.605, 0.895, 1.185, 1.475, 1.765, 2.055, 2.345, 2.635, 2.925, 3.215, 3.505], "width": [0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.29, 0.289999999999999, 0.29], "y": [1, 2, 3, 5, 12, 15, 24, 47, 63, 85, 96, 121, 86, 98, 101, 88, 69, 42, 20, 11, 7, 1, 2, 0, 1], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3, 4], "range": [-3.9625, 4.0125], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3", "4"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 20, 40, 60, 80, 100, 120, 140], "range": [0, 140], "mirror": "ticks", "ticktext": ["0", "20", "40", "60", "80", "100", "120", "140"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
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
           Values: [1 0 1 3 8 6 9 26 29 42 57 77 107 106 103 122 85 77 53 34 24 13 12 3 2]
          NumBins: 25
         BinEdges: [1×26 double]
         BinWidth: 0.270000000000000
        BinLimits: [-3.800000000000000 2.950000000000000]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>


counts =

     1     0     1     3     8     6     9    26    29    42    57    77   107   106   103   122    85    77    53    34    24    13    12     3     2
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Change Number of Histogram Bins

Generate 1,000 random numbers and create a histogram. 

```{matlab}
X = randn(1000,1);
h = histogram(X)

fig2plotly(gcf)
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [1 0 2 3 6 17 30 45 73 90 127 114 134 105 75 77 40 30 11 15 4 0 1]
          NumBins: 23
         BinEdges: [1×24 double]
         BinWidth: 0.300000000000000
        BinLimits: [-3.600000000000001 3.300000000000001]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>


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
{% capture plot_112166354444 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-3.45, -3.15, -2.85, -2.55, -2.25, -1.95, -1.65, -1.35, -1.05, -0.75, -0.45, -0.15, 0.15, 0.45, 0.75, 1.05, 1.35, 1.65, 1.95, 2.25, 2.55, 2.85, 3.15], "width": [0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.300000000000001, 0.3, 0.3, 0.3, 0.3, 0.300000000000001, 0.3, 0.3, 0.300000000000001, 0.3], "y": [1, 0, 2, 3, 6, 17, 30, 45, 73, 90, 127, 114, 134, 105, 75, 77, 40, 30, 11, 15, 4, 0, 1], "name": "X", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3], "range": [-3.945, 3.645], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 20, 40, 60, 80, 100, 120, 140], "range": [0, 140], "mirror": "ticks", "ticktext": ["0", "20", "40", "60", "80", "100", "120", "140"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_112166354444 index=112166354444 %}


Use the `morebins` function to coarsely adjust the number of bins.

```{matlab}
X = randn(1000,1);
h = histogram(X)

Nbins = morebins(h);

fig2plotly(gcf)
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [2 5 7 26 17 50 69 85 103 107 129 111 85 82 48 32 21 12 8 1]
          NumBins: 20
         BinEdges: [1×21 double]
         BinWidth: 0.300000000000000
        BinLimits: [-3.000000000000000 3.000000000000000]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>


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
{% capture plot_177010929660 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-2.865, -2.595, -2.325, -2.055, -1.785, -1.515, -1.245, -0.975, -0.705, -0.435, -0.165, 0.105, 0.375, 0.645, 0.915, 1.185, 1.455, 1.725, 1.995, 2.265, 2.535, 2.805], "width": [0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27, 0.27], "y": [2, 5, 3, 17, 20, 26, 54, 69, 77, 91, 99, 111, 112, 84, 77, 56, 38, 19, 21, 10, 8, 1], "name": "X", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3], "range": [-3.297, 3.237], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 20, 40, 60, 80, 100, 120], "range": [0, 120], "mirror": "ticks", "ticktext": ["0", "20", "40", "60", "80", "100", "120"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_177010929660 index=177010929660 %}



Adjust the bins at a fine grain level by explicitly setting the number of bins.

```{matlab}
X = randn(1000,1);
h = histogram(X)

Nbins = morebins(h);

h.NumBins = 31;

fig2plotly(gcf)
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [3 4 12 20 23 49 57 83 107 120 127 112 101 55 52 33 23 7 6 4 1 0 0 1]
          NumBins: 24
         BinEdges: [1×25 double]
         BinWidth: 0.300000000000000
        BinLimits: [-3.000000000000000 4.200000000000001]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>


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
{% capture plot_189049071004 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-2.885, -2.655, -2.425, -2.195, -1.965, -1.735, -1.505, -1.275, -1.045, -0.815, -0.585, -0.355, -0.125, 0.105, 0.335, 0.565, 0.795, 1.025, 1.255, 1.485, 1.715, 1.945, 2.175, 2.405, 2.635, 2.865, 3.095, 3.325, 3.555, 3.785, 4.015], "width": [0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23, 0.23], "y": [2, 3, 4, 12, 14, 20, 22, 40, 45, 72, 62, 89, 89, 98, 81, 101, 67, 45, 39, 34, 20, 18, 10, 4, 5, 2, 1, 0, 0, 0, 1], "name": "X", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3, 4], "range": [-3.3565, 4.4865], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3", "4"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 20, 40, 60, 80, 100, 120], "range": [0, 120], "mirror": "ticks", "ticktext": ["0", "20", "40", "60", "80", "100", "120"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_189049071004 index=189049071004 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Bin Edges of Histogram

Generate 1,000 random numbers and create a histogram. Specify the bin edges as a vector with wide bins on the edges of the histogram to capture the outliers that do not satisfy |x|<2. The first vector element is the left edge of the first bin, and the last vector element is the right edge of the last bin.

```{matlab}
x = randn(1000,1);
edges = [-10 -2:0.25:2 10];
h = histogram(x,edges);

fig2plotly(gcf)
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
{% capture plot_555658716563 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-6, -1.875, -1.625, -1.375, -1.125, -0.875, -0.625, -0.375, -0.125, 0.125, 0.375, 0.625, 0.875, 1.125, 1.375, 1.625, 1.875, 6], "width": [8, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 8], "y": [14, 20, 36, 39, 56, 59, 97, 84, 94, 119, 94, 86, 60, 50, 38, 18, 15, 21], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-10, -5, 0, 5, 10], "range": [-11, 11], "mirror": "ticks", "ticktext": ["-10", "-5", "0", "5", "10"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 20, 40, 60, 80, 100, 120], "range": [0, 120], "mirror": "ticks", "ticktext": ["0", "20", "40", "60", "80", "100", "120"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_555658716563 index=555658716563 %}



Specify the `Normalization` property as `'countdensity'` to flatten out the bins containing the outliers. Now, the area of each bin (rather than the height) represents the frequency of observations in that interval.

```{matlab}
x = randn(1000,1);
edges = [-10 -2:0.25:2 10];
h = histogram(x,edges);

h.Normalization = 'countdensity';

fig2plotly(gcf)
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
{% capture plot_795594751710 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-6, -1.875, -1.625, -1.375, -1.125, -0.875, -0.625, -0.375, -0.125, 0.125, 0.375, 0.625, 0.875, 1.125, 1.375, 1.625, 1.875, 6], "width": [8, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 8], "y": [3.375, 52, 92, 172, 164, 208, 340, 400, 408, 448, 404, 332, 276, 184, 140, 124, 80, 2.125], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-10, -5, 0, 5, 10], "range": [-11, 11], "mirror": "ticks", "ticktext": ["-10", "-5", "0", "5", "10"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 50, 100, 150, 200, 250, 300, 350, 400, 450], "range": [0, 450], "mirror": "ticks", "ticktext": ["0", "50", "100", "150", "200", "250", "300", "350", "400", "450"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
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

  Columns 1 through 17

     no      no      yes      yes      yes      no      no      no      no      undecided      undecided      yes      no      no      no      yes      no 

  Columns 18 through 27

     yes      no      yes      no      no      no      yes      yes      yes      yes
```


Plot a categorical histogram of the votes, using a relative bar width of `0.5`.

```{matlab}
A = [0 0 1 1 1 0 0 0 0 NaN NaN 1 0 0 0 1 0 1 0 1 0 0 0 1 1 1 1];
C = categorical(A,[1 0 NaN],{'yes','no','undecided'})

h = histogram(C,'BarWidth',0.5)

fig2plotly(gcf)
```
```
C = 

  1×27 <a href="matlab:helpPopup categorical" style="font-weight:bold">categorical</a> array

  Columns 1 through 17

     no      no      yes      yes      yes      no      no      no      no      undecided      undecided      yes      no      no      no      yes      no 

  Columns 18 through 27

     yes      no      yes      no      no      no      yes      yes      yes      yes 


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
{% capture plot_23998921747 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "bar", "width": 0.5, "y": [11, 14, 2], "name": "", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}, "color": "rgb(0,113.985,188.955)"}, "opacity": 0.75, "visible": true, "showlegend": true, "x": ["yes", "no", "undecided"]}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": true, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "category", "showticklabels": true, "tickmode": "array", "mirror": "ticks", "ticktext": ["yes", "no", "undecided"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1", "autotick": true, "range": [-0.5, 2.5]}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 2, 4, 6, 8, 10, 12, 14], "range": [0, 14], "mirror": "ticks", "ticktext": ["0", "2", "4", "6", "8", "10", "12", "14"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_23998921747 index=23998921747 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Histogram with Specified Normalization

Generate 1,000 random numbers and create a histogram using the `'probability'` normalization.

```{matlab}
x = randn(1000,1);
h = histogram(x,'Normalization','probability')

fig2plotly(gcf)
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [1×22 double]
          NumBins: 22
         BinEdges: [1×23 double]
         BinWidth: 0.300000000000000
        BinLimits: [-3.600000000000001 3.000000000000001]
    Normalization: 'probability'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>


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
{% capture plot_429637873610 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-3.45, -3.15, -2.85, -2.55, -2.25, -1.95, -1.65, -1.35, -1.05, -0.75, -0.45, -0.15, 0.15, 0.45, 0.75, 1.05, 1.35, 1.65, 1.95, 2.25, 2.55, 2.85], "width": [0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.300000000000001, 0.3, 0.3, 0.3, 0.3, 0.300000000000001, 0.3, 0.3, 0.300000000000001], "y": [0.001, 0.001, 0.004, 0.006, 0.011, 0.014, 0.019, 0.05, 0.072, 0.097, 0.099, 0.112, 0.135, 0.128, 0.079, 0.064, 0.049, 0.027, 0.015, 0.01, 0.005, 0.002], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3], "range": [-3.93, 3.33], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14], "range": [0, 0.14], "mirror": "ticks", "ticktext": ["0", "0.02", "0.04", "0.06", "0.08", "0.1", "0.12", "0.14"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_429637873610 index=429637873610 %}



Compute the sum of the bar heights. With this normalization, the height of each bar is equal to the probability of selecting an observation within that bin interval, and the height of all of the bars sums to 1.

```{matlab}
x = randn(1000,1);
h = histogram(x,'Normalization','probability')

S = sum(h.Values)

fig2plotly(gcf)
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [1×23 double]
          NumBins: 23
         BinEdges: [1×24 double]
         BinWidth: 0.300000000000000
        BinLimits: [-3.300000000000001 3.600000000000001]
    Normalization: 'probability'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>


S =

     1


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
{% capture plot_467019166495 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-3.15, -2.85, -2.55, -2.25, -1.95, -1.65, -1.35, -1.05, -0.75, -0.45, -0.15, 0.15, 0.45, 0.75, 1.05, 1.35, 1.65, 1.95, 2.25, 2.55, 2.85, 3.15, 3.45], "width": [0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.300000000000001, 0.3, 0.3, 0.3, 0.3, 0.300000000000001, 0.3, 0.3, 0.300000000000001, 0.3], "y": [0.001, 0.002, 0.005, 0.01, 0.013, 0.032, 0.037, 0.058, 0.101, 0.115, 0.128, 0.132, 0.11, 0.085, 0.059, 0.051, 0.031, 0.015, 0.008, 0.003, 0.002, 0.001, 0.001], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3], "range": [-3.645, 3.945], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14], "range": [0, 0.14], "mirror": "ticks", "ticktext": ["0", "0.02", "0.04", "0.06", "0.08", "0.1", "0.12", "0.14"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
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
{% capture plot_643765096056 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-3.15, -2.85, -2.55, -2.25, -1.95, -1.65, -1.35, -1.05, -0.75, -0.45, -0.15, 0.15, 0.45, 0.75, 1.05, 1.35, 1.65, 1.95, 2.25, 2.55, 2.85, 3.15], "width": [0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.300000000000001, 0.3, 0.3, 0.3, 0.3, 0.300000000000001, 0.3, 0.3, 0.300000000000001], "y": [2, 1, 16, 15, 36, 62, 106, 131, 186, 235, 231, 229, 189, 178, 130, 117, 61, 40, 18, 9, 5, 3], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3, 4, 5], "range": [-3.705, 5.205], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3", "4", "5"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 50, 100, 150, 200, 250, 300, 350, 400, 450], "range": [0, 450], "mirror": "ticks", "ticktext": ["0", "50", "100", "150", "200", "250", "300", "350", "400", "450"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
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
{% capture plot_686400722602 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-2.875, -2.625, -2.375, -2.125, -1.875, -1.625, -1.375, -1.125, -0.875, -0.625, -0.375, -0.125, 0.125, 0.375, 0.625, 0.875, 1.125, 1.375, 1.625, 1.875, 2.125, 2.375, 2.625, 2.875, 3.125], "width": [0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25], "y": [0.0015, 0.0015, 0.0065, 0.011, 0.0145, 0.022, 0.0425, 0.0545, 0.0685, 0.0835, 0.0925, 0.098, 0.0925, 0.093, 0.09, 0.06, 0.0595, 0.039, 0.027, 0.024, 0.009, 0.0045, 0.002, 0.0015, 0.0015], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3, 4, 5], "range": [-3.3875, 5.1375], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3", "4", "5"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.02, 0.04, 0.06, 0.08, 0.1, 0.12], "range": [0, 0.12], "mirror": "ticks", "ticktext": ["0", "0.02", "0.04", "0.06", "0.08", "0.1", "0.12"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_686400722602 index=686400722602 %}


<!--------------------- EXAMPLE BREAK ------------------------->

## Adjust Histogram Properties

Generate 1,000 random numbers and create a histogram. Return the histogram object to adjust the properties of the histogram without recreating the entire plot.

```{matlab}
x = randn(1000,1);
h = histogram(x)

fig2plotly(gcf)
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [2 4 5 15 18 26 40 68 90 83 123 133 106 88 80 51 25 18 13 7 2 2 1]
          NumBins: 23
         BinEdges: [1×24 double]
         BinWidth: 0.300000000000000
        BinLimits: [-3.300000000000001 3.600000000000001]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>


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
{% capture plot_636513199319 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-3.15, -2.85, -2.55, -2.25, -1.95, -1.65, -1.35, -1.05, -0.75, -0.45, -0.15, 0.15, 0.45, 0.75, 1.05, 1.35, 1.65, 1.95, 2.25, 2.55, 2.85, 3.15, 3.45], "width": [0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.300000000000001, 0.3, 0.3, 0.3, 0.3, 0.300000000000001, 0.3, 0.3, 0.300000000000001, 0.3], "y": [2, 4, 5, 15, 18, 26, 40, 68, 90, 83, 123, 133, 106, 88, 80, 51, 25, 18, 13, 7, 2, 2, 1], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3], "range": [-3.645, 3.945], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 20, 40, 60, 80, 100, 120, 140], "range": [0, 140], "mirror": "ticks", "ticktext": ["0", "20", "40", "60", "80", "100", "120", "140"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_636513199319 index=636513199319 %}


Specify exactly how many bins to use.

```{matlab}
x = randn(1000,1);
h = histogram(x)

h.NumBins = 15;

fig2plotly(gcf)
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [2 0 1 12 24 22 64 70 92 103 117 104 101 112 66 49 24 15 10 6 4 2]
          NumBins: 22
         BinEdges: [1×23 double]
         BinWidth: 0.300000000000000
        BinLimits: [-3.300000000000001 3.300000000000001]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>


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
{% capture plot_582615859299 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-3.37, -2.91, -2.45, -1.99, -1.53, -1.07, -0.61, -0.15, 0.31, 0.77, 1.23, 1.69, 2.15, 2.61, 3.07], "width": [0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46, 0.46], "y": [1, 1, 7, 32, 66, 101, 155, 172, 149, 157, 96, 33, 18, 8, 4], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3], "range": [-3.945, 3.645], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 20, 40, 60, 80, 100, 120, 140, 160, 180], "range": [0, 180], "mirror": "ticks", "ticktext": ["0", "20", "40", "60", "80", "100", "120", "140", "160", "180"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_582615859299 index=582615859299 %}


Specify the edges of the bins with a vector. The first value in the vector is the left edge of the first bin. The last value is the right edge of the last bin.

```{matlab}
x = randn(1000,1);
h = histogram(x)

h.NumBins = 15;

h.BinEdges = [-3:3];

fig2plotly(gcf)
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [1 1 6 8 17 29 48 71 85 113 121 128 96 89 75 59 25 20 5 2 1]
          NumBins: 21
         BinEdges: [1×22 double]
         BinWidth: 0.300000000000000
        BinLimits: [-3.300000000000001 3]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>


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
{% capture plot_309079777133 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-2.5, -1.5, -0.5, 0.5, 1.5, 2.5], "width": [1, 1, 1, 1, 1, 1], "y": [21, 134, 344, 340, 148, 12], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3], "range": [-3.3, 3.3], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 50, 100, 150, 200, 250, 300, 350], "range": [0, 350], "mirror": "ticks", "ticktext": ["0", "50", "100", "150", "200", "250", "300", "350"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
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

fig2plotly(gcf)
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [1000×1 double]
           Values: [1 0 1 1 5 10 18 27 48 63 86 115 120 109 104 102 71 44 31 19 16 2 4 1 2]
          NumBins: 25
         BinEdges: [1×26 double]
         BinWidth: 0.300000000000000
        BinLimits: [-3.900000000000000 3.600000000000001]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>


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
{% capture plot_747933537109 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-2.5, -1.5, -0.5, 0.5, 1.5, 2.5], "width": [1, 1, 1, 1, 1, 1], "y": [21, 129, 343, 341, 135, 26], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(255,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-3, -2, -1, 0, 1, 2, 3], "range": [-3.3, 3.3], "mirror": "ticks", "ticktext": ["-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 50, 100, 150, 200, 250, 300, 350], "range": [0, 350], "mirror": "ticks", "ticktext": ["0", "50", "100", "150", "200", "250", "300", "350"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_747933537109 index=747933537109 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Determine Underlying Probability Distribution

Generate 5,000 normally distributed random numbers with a mean of 5 and a standard deviation of 2. Plot a histogram with `Normalization` set to `'pdf'` to produce an estimation of the probability density function.

```{matlab}
x = 2*randn(5000,1) + 5;
histogram(x,'Normalization','pdf')

fig2plotly(gcf)
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
{% capture plot_670584763202 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-2.75, -2.25, -1.75, -1.25, -0.75, -0.25, 0.25, 0.75, 1.25, 1.75, 2.25, 2.75, 3.25, 3.75, 4.25, 4.75, 5.25, 5.75, 6.25, 6.75, 7.25, 7.75, 8.25, 8.75, 9.25, 9.75, 10.25, 10.75, 11.25, 11.75, 12.25], "width": [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5], "y": [0.0004, 0, 0.0012, 0.002, 0.0032, 0.0056, 0.0112, 0.0228, 0.0352, 0.0456, 0.084, 0.1, 0.134, 0.1744, 0.1812, 0.2012, 0.1828, 0.1868, 0.1508, 0.1388, 0.1088, 0.0888, 0.0528, 0.0372, 0.0248, 0.0136, 0.0068, 0.0036, 0.0016, 0.0004, 0.0004], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-2, 0, 2, 4, 6, 8, 10, 12], "range": [-3.775, 13.275], "mirror": "ticks", "ticktext": ["-2", "0", "2", "4", "6", "8", "10", "12"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.05, 0.1, 0.15, 0.2, 0.25], "range": [0, 0.25], "mirror": "ticks", "ticktext": ["0", "0.05", "0.1", "0.15", "0.2", "0.25"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_670584763202 index=670584763202 %}


In this example, the underlying distribution for the normally distributed data is known. You can, however, use the `'pdf'` histogram plot to determine the underlying probability distribution of the data by comparing it against a known probability density function.

The probability density function for a normal distribution with mean μ, standard deviation σ, and variance σ<sup>2</sup> is



<div class="code_responsive">

<span><span class="MathEquation" role="math" style="font-size: 15px;"><span class="MathRoot HBox" role="img" aria-label="f leftParenthesis x , mu , sigma rightParenthesis equals StartFraction 1 over sigma StartRoot SquareRootOf 2 pi EndRoot EndFraction exp bracketleft minus StartFraction leftParenthesis x minus mu rightParenthesis Squared baseline over 2 sigma Squared baseline EndFraction bracketright ldotp" style="display: inline-block; position: relative;"><span class="MathRow HBox" style="display: inline-block; position: relative; font-size: 15px;"><span class="MathText MathTextBox text" style="position: relative; margin-left: 0.2em; margin-right: 0.2em;">f</span><span class="MathText MathTextBox extra1" style="position: relative;">(</span><span class="MathText MathTextBox text" style="position: relative; margin-left: 0.05em;">x</span><span class="MathText MathTextBox symbol" style="position: relative;">,</span><span class="MathText MathTextBox symbol" style="position: relative; margin-left: 0.216667em; font-style: italic;">μ</span><span class="MathText MathTextBox symbol" style="position: relative;">,</span><span class="MathText MathTextBox symbol" style="position: relative; margin-left: 0.166667em; margin-right: 0.05em; font-style: italic;">σ</span><span class="MathText MathTextBox extra1" style="position: relative;">)</span><span class="MathText MathTextBox symbol" style="position: relative; margin-left: 0.277778em;">=</span><span class="MathFraction VBox" style="display: inline-block; position: relative; margin-left: 0.277778em; text-align: center; vertical-align: -13px;"><span class="MathRow HBox" style="display: block; position: relative; font-size: 15px; margin-top: 0px;"><span class="MathText MathTextBox number" style="position: relative;">1</span></span><span class="WhiteSpaceBox" style="display: none;"></span><span class="rulebox" style="display: block; border-bottom-style: solid; border-bottom-width: 1px; width: 100%; height: 0px; z-index: 1; margin-top: 0px;"></span><span class="WhiteSpaceBox" style="display: none;"></span><span class="MathRow HBox" style="display: block; position: relative; font-size: 15px; margin-top: 1px;"><span class="MathText MathTextBox symbol" style="position: relative; margin-right: 0.05em; font-style: italic;">σ</span><span class="MathRadical HBox" style="display: inline-block; position: relative; font-size: 15px; margin-left: 0.166667em;"><span class="VBox" style="display: inline-block; position: relative; text-align: center; vertical-align: 2px;"><span class="StretchyBox" style="display: inline-block; position: relative; text-align: right;"><span class="MathTextBox extra1" style="position: relative; display: inline-block;">G</span></span></span><span class="VBox" style="display: inline-block; position: relative; text-align: center; vertical-align: 0px;"><span class="rulebox" style="display: block; border-bottom-style: solid; border-bottom-width: 1px; width: 100%; height: 0px; z-index: 1; margin-top: 0px;"></span><span class="WhiteSpaceBox" style="display: none;"></span><span class="MathRow HBox" style="display: block; position: relative; font-size: 15px; margin-top: 1px;"><span class="MathText MathTextBox number" style="position: relative;">2</span><span class="MathText MathTextBox symbol" style="position: relative; margin-right: 0.1em; font-style: italic;">π</span></span></span></span></span></span><span class="MathRow HBox" style="display: inline-block; position: relative; font-size: 15px; margin-left: 0.166667em;"><span class="MathText MathTextBox mtext" style="position: relative;"> </span><span class="MathText MathTextBox mtext" style="position: relative; font-style: normal;">exp</span></span><span class="MathRow HBox" style="display: inline-block; position: relative; font-size: 15px;"><span class="MathDelimiter StretchyBox" style="display: inline-block; position: relative; text-align: center;"><span class="MathTextBox extra4" style="position: relative; display: inline-block; vertical-align: 20px; line-height: 36px; margin-top: -6px; margin-bottom: 6px;">[</span></span><span class="MathText MathTextBox symbol" style="position: relative;">−</span><span class="MathFraction VBox" style="display: inline-block; position: relative; margin-left: 0.166667em; text-align: center; vertical-align: -12px;"><span class="MathRow HBox" style="display: block; position: relative; font-size: 15px; margin-top: 0px;"><span class="MathText MathTextBox extra1" style="position: relative;">(</span><span class="MathText MathTextBox text" style="position: relative; margin-left: 0.05em;">x</span><span class="MathText MathTextBox symbol" style="position: relative; margin-left: 0.222222em;">−</span><span class="MathText MathTextBox symbol" style="position: relative; margin-left: 0.272222em; font-style: italic;">μ</span><span class="MathScript HBox" style="display: inline-block; position: relative; font-size: 15px;"><span class="MathRow HBox" style="display: inline-block; position: relative; font-size: 15px;"><span class="MathText MathTextBox extra1" style="position: relative;">)</span></span><span class="VBox" style="display: inline-block; position: relative; text-align: left; vertical-align: 5px;"><span class="MathRow HBox" style="display: block; position: relative; font-size: 10px; margin-top: 0px;"><span class="MathText MathTextBox number" style="position: relative;">2</span></span></span></span></span><span class="WhiteSpaceBox" style="display: none;"></span><span class="rulebox" style="display: block; border-bottom-style: solid; border-bottom-width: 1px; width: 100%; height: 0px; z-index: 1; margin-top: 0px;"></span><span class="WhiteSpaceBox" style="display: none;"></span><span class="MathRow HBox" style="display: block; position: relative; font-size: 15px; margin-top: 1px;"><span class="MathText MathTextBox number" style="position: relative;">2</span><span class="MathScript HBox" style="display: inline-block; position: relative; font-size: 15px;"><span class="MathRow HBox" style="display: inline-block; position: relative; font-size: 15px;"><span class="MathText MathTextBox symbol" style="position: relative; margin-right: 0.05em; font-style: italic;">σ</span></span><span class="VBox" style="display: inline-block; position: relative; text-align: left; vertical-align: 5px;"><span class="MathRow HBox" style="display: block; position: relative; font-size: 10px; margin-top: 0px;"><span class="MathText MathTextBox number" style="position: relative;">2</span></span></span></span></span></span><span class="MathDelimiter StretchyBox" style="display: inline-block; position: relative; text-align: center;"><span class="MathTextBox extra4" style="position: relative; display: inline-block; vertical-align: 20px; line-height: 36px; margin-top: -6px; margin-bottom: 6px;">]</span></span></span><span class="MathText MathTextBox symbol" style="position: relative;">.</span></span></span></span></span>

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
{% capture plot_631901139217 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-2.25, -1.75, -1.25, -0.75, -0.25, 0.25, 0.75, 1.25, 1.75, 2.25, 2.75, 3.25, 3.75, 4.25, 4.75, 5.25, 5.75, 6.25, 6.75, 7.25, 7.75, 8.25, 8.75, 9.25, 9.75, 10.25, 10.75, 11.25, 11.75, 12.25, 12.75, 13.25], "width": [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5], "y": [0.0008, 0.0004, 0.0028, 0.0044, 0.0052, 0.0104, 0.0164, 0.0352, 0.0528, 0.0796, 0.1024, 0.1384, 0.1528, 0.1716, 0.2, 0.2028, 0.198, 0.152, 0.1444, 0.1004, 0.0816, 0.0616, 0.0344, 0.0244, 0.0104, 0.0084, 0.0044, 0.0028, 0.0004, 0.0004, 0, 0.0004], "name": "x", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-5, 0, 5, 10, 15], "range": [-5, 15], "mirror": "ticks", "ticktext": ["-5", "0", "5", "10", "15"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.05, 0.1, 0.15, 0.2, 0.25], "range": [0, 0.25], "mirror": "ticks", "ticktext": ["0", "0.05", "0.1", "0.15", "0.2", "0.25"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
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

fig2plotly(gcf)
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
{% capture plot_532884106734 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-3.5, -2.5, -1.5, -0.5, 0.5, 1.5, 2.5], "width": [1, 1, 1, 1, 1, 1, 1], "y": [1, 3, 15, 29, 38, 11, 3], "name": "", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630.666666666667, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-4, -3, -2, -1, 0, 1, 2, 3], "range": [-4.35, 3.35], "mirror": "ticks", "ticktext": ["-4", "-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 5, 10, 15, 20, 25, 30, 35, 40], "range": [0, 40], "mirror": "ticks", "ticktext": ["0", "5", "10", "15", "20", "25", "30", "35", "40"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_532884106734 index=532884106734 %}


Use the `findobj` function to locate the correct object handle from the figure handle. This allows you to continue manipulating the original histogram object used to generate the figure.

```{matlab}
h = openfig('histogram.fig');

y = findobj(h,'type','histogram')

fig2plotly(gcf)
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
{% capture plot_545306109295 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "bar", "x": [-3.5, -2.5, -1.5, -0.5, 0.5, 1.5, 2.5], "width": [1, 1, 1, 1, 1, 1, 1], "y": [1, 3, 15, 29, 38, 11, 3], "name": "", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}}, "opacity": 0.75, "visible": true, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630.666666666667, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-4, -3, -2, -1, 0, 1, 2, 3], "range": [-4.35, 3.35], "mirror": "ticks", "ticktext": ["-4", "-3", "-2", "-1", "0", "1", "2", "3"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 5, 10, 15, 20, 25, 30, 35, 40], "range": [0, 40], "mirror": "ticks", "ticktext": ["0", "5", "10", "15", "20", "25", "30", "35", "40"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_545306109295 index=545306109295 %}



<!--------------------- EXAMPLE BREAK ------------------------->

