---
description: How to make Wind Rose and Polar Bar Charts plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Wind Rose and Polar Bar Charts
display_as: scientific
order: 19
permalink: matlab/wind-rose-charts/
thumnail_github: wind-rose-charts.png
layout: base
language: matlab
page_type: u-guide
---

## Create Histogram Chart in Polar Coordinates

Create a vector of values between 0 and 2π. Create a histogram chart that shows the data sorted into six bins.

```{matlab}
theta = [0.1 1.1 5.4 3.4 2.3 4.5 3.2 3.4 5.6 2.3 2.1 3.5 0.6 6.1];
polarhistogram(theta,6)

fig2plotly(gcf, 'TreatAs', 'polarhistogram');
```
{% capture plot_297010289522 %}{% raw %}{"data": [{"type": "barpolar", "theta": [30, 90, 150, 210, 270, 330], "width": [60, 60, 60, 60, 60, 60.0000000000001], "r": [2, 1, 3, 4, 1, 3], "name": "theta", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}, "color": "rgb(0,113.985,188.955)"}, "opacity": 0.6, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><\/b>"}], "title": "<b><\/b>"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_297010289522 index=297010289522 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Number of Bins for Polar Histogram Chart

Create a histogram plot from 100,000 values between -π and π, and sort the data into 25 bins.

```{matlab}
theta = atan2(rand(100000,1)-0.5,2*(rand(100000,1)-0.5));
polarhistogram(theta,25);

fig2plotly(gcf, 'TreatAs', 'polarhistogram');
```
{% capture plot_141818913860 %}{% raw %}{"data": [{"type": "barpolar", "theta": [-172.8, -158.4, -144, -129.6, -115.2, -100.8, -86.4, -72, -57.6, -43.2, -28.8, -14.4, 1.24344978758018e-14, 14.4, 28.8, 43.2, 57.6, 72, 86.4, 100.8, 115.2, 129.6, 144, 158.4, 172.8], "width": [14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4], "r": [6245, 7208, 4727, 2721, 1911, 1643, 1637, 1756, 2199, 3469, 6505, 6821, 6393, 6759, 6378, 3436, 2246, 1783, 1573, 1622, 1878, 2768, 4756, 7298, 6268], "name": "theta", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}, "color": "rgb(0,113.985,188.955)"}, "opacity": 0.6, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><\/b>"}], "title": "<b><\/b>"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_141818913860 index=141818913860 %}


<!--------------------- EXAMPLE BREAK ------------------------->

## Modify Appearance of Histogram Chart

Create a histogram chart in polar coordinates, and then change its appearance. Specify the bar colors by setting the `FaceColor` property to a character vector of a color name, such as `'red'`, or an RGB triplet. Specify the transparency by setting the `FaceAlpha` property to a value between 0 and 1.

```{matlab}
theta = atan2(rand(100000,1)-0.5,2*(rand(100000,1)-0.5));
polarhistogram(theta,25,'FaceColor','red','FaceAlpha',.3);

fig2plotly(gcf, 'TreatAs', 'polarhistogram');
```
{% capture plot_396248786093 %}{% raw %}{"data": [{"type": "barpolar", "theta": [-172.8, -158.4, -144, -129.6, -115.2, -100.8, -86.4, -72, -57.6, -43.2, -28.8, -14.4, 1.24344978758018e-14, 14.4, 28.8, 43.2, 57.6, 72, 86.4, 100.8, 115.2, 129.6, 144, 158.4, 172.8], "width": [14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4], "r": [6431, 7272, 4703, 2615, 1977, 1630, 1592, 1762, 2153, 3466, 6523, 6806, 6329, 6600, 6366, 3427, 2200, 1710, 1570, 1651, 1939, 2726, 4880, 7233, 6439], "name": "theta", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}, "color": "rgb(255,0,0)"}, "opacity": 0.3, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><\/b>"}], "title": "<b><\/b>"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_396248786093 index=396248786093 %}


<!--------------------- EXAMPLE  BREAK ------------------------->

## Modify Appearance of Histogram Chart After Creation

Create a histogram chart in polar coordinates. Assign the histogram object to the variable `h`.

```{matlab}
theta = atan2(rand(100000,1)-0.5,2*(rand(100000,1)-0.5));
h = polarhistogram(theta,25);

fig2plotly(gcf, 'TreatAs', 'polarhistogram');
```
{% capture plot_111755833 %}{% raw %}{"data": [{"type": "barpolar", "theta": [-172.8, -158.4, -144, -129.6, -115.2, -100.8, -86.4, -72, -57.6, -43.2, -28.8, -14.4, 1.24344978758018e-14, 14.4, 28.8, 43.2, 57.6, 72, 86.4, 100.8, 115.2, 129.6, 144, 158.4, 172.8], "width": [14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4], "r": [6442, 7119, 4620, 2603, 1929, 1731, 1593, 1730, 2317, 3352, 6549, 6716, 6287, 6759, 6644, 3467, 2230, 1701, 1576, 1703, 1897, 2678, 4678, 7145, 6534], "name": "theta", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}, "color": "rgb(0,113.985,188.955)"}, "opacity": 0.6, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><\/b>"}], "title": "<b><\/b>"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_111755833 index=111755833 %}



Use `h` to access and modify properties of the histogram object after it is created. For example, show just the histogram outline by setting the `DisplayStyle` property of the histogram object.

```{matlab}
theta = atan2(rand(100000,1)-0.5,2*(rand(100000,1)-0.5));
h = polarhistogram(theta,25);

h.DisplayStyle = 'stairs';

fig2plotly(gcf, 'TreatAs', 'polarhistogram');
```
{% capture plot_771898375248 %}{% raw %}{"data": [{"type": "barpolar", "theta": [-172.8, -158.4, -144, -129.6, -115.2, -100.8, -86.4, -72, -57.6, -43.2, -28.8, -14.4, 1.24344978758018e-14, 14.4, 28.8, 43.2, 57.6, 72, 86.4, 100.8, 115.2, 129.6, 144, 158.4, 172.8], "width": [14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4], "r": [6381, 7101, 4642, 2708, 1945, 1666, 1621, 1756, 2234, 3336, 6379, 6763, 6327, 6725, 6509, 3491, 2247, 1835, 1584, 1707, 1929, 2771, 4757, 7196, 6390], "name": "theta", "marker": {"line": {"width": 0.5}, "color": "rgba(0,0,0,0)"}, "opacity": 0.6, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><\/b>"}], "title": "<b><\/b>"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_771898375248 index=771898375248 %}



<!--------------------- EXAMPLE BREAK ------------------------->

