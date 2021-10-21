---
description: How to make Dendrograms in MATLAB<sup>&reg;</sup> with Plotly.
name: Dendrograms
display_as: scientific
order: 6
permalink: matlab/dendrogram/
thumnail_github: dendrogram.png
layout: base
language: matlab
page_type: u-guide
---

## Plot Dendrogram

Generate sample data. 

```{matlab}
rng('default')
X = rand(10,3);
```

Create a hierarchical binary cluster tree using `linkage`. Then, plot the dendrogram using the default options.

```{matlab}
rng('default')
X = rand(10,3);

tree = linkage(X,'average');

dendrogram(tree)

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Dendrogram Leaf Node Order

Generate sample data. 

```{matlab}
rng('default')
X = rand(10,3);
```

Create a hierarchical binary cluster tree using `linkage`. 

```{matlab}
rng('default')
X = rand(10,3);

tree = linkage(X,'average');

D = pdist(X);
leafOrder = optimalleaforder(tree,D)
```


Plot the dendrogram using an optimal leaf order. 

```{matlab}
rng('default')
X = rand(10,3);

tree = linkage(X,'average');

D = pdist(X);
leafOrder = optimalleaforder(tree,D)

dendrogram(tree,'Reorder',leafOrder)

fig2plotly(gcf);
```

The order of the leaf nodes in the dendrogram plot corresponds - from left to right - to the permutation in `leafOrder`.

<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Number of Nodes in Dendrogram Plot

Generate sample data. 

```{matlab}
rng('default')
X = rand(100,2);
```

There are 100 data points in the original data set, `X`. 

Create a hierarchical binary cluster tree using `linkage`. Then, plot the dendrogram for the complete tree (100 leaf nodes) by setting the input argument `P` equal to `0`.

```{matlab}
rng('default')
X = rand(100,2);

tree = linkage(X,'average');
dendrogram(tree,0)
```

Now, plot the dendrogram with only 25 leaf nodes. Return the mapping of the original data points to the leaf nodes shown in the plot. 

```{matlab}
rng('default')
X = rand(100,2);

tree = linkage(X,'average');
dendrogram(tree,0)

[~,T] = dendrogram(tree,25);

fig2plotly(gcf);
```


List the original data points that are in leaf node 7 of the dendrogram plot.

```{matlab}
rng('default')
X = rand(100,2);

tree = linkage(X,'average');
dendrogram(tree,0)

[~,T] = dendrogram(tree,25);

find(T==7)
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Change Dendrogram Orientation and Line Width

Generate sample data. 

```{matlab}
rng('default')
X = rand(10,3);
```

Create a hierarchical binary cluster tree using `linkage`. Then, plot the dendrogram with a vertical orientation, using the default color threshold. Return handles to the lines so you can change the dendrogram line widths.

```{matlab}
rng('default')
X = rand(10,3);

tree = linkage(X,'average');
H = dendrogram(tree,'Orientation','left','ColorThreshold','default');
set(H,'LineWidth',2)

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->