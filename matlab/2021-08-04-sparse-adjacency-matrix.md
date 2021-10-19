---
description: How to make Sparse Adjacency Matrixes in MATLAB<sup>&reg;</sup> with Plotly.
name: Sparse Adjacency Matrix
display_as: scientific
order: 
permalink: matlab/sparse-adjacency-matrix/
thumnail_github: thumbnail/
layout: base
language: matlab
page_type: u-guide
---

## Plot Sparsity Pattern

Plot the 60-by-60 sparse adjacency matrix of the connectivity graph of the Buckminster Fuller geodesic dome. This matrix also represents the carbon-60 molecule and a soccer ball.

```{matlab}
B = bucky;
spy(B)

fig2plotly(gcf)
```


Specify the color and marker.

```{matlab}
B = bucky;
spy(B,'ro')

fig2plotly(gcf)
```

Also specify the marker size.

```{matlab}
B = bucky;
spy(B,'ro',2)

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->

