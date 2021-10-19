---
description: How to Style Plot Markers in MATLAB<sup>&reg;</sup> with Plotly.
name: Styling Markers
display_as: file_settings
order: 19
permalink: matlab/marker-style/
thumnail_github: thumbnail/marker-style.gif
layout: base
language: matlab
page_type: u-guide
---

## Modify Line Appearance

Plot the sine function over three different ranges using different line styles, colors, and markers.

```{matlab}
figure
t = 0:pi/20:2*pi;
plot(t,sin(t),'-.r*')
hold on
plot(t,sin(t-pi/2),'--mo')
plot(t,sin(t-pi),':bs')
hold off

fig2plotly(gcf)
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]  [1×1 struct]  [1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_517079431299 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [0, 0.15707963267949, 0.314159265358979, 0.471238898038469, 0.628318530717959, 0.785398163397448, 0.942477796076938, 1.09955742875643, 1.25663706143592, 1.41371669411541, 1.5707963267949, 1.72787595947439, 1.88495559215388, 2.04203522483337, 2.19911485751286, 2.35619449019234, 2.51327412287183, 2.67035375555132, 2.82743338823081, 2.9845130209103, 3.14159265358979, 3.29867228626928, 3.45575191894877, 3.61283155162826, 3.76991118430775, 3.92699081698724, 4.08407044966673, 4.24115008234622, 4.39822971502571, 4.5553093477052, 4.71238898038469, 4.86946861306418, 5.02654824574367, 5.18362787842316, 5.34070751110265, 5.49778714378214, 5.65486677646163, 5.81194640914112, 5.96902604182061, 6.1261056745001, 6.28318530717959], "y": [0, 0.156434465040231, 0.309016994374947, 0.453990499739547, 0.587785252292473, 0.707106781186547, 0.809016994374947, 0.891006524188368, 0.951056516295154, 0.987688340595138, 1, 0.987688340595138, 0.951056516295154, 0.891006524188368, 0.809016994374947, 0.707106781186548, 0.587785252292473, 0.453990499739547, 0.309016994374948, 0.156434465040231, 1.22464679914735e-16, -0.156434465040231, -0.309016994374947, -0.453990499739547, -0.587785252292473, -0.707106781186547, -0.809016994374947, -0.891006524188368, -0.951056516295154, -0.987688340595138, -1, -0.987688340595138, -0.951056516295154, -0.891006524188368, -0.809016994374948, -0.707106781186548, -0.587785252292473, -0.453990499739547, -0.309016994374948, -0.156434465040231, -2.44929359829471e-16], "name": "", "mode": "lines+markers", "line": {"color": "rgb(255,0,0)", "width": 0.5, "dash": "dashdot"}, "marker": {"size": 6, "symbol": "asterisk-open", "maxdisplayed": 42, "line": {"width": 0.5}, "color": "rgb(255,0,0)"}, "showlegend": false}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 1, 2, 3, 4, 5, 6, 7], "range": [0, 7], "mirror": "ticks", "ticktext": ["0", "1", "2", "3", "4", "5", "6", "7"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1], "range": [-1, 1], "mirror": "ticks", "ticktext": ["-1", "-0.8", "-0.6", "-0.4", "-0.2", "0", "0.2", "0.4", "0.6", "0.8", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_517079431299 index=517079431299 %}


<!--------------------- EXAMPLE BREAK ------------------------->

## Set Line Properties

Create a plot illustrating how to set line properties. 

```{matlab}
t = 0:pi/20:2*pi;
figure
plot(t,sin(2*t),'-mo',...
    'LineWidth',2,...
    'MarkerEdgeColor','k',...
    'MarkerFaceColor',[.49 1 .63],...
    'MarkerSize',10)

fig2plotly(gcf)
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_235017629409 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [0, 0.15707963267949, 0.314159265358979, 0.471238898038469, 0.628318530717959, 0.785398163397448, 0.942477796076938, 1.09955742875643, 1.25663706143592, 1.41371669411541, 1.5707963267949, 1.72787595947439, 1.88495559215388, 2.04203522483337, 2.19911485751286, 2.35619449019234, 2.51327412287183, 2.67035375555132, 2.82743338823081, 2.9845130209103, 3.14159265358979, 3.29867228626928, 3.45575191894877, 3.61283155162826, 3.76991118430775, 3.92699081698724, 4.08407044966673, 4.24115008234622, 4.39822971502571, 4.5553093477052, 4.71238898038469, 4.86946861306418, 5.02654824574367, 5.18362787842316, 5.34070751110265, 5.49778714378214, 5.65486677646163, 5.81194640914112, 5.96902604182061, 6.1261056745001, 6.28318530717959], "y": [0, 0.309016994374947, 0.587785252292473, 0.809016994374947, 0.951056516295154, 1, 0.951056516295154, 0.809016994374947, 0.587785252292473, 0.309016994374948, 1.22464679914735e-16, -0.309016994374947, -0.587785252292473, -0.809016994374947, -0.951056516295154, -1, -0.951056516295154, -0.809016994374948, -0.587785252292473, -0.309016994374948, -2.44929359829471e-16, 0.309016994374947, 0.587785252292473, 0.809016994374947, 0.951056516295154, 1, 0.951056516295154, 0.809016994374948, 0.587785252292473, 0.309016994374948, 3.67394039744206e-16, -0.309016994374947, -0.587785252292473, -0.809016994374947, -0.951056516295153, -1, -0.951056516295154, -0.809016994374948, -0.587785252292473, -0.309016994374948, -4.89858719658941e-16], "name": "", "mode": "lines+markers", "line": {"color": "rgb(255,0,255)", "width": 2, "dash": "solid"}, "marker": {"size": 10, "symbol": "circle", "maxdisplayed": 42, "line": {"width": 2, "color": "rgb(0,0,0)"}, "color": "rgb(124.95,255,160.65)"}, "showlegend": false}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 1, 2, 3, 4, 5, 6, 7], "range": [0, 7], "mirror": "ticks", "ticktext": ["0", "1", "2", "3", "4", "5", "6", "7"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1], "range": [-1, 1], "mirror": "ticks", "ticktext": ["-1", "-0.8", "-0.6", "-0.4", "-0.2", "0", "0.2", "0.4", "0.6", "0.8", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_235017629409 index=235017629409 %}


<!--------------------- EXAMPLE BREAK ------------------------->


## Marker Types and Colors


```{matlab}
x = 0:0.2:10;
y0 = besselj(0,x);
y1 = besselj(1,x);
y2 = besselj(2,x);
y3 = besselj(3,x);
y4 = besselj(4,x);
y5 = besselj(5,x);
y6 = besselj(6,x);

fig = figure;
plot(x, y0, 'r+', x, y1, 'go', x, y2, 'b*', x, y3, 'cx', ...
    x, y4, 'ms', x, y5, 'yd', x, y6, 'kv');

fig2plotly(gcf)
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_414114303385 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [0, 0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2, 3.4, 3.6, 3.8, 4, 4.2, 4.4, 4.6, 4.8, 5, 5.2, 5.4, 5.6, 5.8, 6, 6.2, 6.4, 6.6, 6.8, 7, 7.2, 7.4, 7.6, 7.8, 8, 8.2, 8.4, 8.6, 8.8, 9, 9.2, 9.4, 9.6, 9.8, 10], "y": [1, 0.990024972239576, 0.960398226659563, 0.912004863497211, 0.84628735275048, 0.765197686557967, 0.671132744264363, 0.566855120374289, 0.455402167639381, 0.339986411042558, 0.223890779141236, 0.110362266922174, 0.00250768329724376, -0.0968049543970384, -0.185036033364388, -0.260051954901934, -0.320188169657123, -0.364295596762001, -0.391768983700798, -0.402556410178564, -0.397149809863848, -0.376557054367568, -0.342256790003886, -0.296137816574141, -0.240425327291183, -0.177596771314338, -0.110290439790987, -0.0412101012449914, 0.0269708846851144, 0.0917025675748161, 0.150645257250997, 0.201747222948904, 0.243310604823407, 0.274043360624146, 0.293095603104273, 0.300079270519555, 0.295070691400958, 0.278596232657478, 0.251601833849976, 0.215407807746263, 0.171650807137554, 0.122215301784138, 0.069157261656985, 0.0146229912787413, -0.0392338031765422, -0.0903336111828762, -0.136748370764863, -0.176771572751508, -0.208978718368872, -0.232276027579368, -0.245935764451348], "name": "", "mode": "markers", "line": {}, "marker": {"size": 6, "symbol": "cross-thin-open", "maxdisplayed": 52, "line": {"width": 0.5}, "color": "rgb(255,0,0)"}, "showlegend": false}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 2, 4, 6, 8, 10], "range": [0, 10], "mirror": "ticks", "ticktext": ["0", "2", "4", "6", "8", "10"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-0.5, 0, 0.5, 1], "range": [-0.5, 1], "mirror": "ticks", "ticktext": ["-0.5", "0", "0.5", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_414114303385 index=414114303385 %}


<!--------------------- EXAMPLE BREAK ------------------------->

## Coolors, symbols and width


```{matlab}
x = 0:pi/10:2*pi;
y1 = sin(x);
y2 = sin(x-0.25);
y3 = sin(x-0.5);

fig = figure;
hold on

plot(x,y1,'Color',[50 204 10]/255,'LineWidth',3,'LineStyle','-.');
plot(x,y2,'Color',[21 24 100]/255,'LineWidth',3,'LineStyle','--');
plot(x,y3,'Color',[201 24 50]/255,'LineWidth',2,'LineStyle',':');

fig2plotly(gcf)
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]  [1×1 struct]  [1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_351731195977 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [0, 0.314159265358979, 0.628318530717959, 0.942477796076938, 1.25663706143592, 1.5707963267949, 1.88495559215388, 2.19911485751286, 2.51327412287183, 2.82743338823081, 3.14159265358979, 3.45575191894877, 3.76991118430775, 4.08407044966673, 4.39822971502571, 4.71238898038469, 5.02654824574367, 5.34070751110265, 5.65486677646163, 5.96902604182061, 6.28318530717959], "y": [0, 0.309016994374947, 0.587785252292473, 0.809016994374947, 0.951056516295154, 1, 0.951056516295154, 0.809016994374947, 0.587785252292473, 0.309016994374948, 1.22464679914735e-16, -0.309016994374947, -0.587785252292473, -0.809016994374947, -0.951056516295154, -1, -0.951056516295154, -0.809016994374948, -0.587785252292473, -0.309016994374948, -2.44929359829471e-16], "name": "", "mode": "lines", "line": {"color": "rgb(50,204,10)", "width": 3, "dash": "dashdot"}, "marker": {"size": 6, "line": {"width": 3}, "color": "rgb(50,204,10)"}, "showlegend": false}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 1, 2, 3, 4, 5, 6, 7], "range": [0, 7], "mirror": false, "ticktext": ["0", "1", "2", "3", "4", "5", "6", "7"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1], "range": [-1, 1], "mirror": false, "ticktext": ["-1", "-0.8", "-0.6", "-0.4", "-0.2", "0", "0.2", "0.4", "0.6", "0.8", "1"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_351731195977 index=351731195977 %}


<!--------------------- EXAMPLE BREAK ------------------------->
