---
description: How to make t-SNE projections in MATLAB<sup>&reg;</sup> with Plotly.
name: t-SNE projections
display_as: ai_ml
order: 5
permalink: matlab/t-sne-and-umap-projections/
thumnail_github: thumbnail/tsne-umap-projections.png
layout: base
language: matlab
page_type: u-guide
---

## Visualize Fisher Iris Data

The Fisher iris data set has four-dimensional measurements of irises, and corresponding classification into species. Visualize this data by reducing the dimension using `tsne`.

```{matlab}
load fisheriris
rng default % for reproducibility
Y = tsne(meas);
gscatter(Y(:,1),Y(:,2),species)

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
{% capture plot_521649842464 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [-18.1447146332656, -15.7535017337285, -15.8950508179041, -15.5631225311236, -18.2204441888453, -20.1540929710762, -16.0945606587596, -17.6520467657644, -14.7692683318561, -16.2504938089613, -19.7088788630292, -16.9378389329291, -15.4766341046618, -14.8246144873451, -20.864953687156, -21.0459463252323, -20.2465604493575, -18.2951404286071, -20.3798975779422, -19.3664301237346, -19.061952923535, -18.9759365573408, -16.4865866880595, -17.8758429807166, -17.0535047781745, -16.2037005755375, -17.8592303758959, -18.6480572595471, -18.3234895858779, -16.1351429567182, -16.0468879876966, -19.0153852645257, -20.2978565129095, -20.8019625513636, -16.3026317007663, -16.8362581217939, -19.5443096971336, -17.7444194093903, -14.8309049457848, -17.9325965852738, -17.7806937197881, -14.3409038381939, -15.1256213618157, -18.394697393188, -19.5160649714891, -15.5241479676315, -19.4481076091383, -15.7084399713306, -19.4893885094394, -17.2454746651843], "y": [-11.8503952626071, -12.8030499050346, -11.7608306638739, -12.1608333580348, -11.9851571637634, -12.4655514718622, -11.3187403355017, -12.2433856921589, -11.9341980018685, -12.6485617519844, -11.8394604367912, -12.6534662260457, -12.5778602906873, -11.5011803737357, -11.5884814898988, -12.070775133233, -11.987749592547, -12.201889354967, -11.5648593889974, -12.5219993033229, -11.2820049390067, -12.5536678638276, -10.5273529226869, -13.3115506857501, -13.4612542416725, -13.1586561243328, -12.8682166472169, -11.862328745307, -11.6693248139162, -12.347930697334, -12.7832084208703, -11.3711423237464, -12.6518861161453, -12.2178201676581, -12.6349437250733, -11.6497626924426, -11.193710827135, -11.5302227265189, -11.705405335355, -12.1926858944995, -11.6619279477091, -12.5882092194647, -11.3361985408284, -13.2237271879429, -13.1813828804531, -12.5707755451299, -12.6001764822773, -11.6918155189879, -11.9863181778512, -12.1880561521761], "name": "setosa", "mode": "markers", "line": {}, "marker": {"size": 6, "symbol": "circle", "maxdisplayed": 51, "line": {"width": 0.5}, "color": "rgb(255,0,0)"}, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": true, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-25, -20, -15, -10, -5, 0, 5, 10, 15], "range": [-25, 15], "mirror": "ticks", "ticktext": ["-25", "-20", "-15", "-10", "-5", "0", "5", "10", "15"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-14, -12, -10, -8, -6, -4, -2, 0, 2, 4, 6], "range": [-14, 6], "mirror": "ticks", "ticktext": ["-14", "-12", "-10", "-8", "-6", "-4", "-2", "0", "2", "4", "6"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}], "legend": {"x": 0.684265873015873, "xref": "paper", "xanchor": "left", "y": 0.294579365079365, "yref": "paper", "yanchor": "bottom", "traceorder": "normal", "borderwidth": 0.5, "bordercolor": "rgb(38.25,38.25,38.25)", "bgcolor": "rgb(255,255,255)", "font": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(0,0,0_)"}}}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_521649842464 index=521649842464 %}



<!--------------------- EXAMPLE BREAK ------------------------->

## Compare Distance Metrics

Use various distance metrics to try to obtain a better separation between species in the Fisher iris data.

```{matlab}
load fisheriris

rng('default') % for reproducibility
Y = tsne(meas,'Algorithm','exact','Distance','mahalanobis');
subplot(2,2,1)
gscatter(Y(:,1),Y(:,2),species)
title('Mahalanobis')

rng('default') % for fair comparison
Y = tsne(meas,'Algorithm','exact','Distance','cosine');
subplot(2,2,2)
gscatter(Y(:,1),Y(:,2),species)
title('Cosine')

rng('default') % for fair comparison
Y = tsne(meas,'Algorithm','exact','Distance','chebychev');
subplot(2,2,3)
gscatter(Y(:,1),Y(:,2),species)
title('Chebychev')

rng('default') % for fair comparison
Y = tsne(meas,'Algorithm','exact','Distance','euclidean');
subplot(2,2,4)
gscatter(Y(:,1),Y(:,2),species)
title('Euclidean')

fig2plotly(gcf)
```
```
pf = 

  <a href="matlab:helpPopup plotlyfig" style="font-weight:bold">plotlyfig</a> with properties:

           data: {1×12 cell}
         layout: [1×1 struct]
         frames: {}
            url: ''
          error: []
        warning: []
        message: []
       UserData: [1×1 struct]
    PlotOptions: [1×1 struct]
```
{% capture plot_521649842464 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [-6.04262476792178, -5.04425566295656, -4.06968925442032, -2.61968105614093, -5.17175044851227, -6.53051710739645, -3.31875831718191, -4.98922980753784, -1.95611955792902, -3.80067739185766, -7.22157239195865, -3.07256314196725, -3.80605707647828, -1.86909731616069, -9.04850963572293, -7.51438914719192, -8.66068418007623, -6.61031884825701, -7.99999862351025, -5.51565636874227, -7.19747884261187, -5.90401151601263, -4.28565948141807, -6.7769593512106, -2.69356781571597, -4.41631451281012, -5.94416392416896, -6.38622749862075, -7.15994504455643, -2.57980068629866, -3.32410844040457, -8.51822356983338, -5.00566801215475, -6.79237390311551, -4.53465059016347, -6.30853120883764, -8.75698934523438, -3.96424544289761, -2.11789191426688, -5.61293559259917, -6.70269629147189, -2.40343123826098, -2.04939091302417, -7.55116600001377, -4.41777466118696, -5.4944000197628, -4.65404643376051, -2.91705122097199, -6.6536167192774, -5.38979434311934], "y": [9.46594458004368, 6.27711916472761, 8.23691299441027, 8.48962800401628, 10.6133220897611, 11.7042151603343, 9.83344885407252, 9.29438781518904, 7.51899201248327, 7.25304665539903, 10.5230458202186, 10.8043382905147, 6.72393834362049, 8.06862120053481, 10.4473588468553, 12.4777258243808, 9.89726415475399, 8.5995031371611, 10.7775859625006, 11.6039978683023, 9.56260519949428, 10.6129685444049, 10.1764343382779, 7.36137405802602, 11.8030353998424, 6.41314583366378, 8.31905155833041, 9.69015379899497, 8.78405528541995, 9.50693733338692, 7.87760668455124, 8.07500562275428, 13.0416564878984, 12.5296109361184, 7.24114255560047, 6.63369728791926, 8.67052743183788, 11.5590700311781, 7.9215338365624, 9.10242923828532, 8.14044735493079, 2.41388004928336, 9.11138788380125, 7.2457827394294, 12.432409092652, 6.08954779029101, 12.267952829217, 8.86876074821783, 10.7645176706568, 8.04551354632404], "name": "setosa", "mode": "markers", "line": {}, "marker": {"size": 6, "symbol": "circle", "maxdisplayed": 51, "line": {"width": 0.5}, "color": "rgb(255,0,0)"}, "showlegend": true, "legendgroup": "setosa"}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": true, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 2.81113636363636, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-10, -5, 0, 5, 10], "range": [-10.0485096357229, 10], "mirror": "ticks", "ticktext": ["-10", "-5", "0", "5", "10"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.464659090909091], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.464659090909091], "y": [0.583837209302326, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 2.81113636363636, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-10, -5, 0, 5, 10], "range": [-11.039033694343, 13.0416564878984], "mirror": "ticks", "ticktext": ["-10", "-5", "0", "5", "10"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.583837209302326, 0.925], "anchor": "x1"}, "xaxis2": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 2.81113636363636, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-20, -10, 0, 10, 20], "range": [-23.004287862337, 20], "mirror": "ticks", "ticktext": ["-20", "-10", "0", "10", "20"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.570340909090909, 0.905], "anchor": "y2"}, "scene2": {"domain": {"x": [0.570340909090909, 0.905], "y": [0.583837209302326, 0.925]}}, "yaxis2": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 2.81113636363636, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-20, -10, 0, 10, 20], "range": [-21.1168710370856, 20], "mirror": "ticks", "ticktext": ["-20", "-10", "0", "10", "20"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.583837209302326, 0.925], "anchor": "x2"}, "xaxis3": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 2.81113636363636, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-10, -5, 0, 5, 10], "range": [-10.7774516297782, 12.5882762519491], "mirror": "ticks", "ticktext": ["-10", "-5", "0", "5", "10"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.464659090909091], "anchor": "y3"}, "scene3": {"domain": {"x": [0.13, 0.464659090909091], "y": [0.11, 0.451162790697674]}}, "yaxis3": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 2.81113636363636, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-30, -20, -10, 0, 10, 20], "range": [-30, 20], "mirror": "ticks", "ticktext": ["-30", "-20", "-10", "0", "10", "20"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.451162790697674], "anchor": "x3"}, "xaxis4": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 2.81113636363636, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-20, -10, 0, 10, 20], "range": [-24.4461482026893, 20], "mirror": "ticks", "ticktext": ["-20", "-10", "0", "10", "20"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.570340909090909, 0.905], "anchor": "y4"}, "scene4": {"domain": {"x": [0.570340909090909, 0.905], "y": [0.11, 0.451162790697674]}}, "yaxis4": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 2.81113636363636, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-20, -10, 0, 10], "range": [-20, 12.0750819955936], "mirror": "ticks", "ticktext": ["-20", "-10", "0", "10"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 9.9, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.451162790697674], "anchor": "x4"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>Mahalanobis<\/b>", "x": 0.297329545454545, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 9.9}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>Cosine<\/b>", "x": 0.737670454545455, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 9.9}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>Chebychev<\/b>", "x": 0.297329545454545, "y": 0.461162790697674, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 9.9}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>Euclidean<\/b>", "x": 0.737670454545455, "y": 0.461162790697674, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 9.9}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}], "legend": {"x": 0.909525, "y": 0.925925, "xref": "paper", "yref": "paper", "xanchor": "left", "yanchor": "top", "traceorder": "normal", "borderwidth": 0.5, "bordercolor": "rgb(38.250000,38.250000,38.250000)", "bgcolor": "rgb(255.000000,255.000000,255.000000)", "font": {"size": 8.1, "family": "Arial, sans-serif", "color": "rgb(0.000000,0.000000,0.000000)"}}, "title": "<b>Mahalanobis<\/b>", "titlefont": {"color": "rgba(0,0,0,0)"}}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_521649842464 index=521649842464 %}


In this case, the cosine, Chebychev, and Euclidean distance metrics give reasonably good separation of clusters. But the Mahalanobis distance metric does not give a good separation.


<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Results with NaN Input Data

`tsne` removes input data rows that contain any `NaN` entries. Therefore, you must remove any such rows from your classification data before plotting.

For example, change a few random entries in the Fisher iris data to `NaN`.

```{matlab}
load fisheriris
rng default % for reproducibility
meas(rand(size(meas)) < 0.05) = NaN;
```

Embed the four-dimensional data into two dimensions using `tsne`.

```{matlab}
load fisheriris
rng default % for reproducibility
meas(rand(size(meas)) < 0.05) = NaN;

Y = tsne(meas,'Algorithm','exact');
```
```
[Warning: Rows with NaN missing values in X or 'InitialY' values are removed.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('tsne', 'C:\Program Files\MATLAB\R2021a\toolbox\stats\stats\tsne.m', 232)" style="font-weight:bold">tsne</a> (<a href="matlab: opentoline('C:\Program Files\MATLAB\R2021a\toolbox\stats\stats\tsne.m',232,0)">line 232</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('temp', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\temp.m', 5)" style="font-weight:bold">temp</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\temp.m',5,0)">line 5</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('evalMD>callFile', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m', 117)" style="font-weight:bold">evalMD>callFile</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m',117,0)">line 117</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('evalMD>formCBs', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m', 88)" style="font-weight:bold">evalMD>formCBs</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m',88,0)">line 88</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('evalMD', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m', 21)" style="font-weight:bold">evalMD</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m',21,0)">line 21</a>)]
```

Determine how many rows were eliminated from the embedding.

```{matlab}
load fisheriris
rng default % for reproducibility
meas(rand(size(meas)) < 0.05) = NaN;

Y = tsne(meas,'Algorithm','exact');

length(species)-length(Y)
```
```
[Warning: Rows with NaN missing values in X or 'InitialY' values are removed.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('tsne', 'C:\Program Files\MATLAB\R2021a\toolbox\stats\stats\tsne.m', 232)" style="font-weight:bold">tsne</a> (<a href="matlab: opentoline('C:\Program Files\MATLAB\R2021a\toolbox\stats\stats\tsne.m',232,0)">line 232</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('temp', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\temp.m', 5)" style="font-weight:bold">temp</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\temp.m',5,0)">line 5</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('evalMD>callFile', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m', 117)" style="font-weight:bold">evalMD>callFile</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m',117,0)">line 117</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('evalMD>formCBs', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m', 88)" style="font-weight:bold">evalMD>formCBs</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m',88,0)">line 88</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('evalMD', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m', 21)" style="font-weight:bold">evalMD</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m',21,0)">line 21</a>)] 

ans =

    22
```


Prepare to plot the result by locating the rows of `meas` that have no `NaN` values.

```{matlab}
load fisheriris
rng default % for reproducibility
meas(rand(size(meas)) < 0.05) = NaN;

goodrows = not(any(isnan(meas),2));
```

Plot the results using only the rows of `species` that correspond to rows of `meas` with no `NaN` values.

```{matlab}
load fisheriris
rng default % for reproducibility
meas(rand(size(meas)) < 0.05) = NaN;

Y = tsne(meas,'Algorithm','exact');

goodrows = not(any(isnan(meas),2));

gscatter(Y(:,1),Y(:,2),species(goodrows))

fig2plotly(gcf)
```
```
[Warning: Rows with NaN missing values in X or 'InitialY' values are removed.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('tsne', 'C:\Program Files\MATLAB\R2021a\toolbox\stats\stats\tsne.m', 232)" style="font-weight:bold">tsne</a> (<a href="matlab: opentoline('C:\Program Files\MATLAB\R2021a\toolbox\stats\stats\tsne.m',232,0)">line 232</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('temp', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\temp.m', 5)" style="font-weight:bold">temp</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\temp.m',5,0)">line 5</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('evalMD>callFile', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m', 117)" style="font-weight:bold">evalMD>callFile</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m',117,0)">line 117</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('evalMD>formCBs', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m', 88)" style="font-weight:bold">evalMD>formCBs</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m',88,0)">line 88</a>)
In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('evalMD', 'C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m', 21)" style="font-weight:bold">evalMD</a> (<a href="matlab: opentoline('C:\Users\Ritika Purwar\Upwork\Jack_Parmer_MATLAB_Plotly\plotly.matlab-docs\evalMD.m',21,0)">line 21</a>)] 

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
{% capture plot_402183985222 %}
{% raw %}{"data": {"xaxis": "x1", "yaxis": "y1", "type": "scatter", "visible": true, "x": [8.16361152493691, 9.94572053395764, 8.43845437691398, 7.23256597310449, 9.82581663090596, 8.59441366779828, 10.4072900156668, 7.25433764897246, 9.24417076349901, 9.55636637160588, 10.8165680177364, 6.34773039448736, 6.49793147481436, 7.04035629630189, 8.2049328047785, 6.65383061773929, 7.93740927371491, 7.32644745923229, 10.1021305379198, 8.93643700455691, 8.80723725460922, 7.86575419883108, 7.96369376569868, 9.59890040563071, 9.38943917187565, 9.12134892565581, 8.62445439902655, 7.08764128563882, 8.88558170770025, 10.4917730540201, 8.59317325848569, 10.4843552031404, 10.4561751934523, 8.7332069177698, 7.91031463705507, 9.54483684623477, 7.91230778239703, 9.96000870300698, 7.50747982380046, 8.66163936729802], "y": [-24.9564500766131, -24.1085882303524, -25.406458438883, -26.221123735212, -24.9402199712675, -24.7525452505962, -23.6916033252695, -25.4532064167669, -24.9017368091957, -23.6691196277574, -24.0851405671374, -25.7723757144503, -26.3821247172603, -25.917415470598, -25.0923710171921, -25.693013825716, -25.8696547527539, -24.7268097605465, -25.4584771348534, -23.6430317638401, -25.210742859168, -25.0075220445091, -24.6165173056368, -24.3979162697126, -24.0456088828392, -24.0143220882407, -24.0317392127439, -24.9378357479411, -25.4413412628592, -23.9714460236283, -25.1284246524849, -23.0554837058739, -24.5065150900986, -25.9170445086434, -26.4358618188666, -23.7188566565353, -25.9143275028886, -24.4576452695865, -25.5048089366753, -24.4487225076896], "name": "setosa", "mode": "markers", "line": {}, "marker": {"size": 6, "symbol": "circle", "maxdisplayed": 41, "line": {"width": 0.5}, "color": "rgb(255,0,0)"}, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": true, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-10, -5, 0, 5, 10, 15], "range": [-10, 15], "mirror": "ticks", "ticktext": ["-10", "-5", "0", "5", "10", "15"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-30, -25, -20, -15, -10, -5, 0, 5, 10, 15, 20], "range": [-30, 20], "mirror": "ticks", "ticktext": ["-30", "-25", "-20", "-15", "-10", "-5", "0", "5", "10", "15", "20"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}], "legend": {"x": 0.684265873015873, "xref": "paper", "xanchor": "left", "y": 0.457579365079365, "yref": "paper", "yanchor": "bottom", "traceorder": "normal", "borderwidth": 0.5, "bordercolor": "rgb(38.25,38.25,38.25)", "bgcolor": "rgb(255,255,255)", "font": {"size": 9, "family": "Arial, sans-serif", "color": "rgb(0,0,0_)"}}}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_402183985222 index=402183985222 %}


<!--------------------- EXAMPLE BREAK ------------------------->

## Compare t-SNE Loss

Find both 2-D and 3-D embeddings of the Fisher iris data, and compare the loss for each embedding. It is likely that the loss is lower for a 3-D embedding, because this embedding has more freedom to match the original data.

```{matlab}
load fisheriris
rng default % for reproducibility
[Y,loss] = tsne(meas,'Algorithm','exact');
rng default % for fair comparison
[Y2,loss2] = tsne(meas,'Algorithm','exact','NumDimensions',3);
fprintf('2-D embedding has loss %g, and 3-D embedding has loss %g.\n',loss,loss2)
```
```
2-D embedding has loss 0.12929, and 3-D embedding has loss 0.0992412.
```

As expected, the 3-D embedding has lower loss.

View the embeddings. Use RGB colors `[1 0 0]`, `[0 1 0]`, and `[0 0 1]`.

For the 3-D plot, convert the species to numeric values using the `categorical` command, then convert the numeric values to RGB colors using the `sparse` function as follows. If `v` is a vector of positive integers 1, 2, or 3, corresponding to the species data, then the command

`sparse(1:numel(v),v,ones(size(v)))`

is a sparse matrix whose rows are the RGB colors of the species.

```{matlab}
load fisheriris
rng default % for reproducibility
[Y,loss] = tsne(meas,'Algorithm','exact');
rng default % for fair comparison
[Y2,loss2] = tsne(meas,'Algorithm','exact','NumDimensions',3);
fprintf('2-D embedding has loss %g, and 3-D embedding has loss %g.\n',loss,loss2)

gscatter(Y(:,1),Y(:,2),species,eye(3))
title('2-D Embedding')
```
```
2-D embedding has loss 0.12929, and 3-D embedding has loss 0.0992412.
```

```{matlab}
load fisheriris
rng default % for reproducibility
[Y,loss] = tsne(meas,'Algorithm','exact');
rng default % for fair comparison
[Y2,loss2] = tsne(meas,'Algorithm','exact','NumDimensions',3);
fprintf('2-D embedding has loss %g, and 3-D embedding has loss %g.\n',loss,loss2)

figure
v = double(categorical(species));
c = full(sparse(1:numel(v),v,ones(size(v)),numel(v),3));
scatter3(Y2(:,1),Y2(:,2),Y2(:,3),15,c,'filled')
title('3-D Embedding')
view(-50,8)

fig2plotly(gcf)
```
```
2-D embedding has loss 0.12929, and 3-D embedding has loss 0.0992412.

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
{% capture plot_471357153711 %}
{% raw %}{"data": {"type": "scatter3d", "scene": "scene1", "mode": "markers", "visible": true, "name": "", "x": [-18.3055063113506, -16.3063908860897, -17.757100296247, -17.5603767025561, -18.2935629290636, -17.4692141916114, -18.6415607010205, -17.7636653204219, -17.4786867914652, -16.7344530034878, -18.0736880599717, -17.9243495681283, -16.5876382182227, -18.1469935653071, -19.0434871613699, -18.3142914418324, -18.9081022729421, -17.4835111288466, -17.8725336884557, -18.147354349622, -17.6745947748877, -17.2554100010073, -19.1557046514844, -16.2482526869819, -17.3332544367923, -15.988748092771, -16.6952494036559, -17.8571542259225, -18.2432692547511, -17.7286636722703, -16.9429677550515, -17.2188283823819, -18.2788482375783, -18.6635877464393, -16.815975763687, -17.1566879378054, -18.738506063258, -18.7143657119137, -17.5798892089307, -17.6261123667891, -17.7455169887735, -16.4331995295224, -18.4884614501551, -16.1751944914696, -16.5589091931244, -16.7948502890489, -17.6421850335211, -18.0394084493207, -18.2946859032289, -17.362959211321, 9.54820755672347, 7.87032745666218, 9.83083804797834, 2.05917920718216, 7.74245259005277, 4.04092144108953, 8.116222437116, -0.0509538678454905, 8.03393892119637, 1.54504944320628, 0.406820270572154, 4.85240207053136, 2.39676926050327, 6.59632800588031, 1.35521480074113, 8.4522510433976, 4.4914975623421, 2.8499412757408, 5.42368860036984, 2.08713677715396, 7.57152923833461, 4.20574133656838, 7.39727620225466, 6.09471338147064, 6.74426098548729, 7.81766327549766, 8.94149135955063, 10.1767052935155, 5.81169526351451, 1.12721498774095, 1.40765466673534, 1.39292557578288, 2.98406973588077, 7.73265826640566, 3.87310637026766, 7.12890724458818, 9.03684258738546, 5.27539379818202, 3.53208720132254, 2.12470186723277, 2.72230453778708, 6.53446010088533, 2.67356916428503, 0.146352538200015, 2.8454266279942, 4.03973126462006, 3.68708671360379, 5.84257316624206, -0.22563102067261, 3.34389453209905, 13.8021780449223, 7.82569173060627, 14.1931711979801, 10.9681200984743, 12.8968410123908, 15.7232956131142, 2.38074552746004, 14.8826210736268, 11.9916751548865, 15.5088587975761, 11.8706408666528, 10.3919543524924, 12.9917043230253, 7.28527807067702, 8.38123067268136, 12.7196389292266, 11.5652320949722, 16.4133653729524, 15.6654853271722, 6.66044389904495, 14.2720692099067, 7.35428324760829, 15.5836972985627, 8.55039443630522, 13.5199645949478, 14.6311134678807, 8.07795934114212, 8.22273312627116, 11.8475042072065, 13.9561468312995, 14.5236442756159, 16.3901941310698, 12.0906467275812, 8.46664287370426, 9.07752299290952, 15.2564287003745, 13.4156595514088, 11.4428550851275, 7.62995873222847, 13.4351328174997, 13.7011460388181, 13.3907248957519, 7.82569173060626, 14.192689909905, 14.2986481107345, 12.9572066647034, 8.71137822020945, 11.6257682182161, 12.8770956485629, 8.23433273321069], "y": [-27.0143834761759, -26.6959134392726, -26.9366288725813, -25.6217167902132, -27.7329120736501, -27.820336817943, -26.474951939353, -26.543139410297, -25.797058538923, -25.9879486727598, -27.0240735949406, -25.8280548294233, -25.9768683665366, -26.5037688296702, -27.3972679604412, -28.1071573723342, -27.7523805975427, -27.2878315108403, -27.0108667103608, -28.1726104568361, -25.7971167855529, -27.745021742678, -27.6771393736784, -26.0267753609262, -24.8552148142033, -25.8553077929395, -26.4669332278401, -26.7240079440886, -26.2787263816076, -25.5019996894014, -25.3776337885354, -26.2307596400239, -28.7347310502107, -28.3158280405538, -26.4338359384788, -27.5593249097675, -26.3124304713655, -27.4269019213913, -26.6775068074087, -26.3579940428526, -27.7097943393941, -26.1727575008664, -26.4665656298725, -26.9738458875514, -27.963776287154, -26.7247634145497, -28.2574994306617, -26.1897102627421, -27.3413541500269, -26.899910274089, 12.020790462625, 13.462902665389, 11.9934547277183, 15.1131567944904, 12.3276104756202, 14.4320877476673, 14.0437393561527, 14.8372934428972, 12.0510124614045, 15.3552268077231, 15.1877136734273, 14.2384290090719, 12.9150948801002, 13.4977562253682, 13.8773955565651, 12.5345229843277, 15.1671446557173, 13.4560603942483, 11.606315158047, 14.1444388139976, 14.874077261723, 13.3060531002572, 12.1055081694495, 13.0828004580857, 12.712960874511, 12.5155276795784, 11.6988552757313, 12.1102036345293, 14.0157105895261, 13.5640458544093, 14.5343602806748, 14.2575551876282, 14.0480895820182, 13.0174394658443, 15.5688860171029, 14.9300664357546, 12.5291411566396, 11.6515417029009, 15.188821711342, 14.8502112547788, 14.8590002409712, 13.7613595279173, 13.7562196969526, 14.5864741282412, 14.6200743837953, 14.7159426497362, 14.310939579675, 13.2208127465807, 14.3055355571473, 14.3908801109039, 13.029815945723, 14.027446854248, 10.5922788546506, 11.8328791601467, 12.0511113387544, 9.62002440921679, 16.2731180371211, 9.41215930155364, 10.5703419873923, 11.2997164304569, 12.6229668255807, 12.2702233151112, 11.3522744312964, 14.2281319287339, 14.7359741192574, 13.0253995394099, 11.5531953429461, 10.3894177967749, 9.45235832418783, 12.1005019803956, 11.487863977275, 14.8475388691677, 9.20800690790412, 12.8833622730088, 11.6361809976439, 9.98601143984083, 13.3163493850232, 14.0534806944804, 11.9323234606263, 9.6222626254594, 9.68467720127979, 10.1655423528757, 12.3083538038306, 12.1666436025127, 11.7381582156818, 10.2637245468298, 13.355739828056, 11.9617198048944, 14.2820596753418, 11.3670809032186, 12.2567885933731, 11.9755001297041, 14.027446854248, 11.7020936367645, 12.4903794632986, 12.2384125332499, 12.6448044276838, 12.3549218130178, 13.6528699202973, 14.3842119506253], "z": [2.96306345177568, 5.86089653990724, 6.06506356020661, 6.47846113991636, 3.04758131494189, 0.340707412059749, 5.66807578315133, 3.77190393855139, 7.48680228235892, 5.30652403388378, 0.919371105415337, 4.51182052164952, 6.38072975362564, 7.83065191005123, -0.377259877755971, -0.759852017652144, 0.639994871872005, 2.91405227358436, -0.168993153663574, 1.87922292989831, 1.46907396069903, 2.05712463061707, 5.67333271147992, 2.91953931015074, 4.17700762347444, 5.20284932881883, 3.29959127410407, 2.2566259469079, 2.70116860985532, 5.53776036697635, 5.59169763508183, 1.53729846279319, 0.687264349327659, -0.11228125034008, 5.2588295907943, 5.06351319958613, 1.20187178873768, 3.74770697011803, 7.36505122763588, 3.17325982764181, 3.63468213789423, 7.99273023888469, 6.96075860984361, 2.61239650569338, 1.08432890234148, 6.3421079681123, 1.59355835296049, 6.25991552807984, 1.45860556649959, 4.30545233584422, 0.800038506644191, 0.646481266310832, 0.0375867011570966, 2.6600318622484, -0.0884294433148028, 0.296487807532248, -0.0878295179805163, 2.73138777382963, 0.532161314097107, 1.58412489224092, 3.23981327025431, 1.20522293560646, 2.82665435846007, -0.56287230258066, 1.56923037156577, 1.19703621491062, 0.236083831590671, 1.61713631579052, -1.06303021590311, 2.58466902826436, -1.7102727899351, 1.93874849967373, -2.12436586540066, -0.325494703550179, 1.12956039868258, 1.07279993894516, 0.0180372480607537, -1.12068610612185, 0.0776653383899648, 2.58619408566596, 2.48731347860615, 3.13239973310372, 2.57582801442662, -3.18368457914764, 0.228730750597348, 0.0284844582670278, 0.344287409930233, -0.591551534684983, 1.65015592233369, 1.93618350884909, 0.649096981241463, 0.0140069006856031, 2.06551158327574, 3.24876558018242, 1.23089118191792, 1.6115240028567, 1.13177281840216, 1.07137470720816, 2.9281808203845, 1.81147489653087, -5.85778926422246, -3.7926389209044, -5.60125611214188, -4.77939907448592, -5.52837353303773, -6.29764544647146, 0.259930848921308, -5.88650632982297, -5.51094008178609, -5.74568345996071, -2.99934781892354, -3.85388453371437, -4.3976737242775, -4.18664466743221, -4.50688087808323, -4.07732028734461, -4.25771325715084, -6.24705157159239, -7.12902713327482, -2.96662959093682, -4.78382998133615, -3.67760993392145, -6.5840243875995, -2.42861889352698, -5.12726350143554, -5.34944341392386, -2.05544928641226, -2.13456849492229, -5.14796737480899, -5.37498878330171, -6.2432283639813, -5.8014460299453, -5.20189554935116, -2.34720482713615, -4.50573546200501, -6.55591690877556, -5.01708032441733, -4.26989668326833, -2.01552491035621, -3.925125498043, -4.59217796420732, -3.12428458026679, -3.7926389209044, -5.63097236552586, -5.03953879340758, -3.49286905660213, -3.20453503542274, -3.41530903477553, -4.59881204051503, -2.97657393655125], "marker": {"sizeref": 1, "sizemode": "area", "size": 2.25, "line": {"width": 0.5, "color": "rgba(0,0,0,0)"}, "symbol": "circle", "color": ["rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(255.000000,0.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,255.000000,0.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)", "rgb(0.000000,0.000000,255.000000)"], "opacity": 1}, "showlegend": true}, "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-20, -10, 0, 10, 20], "range": [-20, 20], "mirror": false, "ticktext": ["-20", "-10", "0", "10", "20"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": false, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-30, -20, -10, 0, 10, 20], "range": [-30, 20], "mirror": false, "ticktext": ["-30", "-20", "-10", "0", "10", "20"], "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b>3-D Embedding<\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_471357153711 index=471357153711 %}


<!--------------------- EXAMPLE BREAK ------------------------->

