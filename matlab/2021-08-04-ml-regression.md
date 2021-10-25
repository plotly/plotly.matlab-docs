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

* <code>y=β<sub>0</sub>+β<sub>1</sub>x+ϵ,</code>

where β<sub>0</sub> is the y-intercept, β<sub>1</sub> is the slope (or regression coefficient), and ϵ is the error term. This can be simplified to `Y=XB`

From the dataset accidents, load accident data in y and state population data in x. Find the linear regression relation y=β<sub>1</sub>x between the accidents in a state and the population of a state using the \ operator. The \ operator performs a least-squares regression.

```{matlab}
load accidents
x = hwydata(:,14); %Population of states
y = hwydata(:,4); %Accidents per state
format long
b1 = x\y
```


b1 is the slope or regression coefficient. The linear relation is y=β<sub>1</sub>x=0.0001372x.

Calculate the accidents per state yCalc from x using the relation. Visualize the regression by plotting the actual values y and the calculated values yCalc.

```{matlab}
load accidents
x = hwydata(:,14); %Population of states
y = hwydata(:,4); %Accidents per state
format long
b1 = x\y;

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


Improve the fit by including a y-intercept β<sub>0</sub> in your model as y=β<sub>0</sub>+β<sub>1</sub>x. Calculate β<sub>0</sub> by padding x with a column of ones and using the \ operator.


```{matlab}
load accidents
x = hwydata(:,14); %Population of states
y = hwydata(:,4); %Accidents per state

X = [ones(length(x),1) x];
b = X\y
```


This result represents the relation y=β<sub>0</sub>+β<sub>1</sub>x=142.7120+0.0001256x.

Visualize the relation by plotting it on the same figure.

```{matlab}
load accidents;
x = hwydata(:,14); %Population of states
y = hwydata(:,4); %Accidents per state

X = [ones(length(x),1) x];
b = X\y;

yCalc2 = X*b;
plot(x,yCalc2,'--');
legend({'Data'},'Location','best');

fig2plotly(gcf);
```

If with to plot the data alongside the slope, you can do it in the following way.

```{matlab}
load accidents
x = hwydata(:,14); %Population of states
y = hwydata(:,4); %Accidents per state

X = [ones(length(x),1) x];
b = X\y;

yCalc2 = X*b;
plot(x,yCalc2,'--');
legend({'Data'},'Location','best');

hold on
plot(x,y,'o');

fig2plotly(gcf);
```