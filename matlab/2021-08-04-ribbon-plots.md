---
description: How to make Ribbon Plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Ribbon Plots
display_as: 3d_charts
order: 15
permalink: matlab/ribbon-plots/
thumnail_github: thumbnail/ribbon-plot.jpg
layout: base
language: matlab
page_type: u-guide
---

## Ribbon Plot

Create a ribbon plot of the `peaks` function.

```{matlab}
[x,y] = meshgrid(-3:.5:3,-3:.1:3);
z = peaks(x,y);

figure
ribbon(y,z)

fig2plotly(gcf)
```


```{matlab}
[x,y] = meshgrid(-3:.5:3,-3:.1:3);
z = peaks(x,y);
figure
ribbon(y,z)
fig2plotly(gcf)

```
