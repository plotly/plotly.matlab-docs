---
description: How to Style Plot Markers in MATLAB<sup>&reg;</sup> with Plotly.
name: Styling Markers
display_as: file_settings
order: 19
permalink: matlab/marker-style/
thumnail_github: thumbnail/marker-style.gif
layout: base
language: matlab
page_type: u-guide
---

## Modify Line Appearance

Plot the sine function over three different ranges using different line styles, colors, and markers.

```{matlab}
figure
t = 0:pi/20:2*pi;
plot(t,sin(t),'-.r*')
hold on
plot(t,sin(t-pi/2),'--mo')
plot(t,sin(t-pi),':bs')
hold off

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Set Line Properties

Create a plot illustrating how to set line properties. 

```{matlab}
t = 0:pi/20:2*pi;
figure
plot(t,sin(2*t),'-mo',...
    'LineWidth',2,...
    'MarkerEdgeColor','k',...
    'MarkerFaceColor',[.49 1 .63],...
    'MarkerSize',10)

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->


## Marker Types and Colors


```{matlab}
x = 0:0.2:10;
y0 = besselj(0,x);
y1 = besselj(1,x);
y2 = besselj(2,x);
y3 = besselj(3,x);
y4 = besselj(4,x);
y5 = besselj(5,x);
y6 = besselj(6,x);

fig = figure;
plot(x, y0, 'r+', x, y1, 'go', x, y2, 'b*', x, y3, 'cx', ...
    x, y4, 'ms', x, y5, 'yd', x, y6, 'kv');

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Coolors, symbols and width


```{matlab}
x = 0:pi/10:2*pi;
y1 = sin(x);
y2 = sin(x-0.25);
y3 = sin(x-0.5);

fig = figure;
hold on

plot(x,y1,'Color',[50 204 10]/255,'LineWidth',3,'LineStyle','-.');
plot(x,y2,'Color',[21 24 100]/255,'LineWidth',3,'LineStyle','--');
plot(x,y3,'Color',[201 24 50]/255,'LineWidth',2,'LineStyle',':');

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->
