---
description: How to make 3D Surface Plots plots in MATLAB<sup>&reg;</sup> with Plotly.
name: 3D Surface Plots
display_as: 3d_charts
order: 3
permalink: matlab/3d-surface-plots/
thumnail_github: 3d-surface-plots.png
layout: base
language: matlab
page_type: u-guide
---

## Create Surface Plot

Create three matrices of the same size. Then plot them as a surface. The surface plot uses `Z` for both height and color.

```{matlab}
[X,Y] = meshgrid(1:0.5:10,1:20);
Z = sin(X) + cos(Y);
surf(X,Y,Z);

fig2plotly(gcf, 'TreatAs', 'surf');
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Add Colormap

Specify the colors for a surface plot by including a fourth matrix input, `C`. The surface plot uses `Z` for height and `C` for color. Specify the colors using a colormap, which uses single numbers to stand for colors on a spectrum. When you use a colormap, `C` is the same size as `Z`. Add a color bar to the graph to show how the data values in `C` correspond to the colors in the colormap.

```{matlab}
[X,Y] = meshgrid(1:0.5:10,1:20);
Z = sin(X) + cos(Y);
C = X.*Y;
surf(X,Y,Z,C);
colorbar;

fig2plotly(gcf, 'TreatAs', 'surf');
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify True Colors for Surface Plot

Specify the colors for a surface plot by including a fourth matrix input, `CO`. The surface plot uses `Z` for height and `CO` for color. Specify the colors using truecolor, which uses triplets of numbers to stand for all possible colors. When you use truecolor, if `Z` is `m`-by-`n`, then `CO` is `m`-by-`n`-by-3. The first page of the array indicates the red component for each color, the second page indicates the green component, and the third page indicates the blue component.

```{matlab}
[X,Y,Z] = peaks(25);
CO(:,:,1) = zeros(25); % red
CO(:,:,2) = ones(25).*linspace(0.5,0.6,25); % green
CO(:,:,3) = ones(25).*linspace(0,1,25); % blue
surf(X,Y,Z,CO);

fig2plotly(gcf, 'TreatAs', 'surf');
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Modify Surface Plot Appearance

Create a semitransparent surface by specifying the `FaceAlpha` name-value pair with `0.5` as the value. To allow further modifications, assign the surface object to the variable `s`. 

Use `s` to access and modify properties of the surface object after it is created. For example, hide the edges by setting the `EdgeColor` property. 


```{matlab}
[X,Y] = meshgrid(-5:.5:5);
Z = Y.*sin(X) - X.*cos(Y);
s = surf(X,Y,Z,'FaceAlpha',0.5);

s.EdgeColor = 'none';

fig2plotly(gcf, 'TreatAs', 'surf');
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Create Surface Plot With Light Object

Create three matrices of the same size. Then plot them as a surface with highlights from a MATLAB® light object. The surface uses `Z` for height and both `Z` and the light object for color. The function returns an array containing a surface object and a lighting object. Assign it to the variable `sl`. 

Index into `sl` to access and modify properties of the surface object and the light object after they are created. The surface plot is accessible as `sl(1)` and the light object as `sl(2)`. For example, change the color of the light by setting the `Color` property of the light object.

```{matlab}
[X,Y] = meshgrid(1:0.5:10,1:20);
Z = sin(X) + cos(Y);
sl = surfl(X,Y,Z,'light');

sl(2).Color = 'r';

fig2plotly(gcf, 'TreatAs', 'surfl');
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Specify Light Direction and Reflectance for Surface Plot

Create three matrices of the same size to plot as a surface. Specify the direction of the light source to have an azimuth of 45 degrees and an elevation of 20 degrees. Increase the reflectance of the surface by increasing the contribution of ambient light and decreasing the contibutions of diffused and specular reflection. Assign the surface object to the variable `sl`.

```{matlab}
[X,Y] = meshgrid(1:0.5:10,1:20);
Z = sin(X) + cos(Y);
s = [-45 20];
k = [.65 .4 .3 10];
```

Plot the data using the source and reflectance vectors.

Use `sl` to access and modify properties of the surface object after it is created. For example, hide the edges by setting the `EdgeColor` property.

```{matlab}
[X,Y] = meshgrid(1:0.5:10,1:20);
Z = sin(X) + cos(Y);
s = [-45 20];
k = [.65 .4 .3 10];

sl = surfl(X,Y,Z,s,k);

sl.EdgeColor = 'none';

fig2plotly(gcf, 'TreatAs', 'surfl');
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Plotting Implicit Function


```{matlab}
z = 0:4*pi;
t = 0:2*pi;
[Z,T] = meshgrid(z,t);
X = sin(Z).*cos(T);
Y = sin(Z).*sin(T);

surf(X,Y,Z)

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->