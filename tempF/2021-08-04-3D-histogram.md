---
description: How to make 3D Histogram plots in MATLAB<sup>&reg;</sup> with Plotly.
name: 3D Histograms
display_as: 3d_charts
order: 14
permalink: matlab/3D-histogram-test/
thumnail_github: thumbnail/
layout: base
language: matlab
page_type: u-guide
---

## Histogram of Vectors

Generate 10,000 pairs of random numbers and create a bivariate histogram. The `histogram2` function automatically chooses an appropriate number of bins to cover the range of values in `x` and `y` and show the shape of the underlying distribution.

```{matlab}
x = randn(10000,1);
y = randn(10000,1);
h = histogram2(x,y)

fig2plotly(gcf);
```



```{matlab}
x = randn(10000,1);
y = randn(10000,1);
h = histogram2(x,y)

xlabel('x')
ylabel('y')

fig2plotly(gcf);
```


When you specify an output argument to the `histogram2` function, it returns a histogram2 object. You can use this object to inspect the properties of the histogram, such as the number of bins or the width of the bins.

Find the number of histogram bins in each dimension.

```{matlab}
x = randn(10000,1);
y = randn(10000,1);
h = histogram2(x,y)

xlabel('x')
ylabel('y')

nXnY = h.NumBins
```
```
h = 

  <a href="matlab:helpPopup matlab.graphics.chart.primitive.Histogram2" style="font-weight:bold">Histogram2</a> with properties:

             Data: [10000×2 double]
           Values: [27×28 double]
          NumBins: [27 28]
        XBinEdges: [1×28 double]
        YBinEdges: [1×29 double]
         BinWidth: [0.3000 0.3000]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0.1500 0.1500 0.1500]

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Histogram2'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>


nXnY =

    27    28
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Number of Histogram Bins

Plot a bivariate histogram of 1,000 pairs of random numbers sorted into 25 equally spaced bins, using 5 bins in each dimension.

```{matlab}
x = randn(1000,1);
y = randn(1000,1);
nbins = 5;
h = histogram2(x,y,nbins)

fig2plotly(gcf);
```



Find the resulting bin counts.

```{matlab}
x = randn(1000,1);
y = randn(1000,1);
nbins = 5;
h = histogram2(x,y,nbins)

counts = h.Values

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Adjust Number of Histogram Bins

Generate 1,000 pairs of random numbers and create a bivariate histogram.

```{matlab}
x = randn(1000,1);
y = randn(1000,1);
h = histogram2(x,y)

fig2plotly(gcf);
```

Use the `morebins` function to coarsely adjust the number of bins in the x dimension.

```{matlab}
x = randn(1000,1);
y = randn(1000,1);
h = histogram2(x,y)

nbins = morebins(h,'x');
nbins = morebins(h,'x')

fig2plotly(gcf);
```


Use the `fewerbins` function to adjust the number of bins in the y dimension.

```{matlab}
x = randn(1000,1);
y = randn(1000,1);
h = histogram2(x,y)

nbins = morebins(h,'x');
nbins = morebins(h,'x')

nbins = fewerbins(h,'y');
nbins = fewerbins(h,'y')

fig2plotly(gcf);
```

Adjust the number of bins at a fine grain level by explicitly setting the number of bins.

```{matlab}
x = randn(1000,1);
y = randn(1000,1);
h = histogram2(x,y)

h.NumBins = [20 10];

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Color Histogram Bars by Height

Create a bivariate histogram using 1,000 normally distributed random numbers with 12 bins in each dimension. Specify `FaceColor` as `'flat'` to color the histogram bars by height.

```{matlab}
h = histogram2(randn(1000,1),randn(1000,1),[12 12],'FaceColor','flat');
colorbar

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Tiled Histogram View

Generate random data and plot a bivariate tiled histogram. Display the empty bins by specifying `ShowEmptyBins` as `'on'`.

```{matlab}
x = 2*randn(1000,1)+2;
y = 5*randn(1000,1)+3;
h = histogram2(x,y,'DisplayStyle','tile','ShowEmptyBins','on');

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Bin Edges of Histogram

Generate 1,000 pairs of random numbers and create a bivariate histogram. Specify the bin edges using two vectors, with infinitely wide bins on the boundary of the histogram to capture all outliers that do not satisfy |x|<2.

```{matlab}
x = randn(1000,1);
y = randn(1000,1);
Xedges = [-Inf -2:0.4:2 Inf];
Yedges = [-Inf -2:0.4:2 Inf];
h = histogram2(x,y,Xedges,Yedges)

fig2plotly(gcf);
```


When the bin edges are infinite, `histogram2` displays each outlier bin (along the boundary of the histogram) as being double the width of the bin next to it.

Specify the `Normalization` property as `'countdensity'` to remove the bins containing the outliers. Now the volume of each bin represents the frequency of observations in that interval.

```{matlab}
x = randn(1000,1);
y = randn(1000,1);
Xedges = [-Inf -2:0.4:2 Inf];
Yedges = [-Inf -2:0.4:2 Inf];
h = histogram2(x,y,Xedges,Yedges)

h.Normalization = 'countdensity';

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Normalized Histogram

Generate 1,000 pairs of random numbers and create a bivariate histogram using the `'probability'` normalization.

```{matlab}
x = randn(1000,1);
y = randn(1000,1);
h = histogram2(x,y,'Normalization','probability')

fig2plotly(gcf);
```


Compute the total sum of the bar heights. With this normalization, the height of each bar is equal to the probability of selecting an observation within that bin interval, and the heights of all of the bars sum to 1.

```{matlab}
x = randn(1000,1);
y = randn(1000,1);
h = histogram2(x,y,'Normalization','probability')

S = sum(h.Values(:))

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Adjust Histogram Properties

Generate 1,000 pairs of random numbers and create a bivariate histogram. Return the histogram object to adjust the properties of the histogram without recreating the entire plot.

```{matlab}
x = randn(1000,1);
y = randn(1000,1);
h = histogram2(x,y)

fig2plotly(gcf);
```


Color the histogram bars by height.

```{matlab}
x = randn(1000,1);
y = randn(1000,1);
h = histogram2(x,y)

h.FaceColor = 'flat';

fig2plotly(gcf);
```

Change the number of bins in each direction.

```{matlab}
x = randn(1000,1);
y = randn(1000,1);
h = histogram2(x,y)

h.FaceColor = 'flat';

h.NumBins = [10 25];

fig2plotly(gcf);
```


Display the histogram as a tile plot.

```{matlab}
x = randn(1000,1);
y = randn(1000,1);
h = histogram2(x,y)

h.FaceColor = 'flat';

h.NumBins = [10 25];

h.DisplayStyle = 'tile';
view(2)

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Saving and Loading Histogram2 Objects

Use the `savefig` function to save a `histogram2` figure.

```{matlab}
histogram2(randn(100,1),randn(100,1));
savefig('histogram2.fig');
close gcf
```

Use `openfig` to load the histogram figure back into MATLAB. `openfig` also returns a handle to the figure, `h`.

```{matlab}
h = openfig('histogram2.fig');

fig2plotly(gcf);
```

Use the `findobj` function to locate the correct object handle from the figure handle. This allows you to continue manipulating the original histogram object used to generate the figure.

```{matlab}
y = findobj(h,'type','histogram2')

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

