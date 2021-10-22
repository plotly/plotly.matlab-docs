---
description: How to make Feather Plot in MATLAB<sup>&reg;</sup> with Plotly.
name: Feather Plot
display_as: scientific
order: 21
permalink: matlab/feather-plot/
thumnail_github: feather-plot.png
layout: base
language: matlab
page_type: u-guide
---

## Create Compass Plot Using Cartesian Coordinates

Create a compass plot by specifying the Cartesian coordinates of each arrow.

```{matlab}
u = [5 3 -4 -3 5];
v = [1 5 3 -2 -6];
compass(u,v)

fig2plotly(gcf, 'TreatAs', 'compass');
```
```
Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.
```
{% capture plot_868694705364 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-5, 0, 5], "range": [-8, 8], "mirror": false, "ticktext": ["-5", "0", "5"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-8, -6, -4, -2, 0, 2, 4, 6, 8], "range": [-9.2, 9.2], "mirror": false, "ticktext": ["-8", "-6", "-4", "-2", "0", "2", "4", "6", "8"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_868694705364 index=868694705364 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Create Compass Plot Using Polar Coordinates

Create a compass plot using polar coordinates by first converting them to Cartesian coordinates. 

To do this, specify data using polar coordinates. Convert them to Cartesian coordinates using the `pol2cart` function. Then, create the plot. 

```{matlab}
th = linspace(pi/4,2*pi,10);
r = linspace(5,20,10);
[u,v] = pol2cart(th,r);
compass(u,v)

fig2plotly(gcf, 'TreatAs', 'compass');
```
```
Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.
```
{% capture plot_84435845511 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-20, -10, 0, 10, 20], "range": [-20, 20], "mirror": false, "ticktext": ["-20", "-10", "0", "10", "20"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-20, -15, -10, -5, 0, 5, 10, 15, 20], "range": [-23, 23], "mirror": false, "ticktext": ["-20", "-15", "-10", "-5", "0", "5", "10", "15", "20"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_84435845511 index=84435845511 %}


Note that the theta-axis and r-axis tick labels correspond to the polar coordinates.

<!--------------------- EXAMPLE BREAK ------------------------->

## Create Compass Plot Using Complex Values

Sample a sinusoid at equally spaced intervals. Then, compute the 10-point discrete Fourier transform of the sinusoid. The result is a vector of complex values.

```{matlab}
t = linspace(0,8*pi,100);
y = sin(2*t) + 2*sin(t+pi/2);
f = fft(y,10);
```

Display the complex values using a compass plot. The real part determines the x-coordinate of each arrow, and the imaginary part determines the y-coordinate.

```{matlab}
t = linspace(0,8*pi,100);
y = sin(2*t) + 2*sin(t+pi/2);
f = fft(y,10);

compass(f)

fig2plotly(gcf, 'TreatAs', 'compass');
```
```
Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.
```
{% capture plot_399782649099 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-15, -10, -5, 0, 5, 10, 15], "range": [-15, 15], "mirror": false, "ticktext": ["-15", "-10", "-5", "0", "5", "10", "15"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-15, -10, -5, 0, 5, 10, 15], "range": [-17.25, 17.25], "mirror": false, "ticktext": ["-15", "-10", "-5", "0", "5", "10", "15"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_399782649099 index=399782649099 %}




<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Appearance of Whole Plot

Create a compass plot with red arrows.

```{matlab}
u = [5 3 -4 -3 5];
v = [1 5 3 -2 -6];
compass(u,v,'r')

fig2plotly(gcf, 'TreatAs', 'compass');
```
```
Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.
```
{% capture plot_259870402851 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-5, 0, 5], "range": [-8, 8], "mirror": false, "ticktext": ["-5", "0", "5"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-8, -6, -4, -2, 0, 2, 4, 6, 8], "range": [-9.2, 9.2], "mirror": false, "ticktext": ["-8", "-6", "-4", "-2", "0", "2", "4", "6", "8"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_259870402851 index=259870402851 %}


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Appearance of One Arrow

Specify the line width and color of a single arrow by assigning the arrow to a variable and then setting its properties. To do this, first create a compass plot and return an array of `Line` objects.

```{matlab}
u = [3 5 -4 -3 5];
v = [5 1 3 -2 -6];
c = compass(u,v);

fig2plotly(gcf, 'TreatAs', 'compass');
```
```
Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.
```
{% capture plot_800068480224 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-5, 0, 5], "range": [-8, 8], "mirror": false, "ticktext": ["-5", "0", "5"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-8, -6, -4, -2, 0, 2, 4, 6, 8], "range": [-9.2, 9.2], "mirror": false, "ticktext": ["-8", "-6", "-4", "-2", "0", "2", "4", "6", "8"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_800068480224 index=800068480224 %}


Assign the first arrow to a variable. The first arrow corresponds to the first elements of `u` and `v`. Then, change the line width and color.

```{matlab}
u = [3 5 -4 -3 5];
v = [5 1 3 -2 -6];
c = compass(u,v);

c1 = c(1);
c1.LineWidth = 2;
c1.Color = 'r';

fig2plotly(gcf, 'TreatAs', 'compass');
```
```
Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.
```
{% capture plot_431413827464 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-5, 0, 5], "range": [-8, 8], "mirror": false, "ticktext": ["-5", "0", "5"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-8, -6, -4, -2, 0, 2, 4, 6, 8], "range": [-9.2, 9.2], "mirror": false, "ticktext": ["-8", "-6", "-4", "-2", "0", "2", "4", "6", "8"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_431413827464 index=431413827464 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Rotate Compass Plot

Rotate a compass plot so that 0 degrees points up by using the `view` function.

To do this, create a compass plot using polar coordinates. Convert the polar coordinates to Cartesian coordinates by using the `pol2cart` function, and then plot the converted coordinates.

```{matlab}
th = linspace(0,3*pi/2,10);
r = linspace(5,20,10);
[u,v] = pol2cart(th,r);
compass(u,v)

fig2plotly(gcf, 'TreatAs', 'compass');
```
```
Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.
```
{% capture plot_910647594430 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-20, -10, 0, 10, 20], "range": [-20, 20], "mirror": false, "ticktext": ["-20", "-10", "0", "10", "20"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-20, -15, -10, -5, 0, 5, 10, 15, 20], "range": [-23, 23], "mirror": false, "ticktext": ["-20", "-15", "-10", "-5", "0", "5", "10", "15", "20"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_910647594430 index=910647594430 %}


Note that 0 degrees points to the right. Rotate the theta-axis 90 degrees in a counterclockwise direction by calling `view` and specifying the first argument as -`90`. Maintain the 2-D view by specifying the second argument as `90`.

```{matlab}
th = linspace(0,3*pi/2,10);
r = linspace(5,20,10);
[u,v] = pol2cart(th,r);
compass(u,v)

view(-90,90)

fig2plotly(gcf, 'TreatAs', 'compass');
```
```
Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.
```
{% capture plot_181847028303 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-20, -15, -10, -5, 0, 5, 10, 15, 20], "range": [-20, 20], "mirror": false, "ticktext": ["-20", "-15", "-10", "-5", "0", "5", "10", "15", "20"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-20, -15, -10, -5, 0, 5, 10, 15, 20], "range": [-23, 23], "mirror": false, "ticktext": ["-20", "-15", "-10", "-5", "0", "5", "10", "15", "20"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_181847028303 index=181847028303 %}


Note that 0 degrees now points up.


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Axes for Compass Plot

Starting in R2019b, you can display a tiling of plots using the `tiledlayout` and `nexttile` functions. Call the `tiledlayout` function to create a 1-by-2 tiled chart layout. Call the `nexttile` function to create an axes object and return the object as `ax1`. Create the left plot by passing `ax1` to the `compass` function. Add a title to the plot by passing the axes to the `title` function. Repeat the process to create the right plot.

```{matlab}
u = [7 5 -2 -5 8];
tiledlayout(1,2)

% Left plot
ax1 = nexttile;
v1 = [3 7 5 -4 -6];
compass(ax1,u,v1)
title(ax1,'Left Plot')

% Right plot
ax2 = nexttile;
v2 = [-3 -4 -5 6 6];
compass(ax2,u,v2)
title(ax2,'Right Plot')

fig2plotly(gcf, 'TreatAs', 'compass');
```
```
Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.

Unrecognized function or variable 'x'.
We had trouble parsing the line object.
This trace might not render properly.
```
{% capture plot_263802916522 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x1", "yaxis": "y1", "type": "scatterpolar", "visible": true}, {"xaxis": "x2", "yaxis": "y2", "type": "scatterpolar", "visible": true}, {"xaxis": "x2", "yaxis": "y2", "type": "scatterpolar", "visible": true}, {"xaxis": "x2", "yaxis": "y2", "type": "scatterpolar", "visible": true}, {"xaxis": "x2", "yaxis": "y2", "type": "scatterpolar", "visible": true}, {"xaxis": "x2", "yaxis": "y2", "type": "scatterpolar", "visible": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 3.06704989031375, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-10, -5, 0, 5, 10], "range": [-10, 10], "mirror": false, "ticktext": ["-10", "-5", "0", "5", "10"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.13, 0.4475], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.4475], "y": [0.274083342038591, 0.760916657961409]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 3.06704989031375, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-10, -5, 0, 5, 10], "range": [-11.5, 11.5], "mirror": false, "ticktext": ["-10", "-5", "0", "5", "10"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.274083342038591, 0.760916657961409], "anchor": "x1"}, "xaxis2": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 3.06704989031375, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-10, -5, 0, 5, 10], "range": [-10, 10], "mirror": false, "ticktext": ["-10", "-5", "0", "5", "10"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.5875, 0.905], "anchor": "y2"}, "scene2": {"domain": {"x": [0.5875, 0.905], "y": [0.274083342038591, 0.760916657961409]}}, "yaxis2": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 3.06704989031375, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": false, "tickmode": "array", "tickvals": [-10, -5, 0, 5, 10], "range": [-11.5, 11.5], "mirror": false, "ticktext": ["-10", "-5", "0", "5", "10"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": false, "domain": [0.274083342038591, 0.760916657961409], "anchor": "x2"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>Left Plot<\/b>", "x": 0.28875, "y": 0.770916657961409, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 9.9}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>Right Plot<\/b>", "x": 0.74625, "y": 0.770916657961409, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 9.9}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "paper", "yref": "paper", "align": "center", "xanchor": "center", "yanchor": "bottom", "text": "", "x": 0.5, "y": 0.95, "font": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 15.6, "family": "Arial, sans-serif"}, "textangle": 0}], "title": "<b>Left Plot<\/b>", "titlefont": {"color": "rgba(0,0,0,0)"}}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_263802916522 index=263802916522 %}



<!--------------------- EXAMPLE BREAK ------------------------->



## Create Feather Plot Using Cartesian Values

Create a feather plot by specifying the components of each arrow as Cartesian values. The nth arrow originates from n on the x-axis.

```{matlab}
t = -pi/2:pi/8:pi/2;
u = 10*sin(t);
v = 10*cos(t);
feather(u,v)

fig2plotly(gcf);
```
{% capture plot_145538980385 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [1, -9, null, -7, -9, -7], "y": [0, 6.12323399573677e-16, null, -0.8, 6.12323399573677e-16, 0.8], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [2, -7.23879532511287, null, -5.69718300598237, -7.23879532511287, -5.08488951419822], "y": [0, 3.8268343236509, null, 2.32236383291169, 3.8268343236509, 3.80057108492975], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [3, -4.07106781186547, null, -3.22253967444162, -4.07106781186547, -2.09116882454314], "y": [0, 7.07106781186548, null, 5.09116882454314, 7.07106781186548, 6.22253967444162], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [4, 0.173165676349102, null, 0.199428915070252, 0.173165676349102, 1.67763616708831], "y": [0, 9.23879532511287, null, 7.08488951419822, 9.23879532511287, 7.69718300598237], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [5, 5, null, 4.2, 5, 5.8], "y": [0, 10, null, 8, 10, 8], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [6, 9.8268343236509, null, 8.32236383291169, 9.8268343236509, 9.80057108492975], "y": [0, 9.23879532511287, null, 7.69718300598237, 9.23879532511287, 7.08488951419822], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [7, 14.0710678118655, null, 12.0911688245431, 14.0710678118655, 13.2225396744416], "y": [0, 7.07106781186548, null, 6.22253967444162, 7.07106781186548, 5.09116882454314], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [8, 17.2387953251129, null, 15.0848895141982, 17.2387953251129, 15.6971830059824], "y": [0, 3.8268343236509, null, 3.80057108492975, 3.8268343236509, 2.32236383291169], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [9, 19, null, 17, 19, 17], "y": [0, 6.12323399573677e-16, null, 0.8, 6.12323399573677e-16, -0.8], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [1, 9], "y": [0, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-10, -5, 0, 5, 10, 15, 20], "range": [-10, 20], "mirror": "ticks", "ticktext": ["-10", "-5", "0", "5", "10", "15", "20"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-2, 0, 2, 4, 6, 8, 10], "range": [-2, 10], "mirror": "ticks", "ticktext": ["-2", "0", "2", "4", "6", "8", "10"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_145538980385 index=145538980385 %}


<!--------------------- EXAMPLE BREAK ------------------------->

## Create Feather Plot Using Polar Values

Create a feather plot using polar coordinates by first converting them to Cartesian coordinates. 

To do this, create vectors with polar coordinates. Convert them to Cartesian coordinates using the `pol2cart` function. Then, create the plot.

```{matlab}
th = -pi/2:pi/16:0;
r = 10*ones(size(th));
[u,v] = pol2cart(th,r);
feather(u,v)

fig2plotly(gcf);
```
{% capture plot_136068558709 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [1, 1, null, 1.8, 1, 0.2], "y": [0, -10, null, -8, -10, -8], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [2, 3.95090322016128, null, 4.34535080045161, 3.95090322016128, 2.77609435180644], "y": [0, -9.8078528040323, null, -7.69020998561294, -9.8078528040323, -8.00235450083875], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [3, 6.8268343236509, null, 6.80057108492975, 6.8268343236509, 5.32236383291169], "y": [0, -9.23879532511287, null, -7.08488951419822, -9.23879532511287, -7.69718300598237], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [4, 9.55570233019602, null, 9.10973755399885, 9.55570233019602, 7.77938617431478], "y": [0, -8.31469612302545, null, -6.20730071200468, -8.31469612302545, -7.09621308483604], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [5, 12.0710678118655, null, 11.2225396744416, 12.0710678118655, 10.0911688245431], "y": [0, -7.07106781186547, null, -5.09116882454314, -7.07106781186547, -6.22253967444162], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [6, 14.3146961230255, null, 13.096213084836, 14.3146961230255, 12.2073007120047], "y": [0, -5.55570233019602, null, -3.77938617431478, -5.55570233019602, -5.10973755399885], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [7, 16.2387953251129, null, 14.6971830059824, 16.2387953251129, 14.0848895141982], "y": [0, -3.8268343236509, null, -2.32236383291169, -3.8268343236509, -3.80057108492975], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [8, 17.8078528040323, null, 16.0023545008387, 17.8078528040323, 15.6902099856129], "y": [0, -1.95090322016128, null, -0.776094351806442, -1.95090322016128, -2.34535080045161], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [9, 19, null, 17, 19, 17], "y": [0, 0, null, 0.8, 0, -0.8], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [1, 9], "y": [0, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 5, 10, 15, 20], "range": [0, 20], "mirror": "ticks", "ticktext": ["0", "5", "10", "15", "20"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-10, -8, -6, -4, -2, 0, 2], "range": [-10, 2], "mirror": "ticks", "ticktext": ["-10", "-8", "-6", "-4", "-2", "0", "2"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_136068558709 index=136068558709 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Create Feather Plot Using Complex Values

Create a vector of complex values. Then, display them using a feather plot. The real part determines the x-component of each arrow, and the imaginary part determines the y-component.

```{matlab}
Z = [2+3i -1-3i -1+i 2i 3-4i -2-2i -2+4i 0.5-i -3i 1+i];
feather(Z)

fig2plotly(gcf);
```
{% capture plot_869292207640 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [1, 3, null, 2.36, 3, 2.84], "y": [0, 3, null, 2.56, 3, 2.24], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [2, 1, null, 1.44, 1, 0.96], "y": [-0, -3, null, -2.48, -3, -2.32], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [3, 2, null, 2.12, 2, 2.28], "y": [0, 1, null, 0.72, 1, 0.88], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [4, 4, null, 3.84, 4, 4.16], "y": [0, 2, null, 1.6, 2, 1.6], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [5, 8, null, 7.72, 8, 7.08], "y": [0, -4, null, -2.96, -4, -3.44], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [6, 4, null, 4.56, 4, 4.24], "y": [-0, -2, null, -1.76, -2, -1.44], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [7, 5, null, 5.08, 5, 5.72], "y": [0, 4, null, 3.04, 4, 3.36], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [8, 8.5, null, 8.48, 8.5, 8.32], "y": [0, -1, null, -0.76, -1, -0.84], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [9, 9, null, 9.24, 9, 8.76], "y": [0, -3, null, -2.4, -3, -2.4], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [10, 11, null, 10.72, 11, 10.88], "y": [0, 1, null, 0.88, 1, 0.72], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [1, 10], "y": [0, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 2, 4, 6, 8, 10, 12], "range": [0, 12], "mirror": "ticks", "ticktext": ["0", "2", "4", "6", "8", "10", "12"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-4, -3, -2, -1, 0, 1, 2, 3, 4], "range": [-4, 4], "mirror": "ticks", "ticktext": ["-4", "-3", "-2", "-1", "0", "1", "2", "3", "4"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_869292207640 index=869292207640 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Color of Feather Plot

Create a feather plot with red arrows.

```{matlab}
t = -pi/2:pi/8:pi/2;
u = 10*sin(t);
v = 10*cos(t);
feather(u,v,'r')

fig2plotly(gcf);
```
{% capture plot_579704587366 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [1, -9, null, -7, -9, -7], "y": [0, 6.12323399573677e-16, null, -0.8, 6.12323399573677e-16, 0.8], "name": "", "mode": "lines", "line": {"color": "rgb(255,0,0)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(255,0,0)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [2, -7.23879532511287, null, -5.69718300598237, -7.23879532511287, -5.08488951419822], "y": [0, 3.8268343236509, null, 2.32236383291169, 3.8268343236509, 3.80057108492975], "name": "", "mode": "lines", "line": {"color": "rgb(255,0,0)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(255,0,0)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [3, -4.07106781186547, null, -3.22253967444162, -4.07106781186547, -2.09116882454314], "y": [0, 7.07106781186548, null, 5.09116882454314, 7.07106781186548, 6.22253967444162], "name": "", "mode": "lines", "line": {"color": "rgb(255,0,0)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(255,0,0)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [4, 0.173165676349102, null, 0.199428915070252, 0.173165676349102, 1.67763616708831], "y": [0, 9.23879532511287, null, 7.08488951419822, 9.23879532511287, 7.69718300598237], "name": "", "mode": "lines", "line": {"color": "rgb(255,0,0)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(255,0,0)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [5, 5, null, 4.2, 5, 5.8], "y": [0, 10, null, 8, 10, 8], "name": "", "mode": "lines", "line": {"color": "rgb(255,0,0)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(255,0,0)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [6, 9.8268343236509, null, 8.32236383291169, 9.8268343236509, 9.80057108492975], "y": [0, 9.23879532511287, null, 7.69718300598237, 9.23879532511287, 7.08488951419822], "name": "", "mode": "lines", "line": {"color": "rgb(255,0,0)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(255,0,0)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [7, 14.0710678118655, null, 12.0911688245431, 14.0710678118655, 13.2225396744416], "y": [0, 7.07106781186548, null, 6.22253967444162, 7.07106781186548, 5.09116882454314], "name": "", "mode": "lines", "line": {"color": "rgb(255,0,0)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(255,0,0)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [8, 17.2387953251129, null, 15.0848895141982, 17.2387953251129, 15.6971830059824], "y": [0, 3.8268343236509, null, 3.80057108492975, 3.8268343236509, 2.32236383291169], "name": "", "mode": "lines", "line": {"color": "rgb(255,0,0)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(255,0,0)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [9, 19, null, 17, 19, 17], "y": [0, 6.12323399573677e-16, null, 0.8, 6.12323399573677e-16, -0.8], "name": "", "mode": "lines", "line": {"color": "rgb(255,0,0)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(255,0,0)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [1, 9], "y": [0, 0], "name": "", "mode": "lines", "line": {"color": "rgb(255,0,0)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(255,0,0)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-10, -5, 0, 5, 10, 15, 20], "range": [-10, 20], "mirror": "ticks", "ticktext": ["-10", "-5", "0", "5", "10", "15", "20"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-2, 0, 2, 4, 6, 8, 10], "range": [-2, 10], "mirror": "ticks", "ticktext": ["-2", "0", "2", "4", "6", "8", "10"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_579704587366 index=579704587366 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Line Width and Color of One Arrow

Specify the line width and color of a single arrow by assigning the arrow to a variable and then setting its properties. To do this, first create a feather plot and return an array of `Line` objects.

```{matlab}
t = -pi/2:pi/8:pi/2;
u = 10*sin(t);
v = 10*cos(t);
f = feather(u,v);

fig2plotly(gcf);
```
{% capture plot_549860201836 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [1, -9, null, -7, -9, -7], "y": [0, 6.12323399573677e-16, null, -0.8, 6.12323399573677e-16, 0.8], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [2, -7.23879532511287, null, -5.69718300598237, -7.23879532511287, -5.08488951419822], "y": [0, 3.8268343236509, null, 2.32236383291169, 3.8268343236509, 3.80057108492975], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [3, -4.07106781186547, null, -3.22253967444162, -4.07106781186547, -2.09116882454314], "y": [0, 7.07106781186548, null, 5.09116882454314, 7.07106781186548, 6.22253967444162], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [4, 0.173165676349102, null, 0.199428915070252, 0.173165676349102, 1.67763616708831], "y": [0, 9.23879532511287, null, 7.08488951419822, 9.23879532511287, 7.69718300598237], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [5, 5, null, 4.2, 5, 5.8], "y": [0, 10, null, 8, 10, 8], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [6, 9.8268343236509, null, 8.32236383291169, 9.8268343236509, 9.80057108492975], "y": [0, 9.23879532511287, null, 7.69718300598237, 9.23879532511287, 7.08488951419822], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [7, 14.0710678118655, null, 12.0911688245431, 14.0710678118655, 13.2225396744416], "y": [0, 7.07106781186548, null, 6.22253967444162, 7.07106781186548, 5.09116882454314], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [8, 17.2387953251129, null, 15.0848895141982, 17.2387953251129, 15.6971830059824], "y": [0, 3.8268343236509, null, 3.80057108492975, 3.8268343236509, 2.32236383291169], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [9, 19, null, 17, 19, 17], "y": [0, 6.12323399573677e-16, null, 0.8, 6.12323399573677e-16, -0.8], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [1, 9], "y": [0, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-10, -5, 0, 5, 10, 15, 20], "range": [-10, 20], "mirror": "ticks", "ticktext": ["-10", "-5", "0", "5", "10", "15", "20"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-2, 0, 2, 4, 6, 8, 10], "range": [-2, 10], "mirror": "ticks", "ticktext": ["-2", "0", "2", "4", "6", "8", "10"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_549860201836 index=549860201836 %}


Assign the first arrow to a variable. The first arrow corresponds to the first elements of `u` and `v`. Then, change the line width and color.

```{matlab}
t = -pi/2:pi/8:pi/2;
u = 10*sin(t);
v = 10*cos(t);
f = feather(u,v);

f1 = f(1);
f1.Color = 'r';
f1.LineWidth = 2;

fig2plotly(gcf);
```
{% capture plot_144954798224 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [1, -9, null, -7, -9, -7], "y": [0, 6.12323399573677e-16, null, -0.8, 6.12323399573677e-16, 0.8], "name": "", "mode": "lines", "line": {"color": "rgb(255,0,0)", "width": 2, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 2}, "color": "rgb(255,0,0)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [2, -7.23879532511287, null, -5.69718300598237, -7.23879532511287, -5.08488951419822], "y": [0, 3.8268343236509, null, 2.32236383291169, 3.8268343236509, 3.80057108492975], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [3, -4.07106781186547, null, -3.22253967444162, -4.07106781186547, -2.09116882454314], "y": [0, 7.07106781186548, null, 5.09116882454314, 7.07106781186548, 6.22253967444162], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [4, 0.173165676349102, null, 0.199428915070252, 0.173165676349102, 1.67763616708831], "y": [0, 9.23879532511287, null, 7.08488951419822, 9.23879532511287, 7.69718300598237], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [5, 5, null, 4.2, 5, 5.8], "y": [0, 10, null, 8, 10, 8], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [6, 9.8268343236509, null, 8.32236383291169, 9.8268343236509, 9.80057108492975], "y": [0, 9.23879532511287, null, 7.69718300598237, 9.23879532511287, 7.08488951419822], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [7, 14.0710678118655, null, 12.0911688245431, 14.0710678118655, 13.2225396744416], "y": [0, 7.07106781186548, null, 6.22253967444162, 7.07106781186548, 5.09116882454314], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [8, 17.2387953251129, null, 15.0848895141982, 17.2387953251129, 15.6971830059824], "y": [0, 3.8268343236509, null, 3.80057108492975, 3.8268343236509, 2.32236383291169], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [9, 19, null, 17, 19, 17], "y": [0, 6.12323399573677e-16, null, 0.8, 6.12323399573677e-16, -0.8], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [1, 9], "y": [0, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-10, -5, 0, 5, 10, 15, 20], "range": [-10, 20], "mirror": "ticks", "ticktext": ["-10", "-5", "0", "5", "10", "15", "20"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-2, 0, 2, 4, 6, 8, 10], "range": [-2, 10], "mirror": "ticks", "ticktext": ["-2", "0", "2", "4", "6", "8", "10"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_144954798224 index=144954798224 %}


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Axes for Feather Plot

Starting in R2019b, you can display a tiling of plots using the `tiledlayout` and `nexttile` functions. Call the `tiledlayout` function to create a 1-by-2 tiled chart layout. Call the `nexttile` function to create an axes object and return the object as `ax1`. Create the left plot by passing `ax1` to the `feather` function. Add a title to the plot by passing the axes to the `title` function. Repeat the process to create the right plot.

```{matlab}
tiledlayout(1,2)

% Left plot
ax1 = nexttile;
t = 0:pi/8:pi/2;
u1 = 10*sin(t);
v1 = 10*cos(t);
feather(ax1,u1,v1)
title(ax1,'Left Plot')

% Right plot
ax2 = nexttile;
u2 = zeros(5,1);
v2 = [1 -2 3 -4 5];
feather(ax2,u2,v2)
title(ax2,'Right Plot')

fig2plotly(gcf);
```
{% capture plot_853031117722 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [1, 1, null, 0.2, 1, 1.8], "y": [0, 10, null, 8, 10, 8], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [2, 5.8268343236509, null, 4.32236383291169, 5.8268343236509, 5.80057108492975], "y": [0, 9.23879532511287, null, 7.69718300598237, 9.23879532511287, 7.08488951419822], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [3, 10.0710678118655, null, 8.09116882454314, 10.0710678118655, 9.22253967444162], "y": [0, 7.07106781186548, null, 6.22253967444162, 7.07106781186548, 5.09116882454314], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [4, 13.2387953251129, null, 11.0848895141982, 13.2387953251129, 11.6971830059824], "y": [0, 3.8268343236509, null, 3.80057108492975, 3.8268343236509, 2.32236383291169], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [5, 15, null, 13, 15, 13], "y": [0, 6.12323399573677e-16, null, 0.8, 6.12323399573677e-16, -0.8], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [1, 5], "y": [0, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x2", "yaxis": "y2", "type": "scatter", "visible": true, "x": [1, 1, null, 0.92, 1, 1.08], "y": [0, 1, null, 0.8, 1, 0.8], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x2", "yaxis": "y2", "type": "scatter", "visible": true, "x": [2, 2, null, 2.16, 2, 1.84], "y": [0, -2, null, -1.6, -2, -1.6], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x2", "yaxis": "y2", "type": "scatter", "visible": true, "x": [3, 3, null, 2.76, 3, 3.24], "y": [0, 3, null, 2.4, 3, 2.4], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x2", "yaxis": "y2", "type": "scatter", "visible": true, "x": [4, 4, null, 4.32, 4, 3.68], "y": [0, -4, null, -3.2, -4, -3.2], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x2", "yaxis": "y2", "type": "scatter", "visible": true, "x": [5, 5, null, 4.6, 5, 5.4], "y": [0, 5, null, 4, 5, 4], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"xaxis": "x2", "yaxis": "y2", "type": "scatter", "visible": true, "x": [1, 5], "y": [0, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 5.1345, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 5, 10, 15], "range": [0, 15], "mirror": "ticks", "ticktext": ["0", "5", "10", "15"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.4475], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.4475], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 5.1345, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-2, 0, 2, 4, 6, 8, 10], "range": [-2, 10], "mirror": "ticks", "ticktext": ["-2", "0", "2", "4", "6", "8", "10"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "xaxis2": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 5.1345, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 2, 4, 6], "range": [0, 6], "mirror": "ticks", "ticktext": ["0", "2", "4", "6"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.5875, 0.905], "anchor": "y2"}, "scene2": {"domain": {"x": [0.5875, 0.905], "y": [0.11, 0.925]}}, "yaxis2": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 5.1345, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-4, -3, -2, -1, 0, 1, 2, 3, 4, 5], "range": [-4, 5], "mirror": "ticks", "ticktext": ["-4", "-3", "-2", "-1", "0", "1", "2", "3", "4", "5"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x2"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>Left Plot<\/b>", "x": 0.28875, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 9.9}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>Right Plot<\/b>", "x": 0.74625, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 9.9}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "paper", "yref": "paper", "align": "center", "xanchor": "center", "yanchor": "bottom", "text": "", "x": 0.5, "y": 0.95, "font": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 15.6, "family": "Arial, sans-serif"}, "textangle": 0}], "title": "<b>Left Plot<\/b>", "titlefont": {"color": "rgba(0,0,0,0)"}}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_853031117722 index=853031117722 %}


<!--------------------- EXAMPLE BREAK ------------------------->

