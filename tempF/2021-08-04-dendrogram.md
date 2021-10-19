---
description: How to make Dendrograms in MATLAB<sup>&reg;</sup> with Plotly.
name: Dendrograms
display_as: scientific
order: 6
permalink: matlab/dendrogram/
thumnail_github: thumbnail/dendrogram.jpg
layout: base
language: matlab
page_type: u-guide
---

## Plot Dendrogram

Generate sample data. 

```{matlab}
rng('default')
X = rand(10,3);
```

Create a hierarchical binary cluster tree using `linkage`. Then, plot the dendrogram using the default options.

```{matlab}
rng('default')
X = rand(10,3);

tree = linkage(X,'average');

dendrogram(tree)

fig2plotly(gcf)
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_706046088020 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [1, 1, 2, 2], "y": [0, 0.148219782508762, 0.148219782508762, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 1200, "height": 750, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 9.3, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "range": [0, 11], "mirror": false, "ticktext": [" 2", "10", " 5", " 8", " 9", " 1", " 4", " 3", " 6", " 7"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 9.3, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9], "range": [0.110786566338778, 0.934317322078429], "mirror": false, "ticktext": ["0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_706046088020 index=706046088020 %}


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Dendrogram Leaf Node Order

Generate sample data. 

```{matlab}
rng('default')
X = rand(10,3);
```

Create a hierarchical binary cluster tree using `linkage`. 

```{matlab}
rng('default')
X = rand(10,3);

tree = linkage(X,'average');

D = pdist(X);
leafOrder = optimalleaforder(tree,D)
```
```
leafOrder =

     3     7     6     1     4     9     5     8    10     2
```


Plot the dendrogram using an optimal leaf order. 

```{matlab}
rng('default')
X = rand(10,3);

tree = linkage(X,'average');

D = pdist(X);
leafOrder = optimalleaforder(tree,D)

dendrogram(tree,'Reorder',leafOrder)

fig2plotly(gcf)
```
```
leafOrder =

     3     7     6     1     4     9     5     8    10     2


pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_706046088020 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [10, 10, 9, 9], "y": [0, 0.148219782508762, 0.148219782508762, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 1200, "height": 750, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 9.3, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "range": [0, 11], "mirror": false, "ticktext": [" 3", " 7", " 6", " 1", " 4", " 9", " 5", " 8", "10", " 2"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 9.3, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9], "range": [0.110786566338778, 0.934317322078429], "mirror": false, "ticktext": ["0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_706046088020 index=706046088020 %}


The order of the leaf nodes in the dendrogram plot corresponds - from left to right - to the permutation in `leafOrder`.

<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Number of Nodes in Dendrogram Plot

Generate sample data. 

```{matlab}
rng('default')
X = rand(100,2);
```

There are 100 data points in the original data set, `X`. 

Create a hierarchical binary cluster tree using `linkage`. Then, plot the dendrogram for the complete tree (100 leaf nodes) by setting the input argument `P` equal to `0`.

```{matlab}
rng('default')
X = rand(100,2);

tree = linkage(X,'average');
dendrogram(tree,0)
```

Now, plot the dendrogram with only 25 leaf nodes. Return the mapping of the original data points to the leaf nodes shown in the plot. 

```{matlab}
rng('default')
X = rand(100,2);

tree = linkage(X,'average');
dendrogram(tree,0)

[~,T] = dendrogram(tree,25);

fig2plotly(gcf)
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {1×24 cell}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_644318130194 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [1, 1, 2, 2], "y": [0, 0.156047575540967, 0.156047575540967, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 1200, "height": 750, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 9.3, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25], "range": [0, 26], "mirror": false, "ticktext": [" 9", "23", "17", " 6", "11", " 3", "15", " 7", "14", "19", "16", "24", "22", " 1", "13", "12", " 5", "21", " 4", "10", "20", " 2", "18", " 8", "25"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 9.3, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0.15, 0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5, 0.55, 0.6, 0.65], "range": [0.131081852195556, 0.680327765794596], "mirror": false, "ticktext": ["0.15", "0.2", "0.25", "0.3", "0.35", "0.4", "0.45", "0.5", "0.55", "0.6", "0.65"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_644318130194 index=644318130194 %}



List the original data points that are in leaf node 7 of the dendrogram plot.

```{matlab}
rng('default')
X = rand(100,2);

tree = linkage(X,'average');
dendrogram(tree,0)

[~,T] = dendrogram(tree,25);

find(T==7)
```
```
ans =

     7
    33
    60
    70
    74
    76
    86
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Change Dendrogram Orientation and Line Width

Generate sample data. 

```{matlab}
rng('default')
X = rand(10,3);
```

Create a hierarchical binary cluster tree using `linkage`. Then, plot the dendrogram with a vertical orientation, using the default color threshold. Return handles to the lines so you can change the dendrogram line widths.

```{matlab}
rng('default')
X = rand(10,3);

tree = linkage(X,'average');
H = dendrogram(tree,'Orientation','left','ColorThreshold','default');
set(H,'LineWidth',2)

fig2plotly(gcf)
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_706046088020 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [0, 0.148219782508762, 0.148219782508762, 0], "y": [1, 1, 2, 2], "name": "", "mode": "lines", "line": {"color": "rgb(255,0,0)", "width": 2, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 2}, "color": "rgb(255,0,0)"}, "showlegend": false}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 1200, "height": 750, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 9.3, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9], "range": [0.934317322078429, 0.110786566338778], "mirror": false, "ticktext": ["0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "right", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 9.3, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "range": [0, 11], "mirror": false, "ticktext": [" 2", "10", " 5", " 8", " 9", " 1", " 4", " 3", " 6", " 7"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_706046088020 index=706046088020 %}


<!--------------------- EXAMPLE BREAK ------------------------->