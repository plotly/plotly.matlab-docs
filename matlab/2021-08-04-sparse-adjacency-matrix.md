---
description: How to make Sparse Adjacency Matrixes in MATLAB<sup>&reg;</sup> with Plotly.
name: Sparse Adjacency Matrix
display_as: scientific
order: 22
permalink: matlab/sparse-adjacency-matrix/
thumnail_github: sparse-adjacency-matrix.png
layout: base
language: matlab
page_type: u-guide
---

## Plot Sparsity Pattern

Plot the 60-by-60 sparse adjacency matrix of the connectivity graph of the Buckminster Fuller geodesic dome. This matrix also represents the carbon-60 molecule and a soccer ball.

```{matlab}
B = bucky;
spy(B)

fig2plotly(gcf);
```


# Specify Color and Marker

```{matlab}
B = bucky;
spy(B,'green')

fig2plotly(gcf);
```

# Specify Marker Size

```{matlab}
B = bucky;
spy(B,'red',2)

fig2plotly(gcf);
```


<!--------------------- EXAMPLE  BREAK ------------------------->

