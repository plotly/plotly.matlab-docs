---
description: How to do PCA Visualization in MATLAB<sup>&reg;</sup> with Plotly.
display_as: ai_ml
language: matlab
layout: base
name: PCA Visualization
order: 2
page_type: u-guide
permalink: matlab/pca-visualization/
thumnail_github: pca-visualization.png
---

## Principal Components of a Data Set

Load the sample data set. 

```{matlab}
load hald
```

The ingredients data has 13 observations for 4 variables. 

Find the principal components for the ingredients data. 

```{matlab}
load hald

coeff = pca(ingredients)
```
<pre class="code-output">
coeff =

  Columns 1 through 3

  -0.067799985695474  -0.646018286568728   0.567314540990512
  -0.678516235418647  -0.019993340484099  -0.543969276583817
   0.029020832106229   0.755309622491133   0.403553469172668
   0.730873909451461  -0.108480477171676  -0.468397518388289

  Column 4

   0.506179559977705
   0.493268092159297
   0.515567418476836
   0.484416225289198
</pre>


The rows of `coeff` contain the coefficients for the four ingredient variables, and its columns correspond to four principal components. 





## PCA in the Presence of Missing Data

Find the principal component coefficients when
there are missing values in a data set.

Load the sample data set.

```{matlab}
load imports-85
```

Data matrix `X` has 13 continuous variables
in columns 3 to 15: wheel-base, length, width, height, curb-weight,
engine-size, bore, stroke, compression-ratio, horsepower, peak-rpm,
city-mpg, and highway-mpg. The variables bore and stroke are missing
four values in rows 56 to 59, and the variables horsepower and peak-rpm
are missing two values in rows 131 and 132.

Perform principal component analysis.

```{matlab}
load imports-85

coeff = pca(X(:,3:15));
```

By default, `pca` performs the action specified
by the `'Rows','complete'` name-value pair argument.
This option removes the observations with `NaN` values
before calculation. Rows of `NaN`s are reinserted
into `score` and `tsquared` at the
corresponding locations, namely rows 56 to 59, 131, and 132.

Use `'pairwise'` to perform the principal
component analysis.

```{matlab}
load imports-85

coeff = pca(X(:,3:15),'Rows','pairwise');
```

In this case, `pca` computes the (i,j)
element of the covariance matrix using the rows with no `NaN` values
in the columns i or j of `X`.
Note that the resulting covariance matrix might not be positive definite.
This option applies when the algorithm `pca` uses
is eigenvalue decomposition. When you don’t specify the algorithm,
as in this example, `pca` sets it to `'eig'`.
If you require `'svd'` as the algorithm, with the `'pairwise'` option,
then `pca` returns a warning message, sets the algorithm
to `'eig'` and continues. 

If you use the `'Rows','all'` name-value
pair argument, `pca` terminates because this option
assumes there are no missing values in the data set. 

```{matlab}
load imports-85

coeff = pca(X(:,3:15),'Rows','all');
```
<pre class="code-output">
<font color="red">...ERROR...<br>Raw data contains NaN missing value while 'Rows' option is set to 'all'. Consider using 'complete' or 'pairwise' option, or using 'als' algorithm instead.</font>
</pre>





## Weighted PCA

Use the inverse variable variances as weights while performing the principal components analysis. 

Load the sample data set. 

```{matlab}
load hald
```

Perform the principal component analysis using the inverse of variances of the ingredients as variable weights. 

```{matlab}
load hald

[wcoeff,~,latent,~,explained] = pca(ingredients,'VariableWeights','variance');
```


Note that the coefficient matrix, `wcoeff`, is not orthonormal. 

Calculate the orthonormal coefficient matrix. 

```{matlab}
load hald
[wcoeff,~,latent,~,explained] = pca(ingredients,'VariableWeights','variance');

coefforth = inv(diag(std(ingredients)))* wcoeff
```
<pre class="code-output">
coefforth =

  Columns 1 through 3

  -0.475955172748972   0.508979384806409  -0.675500187964285
  -0.563870242191993  -0.413931487136986   0.314420442819292
   0.394066533909305  -0.604969078471438  -0.637691091806566
   0.547931191260862   0.451235109330017   0.195420962611708

  Column 4

   0.241052184051094
   0.641756074427214
   0.268466110294533
   0.676734019481283
</pre>



Check orthonormality of the new coefficient matrix, `coefforth`. 

```{matlab}
load hald
[wcoeff,~,latent,~,explained] = pca(ingredients,'VariableWeights','variance');
coefforth = inv(diag(std(ingredients)))* wcoeff;

coefforth*coefforth'
```
<pre class="code-output">
ans =

  Columns 1 through 3

   1.000000000000000   0.000000000000000  -0.000000000000000
   0.000000000000000   1.000000000000000   0.000000000000000
  -0.000000000000000   0.000000000000000   1.000000000000000
  -0.000000000000000   0.000000000000000  -0.000000000000000

  Column 4

  -0.000000000000000
   0.000000000000000
  -0.000000000000000
   1.000000000000000
</pre>





## PCA Using ALS for Missing Data

Find the principal components using the alternating least squares (ALS) algorithm when there are missing values in the data. 

Load the sample data. 

```{matlab}
load hald
```

The ingredients data has 13 observations for 4 variables. 

Perform principal component analysis using the ALS algorithm and display the component coefficients. 

```{matlab}
load hald

[coeff,score,latent,tsquared,explained] = pca(ingredients);
coeff
```
<pre class="code-output">
coeff =

  Columns 1 through 3

  -0.067799985695474  -0.646018286568728   0.567314540990512
  -0.678516235418647  -0.019993340484099  -0.543969276583817
   0.029020832106229   0.755309622491133   0.403553469172668
   0.730873909451461  -0.108480477171676  -0.468397518388289

  Column 4

   0.506179559977705
   0.493268092159297
   0.515567418476836
   0.484416225289198
</pre>



Introduce missing values randomly. 

```{matlab}
load hald
[coeff,score,latent,tsquared,explained] = pca(ingredients);

y = ingredients;
rng('default'); % for reproducibility
ix = random('unif',0,1,size(y))<0.30; 
y(ix) = NaN
```
<pre class="code-output">
y =

     7    26     6   NaN
     1    29    15    52
   NaN   NaN     8    20
    11    31   NaN    47
     7    52     6    33
   NaN    55   NaN   NaN
   NaN    71   NaN     6
     1    31   NaN    44
     2   NaN   NaN    22
    21    47     4    26
   NaN    40    23    34
    11    66     9   NaN
    10    68     8    12
</pre>



Approximately 30% of the data has missing values now, indicated by `NaN`. 

Perform principal component analysis using the ALS algorithm and display the component coefficients. 

```{matlab}
load hald
[coeff,score,latent,tsquared,explained] = pca(ingredients);
y = ingredients;
rng('default'); % for reproducibility
ix = random('unif',0,1,size(y))<0.30; 
y(ix) = NaN;

[coeff1,score1,latent,tsquared,explained,mu1] = pca(y,'algorithm','als');
coeff1
```
<pre class="code-output">
coeff1 =

  Columns 1 through 3

  -0.036212338541055   0.821521833463707  -0.525180807034516
  -0.683141604556494  -0.099847237932408   0.182836485390674
   0.016929757180232   0.557510085824824   0.821489828858883
   0.729191057256728  -0.065687977768361   0.126136436504135

  Column 4

   0.219033475985740
   0.699942066753560
  -0.118534166411284
   0.669369173908958
</pre>


Display the estimated mean. 

```{matlab}
load hald
[coeff,score,latent,tsquared,explained] = pca(ingredients);
y = ingredients;
rng('default'); % for reproducibility
ix = random('unif',0,1,size(y))<0.30; 
y(ix) = NaN;

[coeff1,score1,latent,tsquared,explained,mu1] = pca(y,'algorithm','als');
mu1
```
<pre class="code-output">
mu1 =

  Columns 1 through 3

   8.995597151700496  47.908800869772193   9.045133815910839

  Column 4

  28.551458070546648
</pre>



Reconstruct the observed data. 

```{matlab}
load hald
[coeff,score,latent,tsquared,explained] = pca(ingredients);
y = ingredients;
rng('default'); % for reproducibility
ix = random('unif',0,1,size(y))<0.30; 
y(ix) = NaN;

[coeff1,score1,latent,tsquared,explained,mu1] = pca(y,'algorithm','als');
t = score1*coeff1' + repmat(mu1,13,1)
```
<pre class="code-output">
t =

  Columns 1 through 3

   6.999999999999997  25.999999999999972   5.999999999999996
   0.999999999999986  28.999999999999968  15.000000000000011
  10.781877383662085  53.023021922864480   7.999999999999999
  11.000000000000002  30.999999999999996  13.549987432049472
   6.999999999999996  52.000000000000000   6.000000000000012
  10.481832029571297  55.000000000000000   7.832799509066273
   3.098161701207570  71.000000000000014  11.949103806476206
   0.999999999999980  30.999999999999968  -0.516112356202619
   1.999999999999988  53.791389384174103   5.770961215451544
  21.000000000000014  47.000000000000000   3.999999999999998
  21.580891857665534  39.999999999999986  23.000000000000014
  10.999999999999996  66.000000000000014   9.000000000000002
   9.999999999999998  68.000000000000000   8.000000000000009

  Column 4

  51.524967145094379
  52.000000000000021
  19.999999999999996
  47.000000000000014
  32.999999999999950
  17.936171158236188
   5.999999999999915
  44.000000000000000
  22.000000000000000
  25.999999999999989
  33.999999999999993
   5.707816613776032
  11.999999999999943
</pre>



The ALS algorithm estimates the missing values in the data. 

Another way to compare the results is to find the angle between the two spaces spanned by the coefficient vectors. Find the angle between the coefficients found for complete data and data with missing values using ALS. 

```{matlab}
load hald
[coeff,score,latent,tsquared,explained] = pca(ingredients);
y = ingredients;
rng('default'); % for reproducibility
ix = random('unif',0,1,size(y))<0.30; 
y(ix) = NaN;
[coeff1,score1,latent,tsquared,explained,mu1] = pca(y,'algorithm','als');
t = score1*coeff1' + repmat(mu1,13,1);

subspace(coeff,coeff1)
```
<pre class="code-output">
ans =

     6.872983007538972e-16
</pre>


This is a small value. It indicates that the results if you use `pca` with `'Rows','complete'` name-value pair argument when there is no missing data and if you use `pca` with `'algorithm','als'` name-value pair argument when there is missing data are close to each other. 

Perform the principal component analysis using `'Rows','complete'` name-value pair argument and display the component coefficients. 

```{matlab}
load hald
[coeff,score,latent,tsquared,explained] = pca(ingredients);
y = ingredients;
rng('default'); % for reproducibility
ix = random('unif',0,1,size(y))<0.30; 
y(ix) = NaN;

[coeff2,score2,latent,tsquared,explained,mu2] = pca(y,'Rows','complete');
coeff2
```
<pre class="code-output">
coeff2 =

  -0.205420225953307   0.858688026698708   0.049181247828161
  -0.669364063599413  -0.371998098041251   0.551021387596589
   0.147356319504436  -0.351257041216125  -0.518714827525170
   0.698598880784301  -0.029845918549515   0.651837067815822
</pre>



In this case, `pca` removes the rows with missing values, and `y` has only four rows with no missing values. `pca` returns only three principal components. You cannot use the `'Rows','pairwise'` option because the covariance matrix is not positive semidefinite and `pca` returns an error message. 

Find the angle between the coefficients found for complete data and data with missing values using listwise deletion (when `'Rows','complete'`). 

```{matlab}
load hald
[coeff,score,latent,tsquared,explained] = pca(ingredients);
y = ingredients;
rng('default'); % for reproducibility
ix = random('unif',0,1,size(y))<0.30; 
y(ix) = NaN;
[coeff2,score2,latent,tsquared,explained,mu2] = pca(y,'Rows','complete');

subspace(coeff(:,1:3),coeff2)
```
<pre class="code-output">
ans =

   0.357607357590711
</pre>



The angle between the two spaces is substantially larger. This indicates that these two results are different. 

Display the estimated mean. 

```{matlab}
load hald
[coeff,score,latent,tsquared,explained] = pca(ingredients);
y = ingredients;
rng('default'); % for reproducibility
ix = random('unif',0,1,size(y))<0.30; 
y(ix) = NaN;
[coeff2,score2,latent,tsquared,explained,mu2] = pca(y,'Rows','complete');

mu2
```
<pre class="code-output">
mu2 =

  Columns 1 through 3

   7.888888888888889  46.909090909090907   9.875000000000000

  Column 4

  29.600000000000001
</pre>




In this case, the mean is just the sample mean of `y`. 

Reconstruct the observed data. 

```{matlab}
load hald
[coeff,score,latent,tsquared,explained] = pca(ingredients);
y = ingredients;
rng('default'); % for reproducibility
ix = random('unif',0,1,size(y))<0.30; 
y(ix) = NaN;
[coeff2,score2,latent,tsquared,explained,mu2] = pca(y,'Rows','complete');

score2*coeff2'
```
<pre class="code-output">
ans =

  Columns 1 through 3

                 NaN                 NaN                 NaN
  -7.516185143683813 -18.354534728448066   4.096758018165185
                 NaN                 NaN                 NaN
                 NaN                 NaN                 NaN
  -0.564429969715416   5.321307756733086  -3.343158339022808
                 NaN                 NaN                 NaN
                 NaN                 NaN                 NaN
                 NaN                 NaN                 NaN
                 NaN                 NaN                 NaN
  12.831514933168062  -0.107632488812891  -6.333304231731043
                 NaN                 NaN                 NaN
                 NaN                 NaN                 NaN
   1.467986895710465  20.634225817831361  -2.929186618770285

  Column 4

                 NaN
  22.005631390194360
                 NaN
                 NaN
   3.603980833482452
                 NaN
                 NaN
                 NaN
                 NaN
  -3.775776525301393
                 NaN
                 NaN
 -18.004319332087810
</pre>




This shows that deleting rows containing `NaN` values does not work as well as the ALS algorithm. Using ALS is better when the data has too many missing values. 





## Principal Component Coefficients, Scores, and Variances

Find the coefficients, scores, and variances of the principal components. 

Load the sample data set. 

```{matlab}
load hald
```

The ingredients data has 13 observations for 4 variables. 

Find the principal component coefficients, scores, and variances of the components for the ingredients data. 

```{matlab}
load hald

[coeff,score,latent] = pca(ingredients);
```


Each column of `score` corresponds to one principal component. The vector, `latent`, stores the variances of the four principal components. 

Reconstruct the centered ingredients data. 

```{matlab}
load hald
[coeff,score,latent] = pca(ingredients);

Xcentered = score*coeff'
```
<pre class="code-output">
Xcentered =

  Columns 1 through 3

  -0.461538461538459 -22.153846153846157  -5.769230769230774
  -6.461538461538464 -19.153846153846153   3.230769230769226
   3.538461538461541   7.846153846153848  -3.769230769230770
   3.538461538461538 -17.153846153846143  -3.769230769230777
  -0.461538461538459   3.846153846153846  -5.769230769230769
   3.538461538461541   6.846153846153848  -2.769230769230769
  -4.461538461538460  22.846153846153818   5.230769230769237
  -6.461538461538467 -17.153846153846153  10.230769230769228
  -5.461538461538463   5.846153846153832   6.230769230769233
  13.538461538461540  -1.153846153846135  -7.769230769230773
  -6.461538461538466  -8.153846153846160  11.230769230769232
   3.538461538461542  17.846153846153840  -2.769230769230766
   2.538461538461542  19.846153846153840  -3.769230769230764

  Column 4

  30.000000000000021
  22.000000000000021
 -10.000000000000000
  17.000000000000000
   3.000000000000000
  -8.000000000000005
 -23.999999999999996
  14.000000000000007
  -7.999999999999992
  -4.000000000000015
   4.000000000000006
 -18.000000000000007
 -18.000000000000000
</pre>



The new data in `Xcentered` is the original ingredients data centered by subtracting the column means from corresponding columns. 

Visualize both the orthonormal principal component coefficients for each variable and the principal component scores for each observation in a single plot.

```{matlab}
load hald
[coeff,score,latent] = pca(ingredients);
Xcentered = score*coeff';

biplot(coeff(:,1:2),'scores',score(:,1:2),'varlabels',{'v_1','v_2','v_3','v_4'});

fig2plotly(gcf);
```
{% capture plot_655098003974 %}{% raw %}{"data": [{"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [0, -0.0677999856954741, null, 0, -0.678516235418647, null, 0, 0.029020832106229, null, 0, 0.730873909451461, null], "y": [0, -0.646018286568728, null, 0, -0.0199933404840993, null, 0, 0.755309622491133, null, 0, -0.108480477171676, null], "line": {"color": "rgb(0,113.985,188.955)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "markers", "x": [-0.0677999856954741, -0.678516235418647, 0.029020832106229, 0.730873909451461], "y": [-0.646018286568728, -0.0199933404840993, 0.755309622491133, -0.108480477171676], "line": {}, "marker": {"size": 3.6, "symbol": "circle", "maxdisplayed": 5, "line": {"width": 0.5}, "color": "rgb(0,113.985,188.955)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "lines", "x": [-0.830840584740246, 0.830840584740246, null, 0, 0], "y": [0, 0, null, -0.830840584740246, 0.830840584740246], "line": {"color": "rgb(33,33,33)", "width": 0.5, "dash": "solid"}, "marker": {"size": 3.6, "line": {"width": 0.5}, "color": "rgb(33,33,33)"}, "showlegend": false}, {"type": "scatter", "xaxis": "x1", "yaxis": "y1", "visible": true, "name": "", "mode": "markers", "x": [0.755866942340936, 0.607768860563822, -0.266485836948459, 0.486808481996306, -0.011355745941142, -0.221955434404188, -0.668959704808564, 0.464057025402233, -0.190139497525539, -0.0674122966083764, 0.189265918790288, -0.5251990102672, -0.552259702590116], "y": [-0.141043240541916, 0.0946507446783786, -0.0863171443649695, -0.136181758610551, -0.0915890433446132, -0.0748556740171551, 0.184335479565507, 0.220178057380639, 0.184448937378935, -0.2906161669747, 0.254257597446798, -0.0571017280472755, -0.0601660605490777], "line": {}, "marker": {"size": 3.6, "symbol": "circle", "maxdisplayed": 14, "line": {"width": 0.5}, "color": "rgb(216.75,82.875,24.99)"}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8], "range": [-0.830840584740246, 0.830840584740246], "mirror": false, "ticktext": ["-0.8", "-0.6", "-0.4", "-0.2", "0", "0.2", "0.4", "0.6", "0.8"], "title": "Component 1", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "inside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8], "range": [-0.830840584740246, 0.830840584740246], "mirror": false, "ticktext": ["-0.8", "-0.6", "-0.4", "-0.2", "0", "0.2", "0.4", "0.6", "0.8"], "title": "Component 2", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": "v_4", "x": 0.746873909451461, "y": -0.0924804771716762, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": "v_3", "x": 0.045020832106229, "y": 0.771309622491133, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": "v_2", "x": -0.662516235418647, "y": -0.0039933404840993, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}, {"showarrow": false, "xref": "x1", "yref": "y1", "xanchor": "left", "align": "left", "yanchor": "middle", "text": "v_1", "x": -0.0517999856954741, "y": -0.630018286568728, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 10}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_655098003974 index=655098003974 %}



All four variables are represented in this biplot by a vector, and the direction and length of the vector indicate how each variable contributes to the two principal components in the plot. For example, the first principal component, which is on the horizontal axis, has positive coefficients for the third and fourth variables. Therefore, vectors v3 and v4 are directed into the right half of the plot. The largest coefficient in the first principal component is the fourth, corresponding to the variable v4.

The second principal component, which is on the vertical axis, has negative coefficients for the variables v1, v2, and v4, and a positive coefficient for the variable v3.

This 2-D biplot also includes a point for each of the 13 observations, with coordinates indicating the score of each observation for the two principal components in the plot. For example, points near the left edge of the plot have the lowest scores for the first principal component. The points are scaled with respect to the maximum score value and maximum coefficient length, so only their relative locations can be determined from the plot.





## T-Squared Statistic

Find the Hotelling’s T-squared statistic values. 

Load the sample data set. 

```{matlab}
load hald
```

The ingredients data has 13 observations for 4 variables. 

Perform the principal component analysis and request the T-squared values. 

```{matlab}
load hald

[coeff,score,latent,tsquared] = pca(ingredients);
tsquared
```
<pre class="code-output">
tsquared =

   5.680340841490951
   3.075837035211966
   6.000232793912613
   2.619763232047952
   3.368139445336655
   0.566796674771214
   3.481840731756962
   3.979397901620163
   2.608586242833568
   7.481756329327637
   4.183022234152593
   2.232718720505654
   2.721567817032093
</pre>



Request only the first two principal components and compute the T-squared values in the reduced space of requested principal components. 

```{matlab}
load hald

[coeff,score,latent,tsquared] = pca(ingredients,'NumComponents',2);
tsquared
```
<pre class="code-output">
tsquared =

   5.680340841490951
   3.075837035211966
   6.000232793912613
   2.619763232047952
   3.368139445336655
   0.566796674771214
   3.481840731756962
   3.979397901620163
   2.608586242833568
   7.481756329327637
   4.183022234152593
   2.232718720505654
   2.721567817032093
</pre>


Note that even when you specify a reduced component space, `pca` computes the T-squared values in the full space, using all four components. 

The T-squared value in the reduced space corresponds to the Mahalanobis distance in the reduced space. 

```{matlab}
load hald
[coeff,score,latent,tsquared] = pca(ingredients,'NumComponents',2);

tsqreduced = mahal(score,score)
```
<pre class="code-output">
tsqreduced =

   3.317920809184487
   2.007906801224291
   0.587427300774747
   1.738161538935849
   0.295525889978777
   0.422793560910442
   3.245670063829735
   2.691429716874080
   1.361859279884830
   2.990295498144076
   2.437109148953179
   1.378818611291408
   1.525081780014097
</pre>



Calculate the T-squared values in the discarded space by taking the difference of the T-squared values in the full space and Mahalanobis distance in the reduced space. 

```{matlab}
load hald
[coeff,score,latent,tsquared] = pca(ingredients,'NumComponents',2);
tsqreduced = mahal(score,score);

tsqdiscarded = tsquared - tsqreduced
```
<pre class="code-output">
tsqdiscarded =

   2.362420032306464
   1.067930233987675
   5.412805493137867
   0.881601693112104
   3.072613555357878
   0.144003113860771
   0.236170667927227
   1.287968184746083
   1.246726962948738
   4.491460831183561
   1.745913085199414
   0.853900109214246
   1.196486037017995
</pre>




## Percent Variability Explained by Principal Components

Find the percent variability explained by the principal components. Show the data representation in the principal components space.

Load the sample data set. 

```{matlab}
load imports-85
```

Data matrix `X` has 13 continuous variables in columns 3 to 15: wheel-base, length, width, height, curb-weight, engine-size, bore, stroke, compression-ratio, horsepower, peak-rpm, city-mpg, and highway-mpg. 

Find the percent variability explained by principal components of these variables. 

```{matlab}
load imports-85

[coeff,score,latent,tsquared,explained] = pca(X(:,3:15));
explained
```
<pre class="code-output">
explained =

  64.342913356114238
  35.448392662688399
   0.154993220067715
   0.037863222808984
   0.007807396888358
   0.004771746794250
   0.001304050511812
   0.001056438605476
   0.000529182750646
   0.000186613509121
   0.000158017147436
   0.000017269286049
   0.000006822827515
</pre>



The first three components explain 99.95% of all variability. 

Visualize the data representation in the space of the first three principal components.

```{matlab}
load imports-85
[coeff,score,latent,tsquared,explained] = pca(X(:,3:15));

scatter3(score(:,1),score(:,2),score(:,3))
axis equal
xlabel('1st Principal Component')
ylabel('2nd Principal Component')
zlabel('3rd Principal Component')

fig2plotly(gcf);
```
{% capture plot_162611735195 %}{% raw %}{"data": [{"type": "scatter3d", "scene": "scene1", "mode": "markers", "visible": true, "name": "", "x": [60.9330460982172, 60.9330460982189, 295.512756394536, -385.325784926617, 26.9009637846355, -240.258243810407, 43.8839912860603, 136.518005426043, 248.587564187436, 221.216091238923, -496.904037421166, -496.904037421166, 600.779213717667, 647.096220787659, 891.58965576803, 429.187103885566, 555.592489720539, 661.004472073843, -892.332383529972, -724.688909585178, -695.162335418226, -776.491432300275, -776.427970341212, -562.365402943768, -699.79467541983, -681.267872591833, -681.267872591833, -509.311675258018, 48.8600284550539, 285.349073423336, -540.341968777633, -1091.54967739205, -810.399064384003, -989.456153972971, -975.982115552609, -930.24055709682, -918.558612959472, -631.522353504318, -586.889601236872, -574.114527058352, -516.857969375254, -437.903844947286, -422.582823413483, -12.1351218496337, -724.688909585178, -695.214450540638, 216.252722205668, 1483.46816488866, 1483.46816488866, 1259.05368342661, -497.238189148218, -488.877804296457, -484.667167290094, -450.84369660382, -446.633044378404, null, null, null, null, 29.2775349394428, 50.3334073210532, 29.2775349394428, 50.3334073210532, 157.426312154624, 62.9653183401417, 164.849189600747, 615.410582546754, 1226.7788269294, 1424.68205076709, 1209.84564205341, 1441.78154479391, 1206.87292050916, 1159.98674928424, 1480.68218416821, 1324.42890415188, 369.119868057382, -741.007545027111, -719.048748432852, -668.521104356497, -548.054995705398, -357.049863726905, -125.581995157694, 303.875866465824, 377.983080821621, 382.193717827984, -94.430779211089, -60.7456831601863, -329.26715738539, -329.26715738539, -604.533995417315, -283.301592610859, -580.112300780411, -563.269752754959, -490.760232631482, -552.322096538416, -487.474686987399, -535.479548512965, -479.812576414939, -504.369805426311, -235.628687547211, -254.155490375207, 419.519305326097, 588.840521076404, 390.06032048847, 399.298855603637, 458.107993790521, 456.768680324131, 457.862514079391, 1062.87040872407, 634.983324468989, 1259.44219989096, 504.103516802092, 1109.18741579406, 681.221341247472, 1305.75920696095, 504.179521149382, 1109.18741579406, 232.296893497621, -741.122103648936, -562.365402943768, -699.79467541983, -681.087866678748, -510.52710211522, 48.8600314988645, 291.243958490547, -10.1494295484479, -237.642950872792, -237.642950872792, -200.589345216799, 360.00528566082, null, null, 19.8140294508941, 50.9727210958697, 61.0778530829002, 104.026747376042, 14.4341160722878, 47.2770847219179, -308.754464893138, 18.3066943308605, 119.351495784728, -173.897706300185, 77.8558833926313, -222.949592400225, 28.3593656020519, 134.692167981614, -51.6987438800033, -126.06443340389, 57.8384027006266, 252.671979856016, -310.589896375307, -264.238306295422, -285.291491327236, -61.9154445035531, -53.4286284240501, 637.115840619456, -228.91793015967, -205.33866151846, 94.9609106956486, 94.8486314491247, -218.101358076682, -194.354364386417, -179.196071163511, -154.74932886313, -125.27486981859, -1034.35145375599, -1004.87699471145, 162.368212823226, 158.999703218136, 171.631614237225, 279.423921600113, 308.898380644653, 528.695125348902, 300.552218466775, 268.523728325766, 374.686837957931, 374.688330930039, 411.740443613923, 319.100862000494, 352.792668862815, 449.530576800443, 465.816048754227, -78.0426171721703, -360.300255431124, -75.5162349683527, -357.773873227306, -304.719846947134, 131.789067109145, -416.697946071824, -456.031978835174, -483.714041291151, -110.50104600986, 350.981554382964, -195.428004810286, 154.890411637274, 257.631895456269, 174.252631055125, 264.362203855031, 428.527331118504, 522.847540924773, 188.619053563883, 325.549384935146, 188.330533053078, 732.422132469376, 281.303130242202], "y": [-109.379610318519, -109.379610318519, 39.9715702983918, 199.705855894334, 459.962238784637, 291.485791236185, 470.414098415928, 528.76131165529, 600.454499443054, 583.983506985827, 483.77328276521, 483.77328276521, -654.898355329008, -625.724748709327, -471.736134575074, 597.795674036164, 677.408969438407, 743.793630259215, -594.327934969095, -133.447111141255, -114.854148690986, -48.0075951338528, -47.9250123029576, 88.2307004650038, 0.344119874166747, 12.013562522039, 12.013562522039, 121.647814726654, -117.919672841349, 33.2677130354446, -726.573078957238, 344.547891337906, -69.6824580648055, 408.846789902798, 417.333657283069, 446.112895858146, 453.4766107501, 398.434874360622, 426.547622557769, 434.57987748558, 470.643856674796, 520.953027129764, 176.188703763871, -392.934762277246, -133.447111141255, -114.882088746913, -12.385742876501, 493.921629060001, 493.921629060001, 651.201282035035, -462.663332105973, -457.432644386546, -454.780498330212, -433.489144213798, -430.8369919557, null, null, null, null, -366.653703687957, -353.393638972795, -366.653703687957, -353.393638972795, -464.004343277259, -345.437200803791, -43.6205334539268, -706.747283410686, -142.45420536902, -17.8041541914728, -153.103984772212, -7.06393608912815, 318.869753682887, 289.429103046769, 197.242028065803, 98.8520387616758, 87.0423547035671, -25.6526081514004, -11.7788962040243, 20.0468564719909, 97.2460817111151, 218.061172723051, -227.775267905362, 44.9371517033046, 91.6149235351464, 94.2670695914809, -208.155981259892, -186.938812809215, 235.558742523454, 235.558742523454, -293.99243799066, -564.830371284327, -278.609990863919, -268.001406638581, -222.336915650439, -261.105826892111, -220.259443562938, -250.497242666772, -215.441335903969, -230.897216470165, -60.5482692844774, -72.2177119323497, 354.317321868467, 460.961163629872, 335.734307998828, 341.895198075961, 380.406209649961, 378.061149599293, 140.042015258784, -483.080112235025, 251.566189140262, -359.254944616353, 169.095511619556, -453.906505615345, 280.620425019379, -330.081337996673, 169.215621878465, -453.906505615345, 708.385789589063, -25.729537884183, 88.2307004650038, 0.344119874166747, 12.1098335906414, 119.55962459597, -117.919671600996, 36.9807147746534, 437.669730880658, 769.3216888371, 769.3216888371, 792.660574132845, 971.474989649134, null, null, 159.904763474151, 179.530674667487, 185.895663684745, 212.947714977303, 453.65477602556, 474.34151526497, -462.041858199722, -846.444455932223, -782.800179566055, -494.772830986496, -808.663899906985, -52.6823803646843, -367.285788142642, -299.273960631975, -417.762700858662, 8.34906081694926, -348.733518883328, -224.934553957579, -581.629284366554, -552.409849800454, -565.670580082128, -424.993353442901, -419.606405290991, 15.3455479478843, -529.86094394603, -515.008852078722, -680.787325435111, -680.925149661751, -523.130676278042, -508.067340801029, -498.519614998224, -483.12718122847, -464.562158834127, 1090.640091176, 1109.20511357034, -281.589726547916, -283.711443392984, -275.75500522398, -207.860066181814, -189.295043787472, -50.8533894059778, -904.277461784495, -570.853195589533, -857.562596925816, -857.562966684988, -834.223711630071, 291.33854560673, 312.56486928821, 373.297910673173, 383.536787217551, -435.634185184296, -80.4730204134311, -434.042897550495, -78.8817327796303, -45.4646924698143, -657.247254960754, 179.867260542134, 154.788041552385, 137.346705665371, 373.211096207159, -519.168913630743, 318.792343788349, 422.337224048746, 487.049107136386, 434.527940677081, 491.283385595718, 242.090161211578, 301.497752186549, 443.571063720938, 413.392392207541, 562.362265907828, 76.9959570754892, 501.982518953129], "z": [12.3557042401564, 12.3557042401564, 32.7755971151032, -3.00593088375729, -19.3257397030938, 5.67285944941684, -26.6857385156898, -36.6907386875125, -29.8175677767956, -10.4186080908073, -16.9973397810916, -16.9973397810916, 44.0825131754266, 39.0800130895152, 11.6682630075161, 42.3865484895561, 28.4587849372529, 16.3933348066854, 14.6588832446066, 6.67303063200378, 3.26537488972928, 2.68220165369528, 3.01094562610989, 10.8702121987698, -5.25708742177628, -7.25808745614083, -7.25808745614083, 5.14890646734762, -10.6841263541739, 29.9151770542144, 29.2132156383477, 4.60600750044463, -6.52568288656121, -7.2089786845027, -8.66425143676782, -14.8790327974477, -15.8328357010304, -11.4093294058016, -16.2299203976798, -18.2404401853764, -24.4206999141949, -21.6376815971701, 1.1044204108953, -1.19010008667004, 6.67303063200378, 3.48962148642381, -28.3051458327177, 9.09718855783588, 9.09718855783588, 123.083918840302, 14.6327831892006, 13.4874989861502, 13.0327262510673, 8.79913099297419, 8.34443842897591, null, null, null, null, 5.09210501882409, 2.73876476781407, 5.09210501882409, 2.73876476781407, -12.5171435579822, 1.37444656256552, 12.7991224831187, -10.9003643238672, -19.7878918674719, -41.2593484532052, -17.4193664079415, -44.2459403921869, 6.8872982939792, 15.1108585905535, 68.0534872285665, 83.5588127345056, 31.1913002095878, 0.185781960075913, -1.85071044617411, -7.30798326716834, 9.36977738731921, 5.77758533391288, 9.08645412371407, 27.9141347282589, 19.9101506250176, 19.4553778899347, 5.67039369485367, 2.03221181419085, 2.72534309311876, 2.72534309311876, 13.7258079044951, 4.1293859879198, 11.0881260410146, 9.26903510068319, 1.11219828836576, 8.08662598946777, 1.11291232912636, 6.26753504913636, -0.0702108228496569, 3.14019708609307, 9.36533303848491, 11.3663330728495, 19.7580419381537, 1.20777773801972, 22.552064774921, 29.3162866715114, 52.6116647714606, 22.0114305215952, -50.2613421200367, -26.9949277700665, -70.805618924584, -49.2859784843833, -56.7287386710568, -31.9974278559779, -77.1847081693866, -54.2884785702946, -55.2638422059481, -31.9974278559779, -32.5900159906098, -1.13747116476688, 10.8702121987698, -5.25708742177628, -8.04018231329547, -21.1158554505531, -10.684110319957, 29.2784689677243, 16.1473723920962, 84.1154303206276, 84.1154303206276, 80.1134302518985, 96.4023358031983, null, null, -12.8846817178006, -16.2495818011799, -17.342895365999, -21.9797182632239, 4.12498704568775, 0.577759712041492, 7.20121476999948, 23.5522756306667, 12.6216412608963, 16.3731108372058, 22.3362178838148, -1.95172912419393, -4.84090679425295, 4.97003244189549, 3.38305699145096, -12.4678394959709, -8.23858762873417, -7.69938696236991, 6.56850535079692, 1.75704025564383, 4.0309039310581, -21.097899485124, -21.7050144177491, -96.2877429713369, 7.40536840775791, 4.86747182191568, -5.9101099419502, -6.37080306904248, 5.61809822146131, 3.85020242281835, 2.21302057652008, -0.563020254892101, -3.74642940047208, -22.3088574982945, -25.4922666438745, 30.6547577093337, 31.0185758974, 29.6542576921514, 18.0120756740304, 14.8286665284504, -8.95462389598325, 30.688477505089, -13.1045551417628, 22.8659218461621, 22.8217681930533, 18.863921777433, 30.1922949333199, 26.5949095786727, 11.9090911334475, 3.50936501901971, -24.5755299054064, 2.59009343233374, -24.8483935464561, 2.31722979128403, -3.41290667075991, -10.6862609875139, -0.760710030991419, -2.52347068551576, 0.16893007316665, -8.65912972638634, -34.895850015336, -34.4193752283912, -24.088090902298, -35.241945387361, -26.2208420096948, -36.0103782895093, -0.485882073119188, -10.7301910880165, -28.0122982996354, -0.422421509844722, 0.292154932134005, -41.3132464533848, -37.7705657073087], "marker": {"sizeref": 1, "sizemode": "area", "size": [72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72], "line": {"width": 0.75, "color": "rgb(0.000000,113.985000,188.955000)"}, "symbol": "circle", "color": "rgba(0,0,0,0)", "opacity": 1}, "showlegend": false}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "xaxis1": {"side": "bottom", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-1000, -500, 0, 500, 1000], "range": [-1091.54967739205, 1483.46816488866], "mirror": false, "ticktext": ["-1000", "-500", "0", "500", "1000"], "title": "1st Principal Component", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.13, 0.905], "anchor": "y1"}, "scene1": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}, "aspectratio": {"x": 11.7381516874851, "y": 9.17840781588137, "z": 1}, "camera": {"eye": {"x": -9.26190074800544, "y": -12.2381516874851, "z": 9.00265151277708}, "up": {"x": 0, "y": 0, "z": 1}}, "xaxis": {"range": [-1091.54967739205, 1483.46816488866], "zeroline": false, "showline": true, "ticklabelposition": "outside", "title": "1st Principal Component", "titlefont": {"color": "rgba(0,0,0,1)", "size": 11, "family": "Arial, sans-serif"}, "tickvals": [-1000, -500, 0, 500, 1000], "ticktext": ["-1000", "-500", "0", "500", "1000"], "tickcolor": "rgba(0,0,0,1)", "tickfont": {"size": 10, "family": "Arial, sans-serif"}}, "yaxis": {"range": [-904.277461784495, 1109.20511357034], "zeroline": false, "showline": true, "ticklabelposition": "outside", "title": "2nd Principal Component", "titlefont": {"color": "rgba(0,0,0,1)", "size": 11, "family": "Arial, sans-serif"}, "tickvals": [-500, 0, 500, 1000], "ticktext": ["-500", "0", "500", "1000"], "tickcolor": "rgba(0,0,0,1)", "tickfont": {"size": 10, "family": "Arial, sans-serif"}}, "zaxis": {"range": [-96.2877429713369, 123.083918840302], "zeroline": false, "showline": true, "ticklabelposition": "outside", "title": "3rd Principal Component", "titlefont": {"color": "rgba(0,0,0,1)", "size": 11, "family": "Arial, sans-serif"}, "tickvals": [-50, 0, 50, 100], "ticktext": ["-50", "0", "50", "100"], "tickcolor": "rgba(0,0,0,1)", "tickfont": {"size": 10, "family": "Arial, sans-serif"}}}, "yaxis1": {"side": "left", "zeroline": false, "autorange": false, "linecolor": "rgb(38.250000,38.250000,38.250000)", "linewidth": 1, "exponentformat": "none", "tickfont": {"size": 10, "family": "Arial, sans-serif", "color": "rgb(38.250000,38.250000,38.250000)"}, "ticklen": 6.51, "tickcolor": "rgb(38.250000,38.250000,38.250000)", "tickwidth": 1, "tickangle": -0, "ticks": "outside", "showgrid": true, "gridwidth": 1, "gridcolor": "rgba(38.250000,,38.250000,38.250000,0.150000)", "type": "linear", "showticklabels": true, "tickmode": "array", "tickvals": [-500, 0, 500, 1000], "range": [-904.277461784495, 1109.20511357034], "mirror": false, "ticktext": ["-500", "0", "500", "1000"], "title": "2nd Principal Component", "titlefont": {"color": "rgb(38.250000,38.250000,38.250000)", "size": 11, "family": "Arial, sans-serif"}, "showline": true, "domain": [0.11, 0.925], "anchor": "x1"}, "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper", "xanchor": "center", "align": "center", "yanchor": "bottom", "text": "<b><b><\/b><\/b>", "x": 0.5175, "y": 0.935, "font": {"color": "rgb(0,0,0)", "family": "Arial, sans-serif", "size": 11}, "bordercolor": "rgba(0,0,0,0)", "textangle": 0, "borderwidth": 0.5, "borderpad": 3}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_162611735195 index=162611735195 %}


The data shows the largest variability along the first principal component axis. This is the largest possible variance among all possible choices of the first axis. The variability along the second principal component axis is the largest among all possible remaining choices of the second axis. The third principal component axis has the third largest variability, which is significantly smaller than the variability along the second principal component axis. The fourth through thirteenth principal component axes are not worth inspecting, because they explain only 0.05% of all variability in the data.

To skip any of the outputs, you can use `~` instead in the corresponding element. For example, if you don’t want to get the T-squared values, specify 

```{matlab}
load imports-85

[coeff,score,latent,~,explained] = pca(X(:,3:15));
```



