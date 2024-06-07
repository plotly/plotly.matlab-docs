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
{% capture plot_699889739578 %}{% raw %}{"data": [{"type": "barpolar", "theta": [30, 90, 150, 210, 270, 330], "width": [60, 60, 60, 60, 60, 60.0000000000001], "r": [2, 1, 3, 4, 1, 3], "name": "theta", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}, "color": "rgb(0,113.985,188.955)"}, "opacity": 0.6, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><\/b>"}], "title": "<b><\/b>"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_699889739578 index=699889739578 %}





## Specify Number of Bins for Polar Histogram Chart

Create a histogram plot from 100,000 values between -π and π, and sort the data into 25 bins.

```{matlab}
theta = atan2(rand(100000,1)-0.5,2*(rand(100000,1)-0.5));
polarhistogram(theta,25);

fig2plotly(gcf, 'TreatAs', 'polarhistogram');
```
{% capture plot_262312622834 %}{% raw %}{"data": [{"type": "barpolar", "theta": [-172.8, -158.4, -144, -129.6, -115.2, -100.8, -86.4, -72, -57.6, -43.2, -28.8, -14.4, 1.24344978758018e-14, 14.4, 28.8, 43.2, 57.6, 72, 86.4, 100.8, 115.2, 129.6, 144, 158.4, 172.8], "width": [14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4], "r": [6278, 7191, 4736, 2724, 1906, 1644, 1616, 1754, 2186, 3475, 6468, 6812, 6399, 6745, 6389, 3417, 2224, 1780, 1582, 1634, 1871, 2792, 4762, 7304, 6311], "name": "theta", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}, "color": "rgb(0,113.985,188.955)"}, "opacity": 0.6, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><\/b>"}], "title": "<b><\/b>"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_262312622834 index=262312622834 %}




## Modify Appearance of Histogram Chart

Create a histogram chart in polar coordinates, and then change its appearance. Specify the bar colors by setting the `FaceColor` property to a character vector of a color name, such as `'red'`, or an RGB triplet. Specify the transparency by setting the `FaceAlpha` property to a value between 0 and 1.

```{matlab}
theta = atan2(rand(10000,1)-0.3,2*(rand(10000,1)-0.2));
polarhistogram(theta,25,'FaceColor','red','FaceAlpha',.3);

fig2plotly(gcf, 'TreatAs', 'polarhistogram');
```
{% capture plot_620199355493 %}{% raw %}{"data": [{"type": "barpolar", "theta": [-172.8, -158.4, -144, -129.6, -115.2, -100.8, -86.4, -72, -57.6, -43.2, -28.8, -14.4, 1.24344978758018e-14, 14.4, 28.8, 43.2, 57.6, 72, 86.4, 100.8, 115.2, 129.6, 144, 158.4, 172.8], "width": [14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4], "r": [118, 109, 151, 92, 62, 58, 42, 58, 73, 126, 260, 1001, 1673, 1698, 1412, 667, 452, 347, 302, 304, 349, 256, 147, 138, 105], "name": "theta", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}, "color": "rgb(255,0,0)"}, "opacity": 0.3, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><\/b>"}], "title": "<b><\/b>"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_620199355493 index=620199355493 %}




## Modify Appearance of Histogram Chart After Creation

Create a histogram chart in polar coordinates. Assign the histogram object to the variable `h`.

```{matlab}
theta = atan2(rand(100000,1)-0.5,2*(rand(100000,1)-0.5));
h = polarhistogram(theta,25);

fig2plotly(gcf, 'TreatAs', 'polarhistogram');
```
{% capture plot_81233483654 %}{% raw %}{"data": [{"type": "barpolar", "theta": [-172.8, -158.4, -144, -129.6, -115.2, -100.8, -86.4, -72, -57.6, -43.2, -28.8, -14.4, 1.24344978758018e-14, 14.4, 28.8, 43.2, 57.6, 72, 86.4, 100.8, 115.2, 129.6, 144, 158.4, 172.8], "width": [14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4], "r": [6479, 7217, 4702, 2641, 1927, 1636, 1600, 1750, 2207, 3492, 6575, 6882, 6377, 6669, 6344, 3384, 2197, 1723, 1553, 1629, 1924, 2722, 4766, 7183, 6421], "name": "theta", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}, "color": "rgb(0,113.985,188.955)"}, "opacity": 0.6, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><\/b>"}], "title": "<b><\/b>"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_81233483654 index=81233483654 %}



Use `h` to access and modify properties of the histogram object after it is created. For example, show just the histogram outline by setting the `DisplayStyle` property of the histogram object.

```{matlab}
theta = atan2(rand(100000,1)-0.5,2*(rand(100000,1)-0.5));
h = polarhistogram(theta,25);

h.DisplayStyle = 'stairs';

fig2plotly(gcf, 'TreatAs', 'polarhistogram');
```
{% capture plot_56872735602 %}{% raw %}{"data": [{"type": "barpolar", "theta": [-172.8, -158.4, -144, -129.6, -115.2, -100.8, -86.4, -72, -57.6, -43.2, -28.8, -14.4, 1.24344978758018e-14, 14.4, 28.8, 43.2, 57.6, 72, 86.4, 100.8, 115.2, 129.6, 144, 158.4, 172.8], "width": [14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4], "r": [6467, 7033, 4614, 2621, 1932, 1683, 1631, 1743, 2294, 3397, 6591, 6683, 6317, 6700, 6667, 3439, 2223, 1723, 1580, 1681, 1925, 2705, 4610, 7149, 6592], "name": "theta", "marker": {"line": {"width": 0.5}, "color": "rgba(0,0,0,0)"}, "opacity": 0.6, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><\/b>"}], "title": "<b><\/b>"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_56872735602 index=56872735602 %}



