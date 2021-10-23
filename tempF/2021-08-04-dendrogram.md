---
description: How to make Dendrograms in MATLAB<sup>&reg;</sup> with Plotly.
name: Dendrograms
display_as: scientific
order: 6
permalink: matlab/dendrogram/
thumnail_github: dendrogram.png
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

fig2plotly(gcf);
```
{% capture plot_706046088020 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [1, 1, 2, 2], "y": [0, 0.148219782508762, 0.148219782508762, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [3, 3, 4, 4], "y": [0, 0.320504638731619, 0.320504638731619, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [9, 9, 10, 10], "y": [0, 0.333600207554769, 0.333600207554769, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [3.5, 3.5, 5, 5], "y": [0.320504638731619, 0.414620818966117, 0.414620818966117, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [6, 6, 7, 7], "y": [0, 0.441117934065952, 0.441117934065952, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [1.5, 1.5, 4.25, 4.25], "y": [0.148219782508762, 0.581610644037362, 0.581610644037362, 0.414620818966117], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [8, 8, 9.5, 9.5], "y": [0, 0.693675762035594, 0.693675762035594, 0.333600207554769], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [6.5, 6.5, 2.875, 2.875], "y": [0.441117934065952, 0.775391648245102, 0.775391648245102, 0.581610644037362], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [4.6875, 4.6875, 8.75, 8.75], "y": [0.775391648245102, 0.896884105908445, 0.896884105908445, 0.693675762035594], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 1200, "height": 750, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 9.3, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "range": [0, 11], "mirror": false, "ticktext": [" 2", "10", " 5", " 8", " 9", " 1", " 4", " 3", " 6", " 7"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 9.3, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9], "range": [0.110786566338778, 0.934317322078429], "mirror": false, "ticktext": ["0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_706046088020 index=706046088020 %}


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
leafOrder = optimalleaforder(tree,D);
```


Plot the dendrogram using an optimal leaf order. 

```{matlab}
rng('default')
X = rand(10,3);

tree = linkage(X,'average');

D = pdist(X);
leafOrder = optimalleaforder(tree,D);

dendrogram(tree,'Reorder',leafOrder)

fig2plotly(gcf);
```
{% capture plot_706046088020 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [10, 10, 9, 9], "y": [0, 0.148219782508762, 0.148219782508762, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [7, 7, 8, 8], "y": [0, 0.320504638731619, 0.320504638731619, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [3, 3, 2, 2], "y": [0, 0.333600207554769, 0.333600207554769, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [7.5, 7.5, 6, 6], "y": [0.320504638731619, 0.414620818966117, 0.414620818966117, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [4, 4, 5, 5], "y": [0, 0.441117934065952, 0.441117934065952, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [9.5, 9.5, 6.75, 6.75], "y": [0.148219782508762, 0.581610644037362, 0.581610644037362, 0.414620818966117], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [1, 1, 2.5, 2.5], "y": [0, 0.693675762035594, 0.693675762035594, 0.333600207554769], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [4.5, 4.5, 8.125, 8.125], "y": [0.441117934065952, 0.775391648245102, 0.775391648245102, 0.581610644037362], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [6.3125, 6.3125, 1.75, 1.75], "y": [0.775391648245102, 0.896884105908445, 0.896884105908445, 0.693675762035594], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 1200, "height": 750, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 9.3, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "range": [0, 11], "mirror": false, "ticktext": [" 3", " 7", " 6", " 1", " 4", " 9", " 5", " 8", "10", " 2"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 9.3, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9], "range": [0.110786566338778, 0.934317322078429], "mirror": false, "ticktext": ["0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_706046088020 index=706046088020 %}


The order of the leaf nodes in the dendrogram plot corresponds - from left to right - to the permutation in `leafOrder`.

<!--------------------- EXAMPLE  BREAK ------------------------->

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

fig2plotly(gcf);
```
{% capture plot_644318130194 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [1, 1, 2, 2], "y": [0, 0.156047575540967, 0.156047575540967, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [6, 6, 7, 7], "y": [0, 0.159742331959693, 0.159742331959693, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [11, 11, 12, 12], "y": [0, 0.16126057338063, 0.16126057338063, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [9, 9, 10, 10], "y": [0, 0.177676184396886, 0.177676184396886, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [17, 17, 18, 18], "y": [0, 0.180489621696022, 0.180489621696022, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [11.5, 11.5, 13, 13], "y": [0.16126057338063, 0.180718048873833, 0.180718048873833, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [20, 20, 21, 21], "y": [0, 0.181214380170203, 0.181214380170203, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [3, 3, 1.5, 1.5], "y": [0, 0.188206415723495, 0.188206415723495, 0.156047575540967], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [14, 14, 15, 15], "y": [0, 0.196450253901432, 0.196450253901432, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [14.5, 14.5, 16, 16], "y": [0.196450253901432, 0.203822457192627, 0.203822457192627, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [4, 4, 5, 5], "y": [0, 0.211266900232516, 0.211266900232516, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [19, 19, 20.5, 20.5], "y": [0, 0.216908978702656, 0.216908978702656, 0.181214380170203], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [24, 24, 25, 25], "y": [0, 0.226017266590832, 0.226017266590832, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [6.5, 6.5, 8, 8], "y": [0.159742331959693, 0.236378854332394, 0.236378854332394, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [22, 22, 23, 23], "y": [0, 0.259198251018663, 0.259198251018663, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [22.5, 22.5, 24.5, 24.5], "y": [0.259198251018663, 0.287978251301877, 0.287978251301877, 0.226017266590832], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [15.25, 15.25, 17.5, 17.5], "y": [0.203822457192627, 0.291951436372931, 0.291951436372931, 0.180489621696022], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [4.5, 4.5, 2.25, 2.25], "y": [0.211266900232516, 0.297441950464145, 0.297441950464145, 0.188206415723495], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [9.5, 9.5, 12.25, 12.25], "y": [0.177676184396886, 0.33173038538974, 0.33173038538974, 0.180718048873833], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [16.375, 16.375, 19.75, 19.75], "y": [0.291951436372931, 0.363570150410601, 0.363570150410601, 0.216908978702656], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [7.25, 7.25, 3.375, 3.375], "y": [0.236378854332394, 0.387002885061721, 0.387002885061721, 0.297441950464145], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [5.3125, 5.3125, 10.875, 10.875], "y": [0.387002885061721, 0.545663045341483, 0.545663045341483, 0.33173038538974], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [18.0625, 18.0625, 23.5, 23.5], "y": [0.363570150410601, 0.578988523721115, 0.578988523721115, 0.287978251301877], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [20.78125, 20.78125, 8.09375, 8.09375], "y": [0.578988523721115, 0.655362042449185, 0.655362042449185, 0.545663045341483], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 1200, "height": 750, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 9.3, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25], "range": [0, 26], "mirror": false, "ticktext": [" 9", "23", "17", " 6", "11", " 3", "15", " 7", "14", "19", "16", "24", "22", " 1", "13", "12", " 5", "21", " 4", "10", "20", " 2", "18", " 8", "25"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 9.3, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0.15, 0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5, 0.55, 0.6, 0.65], "range": [0.131081852195556, 0.680327765794596], "mirror": false, "ticktext": ["0.15", "0.2", "0.25", "0.3", "0.35", "0.4", "0.45", "0.5", "0.55", "0.6", "0.65"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_644318130194 index=644318130194 %}



List the original data points that are in leaf node 7 of the dendrogram plot.

```{matlab}
rng('default')
X = rand(100,2);

tree = linkage(X,'average');
dendrogram(tree,0)

[~,T] = dendrogram(tree,25);

find(T==7)
```
<pre class="code-output">
ans =

     7
    33
    60
    70
    74
    76
    86
</pre>


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

fig2plotly(gcf);
```
{% capture plot_706046088020 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [0, 0.148219782508762, 0.148219782508762, 0], "y": [1, 1, 2, 2], "name": "", "mode": "lines", "line": {"color": "rgb(255,0,0)", "width": 2, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 2}, "color": "rgb(255,0,0)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [0, 0.320504638731619, 0.320504638731619, 0], "y": [3, 3, 4, 4], "name": "", "mode": "lines", "line": {"color": "rgb(255,0,0)", "width": 2, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 2}, "color": "rgb(255,0,0)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [0, 0.333600207554769, 0.333600207554769, 0], "y": [9, 9, 10, 10], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 2, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 2}, "color": "rgb(0,0,255)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [0.320504638731619, 0.414620818966117, 0.414620818966117, 0], "y": [3.5, 3.5, 5, 5], "name": "", "mode": "lines", "line": {"color": "rgb(255,0,0)", "width": 2, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 2}, "color": "rgb(255,0,0)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [0, 0.441117934065952, 0.441117934065952, 0], "y": [6, 6, 7, 7], "name": "", "mode": "lines", "line": {"color": "rgb(0,255,0)", "width": 2, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 2}, "color": "rgb(0,255,0)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [0.148219782508762, 0.581610644037362, 0.581610644037362, 0.414620818966117], "y": [1.5, 1.5, 4.25, 4.25], "name": "", "mode": "lines", "line": {"color": "rgb(255,0,0)", "width": 2, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 2}, "color": "rgb(255,0,0)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [0, 0.693675762035594, 0.693675762035594, 0.333600207554769], "y": [8, 8, 9.5, 9.5], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,0)", "width": 2, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 2}, "color": "rgb(0,0,0)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [0.441117934065952, 0.775391648245102, 0.775391648245102, 0.581610644037362], "y": [6.5, 6.5, 2.875, 2.875], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,0)", "width": 2, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 2}, "color": "rgb(0,0,0)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [0.775391648245102, 0.896884105908445, 0.896884105908445, 0.693675762035594], "y": [4.6875, 4.6875, 8.75, 8.75], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,0)", "width": 2, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 2}, "color": "rgb(0,0,0)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 1200, "height": 750, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 9.3, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9], "range": [0.934317322078429, 0.110786566338778], "mirror": false, "ticktext": ["0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "right", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 9.3, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "range": [0, 11], "mirror": false, "ticktext": [" 2", "10", " 5", " 8", " 9", " 1", " 4", " 3", " 6", " 7"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_706046088020 index=706046088020 %}


<!--------------------- EXAMPLE BREAK ------------------------->