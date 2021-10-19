---
description: How to make Empirical Cumulative Distribution Plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Empirical Cumulative Distribution Plots
display_as: statistical
order: 16
permalink: matlab/ecdf-plots/
thumnail_github: thumbnail/figure-labels.png
layout: base
language: matlab
page_type: u-guide
---

## Compute Empirical Cumulative Distribution Function

Compute the Kaplan-Meier estimate of the cumulative distribution function (cdf) for simulated survival data. 

Generate survival data from a Weibull distribution with parameters 3 and 1. 

```{matlab}
rng('default')  % for reproducibility
failuretime = random('wbl',3,1,15,1);
```

Compute the Kaplan-Meier estimate of the cdf for survival data. 

```{matlab}
rng('default')  % for reproducibility
failuretime = random('wbl',3,1,15,1);

[f,x] = ecdf(failuretime);
[f,x]
```
```
ans =

                   0   0.089544836767326
   0.066666666666667   0.089544836767326
   0.133333333333333   0.107228075640541
   0.200000000000000   0.130267257354125
   0.266666666666667   0.131332359507254
   0.333333333333333   0.271823434606403
   0.400000000000000   0.296836948019020
   0.466666666666667   0.614718774981184
   0.533333333333333   0.668379079932481
   0.600000000000000   1.374892856271558
   0.666666666666667   1.810569303328021
   0.733333333333333   2.168496463175211
   0.800000000000000   3.835030845257112
   0.866666666666667   5.542836298304790
   0.933333333333333   6.191016019873781
   1.000000000000000   6.982465729716582
```

Plot the estimated cdf. 

```{matlab}
rng('default')  % for reproducibility
failuretime = random('wbl',3,1,15,1);

[f,x] = ecdf(failuretime);

ecdf(failuretime)

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
{% capture plot_141886338627 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [0.0895448367673262, 0.0895448367673262, 0.107228075640541, 0.130267257354125, 0.131332359507254, 0.271823434606403, 0.29683694801902, 0.614718774981184, 0.668379079932481, 1.37489285627156, 1.81056930332802, 2.16849646317521, 3.83503084525711, 5.54283629830479, 6.19101601987378, 6.98246572971658], "y": [0, 0.0666666666666667, 0.133333333333333, 0.2, 0.266666666666667, 0.333333333333333, 0.4, 0.466666666666667, 0.533333333333333, 0.6, 0.666666666666667, 0.733333333333333, 0.8, 0.866666666666667, 0.933333333333333, 1], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid", "shape": "hvh"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 1, 2, 3, 4, 5, 6, 7], "range": [0, 7], "mirror": "ticks", "ticktext": ["0", "1", "2", "3", "4", "5", "6", "7"], "title": "x", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1], "range": [0, 1], "mirror": "ticks", "ticktext": ["0", "0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9", "1"], "title": "F(x)", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_141886338627 index=141886338627 %}




<!--------------------- EXAMPLE BREAK ------------------------->

## Empirical Hazard Function of Right-Censored Data

Compute and plot the hazard function of simulated right-censored survival data. 

Generate failure times from a Birnbaum-Saunders distribution. 

```{matlab}
rng('default')  % For reproducibility
failuretime = random('birnbaumsaunders',0.3,1,100,1);
```

Assuming that the end of the study is at time 0.9, generate a logical array that indicates simulated failure times that are larger than 0.9 as censored data, and store this information in a vector. 

```{matlab}
rng('default')  % For reproducibility
failuretime = random('birnbaumsaunders',0.3,1,100,1);

T = 0.9;
cens = (failuretime>T);
```

Plot the empirical hazard function for the data. 

```{matlab}
rng('default')  % For reproducibility
failuretime = random('birnbaumsaunders',0.3,1,100,1);

T = 0.9;
cens = (failuretime>T);

ecdf(failuretime,'Function','cumulative hazard', ...
    'Censoring',cens,'Bounds','on');

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
{% capture plot_811580458282 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [0.0289575695570206, 0.0289575695570206, 0.0411458969133843, 0.0467528551873965, 0.0496318083537721, 0.0513760529410277, 0.0529219794007284, 0.059740274426971, 0.061761809518928, 0.0734038650377216, 0.0839290339806097, 0.084423469474204, 0.0913289081145006, 0.0955272028001883, 0.0998528144786497, 0.103050832372851, 0.103274976753912, 0.105025395529607, 0.10747852782433, 0.10881245732805, 0.112694149197007, 0.118328764006237, 0.118678526391082, 0.12985762062516, 0.131456818395077, 0.13155162802441, 0.132566080320856, 0.150789469347524, 0.167830167153995, 0.173782708055588, 0.175171593658072, 0.17703718728996, 0.18147477237024, 0.188547910752448, 0.188860488610535, 0.191685702006813, 0.203340973889068, 0.211741889264658, 0.214957643904039, 0.221719893385461, 0.221810484963353, 0.227419614758903, 0.228640050904338, 0.231026087302691, 0.241435702499044, 0.246264164109132, 0.262608231411672, 0.265021797068453, 0.285002439308617, 0.293211203845901, 0.294051510485933, 0.306993811416182, 0.310213507240183, 0.310614256424153, 0.321062244093435, 0.33156821724589, 0.341714351660662, 0.357840786544622, 0.360399917484871, 0.364163335009427, 0.364561400484364, 0.369855875896941, 0.375434130581288, 0.397359157052486, 0.398804404764439, 0.402015246616081, 0.404133410259143, 0.40753158241301, 0.418119241500814, 0.426585126214642, 0.471055130041896, 0.480846648211172, 0.487346132378149, 0.501775766193499, 0.54209504863457, 0.573920562750972, 0.604211556665093, 0.618479090285339, 0.649288561162686, 0.653372738298292, 0.668949031264757, 0.669959360496777, 0.670482160733263, 0.673775417070081, 0.679399357761172, 0.695263068607666, 0.709780536063934, 0.77090805680101, 0.813245068190931, 0.878980275144017], "y": [0, 0.01, 0.0201010101010101, 0.0303050917336632, 0.0406143700841786, 0.0510310367508453, 0.061557352540319, 0.0721956504126594, 0.0829483385847024, 0.0938179038020937, 0.104806914791105, 0.115918025902216, 0.127153980958396, 0.138517617322032, 0.150011870195595, 0.161639777172339, 0.173404483054692, 0.185309244959454, 0.197357437730539, 0.209552559681758, 0.221898238694104, 0.234398238694104, 0.247056466542205, 0.259876979362718, 0.272863992349731, 0.286021887086573, 0.299355220419906, 0.31286873393342, 0.326567364070406, 0.340456252959295, 0.354540760001548, 0.368826474287263, 0.383319227910451, 0.398025110263392, 0.412950483397721, 0.428101998549236, 0.443486613933851, 0.459111613933851, 0.474984629806867, 0.491113662064932, 0.507507104687882, 0.524173771354549, 0.541122923896922, 0.558364303207267, 0.57590816285639, 0.593765305713532, 0.611947123895351, 0.630465642413869, 0.649333566942171, 0.66856433617294, 0.688172179310195, 0.708172179310195, 0.728580342575501, 0.749413675908835, 0.770690271653516, 0.792429402088298, 0.814651624310521, 0.837378897037793, 0.860634710991282, 0.884444234800805, 0.908834478703245, 0.933834478703245, 0.95947550434427, 0.985791293817954, 1.01281832084498, 1.04059609862276, 1.06916752719419, 1.09857929190007, 1.1288823222031, 1.1601323222031, 1.19239038671923, 1.22572372005256, 1.26020647867325, 1.29592076438754, 1.33295780142458, 1.37141933988611, 1.41141933988611, 1.45308600655278, 1.49656426742235, 1.54201881287689, 1.58963786049594, 1.63963786049594, 1.69226943944331, 1.74782499499886, 1.80664852441063, 1.86914852441063, 1.93581519107729, 2.00724376250587, 2.08416683942894, 2.16750017276228], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid", "shape": "hvh"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9], "range": [0, 0.9], "mirror": "ticks", "ticktext": ["0", "0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9"], "title": "x", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.5, 1, 1.5, 2, 2.5, 3], "range": [0, 3], "mirror": "ticks", "ticktext": ["0", "0.5", "1", "1.5", "2", "2.5", "3"], "title": "H(x)", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_811580458282 index=811580458282 %}


<!--------------------- EXAMPLE BREAK ------------------------->

## Compare Empirical Cumulative Distribution Function (CDF) with Known CDF

Generate right-censored survival data and compare the empirical cumulative distribution function (cdf) with the known cdf. 

Generate failure times from an exponential distribution with mean failure time of 15. 

```{matlab}
rng('default')  % For reproducibility
y = exprnd(15,75,1);
```

Generate drop-out times from an exponential distribution with mean failure time of 30. 

```{matlab}
rng('default')  % For reproducibility
y = exprnd(15,75,1);

d = exprnd(30,75,1);
```

Generate the observed failure times. They are the minimum of the generated failure times and the drop-out times. 

```{matlab}
rng('default')  % For reproducibility
y = exprnd(15,75,1);

d = exprnd(30,75,1);

t = min(y,d);
```

Create a logical array that indicates generated failure times that are larger than the drop-out times. The data for which this is true are censored. 

```{matlab}
rng('default')  % For reproducibility
y = exprnd(15,75,1);

d = exprnd(30,75,1);

t = min(y,d);

censored = (y>d);
```

Compute the empirical cdf and confidence bounds. 

```{matlab}
rng('default')  % For reproducibility
y = exprnd(15,75,1);

d = exprnd(30,75,1);

t = min(y,d);

censored = (y>d);

[f,x,flo,fup] = ecdf(t,'Censoring',censored);
```

Plot the cdf and confidence bounds. 

```{matlab}
rng('default')  % For reproducibility
y = exprnd(15,75,1);

d = exprnd(30,75,1);

t = min(y,d);

censored = (y>d);

[f,x,flo,fup] = ecdf(t,'Censoring',censored);

figure()
ecdf(t,'Censoring',censored,'Bounds','on');
hold on

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
{% capture plot_417267069084 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [0.116183186595465, 0.447724183836631, 0.536140378202704, 0.616331099591137, 0.6202628527602, 0.623405486903589, 0.651336286770627, 0.65666179753627, 0.765893791202155, 1.02429105241596, 1.10044214251364, 1.32041525936224, 1.35911717303202, 1.4841847400951, 1.73279160629192, 2.45315700803192, 2.6024981297793, 2.91364411446583, 3.07359387490592, 3.08167597512128, 3.34189539966241, 3.43742621946599, 3.49398212518708, 4.16122181654967, 4.22178909926167, 4.2899112824424, 4.45321442949255, 5.15077970654071, 5.22112144707811, 5.36992173263195, 5.46135074206336, 5.79149724525447, 5.81286418903905, 6.32984765784008, 6.3358605908023, 6.34455645227932, 6.54707035159707, 6.87446428135779, 8.03528763716546, 9.04368798442079, 9.0528465166401, 10.2195523714373, 10.4463666142765, 10.7074624264922, 10.8424823158761, 12.9497370897655, 14.038717130383, 14.4523681559173, 16.1651372133767, 17.2280960566274, 20.3505525681394, 20.5396603165337, 21.1880370112711, 22.4542370339193, 26.4750086461178, 27.2458486845602, 27.714181491524, 29.2909346115073, 29.6398027888471, 30.9550800993689, 50.5254009224345], "y": [0, 0.0135135135135135, 0.0270270270270271, 0.0405405405405406, 0.0540540540540541, 0.0675675675675675, 0.081081081081081, 0.0945945945945945, 0.108108108108108, 0.121621621621622, 0.135135135135135, 0.148863148863149, 0.162591162591162, 0.176319176319176, 0.19004719004719, 0.203775203775204, 0.217503217503218, 0.231231231231231, 0.244959244959245, 0.258687258687259, 0.272415272415273, 0.286143286143286, 0.2998712998713, 0.313599313599314, 0.327607490872797, 0.341913714471248, 0.356219938069699, 0.370526161668151, 0.384832385266602, 0.399138608865053, 0.413444832463504, 0.428484708554183, 0.443524584644863, 0.458564460735542, 0.473604336826221, 0.488644212916901, 0.50368408900758, 0.519193961226093, 0.534703833444606, 0.550748528843068, 0.56679322424153, 0.582837919639992, 0.598882615038454, 0.614927310436916, 0.630972005835377, 0.648544767462264, 0.666117529089151, 0.683690290716038, 0.701263052342925, 0.719934111571492, 0.739938817887814, 0.759943524204136, 0.779948230520458, 0.79995293683678, 0.82218038829936, 0.84440783976194, 0.86663529122452, 0.8888627426871, 0.91109019414968, 0.93331764561226, 1], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid", "shape": "hvh"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 10, 20, 30, 40, 50, 60], "range": [0, 60], "mirror": "ticks", "ticktext": ["0", "10", "20", "30", "40", "50", "60"], "title": "x", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1], "range": [0, 1], "mirror": "ticks", "ticktext": ["0", "0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9", "1"], "title": "F(x)", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_417267069084 index=417267069084 %}


Superimpose a plot of the known population cdf. 

```{matlab}
rng('default')  % For reproducibility
y = exprnd(15,75,1);

d = exprnd(30,75,1);

t = min(y,d);

censored = (y>d);

[f,x,flo,fup] = ecdf(t,'Censoring',censored);

figure()
ecdf(t,'Censoring',censored,'Bounds','on');
hold on

xx = 0:.1:max(t);
yy = 1-exp(-xx/15);
plot(xx,yy,'g-','LineWidth',2)
axis([0 50 0 1])
legend('Empirical','LCB','UCB','Population', ...
    'Location','southeast')
hold off

fig2plotly(gcf)
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_417267069084 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [0.116183186595465, 0.447724183836631, 0.536140378202704, 0.616331099591137, 0.6202628527602, 0.623405486903589, 0.651336286770627, 0.65666179753627, 0.765893791202155, 1.02429105241596, 1.10044214251364, 1.32041525936224, 1.35911717303202, 1.4841847400951, 1.73279160629192, 2.45315700803192, 2.6024981297793, 2.91364411446583, 3.07359387490592, 3.08167597512128, 3.34189539966241, 3.43742621946599, 3.49398212518708, 4.16122181654967, 4.22178909926167, 4.2899112824424, 4.45321442949255, 5.15077970654071, 5.22112144707811, 5.36992173263195, 5.46135074206336, 5.79149724525447, 5.81286418903905, 6.32984765784008, 6.3358605908023, 6.34455645227932, 6.54707035159707, 6.87446428135779, 8.03528763716546, 9.04368798442079, 9.0528465166401, 10.2195523714373, 10.4463666142765, 10.7074624264922, 10.8424823158761, 12.9497370897655, 14.038717130383, 14.4523681559173, 16.1651372133767, 17.2280960566274, 20.3505525681394, 20.5396603165337, 21.1880370112711, 22.4542370339193, 26.4750086461178, 27.2458486845602, 27.714181491524, 29.2909346115073, 29.6398027888471, 30.9550800993689, 50.5254009224345], "y": [0, 0.0135135135135135, 0.0270270270270271, 0.0405405405405406, 0.0540540540540541, 0.0675675675675675, 0.081081081081081, 0.0945945945945945, 0.108108108108108, 0.121621621621622, 0.135135135135135, 0.148863148863149, 0.162591162591162, 0.176319176319176, 0.19004719004719, 0.203775203775204, 0.217503217503218, 0.231231231231231, 0.244959244959245, 0.258687258687259, 0.272415272415273, 0.286143286143286, 0.2998712998713, 0.313599313599314, 0.327607490872797, 0.341913714471248, 0.356219938069699, 0.370526161668151, 0.384832385266602, 0.399138608865053, 0.413444832463504, 0.428484708554183, 0.443524584644863, 0.458564460735542, 0.473604336826221, 0.488644212916901, 0.50368408900758, 0.519193961226093, 0.534703833444606, 0.550748528843068, 0.56679322424153, 0.582837919639992, 0.598882615038454, 0.614927310436916, 0.630972005835377, 0.648544767462264, 0.666117529089151, 0.683690290716038, 0.701263052342925, 0.719934111571492, 0.739938817887814, 0.759943524204136, 0.779948230520458, 0.79995293683678, 0.82218038829936, 0.84440783976194, 0.86663529122452, 0.8888627426871, 0.91109019414968, 0.93331764561226, 1], "name": "Empirical", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid", "shape": "hvh"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": true, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 10, 20, 30, 40, 50], "range": [0, 50], "mirror": "ticks", "ticktext": ["0", "10", "20", "30", "40", "50"], "title": "x", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1], "range": [0, 1], "mirror": "ticks", "ticktext": ["0", "0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9", "1"], "title": "F(x)", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}], "legend": {"x": 0.693055555555555, "xref": "paper", "xanchor": "left", "y": 0.135449735449735, "yref": "paper", "yanchor": "bottom", "traceorder": "normal", "borderwidth": 0.5, "bordercolor": "rgb(38.25,38.25,38.25)", "bgcolor": "rgb(255,255,255)", "font": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(0,0,0_)"}}}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_417267069084 index=417267069084 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Empirical Survivor Function with Confidence Bounds

Generate survival data and plot the empirical survivor function with 99% confidence bounds. 

Generate lifetime data from a Weibull distribution with parameters 100 and 2. 

```{matlab}
rng('default')  % For reproducibility
R = wblrnd(100,2,100,1);
```

Plot the survivor function for the data with 99% confidence bounds. 

```{matlab}
rng('default')  % For reproducibility
R = wblrnd(100,2,100,1);

ecdf(R,'Function','survivor','Alpha',0.01,'Bounds','on')
hold on

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
{% capture plot_162182308193 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [17.2766544569376, 17.2766544569376, 18.9057377217024, 20.2703576615566, 20.3349100934034, 20.3863596047879, 20.838046721812, 20.9230621967925, 22.5963683100059, 26.1280312310708, 26.1316035024765, 27.085569866796, 29.4001081951435, 29.6694597115422, 30.101131463031, 31.4556273724867, 33.9881509381522, 40.4405490239019, 41.6533162327587, 43.0501718167636, 44.0730009148899, 45.2665724709814, 45.3260482513185, 47.2009562026195, 47.8708416433636, 48.2630440066868, 49.9529361861833, 51.6917917242211, 52.6701801563255, 52.7378002073262, 53.0521070851521, 53.1716340676713, 53.4784148508686, 54.4867838990493, 58.5990881984848, 58.9978612441621, 59.8326651734204, 60.3398748317305, 62.1369307538036, 62.2514481172342, 64.9607453664138, 64.9915922295712, 65.036176867337, 66.0659788978516, 67.6976822909903, 69.6014218149629, 73.190562402382, 73.1909895922847, 75.1122362522714, 75.2295103254727, 77.3524180259464, 77.6474424752496, 77.686749263265, 79.5848343932696, 82.541110449833, 83.4520485639368, 84.4885097769402, 85.0195362485433, 86.489849269314, 86.9666564758576, 89.9090962435145, 90.7655419070853, 92.914789241776, 96.7426728677097, 98.1575881118972, 98.306227295348, 102.229735449618, 102.463091329266, 103.81116578794, 104.274085221076, 107.169946212009, 111.907394656976, 113.063858729733, 113.314422916291, 113.457637852279, 116.477616070326, 116.881084935525, 117.017549443189, 117.557147810152, 118.850149379435, 122.349872725501, 127.538552214615, 129.511704233921, 132.853324249258, 134.773510464928, 135.926895772505, 137.907132721653, 139.740079222122, 140.56979948018, 142.861561036993, 143.654864401613, 145.898981105528, 152.561088635739, 152.69861338786, 160.590816099464, 170.871161631038, 175.368039366274, 182.545268707861, 183.53092550019, 185.667892144144, 210.500427228011], "y": [1, 0.99, 0.98, 0.97, 0.96, 0.95, 0.94, 0.93, 0.92, 0.91, 0.9, 0.89, 0.88, 0.87, 0.86, 0.85, 0.84, 0.83, 0.82, 0.81, 0.8, 0.79, 0.78, 0.77, 0.76, 0.75, 0.74, 0.73, 0.72, 0.71, 0.7, 0.69, 0.68, 0.67, 0.66, 0.65, 0.64, 0.63, 0.62, 0.61, 0.6, 0.59, 0.58, 0.57, 0.56, 0.55, 0.54, 0.53, 0.52, 0.51, 0.5, 0.49, 0.48, 0.47, 0.46, 0.45, 0.44, 0.43, 0.42, 0.41, 0.4, 0.39, 0.38, 0.37, 0.36, 0.35, 0.34, 0.33, 0.32, 0.31, 0.3, 0.29, 0.28, 0.27, 0.26, 0.25, 0.24, 0.23, 0.22, 0.21, 0.2, 0.19, 0.18, 0.17, 0.16, 0.15, 0.14, 0.13, 0.12, 0.11, 0.0999999999999999, 0.0899999999999999, 0.0799999999999999, 0.0699999999999999, 0.0599999999999999, 0.05, 0.04, 0.03, 0.02, 0.00999999999999999, 0], "name": "", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid", "shape": "hvh"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 50, 100, 150, 200, 250], "range": [0, 250], "mirror": "ticks", "ticktext": ["0", "50", "100", "150", "200", "250"], "title": "x", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1], "range": [0, 1], "mirror": "ticks", "ticktext": ["0", "0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9", "1"], "title": "S(x)", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_162182308193 index=162182308193 %}


Fit the Weibull survivor function. 

```{matlab}
rng('default')  % For reproducibility
R = wblrnd(100,2,100,1);

ecdf(R,'Function','survivor','Alpha',0.01,'Bounds','on')
hold on

x = 1:1:250;
wblsurv = 1-cdf('weibull',x,100,2);
plot(x,wblsurv,'g-','LineWidth',2)
legend('Empirical','LCB','UCB','Population', ...
    'Location','northeast')

fig2plotly(gcf)
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {[1×1 struct]  [1×1 struct]  [1×1 struct]  [1×1 struct]}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_162182308193 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [17.2766544569376, 17.2766544569376, 18.9057377217024, 20.2703576615566, 20.3349100934034, 20.3863596047879, 20.838046721812, 20.9230621967925, 22.5963683100059, 26.1280312310708, 26.1316035024765, 27.085569866796, 29.4001081951435, 29.6694597115422, 30.101131463031, 31.4556273724867, 33.9881509381522, 40.4405490239019, 41.6533162327587, 43.0501718167636, 44.0730009148899, 45.2665724709814, 45.3260482513185, 47.2009562026195, 47.8708416433636, 48.2630440066868, 49.9529361861833, 51.6917917242211, 52.6701801563255, 52.7378002073262, 53.0521070851521, 53.1716340676713, 53.4784148508686, 54.4867838990493, 58.5990881984848, 58.9978612441621, 59.8326651734204, 60.3398748317305, 62.1369307538036, 62.2514481172342, 64.9607453664138, 64.9915922295712, 65.036176867337, 66.0659788978516, 67.6976822909903, 69.6014218149629, 73.190562402382, 73.1909895922847, 75.1122362522714, 75.2295103254727, 77.3524180259464, 77.6474424752496, 77.686749263265, 79.5848343932696, 82.541110449833, 83.4520485639368, 84.4885097769402, 85.0195362485433, 86.489849269314, 86.9666564758576, 89.9090962435145, 90.7655419070853, 92.914789241776, 96.7426728677097, 98.1575881118972, 98.306227295348, 102.229735449618, 102.463091329266, 103.81116578794, 104.274085221076, 107.169946212009, 111.907394656976, 113.063858729733, 113.314422916291, 113.457637852279, 116.477616070326, 116.881084935525, 117.017549443189, 117.557147810152, 118.850149379435, 122.349872725501, 127.538552214615, 129.511704233921, 132.853324249258, 134.773510464928, 135.926895772505, 137.907132721653, 139.740079222122, 140.56979948018, 142.861561036993, 143.654864401613, 145.898981105528, 152.561088635739, 152.69861338786, 160.590816099464, 170.871161631038, 175.368039366274, 182.545268707861, 183.53092550019, 185.667892144144, 210.500427228011], "y": [1, 0.99, 0.98, 0.97, 0.96, 0.95, 0.94, 0.93, 0.92, 0.91, 0.9, 0.89, 0.88, 0.87, 0.86, 0.85, 0.84, 0.83, 0.82, 0.81, 0.8, 0.79, 0.78, 0.77, 0.76, 0.75, 0.74, 0.73, 0.72, 0.71, 0.7, 0.69, 0.68, 0.67, 0.66, 0.65, 0.64, 0.63, 0.62, 0.61, 0.6, 0.59, 0.58, 0.57, 0.56, 0.55, 0.54, 0.53, 0.52, 0.51, 0.5, 0.49, 0.48, 0.47, 0.46, 0.45, 0.44, 0.43, 0.42, 0.41, 0.4, 0.39, 0.38, 0.37, 0.36, 0.35, 0.34, 0.33, 0.32, 0.31, 0.3, 0.29, 0.28, 0.27, 0.26, 0.25, 0.24, 0.23, 0.22, 0.21, 0.2, 0.19, 0.18, 0.17, 0.16, 0.15, 0.14, 0.13, 0.12, 0.11, 0.0999999999999999, 0.0899999999999999, 0.0799999999999999, 0.0699999999999999, 0.0599999999999999, 0.05, 0.04, 0.03, 0.02, 0.00999999999999999, 0], "name": "Empirical", "mode": "lines", "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid", "shape": "hvh"}, "marker": {"size": 6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": true, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 50, 100, 150, 200, 250], "range": [0, 250], "mirror": "ticks", "ticktext": ["0", "50", "100", "150", "200", "250"], "title": "x", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1], "range": [0, 1], "mirror": "ticks", "ticktext": ["0", "0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9", "1"], "title": "S(x)", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}], "legend": {"x": 0.693055555555555, "xref": "paper", "xanchor": "left", "y": 0.742460317460318, "yref": "paper", "yanchor": "bottom", "traceorder": "normal", "borderwidth": 0.5, "bordercolor": "rgb(38.25,38.25,38.25)", "bgcolor": "rgb(255,255,255)", "font": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(0,0,0_)"}}}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_162182308193 index=162182308193 %}


The survivor function based on the actual distribution is within the confidence bounds. 



<!--------------------- EXAMPLE BREAK ------------------------->

