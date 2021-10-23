---
description: How to make 3D Isosurface Plots in MATLAB<sup>&reg;</sup> with Plotly.
name: 3D Isosurface Plots
display_as: 3d_charts
order: 10
permalink: matlab/3d-isosurface-plots/
thumnail_github: 3d-isosurface-plots.png
layout: base
language: matlab
page_type: u-guide
---

## Basic Isosurface plot

```{matlab}
[x,y,z] = meshgrid([-3:0.25:3]); 
V = x.*exp(-x.^2 -y.^2 -z.^2);
isosurface(x,y,z,V,1e-4);

fig2plotly(gcf, 'TreatAs', 'isosurface');
```


```{matlab}
[x,y,z] = meshgrid([-3:0.25:3]); 
V = x.*exp(-x.^2 -y.^2 -z.^2);
[faces,verts,colors] = isosurface(x,y,z,V,1e-4,x);
patch('Vertices',verts,'Faces',faces,'FaceVertexCData',colors,...
    'FaceColor','interp','EdgeColor','interp')
view(3) 
colormap copper

fig2plotly(gcf, 'TreatAs', 'isosurface');
```
## Draw Isosurface with Lighting

Load the flow data set, which represents the speed profile of a submerged jet within an infinite tank. Draw the isosurface at the data value of -3 and prepare the isosurface for lighting by:

* Recalculating the isosurface normals based on the volume data.
* Setting the face and edge color.
* Specifying the view.
* Adding lights.

```{matlab}
[x,y,z,v] = flow;
p = patch(isosurface(x,y,z,v,-3));
isonormals(x,y,z,v,p)
p.FaceColor = 'red';
p.EdgeColor = 'none';
daspect([1 1 1])
view(3); 
axis tight
camlight 
lighting gouraud

fig2plotly(gcf, 'TreatAs', 'isosurface');
```

```{matlab}
[x,y,z] = meshgrid([-3:0.25:3]); 
V = x.*exp(-x.^2 -y.^2 -z.^2);
s = isosurface(x,y,z,V,1e-4);
p = patch(s);
isonormals(x,y,z,V,p)
view(3);
set(p,'FaceColor',[0.5 1 0.5]);  
set(p,'EdgeColor','none');
camlight;
lighting gouraud;

fig2plotly(gcf, 'TreatAs', 'isosurface');
```

<!--------------------- EXAMPLE  BREAK ------------------------->

## Set Isosurface Colors

Visualize the flow data, but color-code the surface to indicate magnitude along the x-axis. Use a sixth argument to isosurface, which provides a means to overlay another data set by coloring the resulting isosurface. The colors variable is a vector containing a scalar value for each vertex in the isosurface, to be portrayed with the current color map. In this case, it is one of the variables that define the surface, but it could be entirely independent. You can apply a different color scheme by changing the current figure color map.

```{matlab}
[x,y,z,v] = flow; 
[faces,verts,colors] = isosurface(x,y,z,v,-3,x); 
patch('Vertices',verts,'Faces',faces,'FaceVertexCData',colors,...
    'FaceColor','interp','EdgeColor','interp')
view(30,-15)
axis vis3d
colormap copper

fig2plotly(gcf, 'TreatAs', 'isosurface');
```


<!--------------------- EXAMPLE BREAK ------------------------->