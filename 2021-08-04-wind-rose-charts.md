---
description: How to make Wind Rose and Polar Bar Charts plots in MATLAB<sup>&reg;</sup>
  with Plotly.
display_as: scientific
language: matlab
layout: base
name: Wind Rose and Polar Bar Charts
order: 13
page_type: u-guide
permalink: matlab/wind-rose-charts/
thumnail_github: wind-rose-charts.png
---

## Create Histogram Chart in Polar Coordinates

Create a vector of values between 0 and 2π. Create a histogram chart that shows the data sorted into six bins.

```{matlab}
theta = [0.1 1.1 5.4 3.4 2.3 4.5 3.2 3.4 5.6 2.3 2.1 3.5 0.6 6.1];
polarhistogram(theta,6)

fig2plotly(gcf, 'TreatAs', 'polarhistogram');
```
{% capture plot_346907707275 %}{% raw %}{"data": [{"type": "barpolar", "theta": [30, 90, 150, 210, 270, 330], "width": [60, 60, 60, 60, 60, 60.0000000000001], "r": [2, 1, 3, 4, 1, 3], "name": "theta", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}, "color": "rgb(0,113.985,188.955)"}, "opacity": 0.6, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><\/b>"}], "title": "<b><\/b>"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_346907707275 index=346907707275 %}





## Specify Number of Bins for Polar Histogram Chart

Create a histogram plot from 100,000 values between -π and π, and sort the data into 25 bins.

```{matlab}
theta = atan2(rand(100000,1)-0.5,2*(rand(100000,1)-0.5));
polarhistogram(theta,25);

fig2plotly(gcf, 'TreatAs', 'polarhistogram');
```
{% capture plot_281532728977 %}{% raw %}{"data": [{"type": "barpolar", "theta": [-172.8, -158.4, -144, -129.6, -115.2, -100.8, -86.4, -72, -57.6, -43.2, -28.8, -14.4, 1.24344978758018e-14, 14.4, 28.8, 43.2, 57.6, 72, 86.4, 100.8, 115.2, 129.6, 144, 158.4, 172.8], "width": [14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4], "r": [6278, 7193, 4666, 2713, 1924, 1667, 1534, 1660, 2331, 3533, 6435, 6756, 6429, 6801, 6405, 3453, 2208, 1742, 1618, 1616, 1895, 2732, 4724, 7278, 6409], "name": "theta", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}, "color": "rgb(0,113.985,188.955)"}, "opacity": 0.6, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><\/b>"}], "title": "<b><\/b>"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_281532728977 index=281532728977 %}




## Modify Appearance of Histogram Chart

Create a histogram chart in polar coordinates, and then change its appearance. Specify the bar colors by setting the `FaceColor` property to a character vector of a color name, such as `'red'`, or an RGB triplet. Specify the transparency by setting the `FaceAlpha` property to a value between 0 and 1.

```{matlab}
theta = atan2(rand(10000,1)-0.3,2*(rand(10000,1)-0.2));
polarhistogram(theta,25,'FaceColor','red','FaceAlpha',.3);

fig2plotly(gcf, 'TreatAs', 'polarhistogram');
```
{% capture plot_683416771652 %}{% raw %}{"data": [{"type": "barpolar", "theta": [-172.8, -158.4, -144, -129.6, -115.2, -100.8, -86.4, -72, -57.6, -43.2, -28.8, -14.4, 1.24344978758018e-14, 14.4, 28.8, 43.2, 57.6, 72, 86.4, 100.8, 115.2, 129.6, 144, 158.4, 172.8], "width": [14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4], "r": [112, 136, 124, 88, 64, 51, 59, 78, 76, 138, 246, 990, 1607, 1765, 1367, 694, 468, 339, 284, 327, 374, 252, 161, 113, 87], "name": "theta", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}, "color": "rgb(255,0,0)"}, "opacity": 0.3, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><\/b>"}], "title": "<b><\/b>"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_683416771652 index=683416771652 %}




## Modify Appearance of Histogram Chart After Creation

Create a histogram chart in polar coordinates. Assign the histogram object to the variable `h`.

```{matlab}
theta = atan2(rand(100000,1)-0.5,2*(rand(100000,1)-0.5));
h = polarhistogram(theta,25);

fig2plotly(gcf, 'TreatAs', 'polarhistogram');
```
{% capture plot_888762052493 %}{% raw %}{"data": [{"type": "barpolar", "theta": [-172.8, -158.4, -144, -129.6, -115.2, -100.8, -86.4, -72, -57.6, -43.2, -28.8, -14.4, 1.24344978758018e-14, 14.4, 28.8, 43.2, 57.6, 72, 86.4, 100.8, 115.2, 129.6, 144, 158.4, 172.8], "width": [14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4], "r": [6516, 7133, 4668, 2685, 1962, 1684, 1599, 1748, 2269, 3511, 6521, 6767, 6407, 6655, 6371, 3388, 2313, 1762, 1548, 1623, 1930, 2719, 4682, 7244, 6295], "name": "theta", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}, "color": "rgb(0,113.985,188.955)"}, "opacity": 0.6, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><\/b>"}], "title": "<b><\/b>"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_888762052493 index=888762052493 %}



Use `h` to access and modify properties of the histogram object after it is created. For example, show just the histogram outline by setting the `DisplayStyle` property of the histogram object.

```{matlab}
theta = atan2(rand(100000,1)-0.5,2*(rand(100000,1)-0.5));
h = polarhistogram(theta,25);

h.DisplayStyle = 'stairs';

fig2plotly(gcf, 'TreatAs', 'polarhistogram');
```
{% capture plot_447742695836 %}{% raw %}{"data": [{"type": "barpolar", "theta": [-172.8, -158.4, -144, -129.6, -115.2, -100.8, -86.4, -72, -57.6, -43.2, -28.8, -14.4, 1.24344978758018e-14, 14.4, 28.8, 43.2, 57.6, 72, 86.4, 100.8, 115.2, 129.6, 144, 158.4, 172.8], "width": [14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4], "r": [6406, 7029, 4649, 2651, 1934, 1650, 1580, 1730, 2235, 3474, 6569, 6735, 6290, 6701, 6669, 3486, 2187, 1707, 1589, 1664, 1933, 2756, 4635, 7190, 6551], "name": "theta", "marker": {"line": {"width": 0.5}, "color": "rgba(0,0,0,0)"}, "opacity": 0.6, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><\/b>"}], "title": "<b><\/b>"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_447742695836 index=447742695836 %}



