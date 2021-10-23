---
description: How to make Network Graphs plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Network Graphs
display_as: scientific
order: 12
permalink: matlab/network-graphs/
thumnail_github: network-graphs.png
layout: base
language: matlab
page_type: u-guide
---


## Graphing Network Graphs with Adjacency Matrices


```{matlab}
    [B, V] = bucky;
    H = sparse(60, 60);
    k = 31:60;
    H(k, k) = B(k, k);
    
    fig = figure;
    gplot(B - H, V, 'b-');
    hold on;
    
    gplot(H, V, 'r-');
    axis off equal;
    
    fig2plotly(fig);
```

<!--------------------- EXAMPLE  BREAK ------------------------->