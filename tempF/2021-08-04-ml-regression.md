---
description: How to make ML Regression plots in MATLAB<sup>&reg;</sup> with Plotly.
name: ML Regression
display_as: ai_ml
order: 1
permalink: matlab/ml-regression/
thumnail_github: ml-regression.png
layout: base
language: matlab
page_type: u-guide
---


## Simple Linear Regression

This example shows how to perform simple linear regression using the accidents dataset. The example also shows you how to calculate the coefficient of determination R<sup>2</sup> to evaluate the regressions. The accidents dataset contains data for fatal traffic accidents in U.S. states.

Linear regression models the relation between a dependent, or response, variable y and one or more independent, or predictor, variables x<sub>1</sub>,...,x<sub>n</sub>. Simple linear regression considers only one independent variable using the relation

<code>y=β<sub>0</sub>+β<sub>1</sub>x+ϵ,</code>

where β<sub>0</sub> is the y-intercept, β<sub>1</sub> is the slope (or regression coefficient), and ϵ is the error term. This can be simplified to `Y=XB`

From the dataset accidents, load accident data in y and state population data in x. Find the linear regression relation y=β<sub>1</sub>x between the accidents in a state and the population of a state using the \ operator. The \ operator performs a least-squares regression.

```{matlab}
load accidents
x = hwydata(:,14); %Population of states
y = hwydata(:,4); %Accidents per state
format long
b1 = x\y
```
```
b1 =

     1.372716735564871e-04
```


b1 is the slope or regression coefficient. The linear relation is y=β<sub>1</sub>x=0.0001372x.

Calculate the accidents per state yCalc from x using the relation. Visualize the regression by plotting the actual values y and the calculated values yCalc.

```{matlab}
load accidents
x = hwydata(:,14); %Population of states
y = hwydata(:,4); %Accidents per state
format long
b1 = x\y

yCalc1 = b1*x;
scatter(x,y)
hold on
plot(x,yCalc1)
xlabel('Population of state')
ylabel('Fatal traffic accidents per state')
title('Linear Regression Relation Between Accidents & Population')
grid on

fig2plotly(gcf);
```
```
b1 =

     1.372716735564871e-04
```
{% capture plot_413928678447 %}{% raw %}{"data": [{"type": "scatter", "xaxis": "x1", "yaxis": "y1", "mode": "markers", "visible": true, "name": "", "x": [493782, 572059, 608827, 626932, 642200, 754844, 783600, 902195, 1048319, 1211537, 1235786, 1274923, 1293953, 1711263, 1808344, 1819046, 1998257, 2233169, 2673400, 2688418, 2844658, 2926324, 3405565, 3421399, 3450654, 4012012, 4041769, 4301261, 4447100, 4468976, 4919479, 5130632, 5296486, 5363675, 5595211, 5689283, 5894121, 6080485, 6349097, 7078515, 8049313, 8186453, 8414350, 9938444, 11353140, 12281054, 12419293, 15982378, 18976457, 20851820, 33871648], "y": [164, 43, 98, 101, 100, 197, 134, 229, 83, 142, 171, 194, 260, 254, 411, 521, 395, 296, 704, 461, 900, 390, 291, 456, 774, 1046, 964, 665, 1154, 904, 567, 1150, 643, 792, 1130, 1288, 563, 947, 476, 925, 1557, 1634, 731, 1159, 1286, 1490, 1356, 3244, 1493, 3583, 4120], "marker": {"sizeref": 1, "sizemode": "area", "size": 5.4, "line": {"width": 0.5, "color": "rgba(0.000000,113.985000,188.955000,1.000000)"}, "symbol": "circle", "color": "rgba(0,0,0,0)", "opacity": 1}}, {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [493782, 572059, 608827, 626932, 642200, 754844, 783600, 902195, 1048319, 1211537, 1235786, 1274923, 1293953, 1711263, 1808344, 1819046, 1998257, 2233169, 2673400, 2688418, 2844658, 2926324, 3405565, 3421399, 3450654, 4012012, 4041769, 4301261, 4447100, 4468976, 4919479, 5130632, 5296486, 5363675, 5595211, 5689283, 5894121, 6080485, 6349097, 7078515, 8049313, 8186453, 8414350, 9938444, 11353140, 12281054, 12419293, 15982378, 18976457, 20851820, 33871648], "y": [67.7822815120693, 78.5274963030505, 83.5747011963754, 86.0600048461156, 88.155868757976, 103.618699154073, 107.566083398863, 123.845817524295, 143.904503551063, 166.309711565606, 169.638412377677, 175.010813865657, 177.623093813437, 234.907935905295, 248.234407245832, 249.703488696234, 274.304082585965, 306.550845964467, 366.982092085913, 369.043638079384, 390.490964355849, 401.701392848514, 467.487606955398, 469.661166634491, 473.677049444386, 550.735601568709, 554.820394758729, 590.441295873249, 610.460859473054, 613.463814603776, 675.305115355994, 704.290441042466, 727.057497188504, 736.280643663091, 768.063977871666, 780.977398746472, 809.095853814435, 834.678351985116, 871.551170762472, 971.679600344697, 1104.94266648999, 1123.76810380152, 1155.05190639003, 1364.26684042743, 1558.4645279211, 1685.84083561759, 1704.81713449837, 2193.92777547238, 2604.93001056271, 2862.36422809863, 4649.61780707624], "name": "", "mode": "lines", "line": {"color": "rgb(216.75,82.875,24.99)", "width": 0.5, "dash": "solid"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>Linear Regression Relation Between Accidents & Population<\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"text": "x10^7", "xref": "x1", "yref": "y1", "xanchor": "left", "yanchor": "bottom", "font": {"size": 10, "color": "rgb(38.250000,38.250000,38.250000)", "family": "Arial, sans-serif"}, "showarrow": false, "x": 35000000, "y": 0}], "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 5000000, 10000000, 15000000, 20000000, 25000000, 30000000, 35000000], "range": [0, 35000000], "mirror": false, "ticktext": ["0", "0.5", "1", "1.5", "2", "2.5", "3", "3.5"], "title": "Population of state", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 500, 1000, 1500, 2000, 2500, 3000, 3500, 4000, 4500, 5000], "range": [0, 5000], "mirror": false, "ticktext": ["0", "500", "1000", "1500", "2000", "2500", "3000", "3500", "4000", "4500", "5000"], "title": "Fatal traffic accidents per state", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_413928678447 index=413928678447 %}



Improve the fit by including a y-intercept β<sub>0</sub> in your model as y=β<sub>0</sub>+β<sub>1</sub>x. Calculate β<sub>0</sub> by padding x with a column of ones and using the \ operator.


```{matlab}
load accidents
x = hwydata(:,14); %Population of states
y = hwydata(:,4); %Accidents per state

X = [ones(length(x),1) x];
b = X\y
```
```
b =

   1.0e+02 *

   1.427120171726538
   0.000001256394274
```


This result represents the relation y=β<sub>0</sub>+β<sub>1</sub>x=142.7120+0.0001256x.

Visualize the relation by plotting it on the same figure.

```{matlab}
load accidents
x = hwydata(:,14); %Population of states
y = hwydata(:,4); %Accidents per state

X = [ones(length(x),1) x];
b = X\y

yCalc2 = X*b;
plot(x,yCalc2,'--')
legend('Data','Slope','Slope & Intercept','Location','best');

fig2plotly(gcf);
```
```
b =

   1.0e+02 *

   1.427120171726538
   0.000001256394274

[Warning: Ignoring extra legend entries.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>process_inputs', 'C:\Program Files\MATLAB\R2021a\toolbox\matlab\scribe\legend.m', 587)" style="font-weight:bold">legend>process_inputs</a> (<a href="matlab: opentoline('C:\Program Files\MATLAB\R2021a\toolbox\matlab\scribe\legend.m',587,0)">line 587</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>make_legend', 'C:\Program Files\MATLAB\R2021a\toolbox\matlab\scribe\legend.m', 315)" style="font-weight:bold">legend>make_legend</a> (<a href="matlab: opentoline('C:\Program Files\MATLAB\R2021a\toolbox\matlab\scribe\legend.m',315,0)">line 315</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend', 'C:\Program Files\MATLAB\R2021a\toolbox\matlab\scribe\legend.m', 259)" style="font-weight:bold">legend</a> (<a href="matlab: opentoline('C:\Program Files\MATLAB\R2021a\toolbox\matlab\scribe\legend.m',259,0)">line 259</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('temp', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\temp.m', 10)" style="font-weight:bold">temp</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\temp.m',10,0)">line 10</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('evalMD>callFile', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m', 124)" style="font-weight:bold">evalMD>callFile</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m',124,0)">line 124</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('evalMD>formCBs', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m', 95)" style="font-weight:bold">evalMD>formCBs</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m',95,0)">line 95</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('evalMD', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m', 17)" style="font-weight:bold">evalMD</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m',17,0)">line 17</a>)]
```
{% capture plot_687754050691 %}{% raw %}{"data": [{"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [493782, 572059, 608827, 626932, 642200, 754844, 783600, 902195, 1048319, 1211537, 1235786, 1274923, 1293953, 1711263, 1808344, 1819046, 1998257, 2233169, 2673400, 2688418, 2844658, 2926324, 3405565, 3421399, 3450654, 4012012, 4041769, 4301261, 4447100, 4468976, 4919479, 5130632, 5296486, 5363675, 5595211, 5689283, 5894121, 6080485, 6349097, 7078515, 8049313, 8186453, 8414350, 9938444, 11353140, 12281054, 12419293, 15982378, 18976457, 20851820, 33871648], "y": [204.750504907006, 214.585182364633, 219.204692830824, 221.479394663678, 223.397657441034, 237.550185099694, 241.163072473654, 256.063280364698, 274.422216052298, 294.928832111664, 297.975462586388, 302.89261285606, 305.283531159248, 357.714120602409, 369.911321852634, 371.255915004537, 393.771882426114, 423.286091592613, 478.596462350926, 480.483315271435, 500.113219406489, 510.373688883533, 570.585253704241, 572.574628397497, 576.250209845724, 646.778907525228, 650.517559966004, 683.119986257692, 701.443114708487, 704.19160282202, 760.792541778461, 787.321683789655, 808.159485379614, 816.601072866367, 845.691123326005, 857.51027553922, 883.246004566462, 906.660670812143, 940.408928681607, 1032.05258852789, 1154.02309335701, 1171.25328442896, 1199.88613301233, 1391.37243045736, 1569.11402582503, 1685.69660945006, 1703.0648782527, 2150.7288373864, 2526.90320849993, 2762.52274196401, 4398.32647657033], "name": "Data", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "dash"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": true}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": true, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"text": "x10^7", "xref": "x1", "yref": "y1", "xanchor": "left", "yanchor": "bottom", "font": {"size": 10, "color": "rgb(38.250000,38.250000,38.250000)", "family": "Arial, sans-serif"}, "showarrow": false, "x": 35000000, "y": 0}], "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 5000000, 10000000, 15000000, 20000000, 25000000, 30000000, 35000000], "range": [0, 35000000], "mirror": "ticks", "ticktext": ["0", "0.5", "1", "1.5", "2", "2.5", "3", "3.5"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 500, 1000, 1500, 2000, 2500, 3000, 3500, 4000, 4500], "range": [0, 4500], "mirror": "ticks", "ticktext": ["0", "500", "1000", "1500", "2000", "2500", "3000", "3500", "4000", "4500"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "legend": {"x": 0.739573412698413, "xref": "paper", "xanchor": "left", "y": 0.124294131794132, "yref": "paper", "yanchor": "bottom", "traceorder": "normal", "borderwidth": 0.5, "bordercolor": "rgb(38.25,38.25,38.25)", "bgcolor": "rgb(255,255,255)", "font": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(0,0,0_)"}}}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_687754050691 index=687754050691 %}
