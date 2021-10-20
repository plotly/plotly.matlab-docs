---
description: How to make Scatter Plots on Maps plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Scatter Plots on Maps
display_as: maps
order: 1
permalink: matlab/scatter-plots-on-maps/
thumnail_github: scatter-plots-on-maps.png
layout: base
language: matlab
page_type: u-guide
---

## Create Geographic Scatter Plot Controlling Color, Size, and Shape of Markers

Set up latitude and longitude data. 

```{matlab}
lon = (-170:10:170);
lat = 50 * cosd(3*lon);
```

Define data that controls the area of each marker. 

```{matlab}
lon = (-170:10:170);
lat = 50 * cosd(3*lon);

A = 101 + 100*(sind(2*lon));
```

Define data to control the color of each marker.

```{matlab}
lon = (-170:10:170);
lat = 50 * cosd(3*lon);

A = 101 + 100*(sind(2*lon));

C = cosd(4*lon);
```

Plot the data on a geographic scatter plot, specifying the marker size data and the color data. Specify the marker as a triangle, rather than the default circle.

```{matlab}
lon = (-170:10:170);
lat = 50 * cosd(3*lon);

A = 101 + 100*(sind(2*lon));

C = cosd(4*lon);

geoscatter(lat,lon,A,C,'^')

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Create Geographic Scatter Plot Specifying Basemap

Set up latitude and longitude data. 

```{matlab}
lon = (-170:10:170);
lat = 50 * cosd(3*lon);
```

Define the data that controls the area of each marker. 

```{matlab}
lon = (-170:10:170);
lat = 50 * cosd(3*lon);

A = 101 + 100*(sind(2*lon));
```

Define the data that controls the color of each marker.

```{matlab}
lon = (-170:10:170);
lat = 50 * cosd(3*lon);

A = 101 + 100*(sind(2*lon));

C = cosd(4*lon);
```

Create the scatter plot on a set of geographic axes, specifying the marker size data and the color data. The example specifies the marker as a triangle, rather than the default circle. 

```{matlab}
lon = (-170:10:170);
lat = 50 * cosd(3*lon);

A = 101 + 100*(sind(2*lon));

C = cosd(4*lon);

geoscatter(lat,lon,A,C,'^')

fig2plotly(gcf);
```

Change the basemap of the geographic scatter plot.

```{matlab}
lon = (-170:10:170);
lat = 50 * cosd(3*lon);

A = 101 + 100*(sind(2*lon));

C = cosd(4*lon);

geoscatter(lat,lon,A,C,'^')

geobasemap colorterrain

fig2plotly(gcf);
```


<!--------------------- EXAMPLE BREAK ------------------------->

