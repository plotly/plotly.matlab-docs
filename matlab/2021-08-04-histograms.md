---
description: How to make Histogram plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Histograms
display_as: statistical
order: 3
permalink: matlab/histograms/
thumnail_github: thumbnail/histogram.jpg
layout: base
language: matlab
page_type: u-guide
---

## Histogram of Vector

Generate 10,000 random numbers and create a histogram. The `histogram` function automatically chooses an appropriate number of bins to cover the range of values in `x` and show the shape of the underlying distribution.

```{matlab}
x = randn(10000,1);
h = histogram(x)

fig2plotly(gcf)
```



When you specify an output argument to the `histogram` function, it returns a histogram object. You can use this object to inspect the properties of the histogram, such as the number of bins or the width of the bins.

Find the number of histogram bins. 

```{matlab}
x = randn(10000,1);
h = histogram(x)
nbins = h.NumBins
```



<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Number of Histogram Bins

Plot a histogram of 1,000 random numbers sorted into 25 equally spaced bins.

```{matlab}
x = randn(1000,1);
nbins = 25;
h = histogram(x,nbins)

fig2plotly(gcf)
```


Find the bin counts.

```{matlab}
x = randn(1000,1);
nbins = 25;
h = histogram(x,nbins)

counts = h.Values
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Change Number of Histogram Bins

Generate 1,000 random numbers and create a histogram. 

```{matlab}
X = randn(1000,1);
h = histogram(X)

fig2plotly(gcf)
```

Use the `morebins` function to coarsely adjust the number of bins.

```{matlab}
X = randn(1000,1);
h = histogram(X)

Nbins = morebins(h);

fig2plotly(gcf)
```


Adjust the bins at a fine grain level by explicitly setting the number of bins.

```{matlab}
X = randn(1000,1);
h = histogram(X)

Nbins = morebins(h);

h.NumBins = 31;

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Bin Edges of Histogram

Generate 1,000 random numbers and create a histogram. Specify the bin edges as a vector with wide bins on the edges of the histogram to capture the outliers that do not satisfy |x|<2. The first vector element is the left edge of the first bin, and the last vector element is the right edge of the last bin.

```{matlab}
x = randn(1000,1);
edges = [-10 -2:0.25:2 10];
h = histogram(x,edges);

fig2plotly(gcf)
```


Specify the `Normalization` property as `'countdensity'` to flatten out the bins containing the outliers. Now, the area of each bin (rather than the height) represents the frequency of observations in that interval.

```{matlab}
x = randn(1000,1);
edges = [-10 -2:0.25:2 10];
h = histogram(x,edges);

h.Normalization = 'countdensity';

fig2plotly(gcf)
```



<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Categorical Histogram

Create a categorical vector that represents votes. The categories in the vector are `'yes'`, `'no'`, or `'undecided'`.

```{matlab}
A = [0 0 1 1 1 0 0 0 0 NaN NaN 1 0 0 0 1 0 1 0 1 0 0 0 1 1 1 1];
C = categorical(A,[1 0 NaN],{'yes','no','undecided'})
```


Plot a categorical histogram of the votes, using a relative bar width of `0.5`.

```{matlab}
A = [0 0 1 1 1 0 0 0 0 NaN NaN 1 0 0 0 1 0 1 0 1 0 0 0 1 1 1 1];
C = categorical(A,[1 0 NaN],{'yes','no','undecided'})

h = histogram(C,'BarWidth',0.5)

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Histogram with Specified Normalization

Generate 1,000 random numbers and create a histogram using the `'probability'` normalization.

```{matlab}
x = randn(1000,1);
h = histogram(x,'Normalization','probability')

fig2plotly(gcf)
```


Compute the sum of the bar heights. With this normalization, the height of each bar is equal to the probability of selecting an observation within that bin interval, and the height of all of the bars sums to 1.

```{matlab}
x = randn(1000,1);
h = histogram(x,'Normalization','probability')

S = sum(h.Values)

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Multiple Histograms

Generate two vectors of random numbers and plot a histogram for each vector in the same figure. 

```{matlab}
x = randn(2000,1);
y = 1 + randn(5000,1);
h1 = histogram(x);
hold on
h2 = histogram(y);

fig2plotly(gcf)
```

Since the sample size and bin width of the histograms are different, it is difficult to compare them. Normalize the histograms so that all of the bar heights add to 1, and use a uniform bin width.

```{matlab}
x = randn(2000,1);
y = 1 + randn(5000,1);
h1 = histogram(x);
hold on
h2 = histogram(y);

h1.Normalization = 'probability';
h1.BinWidth = 0.25;
h2.Normalization = 'probability';
h2.BinWidth = 0.25;

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Adjust Histogram Properties

Generate 1,000 random numbers and create a histogram. Return the histogram object to adjust the properties of the histogram without recreating the entire plot.

```{matlab}
x = randn(1000,1);
h = histogram(x)

fig2plotly(gcf)
```

Specify exactly how many bins to use.

```{matlab}
x = randn(1000,1);
h = histogram(x)

h.NumBins = 15;

fig2plotly(gcf)
```

Specify the edges of the bins with a vector. The first value in the vector is the left edge of the first bin. The last value is the right edge of the last bin.

```{matlab}
x = randn(1000,1);
h = histogram(x)

h.NumBins = 15;

h.BinEdges = [-3:3];

fig2plotly(gcf)
```

Change the color of the histogram bars.

```{matlab}
x = randn(1000,1);
h = histogram(x)

h.NumBins = 15;

h.BinEdges = [-3:3];

h.FaceColor = [0 0.5 0.5];
h.EdgeColor = 'r';

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Determine Underlying Probability Distribution

Generate 5,000 normally distributed random numbers with a mean of 5 and a standard deviation of 2. Plot a histogram with `Normalization` set to `'pdf'` to produce an estimation of the probability density function.

```{matlab}
x = 2*randn(5000,1) + 5;
histogram(x,'Normalization','pdf')

fig2plotly(gcf)
```

In this example, the underlying distribution for the normally distributed data is known. You can, however, use the `'pdf'` histogram plot to determine the underlying probability distribution of the data by comparing it against a known probability density function.

The probability density function for a normal distribution with mean μ, standard deviation σ, and variance σ<sup>2</sup> is



<div class="code_responsive">

<span><span class="MathEquation" role="math" style="font-size: 15px;"><span class="MathRoot HBox" role="img" aria-label="f leftParenthesis x , mu , sigma rightParenthesis equals StartFraction 1 over sigma StartRoot SquareRootOf 2 pi EndRoot EndFraction exp bracketleft minus StartFraction leftParenthesis x minus mu rightParenthesis Squared baseline over 2 sigma Squared baseline EndFraction bracketright ldotp" style="display: inline-block; position: relative;"><span class="MathRow HBox" style="display: inline-block; position: relative; font-size: 15px;"><span class="MathText MathTextBox text" style="position: relative; margin-left: 0.2em; margin-right: 0.2em;">f</span><span class="MathText MathTextBox extra1" style="position: relative;">(</span><span class="MathText MathTextBox text" style="position: relative; margin-left: 0.05em;">x</span><span class="MathText MathTextBox symbol" style="position: relative;">,</span><span class="MathText MathTextBox symbol" style="position: relative; margin-left: 0.216667em; font-style: italic;">μ</span><span class="MathText MathTextBox symbol" style="position: relative;">,</span><span class="MathText MathTextBox symbol" style="position: relative; margin-left: 0.166667em; margin-right: 0.05em; font-style: italic;">σ</span><span class="MathText MathTextBox extra1" style="position: relative;">)</span><span class="MathText MathTextBox symbol" style="position: relative; margin-left: 0.277778em;">=</span><span class="MathFraction VBox" style="display: inline-block; position: relative; margin-left: 0.277778em; text-align: center; vertical-align: -13px;"><span class="MathRow HBox" style="display: block; position: relative; font-size: 15px; margin-top: 0px;"><span class="MathText MathTextBox number" style="position: relative;">1</span></span><span class="WhiteSpaceBox" style="display: none;"></span><span class="rulebox" style="display: block; border-bottom-style: solid; border-bottom-width: 1px; width: 100%; height: 0px; z-index: 1; margin-top: 0px;"></span><span class="WhiteSpaceBox" style="display: none;"></span><span class="MathRow HBox" style="display: block; position: relative; font-size: 15px; margin-top: 1px;"><span class="MathText MathTextBox symbol" style="position: relative; margin-right: 0.05em; font-style: italic;">σ</span><span class="MathRadical HBox" style="display: inline-block; position: relative; font-size: 15px; margin-left: 0.166667em;"><span class="VBox" style="display: inline-block; position: relative; text-align: center; vertical-align: 2px;"><span class="StretchyBox" style="display: inline-block; position: relative; text-align: right;"><span class="MathTextBox extra1" style="position: relative; display: inline-block;">G</span></span></span><span class="VBox" style="display: inline-block; position: relative; text-align: center; vertical-align: 0px;"><span class="rulebox" style="display: block; border-bottom-style: solid; border-bottom-width: 1px; width: 100%; height: 0px; z-index: 1; margin-top: 0px;"></span><span class="WhiteSpaceBox" style="display: none;"></span><span class="MathRow HBox" style="display: block; position: relative; font-size: 15px; margin-top: 1px;"><span class="MathText MathTextBox number" style="position: relative;">2</span><span class="MathText MathTextBox symbol" style="position: relative; margin-right: 0.1em; font-style: italic;">π</span></span></span></span></span></span><span class="MathRow HBox" style="display: inline-block; position: relative; font-size: 15px; margin-left: 0.166667em;"><span class="MathText MathTextBox mtext" style="position: relative;"> </span><span class="MathText MathTextBox mtext" style="position: relative; font-style: normal;">exp</span></span><span class="MathRow HBox" style="display: inline-block; position: relative; font-size: 15px;"><span class="MathDelimiter StretchyBox" style="display: inline-block; position: relative; text-align: center;"><span class="MathTextBox extra4" style="position: relative; display: inline-block; vertical-align: 20px; line-height: 36px; margin-top: -6px; margin-bottom: 6px;">[</span></span><span class="MathText MathTextBox symbol" style="position: relative;">−</span><span class="MathFraction VBox" style="display: inline-block; position: relative; margin-left: 0.166667em; text-align: center; vertical-align: -12px;"><span class="MathRow HBox" style="display: block; position: relative; font-size: 15px; margin-top: 0px;"><span class="MathText MathTextBox extra1" style="position: relative;">(</span><span class="MathText MathTextBox text" style="position: relative; margin-left: 0.05em;">x</span><span class="MathText MathTextBox symbol" style="position: relative; margin-left: 0.222222em;">−</span><span class="MathText MathTextBox symbol" style="position: relative; margin-left: 0.272222em; font-style: italic;">μ</span><span class="MathScript HBox" style="display: inline-block; position: relative; font-size: 15px;"><span class="MathRow HBox" style="display: inline-block; position: relative; font-size: 15px;"><span class="MathText MathTextBox extra1" style="position: relative;">)</span></span><span class="VBox" style="display: inline-block; position: relative; text-align: left; vertical-align: 5px;"><span class="MathRow HBox" style="display: block; position: relative; font-size: 10px; margin-top: 0px;"><span class="MathText MathTextBox number" style="position: relative;">2</span></span></span></span></span><span class="WhiteSpaceBox" style="display: none;"></span><span class="rulebox" style="display: block; border-bottom-style: solid; border-bottom-width: 1px; width: 100%; height: 0px; z-index: 1; margin-top: 0px;"></span><span class="WhiteSpaceBox" style="display: none;"></span><span class="MathRow HBox" style="display: block; position: relative; font-size: 15px; margin-top: 1px;"><span class="MathText MathTextBox number" style="position: relative;">2</span><span class="MathScript HBox" style="display: inline-block; position: relative; font-size: 15px;"><span class="MathRow HBox" style="display: inline-block; position: relative; font-size: 15px;"><span class="MathText MathTextBox symbol" style="position: relative; margin-right: 0.05em; font-style: italic;">σ</span></span><span class="VBox" style="display: inline-block; position: relative; text-align: left; vertical-align: 5px;"><span class="MathRow HBox" style="display: block; position: relative; font-size: 10px; margin-top: 0px;"><span class="MathText MathTextBox number" style="position: relative;">2</span></span></span></span></span></span><span class="MathDelimiter StretchyBox" style="display: inline-block; position: relative; text-align: center;"><span class="MathTextBox extra4" style="position: relative; display: inline-block; vertical-align: 20px; line-height: 36px; margin-top: -6px; margin-bottom: 6px;">]</span></span></span><span class="MathText MathTextBox symbol" style="position: relative;">.</span></span></span></span></span>

</div>



Overlay a plot of the probability density function for a normal distribution with a mean of 5 and a standard deviation of 2.

```{matlab}
x = 2*randn(5000,1) + 5;
histogram(x,'Normalization','pdf')

hold on
y = -5:0.1:15;
mu = 5;
sigma = 2;
f = exp(-(y-mu).^2./(2*sigma^2))./(sigma*sqrt(2*pi));
plot(y,f,'LineWidth',1.5)

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Saving and Loading Histogram Objects

Use the `savefig` function to save a `histogram` figure.

```{matlab}
histogram(randn(10));
savefig('histogram.fig');
close gcf
```

Use `openfig` to load the histogram figure back into MATLAB. `openfig` also returns a handle to the figure, `h`. 

```{matlab}
h = openfig('histogram.fig');

fig2plotly(gcf)
```

Use the `findobj` function to locate the correct object handle from the figure handle. This allows you to continue manipulating the original histogram object used to generate the figure.

```{matlab}
h = openfig('histogram.fig');

y = findobj(h,'type','histogram')

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

