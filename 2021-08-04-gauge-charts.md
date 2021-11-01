---
description: How to make Gauge Plots in MATLAB<sup>&reg;</sup> with Plotly.
display_as: financial
language: matlab
layout: base
name: Gauge Plots
order: 6
page_type: u-guide
permalink: matlab/gauge-charts/
published: false
thumnail_github: gauge-charts.png
---

## Create Circular Gauge

```{matlab}
fig = uifigure;
cg = uigauge(fig);

fig2plotly(gcf);
```
{% capture plot_121589786920 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_121589786920 index=121589786920 %}




## Create Linear Gauge

```{matlab}
fig = uifigure;
lg  = uigauge(fig,'linear');

fig2plotly(gcf);
```
{% capture plot_459988309177 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_459988309177 index=459988309177 %}




## Create Linear Gauge in Panel

Specify a panel as the parent container for a linear gauge.

```{matlab}
fig = uifigure;
pnl = uipanel(fig);
lg = uigauge(pnl,'linear');

fig2plotly(gcf);
```
{% capture plot_394170898879 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_394170898879 index=394170898879 %}





## Set and Access Gauge Property Values

Create a circular gauge, and set the `ScaleDirection` property to
            specify that the needle moves counterclockwise.

```{matlab}
fig = uifigure;
cg = uigauge(fig,'ScaleDirection','counterclockwise');
```

Change the number of major ticks, specify matching tick labels, and remove minor ticks.

```{matlab}
fig = uifigure;
cg = uigauge(fig,'ScaleDirection','counterclockwise');

cg.MajorTicks = [0:10:100];
cg.MajorTickLabels = {'0','10','20','30','40','50','60','70','80','90','100'};
cg.MinorTicks = [];

fig2plotly(gcf);
```
{% capture plot_602817444240 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_602817444240 index=602817444240 %}





## Specify Scale Colors and Color Limits

```{matlab}
fig = uifigure;
cg = uigauge(fig,'ScaleColors',{'yellow','red'},...
                 'ScaleColorLimits', [60 80; 80 100]);

fig2plotly(gcf);
```
{% capture plot_938989645550 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest"}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_938989645550 index=938989645550 %}



