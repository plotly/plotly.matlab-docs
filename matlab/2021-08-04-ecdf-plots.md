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

Plot the estimated cdf. 

```{matlab}
rng('default')  % for reproducibility
failuretime = random('wbl',3,1,15,1);

[f,x] = ecdf(failuretime);

ecdf(failuretime)

fig2plotly(gcf)
```



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

The survivor function based on the actual distribution is within the confidence bounds. 



<!--------------------- EXAMPLE BREAK ------------------------->

