---
description: How to make Lines on Maps plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Lines on Maps
display_as: maps
order: 1
permalink: matlab/lines-on-maps/
thumnail_github: lines-on-maps.png
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

fig2plotly(gcf);
```
{% capture plot_999545295011 %}
{% raw %}{"data": [{"geo": "geo2", "type": "scattergeo", "mode": "lines+markers", "lat": [47.62, 61.2], "lon": [-122.33, -149.9], "marker": {"sizeref": 1, "sizemode": "area", "size": 6, "symbol": "asterisk-open", "line": {"width": 1}, "color": "rgb(0.000000,255.000000,0.000000)"}, "line": {"color": "rgb(0.000000,255.000000,0.000000)", "width": 1, "dash": "solid"}}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "geo2": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}, "projection": {"type": "mercator"}, "framecolor": "rgb(120,120,120)", "oceancolor": "rgba(20,220,220,1)", "landcolor": "rgba(20,220,220,0.2)", "showocean": true, "showcoastlines": false, "showland": true, "lataxis": {"range": [45, 62], "tick0": 50, "dtick": 5, "showgrid": true, "gridwidth": 0.5, "gridcolor": "rgba(38.250000,38.250000,38.250000,0.150000)"}, "lonaxis": {"range": [-154.400111436262, -117.599888563738], "tick0": -150, "dtick": 10, "showgrid": true, "gridwidth": 0.5, "gridcolor": "rgba(38.250000,38.250000,38.250000,0.150000)"}, "center": {"lat": 54.3688932381502, "lon": -136}, "resolution": "50"}}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_999545295011 index=999545295011 %}


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

fig2plotly(gcf);
```
{% capture plot_292289607128 %}
{% raw %}{"data": [{"geo": "geo2", "type": "scattergeo", "mode": "lines+markers", "lat": [47.62, 61.2], "lon": [-122.33, -149.9], "marker": {"sizeref": 1, "sizemode": "area", "size": 6, "symbol": "asterisk-open", "line": {"width": 1}, "color": "rgb(0.000000,255.000000,0.000000)"}, "line": {"color": "rgb(0.000000,255.000000,0.000000)", "width": 1, "dash": "solid"}}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "geo2": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}, "projection": {"type": "mercator"}, "framecolor": "rgb(120,120,120)", "oceancolor": "rgba(20,220,220,1)", "landcolor": "rgba(20,220,220,0.2)", "showocean": true, "showcoastlines": false, "showland": true, "lataxis": {"range": [45, 62], "tick0": 50, "dtick": 5, "showgrid": true, "gridwidth": 0.5, "gridcolor": "rgba(38.250000,38.250000,38.250000,0.150000)"}, "lonaxis": {"range": [-154.400111436262, -117.599888563738], "tick0": -150, "dtick": 10, "showgrid": true, "gridwidth": 0.5, "gridcolor": "rgba(38.250000,38.250000,38.250000,0.150000)"}, "center": {"lat": 54.3688932381502, "lon": -136}, "resolution": "50"}}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_292289607128 index=292289607128 %}


Identify Anchorage using the `text` function.

```{matlab}
latSeattle = 47.62;
lonSeattle = -122.33;
latAnchorage = 61.20;
lonAnchorage = -149.9;

geoplot([latSeattle latAnchorage],[lonSeattle lonAnchorage],'g-*')
geolimits([45 62],[-149 -123])

text(latAnchorage,lonAnchorage,'Anchorage');

fig2plotly(gcf);
```
{% capture plot_201401856015 %}
{% raw %}{"data": [{"geo": "geo2", "type": "scattergeo", "mode": "lines+markers", "lat": [47.62, 61.2], "lon": [-122.33, -149.9], "marker": {"sizeref": 1, "sizemode": "area", "size": 6, "symbol": "asterisk-open", "line": {"width": 1}, "color": "rgb(0.000000,255.000000,0.000000)"}, "line": {"color": "rgb(0.000000,255.000000,0.000000)", "width": 1, "dash": "solid"}}, {"type": "scattergeo", "mode": "text", "text": ["Anchorage"], "lat": 61.2, "lon": -149.9, "textfont": {"size": 10, "color": ["rgb(0.000000,0.000000,0.000000)"], "family": ["Arial, sans-serif"]}, "textposition": ["right"], "geo": "geo2"}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "geo2": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}, "projection": {"type": "mercator"}, "framecolor": "rgb(120,120,120)", "oceancolor": "rgba(20,220,220,1)", "landcolor": "rgba(20,220,220,0.2)", "showocean": true, "showcoastlines": false, "showland": true, "lataxis": {"range": [45, 62], "tick0": 50, "dtick": 5, "showgrid": true, "gridwidth": 0.5, "gridcolor": "rgba(38.250000,38.250000,38.250000,0.150000)"}, "lonaxis": {"range": [-154.400111436262, -117.599888563738], "tick0": -150, "dtick": 10, "showgrid": true, "gridwidth": 0.5, "gridcolor": "rgba(38.250000,38.250000,38.250000,0.150000)"}, "center": {"lat": 54.3688932381502, "lon": -136}, "resolution": "50"}}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_201401856015 index=201401856015 %}


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
    
fig2plotly(gcf);
```
{% capture plot_388631244974 %}
{% raw %}{"data": [{"geo": "geo2", "type": "scattergeo", "mode": "lines+markers", "lat": [47.62, 61.2], "lon": [-122.33, -149.9], "marker": {"sizeref": 1, "sizemode": "area", "size": 6, "symbol": "asterisk-open", "line": {"width": 1}, "color": "rgb(0.000000,255.000000,0.000000)"}, "line": {"color": "rgb(0.000000,255.000000,0.000000)", "width": 1, "dash": "solid"}}, {"type": "scattergeo", "mode": "text", "text": ["Seattle", "Anchorage"], "lat": [47.62, 61.2], "lon": [-122.33, -149.9], "textfont": {"size": [10, 10], "color": ["rgb(0.000000,0.000000,0.000000)", "rgb(0.000000,0.000000,0.000000)"], "family": ["Arial, sans-serif", "Arial, sans-serif"]}, "textposition": ["left", "right"], "geo": "geo2"}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "geo2": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}, "projection": {"type": "mercator"}, "framecolor": "rgb(120,120,120)", "oceancolor": "rgba(20,220,220,1)", "landcolor": "rgba(20,220,220,0.2)", "showocean": true, "showcoastlines": false, "showland": true, "lataxis": {"range": [45, 62], "tick0": 50, "dtick": 5, "showgrid": true, "gridwidth": 0.5, "gridcolor": "rgba(38.250000,38.250000,38.250000,0.150000)"}, "lonaxis": {"range": [-154.400111436262, -117.599888563738], "tick0": -150, "dtick": 10, "showgrid": true, "gridwidth": 0.5, "gridcolor": "rgba(38.250000,38.250000,38.250000,0.150000)"}, "center": {"lat": 54.3688932381502, "lon": -136}, "resolution": "50"}}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_388631244974 index=388631244974 %}




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

fig2plotly(gcf);
```
{% capture plot_180338042065 %}
{% raw %}{"data": [{"geo": "geo2", "type": "scattergeo", "mode": "lines", "lat": [47.62, 61.2], "lon": [-122.33, -149.9], "marker": {"sizeref": 1, "sizemode": "area", "size": 6, "line": {"width": 1}, "color": "rgb(255.000000,255.000000,0.000000)"}, "line": {"color": "rgb(255.000000,255.000000,0.000000)", "width": 1, "dash": "solid"}}, {"geo": "geo2", "type": "scattergeo", "mode": "lines", "lat": [47.62, 71.38], "lon": [-122.33, -156.47], "marker": {"sizeref": 1, "sizemode": "area", "size": 6, "line": {"width": 1}, "color": "rgb(0.000000,0.000000,255.000000)"}, "line": {"color": "rgb(0.000000,0.000000,255.000000)", "width": 1, "dash": "dot"}}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "geo2": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}, "projection": {"type": "mercator"}, "framecolor": "rgb(120,120,120)", "oceancolor": "rgba(20,220,220,1)", "landcolor": "rgba(20,220,220,0.2)", "showocean": true, "showcoastlines": false, "showland": true, "lataxis": {"range": [44, 73], "tick0": 50, "dtick": 10, "showgrid": true, "gridwidth": 0.5, "gridcolor": "rgba(38.250000,38.250000,38.250000,0.150000)"}, "lonaxis": {"range": [-173.839076145316, -98.1609238546844], "tick0": -165, "dtick": 15, "showgrid": true, "gridwidth": 0.5, "gridcolor": "rgba(38.250000,38.250000,38.250000,0.150000)"}, "center": {"lat": 61.7259872634373, "lon": -136}, "resolution": "50"}}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_180338042065 index=180338042065 %}



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
    
fig2plotly(gcf);
```
{% capture plot_205091249882 %}
{% raw %}{"data": [{"geo": "geo2", "type": "scattergeo", "mode": "lines", "lat": [47.62, 61.2], "lon": [-122.33, -149.9], "marker": {"sizeref": 1, "sizemode": "area", "size": 6, "line": {"width": 1}, "color": "rgb(255.000000,255.000000,0.000000)"}, "line": {"color": "rgb(255.000000,255.000000,0.000000)", "width": 1, "dash": "solid"}}, {"geo": "geo2", "type": "scattergeo", "mode": "lines", "lat": [47.62, 71.38], "lon": [-122.33, -156.47], "marker": {"sizeref": 1, "sizemode": "area", "size": 6, "line": {"width": 1}, "color": "rgb(0.000000,0.000000,255.000000)"}, "line": {"color": "rgb(0.000000,0.000000,255.000000)", "width": 1, "dash": "dot"}}, {"type": "scattergeo", "mode": "text", "text": ["Seattle", "Point Barrow", "Anchorage"], "lat": [47.62, 71.38, 61.2], "lon": [-122.33, -156.47, -149.9], "textfont": {"size": [10, 10, 10], "color": ["rgb(0.000000,0.000000,0.000000)", "rgb(0.000000,0.000000,0.000000)", "rgb(0.000000,0.000000,0.000000)"], "family": ["Arial, sans-serif", "Arial, sans-serif", "Arial, sans-serif"]}, "textposition": ["right", "right", "right"], "geo": "geo2"}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "geo2": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}, "projection": {"type": "mercator"}, "framecolor": "rgb(120,120,120)", "oceancolor": "rgba(20,220,220,1)", "landcolor": "rgba(20,220,220,0.2)", "showocean": true, "showcoastlines": false, "showland": true, "lataxis": {"range": [44, 73], "tick0": 50, "dtick": 10, "showgrid": true, "gridwidth": 0.5, "gridcolor": "rgba(38.250000,38.250000,38.250000,0.150000)"}, "lonaxis": {"range": [-173.839076145316, -98.1609238546844], "tick0": -165, "dtick": 15, "showgrid": true, "gridwidth": 0.5, "gridcolor": "rgba(38.250000,38.250000,38.250000,0.150000)"}, "center": {"lat": 61.7259872634373, "lon": -136}, "resolution": "50"}}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_205091249882 index=205091249882 %}




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

fig2plotly(gcf);
```
{% capture plot_234319182637 %}
{% raw %}{"data": [{"geo": "geo2", "type": "scattergeo", "mode": "lines", "lat": [47.62, 61.2], "lon": [-122.33, -149.9], "marker": {"sizeref": 1, "sizemode": "area", "size": 6, "line": {"width": 4}, "color": "rgb(153.000000,0.000000,0.000000)"}, "line": {"color": "rgb(153.000000,0.000000,0.000000)", "width": 4, "dash": "solid"}}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "geo2": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}, "projection": {"type": "mercator"}, "framecolor": "rgb(120,120,120)", "oceancolor": "rgba(20,220,220,1)", "landcolor": "rgba(20,220,220,0.2)", "showocean": true, "showcoastlines": false, "showland": true, "lataxis": {"range": [45, 62], "tick0": 50, "dtick": 5, "showgrid": true, "gridwidth": 0.5, "gridcolor": "rgba(38.250000,38.250000,38.250000,0.150000)"}, "lonaxis": {"range": [-154.400111436262, -117.599888563738], "tick0": -150, "dtick": 10, "showgrid": true, "gridwidth": 0.5, "gridcolor": "rgba(38.250000,38.250000,38.250000,0.150000)"}, "center": {"lat": 54.3688932381502, "lon": -136}, "resolution": "50"}}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_234319182637 index=234319182637 %}




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

fig2plotly(gcf);
```
{% capture plot_985081141853 %}
{% raw %}{"data": [{"geo": "geo2", "type": "scattergeo", "mode": "lines", "lat": [47.62, 61.2], "lon": [-122.33, -149.9], "marker": {"sizeref": 1, "sizemode": "area", "size": 6, "line": {"width": 1}, "color": "rgb(0.000000,113.985000,188.955000)"}, "line": {"color": "rgb(0.000000,113.985000,188.955000)", "width": 1, "dash": "solid"}}], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "geo2": {"domain": {"x": [0.13, 0.905], "y": [0.11, 0.925]}, "projection": {"type": "mercator"}, "framecolor": "rgb(120,120,120)", "oceancolor": "rgba(20,220,220,1)", "landcolor": "rgba(20,220,220,0.2)", "showocean": true, "showcoastlines": false, "showland": true, "lataxis": {"range": [45, 62], "tick0": 50, "dtick": 5, "showgrid": true, "gridwidth": 0.5, "gridcolor": "rgba(38.250000,38.250000,38.250000,0.150000)"}, "lonaxis": {"range": [-154.400111436262, -117.599888563738], "tick0": -150, "dtick": 10, "showgrid": true, "gridwidth": 0.5, "gridcolor": "rgba(38.250000,38.250000,38.250000,0.150000)"}, "center": {"lat": 54.3688932381502, "lon": -136}, "resolution": "50"}}, "frames": []}{% endraw %}
{% endcapture %}
{% include posts/ssim_frame.html raw_json_file=plot_985081141853 index=985081141853 %}


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

