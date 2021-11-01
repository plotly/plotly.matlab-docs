---
description: How to send data to charts in MATLAB<sup>&reg;</sup>. Examples of overwriting charts with new data, extending traces, and adding new traces.
name: Sending Data to Chart Studio Graphs
display_as: chart_studio
order: 1
permalink: matlab/sending-data-to-charts/
thumnail_github: sending-data-to-charts.png
layout: base
language: matlab
page_type: u-guide
---


## Overwrite chart data with new data


<pre>
plotly([1, 2], [1, 2], struct('filename', 'name-of-my-plotly-file'));
</pre>

<img src="http://i.imgur.com/VuobuN3.gif">




## Add data to an existing trace


<pre>
plotly([1, 2], [1, 2], struct('filename', 'name-of-my-plotly-file', <b>'fileopt', 'extend'</b>));
</pre>

<img src="http://i.imgur.com/2LhVSX6.gif">



## Add new traces to a chart


<pre>
plotly([1, 2], [1, 2], struct('filename', 'name-of-my-plotly-file', <b>'fileopt', 'append'</b>));
</pre>

<img src="http://i.imgur.com/RzrURdn.gif">


