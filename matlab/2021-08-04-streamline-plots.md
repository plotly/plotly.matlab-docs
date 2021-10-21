---
description: How to make Streamline Plots plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Streamline Plots
display_as: scientific
order: 11
permalink: matlab/streamline-plots/
thumnail_github: streamline-plots.png
layout: base
language: matlab
page_type: u-guide
---

## Draw Streamlines

Define arrays `x`, `y`, `u`, and `v`. 

```{matlab}
[x,y] = meshgrid(0:0.1:1,0:0.1:1);
u = x;
v = -y;
```

Create a quiver plot of the data. Plot streamlines that start at different points along the line y=1.

```{matlab}
[x,y] = meshgrid(0:0.1:1,0:0.1:1);
u = x;
v = -y;

figure
quiver(x,y,u,v)

startx = 0.1:0.1:1;
starty = ones(size(startx));
streamline(x,y,u,v,startx,starty)

fig2plotly(gcf);
```

```{matlab}
load wind
zmax = max(z(:)); zmin = min(z(:));
streamslice(x,y,z,u,v,w,[],[],(zmax-zmin)/2)

p = plotlyfig(gcf);

for d = 1:length(p.data)
  p.data{d}.type = 'scatter'; 
end

p.plotly;
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Streamline Plot Styling


Edit, style, save, and export this streamline plot online:<br>
<a href="https://plotly.com/~jackp/9526/">https://plotly.com/9526/~jackp/</a>

<image src="https://i.imgur.com/4ZEWq9r.gif">

<!--------------------- EXAMPLE BREAK ------------------------->