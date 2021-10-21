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

Create a vector of values between 0 and 2ÿ. Create a histogram chart that shows the data sorted into six bins.

```{matlab}
theta = [0.1 1.1 5.4 3.4 2.3 4.5 3.2 3.4 5.6 2.3 2.1 3.5 0.6 6.1];
polarhistogram(theta,6)

fig2plotly(gcf, 'TreatAs', 'polarhistogram');
```
{% capture plot_724520306857 %}
{% raw %}{"data": [{"type": "barpolar", "theta": [30, 90, 150, 210, 270, 330], "width": [60, 60, 60, 60, 60, 60.0000000000001], "r": [2, 1, 3, 4, 1, 3], "name": "theta", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}, "color": "rgb(0,113.985,188.955)"}, "opacity": 0.6, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><\/b>"}], "title": "<b><\/b>"}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_724520306857 index=724520306857 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Number of Bins for Polar Histogram Chart

Create a histogram plot from 100,000 values between -ÿ and ÿ, and sort the data into 25 bins.

```{matlab}
theta = atan2(rand(100000,1)-0.5,2*(rand(100000,1)-0.5));
polarhistogram(theta,25);

fig2plotly(gcf, 'TreatAs', 'polarhistogram');
```
{% capture plot_69018379952 %}
{% raw %}{"data": [{"type": "barpolar", "theta": [-172.8, -158.4, -144, -129.6, -115.2, -100.8, -86.4, -72, -57.6, -43.2, -28.8, -14.4, 1.24344978758018e-14, 14.4, 28.8, 43.2, 57.6, 72, 86.4, 100.8, 115.2, 129.6, 144, 158.4, 172.8], "width": [14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4], "r": [6242, 7208, 4726, 2722, 1912, 1643, 1637, 1757, 2199, 3469, 6504, 6821, 6392, 6761, 6376, 3437, 2245, 1783, 1573, 1622, 1878, 2767, 4757, 7299, 6270], "name": "theta", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}, "color": "rgb(0,113.985,188.955)"}, "opacity": 0.6, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><\/b>"}], "title": "<b><\/b>"}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_69018379952 index=69018379952 %}


<!--------------------- EXAMPLE BREAK ------------------------->

## Modify Appearance of Histogram Chart

Create a histogram chart in polar coordinates, and then change its appearance. Specify the bar colors by setting the `FaceColor` property to a character vector of a color name, such as `'red'`, or an RGB triplet. Specify the transparency by setting the `FaceAlpha` property to a value between 0 and 1.

```{matlab}
theta = atan2(rand(100000,1)-0.5,2*(rand(100000,1)-0.5));
polarhistogram(theta,25,'FaceColor','red','FaceAlpha',.3);

fig2plotly(gcf, 'TreatAs', 'polarhistogram');
```
{% capture plot_31844429004 %}
{% raw %}{"data": [{"type": "barpolar", "theta": [-172.8, -158.4, -144, -129.6, -115.2, -100.8, -86.4, -72, -57.6, -43.2, -28.8, -14.4, 1.24344978758018e-14, 14.4, 28.8, 43.2, 57.6, 72, 86.4, 100.8, 115.2, 129.6, 144, 158.4, 172.8], "width": [14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4], "r": [6432, 7272, 4702, 2615, 1977, 1630, 1592, 1762, 2154, 3469, 6523, 6805, 6331, 6601, 6366, 3427, 2199, 1710, 1570, 1651, 1939, 2725, 4880, 7232, 6436], "name": "theta", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}, "color": "rgb(255,0,0)"}, "opacity": 0.3, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><\/b>"}], "title": "<b><\/b>"}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_31844429004 index=31844429004 %}


<!--------------------- EXAMPLE BREAK ------------------------->

## Modify Appearance of Histogram Chart After Creation

Create a histogram chart in polar coordinates. Assign the histogram object to the variable `h`.

```{matlab}
theta = atan2(rand(100000,1)-0.5,2*(rand(100000,1)-0.5));
h = polarhistogram(theta,25)

fig2plotly(gcf, 'TreatAs', 'polarhistogram');
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [100000×1 double]
           Values: [1×25 double]
          NumBins: 25
         BinEdges: [1×26 double]
         BinWidth: 0.251327412287183
        BinLimits: [-3.141592653589793 3.141592653589793]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>
```
{% capture plot_646947720185 %}
{% raw %}{"data": [{"type": "barpolar", "theta": [-172.8, -158.4, -144, -129.6, -115.2, -100.8, -86.4, -72, -57.6, -43.2, -28.8, -14.4, 1.24344978758018e-14, 14.4, 28.8, 43.2, 57.6, 72, 86.4, 100.8, 115.2, 129.6, 144, 158.4, 172.8], "width": [14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4], "r": [6441, 7118, 4620, 2603, 1929, 1730, 1594, 1730, 2317, 3353, 6550, 6717, 6287, 6755, 6643, 3467, 2230, 1703, 1577, 1703, 1898, 2678, 4678, 7144, 6535], "name": "theta", "marker": {"line": {"width": 0.5, "color": "rgb(0,0,0)"}, "color": "rgb(0,113.985,188.955)"}, "opacity": 0.6, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><\/b>"}], "title": "<b><\/b>"}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_646947720185 index=646947720185 %}



Use `h` to access and modify properties of the histogram object after it is created. For example, show just the histogram outline by setting the `DisplayStyle` property of the histogram object.

```{matlab}
theta = atan2(rand(100000,1)-0.5,2*(rand(100000,1)-0.5));
h = polarhistogram(theta,25)

h.DisplayStyle = 'stairs';

fig2plotly(gcf, 'TreatAs', 'polarhistogram');
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram" style="font-weight:bold">Histogram</a> with properties:

             Data: [100000×1 double]
           Values: [1×25 double]
          NumBins: 25
         BinEdges: [1×26 double]
         BinWidth: 0.251327412287183
        BinLimits: [-3.141592653589793 3.141592653589793]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0 0 0]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>
```
{% capture plot_345059200885 %}
{% raw %}{"data": [{"type": "barpolar", "theta": [-172.8, -158.4, -144, -129.6, -115.2, -100.8, -86.4, -72, -57.6, -43.2, -28.8, -14.4, 1.24344978758018e-14, 14.4, 28.8, 43.2, 57.6, 72, 86.4, 100.8, 115.2, 129.6, 144, 158.4, 172.8], "width": [14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4, 14.4], "r": [6380, 7100, 4643, 2711, 1945, 1666, 1622, 1757, 2234, 3338, 6379, 6763, 6326, 6724, 6509, 3491, 2247, 1834, 1584, 1707, 1930, 2770, 4756, 7194, 6390], "name": "theta", "marker": {"line": {"width": 0.5}, "color": "rgba(0,0,0,0)"}, "opacity": 0.6, "visible": true, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "barmode": "group", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><\/b>"}], "title": "<b><\/b>"}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_345059200885 index=345059200885 %}



<!--------------------- EXAMPLE BREAK ------------------------->

