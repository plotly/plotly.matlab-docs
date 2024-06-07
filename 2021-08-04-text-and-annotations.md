---
description: How to make Text and Annotations plots in MATLAB<sup>&reg;</sup> with
  Plotly.
display_as: file_settings
language: matlab
layout: base
name: Text and Annotations
order: 11
page_type: u-guide
permalink: matlab/text-and-annotations/
thumnail_github: text-and-annotations.png
---

## Adding Text to Plots with the <code>text</code> Function


```{matlab}
x = -pi:pi/10:pi;
y = sin(x);
figure('Name', 'Sample graph'), plot(x, y, '--rs');

for i=8:size(x,2)-8
text(x(i), y(i), 'Text');
end

fig2plotly(gcf);
```
{% capture plot_721758033391 %}{% raw %}{"data": [{"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines+markers", "x": [-3.14159265358979, -2.82743338823081, -2.51327412287183, -2.19911485751286, -1.88495559215388, -1.5707963267949, -1.25663706143592, -0.942477796076938, -0.628318530717959, -0.314159265358979, 0, 0.314159265358979, 0.628318530717959, 0.942477796076938, 1.25663706143592, 1.5707963267949, 1.88495559215388, 2.19911485751286, 2.51327412287183, 2.82743338823081, 3.14159265358979], "y": [-1.22464679914735e-16, -0.309016994374948, -0.587785252292473, -0.809016994374947, -0.951056516295154, -1, -0.951056516295154, -0.809016994374947, -0.587785252292473, -0.309016994374947, 0, 0.309016994374947, 0.587785252292473, 0.809016994374947, 0.951056516295154, 1, 0.951056516295154, 0.809016994374947, 0.587785252292473, 0.309016994374948, 1.22464679914735e-16], "line": {"color": "rgb(255,0,0)", "width": 0.5, "dash": "dash"}, "marker": {"size": 3.6, "symbol": "square", "maxdisplayed": 22, "line": {"width": 0.5, "color": "rgb(255,0,0)"}, "color": "rgba(0,0,0,0)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-4, -3, -2, -1, 0, 1, 2, 3, 4], "range": [-4, 4], "mirror": "ticks", "ticktext": ["-4", "-3", "-2", "-1", "0", "1", "2", "3", "4"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1], "range": [-1, 1], "mirror": "ticks", "ticktext": ["-1", "-0.8", "-0.6", "-0.4", "-0.2", "0", "0.2", "0.4", "0.6", "0.8", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": "Text", "x": 0.628318530717959, "y": 0.587785252292473, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": "Text", "x": 0.314159265358979, "y": 0.309016994374947, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": "Text", "x": 0, "y": 0, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": "Text", "x": -0.314159265358979, "y": -0.309016994374947, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": "Text", "x": -0.628318530717959, "y": -0.587785252292473, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": "Text", "x": -0.942477796076938, "y": -0.809016994374947, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_721758033391 index=721758033391 %}


Similarly, here is an example for line and a scatter plot:

```{matlab}
trace1 = struct(...
  'x', [0, 1, 2], ...
  'y', [1, 1, 1], ...
  'mode', 'lines+markers+text', ...
  'name', 'Lines, Markers and Text', ...
  'text', { {'Text A', 'Text B', 'Text C'} }, ...
  'textposition', 'top', ...
  'type', 'scatter');

trace2 = struct(...
  'x', [0, 1, 2], ...
  'y', [2, 2, 2], ...
  'mode', 'markers+text', ...
  'name', 'Markers and Text', ...
  'text', { {'Text D', 'Text E', 'Text F'} }, ...
  'textposition', 'bottom', ...
  'type', 'scatter');

trace3 = struct(...
  'x', [0, 1, 2], ...
  'y', [3, 3, 3], ...
  'mode', 'lines+text', ...
  'name', 'Lines and Text', ...
  'text', { {'Text G', 'Text H', 'Text I'} }, ...
  'textposition', 'bottom', ...
  'type', 'scatter');

data = {trace1, trace2, trace3};

layout = struct('showlegend', false);

plotly(data, struct('layout', layout));
```
{% capture plot_473485992965 %}{% raw %}{"data": [{"x": [0, 1, 2], "y": [1, 1, 1], "mode": "lines+markers+text", "name": "Lines, Markers and Text", "text": ["Text A", "Text B", "Text C"], "textposition": "top", "type": "scatter"}, {"x": [0, 1, 2], "y": [2, 2, 2], "mode": "markers+text", "name": "Markers and Text", "text": ["Text D", "Text E", "Text F"], "textposition": "bottom", "type": "scatter"}, {"x": [0, 1, 2], "y": [3, 3, 3], "mode": "lines+text", "name": "Lines and Text", "text": ["Text G", "Text H", "Text I"], "textposition": "bottom", "type": "scatter"}], "layout": {"showlegend": false, "width": 840, "height": 630}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_473485992965 index=473485992965 %}



```{matlab}
x = 1:10; y = 1:10; 
fig = figure;
hold on
scatter(x,y);
a = [1:10]'; b = num2str(a); c = cellstr(b);
dx = 0.1; dy = 0.1; % displacement so the text does not overlay the data points
text(x+dx, y+dy, c);

plot([1 1],[2 3])
text(1.2,2.2,'A Line');
xlim([-1 5])
ylim([-1 5])
hold off

fig2plotly(fig);
```
{% capture plot_152721200438 %}{% raw %}{"data": [{"type": "scatter", "xaxis": "x1", "yaxis": "y1", "mode": "markers", "visible": true, "name": "", "x": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "y": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "marker": {"sizeref": 1, "sizemode": "area", "size": [36, 36, 36, 36, 36, 36, 36, 36, 36, 36], "line": {"width": 0.75, "color": "rgb(0.000000,113.985000,188.955000)"}, "symbol": "circle", "color": "rgba(0,0,0,0)", "opacity": 1}}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [1, 1], "y": [2, 3], "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-1, 0, 1, 2, 3, 4, 5], "range": [-1, 5], "mirror": false, "ticktext": ["-1", "0", "1", "2", "3", "4", "5"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-1, 0, 1, 2, 3, 4, 5], "range": [-1, 5], "mirror": false, "ticktext": ["-1", "0", "1", "2", "3", "4", "5"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": "A Line", "x": 1.2, "y": 2.2, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": "10", "x": 10.1, "y": 10.1, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": " 9", "x": 9.1, "y": 9.1, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": " 8", "x": 8.1, "y": 8.1, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": " 7", "x": 7.1, "y": 7.1, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": " 6", "x": 6.1, "y": 6.1, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": " 5", "x": 5.1, "y": 5.1, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": " 4", "x": 4.1, "y": 4.1, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": " 3", "x": 3.1, "y": 3.1, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": " 2", "x": 2.1, "y": 2.1, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": " 1", "x": 1.1, "y": 1.1, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_152721200438 index=152721200438 %}




## Enable Hover


```{matlab}
x = 1:10:100;
fig = figure;
plot(x, (x+1).^2, 'bo','markers',14)
title('hover over the markers to see the coordinates');
response = fig2plotly(fig, 'strip',false);

data = cell2struct(data,'data',1);
data.mode = 'markers+text'; 

plotly(data, response.layout);
```
<pre class="code-output">
"To be inmplemented soon"
</pre>


Similarly, here is an example for line and a scatter plot:

```{matlab}
data = {...
  struct(...
    'x', [0, 1, 2], ...
    'y', [1, 3, 2], ...
    'mode', 'markers', ...
    'text', { {'Text A', 'Text B', 'Text C'} }, ...
    'type', 'scatter')...
};

layout = struct('title', 'Hover over the points to see the text');

plotly(data, struct('layout', layout));
```
{% capture plot_341124607049 %}{% raw %}{"data": [{"x": [0, 1, 2], "y": [1, 3, 2], "mode": "markers", "text": ["Text A", "Text B", "Text C"], "type": "scatter"}], "layout": {"title": "Hover over the points to see the text", "width": 840, "height": 630}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_341124607049 index=341124607049 %}




## Styling and Coloring Annotations


```{matlab}
trace1 = struct(...
  'x', [0, 1, 2, 3, 4, 5, 6, 7, 8], ...
  'y', [0, 1, 3, 2, 4, 3, 4, 6, 5], ...
  'type', 'scatter');

trace2 = struct(...
  'x', [0, 1, 2, 3, 4, 5, 6, 7, 8], ...
  'y', [0, 4, 5, 1, 2, 2, 3, 4, 2], ...
  'type', 'scatter');

data = {trace1, trace2};

layout = struct(...
    'showlegend', false, ...
    'annotations', { {...
      struct(...
        'x', 2, ...
        'y', 5, ...
        'xref', 'x', ...
        'yref', 'y', ...
        'text', 'max=5', ...
        'showarrow', true, ...
        'font', struct(...
          'family', 'Courier New, monospace', ...
          'size', 16, ...
          'color', '#ffffff'), ...
        'align', 'center', ...
        'arrowhead', 2, ...
        'arrowsize', 1, ...
        'arrowwidth', 2, ...
        'arrowcolor', '#636363', ...
        'ax', 20, ...
        'ay', -30, ...
        'bordercolor', '#c7c7c7', ...
        'borderwidth', 2, ...
        'borderpad', 4, ...
        'bgcolor', '#ff7f0e', ...
        'opacity', 0.8)...
    } });

plotly(data, struct('layout', layout));
```
{% capture plot_607389213768 %}{% raw %}{"data": [{"x": [0, 1, 2, 3, 4, 5, 6, 7, 8], "y": [0, 1, 3, 2, 4, 3, 4, 6, 5], "type": "scatter"}, {"x": [0, 1, 2, 3, 4, 5, 6, 7, 8], "y": [0, 4, 5, 1, 2, 2, 3, 4, 2], "type": "scatter"}], "layout": {"showlegend": false, "annotations": [{"x": 2, "y": 5, "xref": "x", "yref": "y", "text": "max=5", "showarrow": true, "font": {"family": "Courier New, monospace", "size": 16, "color": "#ffffff"}, "align": "center", "arrowhead": 2, "arrowsize": 1, "arrowwidth": 2, "arrowcolor": "#636363", "ax": 20, "ay": -30, "bordercolor": "#c7c7c7", "borderwidth": 2, "borderpad": 4, "bgcolor": "#ff7f0e", "opacity": 0.8}], "width": 840, "height": 630}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_607389213768 index=607389213768 %}



Here is an example with custom text size, plot and text color:

```{matlab}
trace1 = struct(...
  'x', [0, 1, 2], ...
  'y', [1, 1, 1], ...
  'mode', 'lines+markers+text', ...
  'name', 'Lines, Markers and Text', ...
  'text', { {'Text A', 'Text B', 'Text C'} }, ...
  'textposition', 'top right', ...
  'textfont', struct(...
    'family', 'sans serif', ...
    'size', 18, ...
    'color', '#1f77b4'), ...
  'type', 'scatter');

trace2 = struct(...
  'x', [0, 1, 2], ...
  'y', [2, 2, 2], ...
  'mode', 'lines+markers+text', ...
  'name', 'Lines and Text', ...
  'text', { {'Text G', 'Text H', 'Text I'} }, ...
  'textposition', 'bottom', ...
  'textfont', struct(...
    'family', 'sans serif', ...
    'size', 18, ...
    'color', '#ff7f0e'), ...
  'type', 'scatter');

data = {trace1, trace2};

layout = struct('showlegend', false);

plotly(data, struct('layout', layout));
```
{% capture plot_191745255462 %}{% raw %}{"data": [{"x": [0, 1, 2], "y": [1, 1, 1], "mode": "lines+markers+text", "name": "Lines, Markers and Text", "text": ["Text A", "Text B", "Text C"], "textposition": "top right", "textfont": {"family": "sans serif", "size": 18, "color": "#1f77b4"}, "type": "scatter"}, {"x": [0, 1, 2], "y": [2, 2, 2], "mode": "lines+markers+text", "name": "Lines and Text", "text": ["Text G", "Text H", "Text I"], "textposition": "bottom", "textfont": {"family": "sans serif", "size": 18, "color": "#ff7f0e"}, "type": "scatter"}], "layout": {"showlegend": false, "width": 840, "height": 630}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_191745255462 index=191745255462 %}





## Single Annotation


```{matlab}
trace1 = struct(...
  'x', [0, 1, 2, 3, 4, 5, 6, 7, 8], ...
  'y', [0, 1, 3, 2, 4, 3, 4, 6, 5], ...
  'type', 'scatter');

trace2 = struct(...
  'x', [0, 1, 2, 3, 4, 5, 6, 7, 8], ...
  'y', [0, 4, 5, 1, 2, 2, 3, 4, 2], ...
  'type', 'scatter');

data = {trace1, trace2};

layout = struct(...
    'showlegend', false, ...
    'annotations', { {...
      struct(...
        'x', 2, ...
        'y', 5, ...
        'xref', 'x', ...
        'yref', 'y', ...
        'text', 'Annotation Text', ...
        'showarrow', true, ...
        'arrowhead', 7, ...
        'ax', 0, ...
        'ay', -40)...
    } });

plotly(data, struct('layout', layout));
```
{% capture plot_738426839977 %}{% raw %}{"data": [{"x": [0, 1, 2, 3, 4, 5, 6, 7, 8], "y": [0, 1, 3, 2, 4, 3, 4, 6, 5], "type": "scatter"}, {"x": [0, 1, 2, 3, 4, 5, 6, 7, 8], "y": [0, 4, 5, 1, 2, 2, 3, 4, 2], "type": "scatter"}], "layout": {"showlegend": false, "annotations": [{"x": 2, "y": 5, "xref": "x", "yref": "y", "text": "Annotation Text", "showarrow": true, "arrowhead": 7, "ax": 0, "ay": -40}], "width": 840, "height": 630}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_738426839977 index=738426839977 %}





## Multiple Annotations


```{matlab}
trace1 = struct(...
  'x', [0, 1, 2, 3, 4, 5, 6, 7, 8], ...
  'y', [0, 1, 3, 2, 4, 3, 4, 6, 5], ...
  'type', 'scatter');

trace2 = struct(...
  'x', [0, 1, 2, 3, 4, 5, 6, 7, 8], ...
  'y', [0, 4, 5, 1, 2, 2, 3, 4, 2], ...
  'type', 'scatter');

data = {trace1, trace2};

layout = struct(...
    'showlegend', false, ...
    'annotations', { {...
      struct(...
        'x', 2, ...
        'y', 5, ...
        'xref', 'x', ...
        'yref', 'y', ...
        'text', 'Annotation Text', ...
        'showarrow', true, ...
        'arrowhead', 7, ...
        'ax', 0, ...
        'ay', -40), ...
      struct(...
        'x', 4, ...
        'y', 4, ...
        'xref', 'x', ...
        'yref', 'y', ...
        'text', 'Annotation Text 2', ...
        'showarrow', true, ...
        'arrowhead', 7, ...
        'ax', 0, ...
        'ay', -40)...
    } });

plotly(data, struct('layout', layout));
```
{% capture plot_242849598318 %}{% raw %}{"data": [{"x": [0, 1, 2, 3, 4, 5, 6, 7, 8], "y": [0, 1, 3, 2, 4, 3, 4, 6, 5], "type": "scatter"}, {"x": [0, 1, 2, 3, 4, 5, 6, 7, 8], "y": [0, 4, 5, 1, 2, 2, 3, 4, 2], "type": "scatter"}], "layout": {"showlegend": false, "annotations": [{"x": 2, "y": 5, "xref": "x", "yref": "y", "text": "Annotation Text", "showarrow": true, "arrowhead": 7, "ax": 0, "ay": -40}, {"x": 4, "y": 4, "xref": "x", "yref": "y", "text": "Annotation Text 2", "showarrow": true, "arrowhead": 7, "ax": 0, "ay": -40}], "width": 840, "height": 630}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_242849598318 index=242849598318 %}

