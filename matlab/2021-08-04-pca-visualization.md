---
description: How to do PCA Visualization in MATLAB<sup>&reg;</sup> with Plotly.
name: PCA Visualization
display_as: ai_ml
order: 4
permalink: matlab/pca-visualization/
thumnail_github: pca-visualization.png
layout: base
language: matlab
page_type: u-guide
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


The rows of `coeff` contain the coefficients for the four ingredient variables, and its columns correspond to four principal components. 



<!--------------------- EXAMPLE BREAK ------------------------->

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



<!--------------------- EXAMPLE BREAK ------------------------->

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



Check orthonormality of the new coefficient matrix, `coefforth`. 

```{matlab}
load hald
[wcoeff,~,latent,~,explained] = pca(ingredients,'VariableWeights','variance');
coefforth = inv(diag(std(ingredients)))* wcoeff;

coefforth*coefforth'
```



<!--------------------- EXAMPLE BREAK ------------------------->

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



Introduce missing values randomly. 

```{matlab}
load hald
[coeff,score,latent,tsquared,explained] = pca(ingredients);

y = ingredients;
rng('default'); % for reproducibility
ix = random('unif',0,1,size(y))<0.30; 
y(ix) = NaN
```



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




This shows that deleting rows containing `NaN` values does not work as well as the ALS algorithm. Using ALS is better when the data has too many missing values. 



<!--------------------- EXAMPLE BREAK ------------------------->

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



The new data in `Xcentered` is the original ingredients data centered by subtracting the column means from corresponding columns. 

Visualize both the orthonormal principal component coefficients for each variable and the principal component scores for each observation in a single plot.

```{matlab}
load hald
[coeff,score,latent] = pca(ingredients);
Xcentered = score*coeff';

biplot(coeff(:,1:2),'scores',score(:,1:2),'varlabels',{'v_1','v_2','v_3','v_4'});

fig2plotly(gcf);
```


All four variables are represented in this biplot by a vector, and the direction and length of the vector indicate how each variable contributes to the two principal components in the plot. For example, the first principal component, which is on the horizontal axis, has positive coefficients for the third and fourth variables. Therefore, vectors v3 and v4 are directed into the right half of the plot. The largest coefficient in the first principal component is the fourth, corresponding to the variable v4.

The second principal component, which is on the vertical axis, has negative coefficients for the variables v1, v2, and v4, and a positive coefficient for the variable v3.

This 2-D biplot also includes a point for each of the 13 observations, with coordinates indicating the score of each observation for the two principal components in the plot. For example, points near the left edge of the plot have the lowest scores for the first principal component. The points are scaled with respect to the maximum score value and maximum coefficient length, so only their relative locations can be determined from the plot.



<!--------------------- EXAMPLE BREAK ------------------------->

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



Request only the first two principal components and compute the T-squared values in the reduced space of requested principal components. 

```{matlab}
load hald

[coeff,score,latent,tsquared] = pca(ingredients,'NumComponents',2);
tsquared
```


Note that even when you specify a reduced component space, `pca` computes the T-squared values in the full space, using all four components. 

The T-squared value in the reduced space corresponds to the Mahalanobis distance in the reduced space. 

```{matlab}
load hald
[coeff,score,latent,tsquared] = pca(ingredients,'NumComponents',2);

tsqreduced = mahal(score,score)
```



Calculate the T-squared values in the discarded space by taking the difference of the T-squared values in the full space and Mahalanobis distance in the reduced space. 

```{matlab}
load hald
[coeff,score,latent,tsquared] = pca(ingredients,'NumComponents',2);
tsqreduced = mahal(score,score);

tsqdiscarded = tsquared - tsqreduced
```


<!--------------------- EXAMPLE BREAK ------------------------->

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

The data shows the largest variability along the first principal component axis. This is the largest possible variance among all possible choices of the first axis. The variability along the second principal component axis is the largest among all possible remaining choices of the second axis. The third principal component axis has the third largest variability, which is significantly smaller than the variability along the second principal component axis. The fourth through thirteenth principal component axes are not worth inspecting, because they explain only 0.05% of all variability in the data.

To skip any of the outputs, you can use `~` instead in the corresponding element. For example, if you don’t want to get the T-squared values, specify 

```{matlab}
load imports-85

[coeff,score,latent,~,explained] = pca(X(:,3:15));
```



<!--------------------- EXAMPLE BREAK ------------------------->
