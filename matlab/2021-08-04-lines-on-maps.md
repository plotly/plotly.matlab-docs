---
description: How to make Lines on Maps plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Lines on Maps
display_as: maps
order: 1
permalink: matlab/lines-on-maps/
thumnail_github: thumbnail/flight-paths.jpg
layout: base
language: matlab
page_type: u-guide
---

## Create Geographic Plot

Plot a straight line between two points on a map. Specify the endpoints of the line using the coordinates of Seattle and Anchorage. Specify latitude and longitude in degrees.

```{matlab}
latSeattle = 47.62;
lonSeattle = -122.33;
latAnchorage = 61.20;
lonAnchorage = -149.9;
```

Plot the data on a map. Customize the appearance of the line using the line specification `'g-*'`. Adjust the latitude and longitude limits of the map using `geolimits`.

```{matlab}
latSeattle = 47.62;
lonSeattle = -122.33;
latAnchorage = 61.20;
lonAnchorage = -149.9;

geoplot([latSeattle latAnchorage],[lonSeattle lonAnchorage],'g-*')
geolimits([45 62],[-149 -123])

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Add Text to Geographic Plot

Plot a straight line between two points on a map. Specify the endpoints of the line using the coordinates of Seattle and Anchorage. Specify latitude and longitude in degrees.

```{matlab}
latSeattle = 47.62;
lonSeattle = -122.33;
latAnchorage = 61.20;
lonAnchorage = -149.9;
```

Plot the data using `geoplot`. Customize the appearance of the line using the line specification `'g-*'`. Adjust the latitude and longitude limits of the map using `geolimits`.

```{matlab}
latSeattle = 47.62;
lonSeattle = -122.33;
latAnchorage = 61.20;
lonAnchorage = -149.9;

geoplot([latSeattle latAnchorage],[lonSeattle lonAnchorage],'g-*')
geolimits([45 62],[-149 -123])

fig2plotly(gcf)
```

Identify Anchorage using the `text` function.

```{matlab}
latSeattle = 47.62;
lonSeattle = -122.33;
latAnchorage = 61.20;
lonAnchorage = -149.9;

geoplot([latSeattle latAnchorage],[lonSeattle lonAnchorage],'g-*')
geolimits([45 62],[-149 -123])

text(latAnchorage,lonAnchorage,'Anchorage');

fig2plotly(gcf)
```

Identify Seattle using the `text` function. Adjust the alignment of the text label by specifying properties of the `Text` object.

```{matlab}
latSeattle = 47.62;
lonSeattle = -122.33;
latAnchorage = 61.20;
lonAnchorage = -149.9;

geoplot([latSeattle latAnchorage],[lonSeattle lonAnchorage],'g-*')
geolimits([45 62],[-149 -123])

text(latAnchorage,lonAnchorage,'Anchorage');

text(latSeattle,lonSeattle,'Seattle',...
    'HorizontalAlignment','right',...
    'VerticalAlignment','bottom');
    
fig2plotly(gcf)
```



<!--------------------- EXAMPLE BREAK ------------------------->

## Customize Individual Lines on Map

Specify the latitude and longitude coordinates of Seattle, Anchorage, and Point Barrow.

```{matlab}
latSeattle = 47.62;
lonSeattle = -122.33;

latAnchorage = 61.20;
lonAnchorage = -149.9;

latPtBarrow = 71.38;
lonPtBarrow = -156.47;
```

Plot straight lines from Seattle to each of the other two cities. Draw a solid yellow line from Seattle to Anchorage and a dotted blue line between Seattle and Point Barrow. Adjust the latitude and longitude limits of the map using `geolimits`.

```{matlab}
latSeattle = 47.62;
lonSeattle = -122.33;

latAnchorage = 61.20;
lonAnchorage = -149.9;

latPtBarrow = 71.38;
lonPtBarrow = -156.47;

geoplot([latSeattle latAnchorage],[lonSeattle lonAnchorage],'y-',...
    [latSeattle latPtBarrow],[lonSeattle lonPtBarrow],'b:')
geolimits([44 73],[-149 -123])

fig2plotly(gcf)
```


Label each city on the map using the `text` function.

```{matlab}
latSeattle = 47.62;
lonSeattle = -122.33;

latAnchorage = 61.20;
lonAnchorage = -149.9;

latPtBarrow = 71.38;
lonPtBarrow = -156.47;

geoplot([latSeattle latAnchorage],[lonSeattle lonAnchorage],'y-',...
    [latSeattle latPtBarrow],[lonSeattle lonPtBarrow],'b:')
geolimits([44 73],[-149 -123])

text(latAnchorage,lonAnchorage,'Anchorage');
text(latPtBarrow,lonPtBarrow,'Point Barrow');
text(latSeattle,lonSeattle,'Seattle',...
    'VerticalAlignment','bottom');
    
fig2plotly(gcf)
```



<!--------------------- EXAMPLE BREAK ------------------------->

## Use Chart Line Properties to Customize Appearance of the Line

Plot a straight line between two points on a map. Specify the endpoints of the line using the coordinates of Seattle and Anchorage. Specify latitude and longitude in degrees.

```{matlab}
latSeattle = 47.62;
lonSeattle = -122.33;
latAnchorage = 61.20;
lonAnchorage = -149.9;
```

Plot the data using `geoplot`. Adjust the latitude and longitude limits of the map using `geolimits`. Customize the appearance of the line by specifying the `LineWidth` and `Color` properties.

```{matlab}
latSeattle = 47.62;
lonSeattle = -122.33;
latAnchorage = 61.20;
lonAnchorage = -149.9;

geoplot([latSeattle latAnchorage],[lonSeattle lonAnchorage],...
    'LineWidth',2,'Color',[.6 0 0])
geolimits([45 62],[-149 -123])

fig2plotly(gcf)
```



<!--------------------- EXAMPLE BREAK ------------------------->

## Change Basemap Used in Geographic Plot

Plot a straight line between two points on a map. Specify the endpoints of the line using the coordinates of Seattle and Anchorage. Specify latitude and longitude in degrees.

```{matlab}
latSeattle = 47.62;
lonSeattle = -122.33;
latAnchorage = 61.20;
lonAnchorage = -149.9;
```

Plot the data using `geoplot`. Adjust the latitude and longitude limits of the map using `geolimits`.

```{matlab}
latSeattle = 47.62;
lonSeattle = -122.33;
latAnchorage = 61.20;
lonAnchorage = -149.9;

geoplot([latSeattle latAnchorage],[lonSeattle lonAnchorage])
geolimits([45 62],[-149 -123])

fig2plotly(gcf)
```

Change the basemap used in the plot using the `geobasemap` function.

```{matlab}
latSeattle = 47.62;
lonSeattle = -122.33;
latAnchorage = 61.20;
lonAnchorage = -149.9;

geoplot([latSeattle latAnchorage],[lonSeattle lonAnchorage])
geolimits([45 62],[-149 -123])

geobasemap colorterrain
```


<!--------------------- EXAMPLE BREAK ------------------------->

