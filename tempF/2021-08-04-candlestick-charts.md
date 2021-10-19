---
description: How to make Candlestick Plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Candlestick Plots
display_as: statistical
order: 2
permalink: matlab/candlestick-charts/
thumnail_github: thumbnail/candlestick.jpg
layout: base
language: matlab
page_type: u-guide
---

## Generate a Candlestick Chart for a Data Series for a Stock

Load the file `SimulatedStock.mat`, which provides a timetable (`TMW`) for financial data for TMW stock. This is a candlestick chart with blue candles, for the most recent 21 days in SimulatedStock`.mat`.

```{matlab}
load SimulatedStock.mat;
candle(TMW(end-20:end,:),'b');
title('Candlestick chart for TMW')

fig2plotly(gcf)
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {1×22 cell}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_356503617127 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": , "y": [151.53, 146.99, null, 149.04, 145.33, null, 150.85, 146.96, null, 151.15, 146.62, null, 154.98, 149.09, null, 154.4, 146.97, null, 154.02, 148.23, null, 156.06, 152.46, null, 157.21, 153.74, null, 155.83, 153.46, null, 157.32, 152.5, null, 160.76, 155.92, null, 157.14, 153.45, null, 156.09, 152.92, null, 158.26, 153.33, null, 160.89, 153.1, null, 162.5, 159.02, null, 162.85, 157.56, null, 161.12, 156.63, null, 159.62, 156.9, null, 159.66, 154.68, null], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": true, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": , "mirror": "ticks", "ticktext": ["Jul 27", "Aug 03", "Aug 10", "Aug 17", "Aug 24"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [144, 146, 148, 150, 152, 154, 156, 158, 160, 162, 164], "range": [144, 164], "mirror": "ticks", "ticktext": ["144", "146", "148", "150", "152", "154", "156", "158", "160", "162", "164"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>Candlestick chart for TMW<\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_356503617127 index=356503617127 %}



This example shows how to create a candle plot for Disney stock for the dates March 31, 1998 through April 30, 1998.




```{matlab}
load disney.mat
candle(dis('3/31/98::4/30/98'))
title('Disney 3/31/98 to 4/30/98')

fig2plotly(gcf)
```
```
[Warning: FINTS is not recommended. Use TIMETABLE instead. For more information, see <a href="matlab:web(fullfile(docroot, 'finance/convert-from-fints-to-timetables.html'))">Convert Financial Time Series Objects (fints) to Timetables</a>.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('fints/candle', 'C:\Program Files\MATLAB\R2021a\toolbox\finance\ftseries\@fints\candle.m', 52)" style="font-weight:bold">fints/candle</a> (<a href="matlab: opentoline('C:\Program Files\MATLAB\R2021a\toolbox\finance\ftseries\@fints\candle.m',52,0)">line 52</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('temp', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\temp.m', 2)" style="font-weight:bold">temp</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\temp.m',2,0)">line 2</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('evalMD>callFile', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m', 117)" style="font-weight:bold">evalMD>callFile</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m',117,0)">line 117</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('evalMD>formCBs', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m', 88)" style="font-weight:bold">evalMD>formCBs</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m',88,0)">line 88</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('evalMD', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m', 21)" style="font-weight:bold">evalMD</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m',21,0)">line 21</a>)] 
[Warning: Low prices must be less than or equal to the corresponding opening prices.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('internal.finance.ftseriesInputParser>validateData', 'C:\Program Files\MATLAB\R2021a\toolbox\finance\finance\+internal\+finance\ftseriesInputParser.m', 293)" style="font-weight:bold">internal.finance.ftseriesInputParser>validateData</a> (<a href="matlab: opentoline('C:\Program Files\MATLAB\R2021a\toolbox\finance\finance\+internal\+finance\ftseriesInputParser.m',293,0)">line 293</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('internal.finance.ftseriesInputParser', 'C:\Program Files\MATLAB\R2021a\toolbox\finance\finance\+internal\+finance\ftseriesInputParser.m', 34)" style="font-weight:bold">internal.finance.ftseriesInputParser</a> (<a href="matlab: opentoline('C:\Program Files\MATLAB\R2021a\toolbox\finance\finance\+internal\+finance\ftseriesInputParser.m',34,0)">line 34</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('candle', 'C:\Program Files\MATLAB\R2021a\toolbox\finance\finance\candle.m', 50)" style="font-weight:bold">candle</a> (<a href="matlab: opentoline('C:\Program Files\MATLAB\R2021a\toolbox\finance\finance\candle.m',50,0)">line 50</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('fints/candle', 'C:\Program Files\MATLAB\R2021a\toolbox\finance\ftseries\@fints\candle.m', 136)" style="font-weight:bold">fints/candle</a> (<a href="matlab: opentoline('C:\Program Files\MATLAB\R2021a\toolbox\finance\ftseries\@fints\candle.m',136,0)">line 136</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('temp', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\temp.m', 2)" style="font-weight:bold">temp</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\temp.m',2,0)">line 2</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('evalMD>callFile', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m', 117)" style="font-weight:bold">evalMD>callFile</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m',117,0)">line 117</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('evalMD>formCBs', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m', 88)" style="font-weight:bold">evalMD>formCBs</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m',88,0)">line 88</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('evalMD', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m', 21)" style="font-weight:bold">evalMD</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m',21,0)">line 21</a>)] 

pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {1×24 cell}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_546401892992 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [729845, 729845, 729845, 729846, 729846, 729846, 729847, 729847, 729847, 729848, 729848, 729848, 729851, 729851, 729851, 729852, 729852, 729852, 729853, 729853, 729853, 729854, 729854, 729854, 729855, 729855, 729855, 729858, 729858, 729858, 729859, 729859, 729859, 729860, 729860, 729860, 729861, 729861, 729861, 729862, 729862, 729862, 729865, 729865, 729865, 729866, 729866, 729866, 729867, 729867, 729867, 729868, 729868, 729868, 729869, 729869, 729869, 729872, 729872, 729872, 729873, 729873, 729873, 729874, 729874, 729874, 729875, 729875, 729875], "y": [35.833, 35.167, null, 35.667, 34.979, null, 36.313, 35.146, null, 36.979, 36.042, null, 37.063, 36.083, null, 36.146, 35.688, null, 36, 35.229, null, 36.479, 35.5, null, null, null, null, 36.792, 36.313, null, 37.75, 37.167, null, 38.271, 37.5, null, 37.813, 37.313, null, 37.813, 37.208, null, 38.625, 37.813, null, 38.979, 38.167, null, 40.667, 38.563, null, 42.542, 41.146, null, 41.229, 39.938, null, 40.479, 39.75, null, 41.333, 40.833, null, 41.5, 41, null, 41.875, 41.354, null], "name": "", "mode": "lines", "line": {"color": "rgb(0,0,255)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,0,255)"}, "showlegend": false}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [729845, 729855, 729865, 729875], "range": [729845, 729875], "mirror": "ticks", "ticktext": ["31-Mar-1998", "10-Apr-1998", "20-Apr-1998", "30-Apr-1998"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [34, 35, 36, 37, 38, 39, 40, 41, 42, 43], "range": [34, 43], "mirror": "ticks", "ticktext": ["34", "35", "36", "37", "38", "39", "40", "41", "42", "43"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>Disney 3\/31\/98 to 4\/30\/98<\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_546401892992 index=546401892992 %}


<!--------------------- EXAMPLE BREAK ------------------------->