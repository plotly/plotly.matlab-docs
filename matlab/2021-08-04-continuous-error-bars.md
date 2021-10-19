---
description: How to make Continuous Error Band plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Continuous Error Bands
display_as: statistical
order: 15
permalink: matlab/continuous-error-bars/
thumnail_github: thumbnail/error-cont.jpg
layout: base
language: matlab
page_type: u-guide
---

To make this plot, you'll need the the boundedline package<br>
from the MATLAB<sup>&reg;</sup> <a href="https://uk.mathworks.com/matlabcentral/fileexchange/27485-boundedline-m">File exchange</a>

## Plotting lines using various syntax options

This example builds the 4-panel example image used on the MatlabCentral File Exchange, which shows several different methods for supplying line coordinates, bounds coordinates, and shading options.

The first axis plots two lines using the LineSpec option for input, which allows yoy to set line color, line color, and marker type for each line.

The bounds on the first line vary over x, while the bounds on the second line are constant for all x. An outline is added to the bounds so the overlapping region can be seen more clearly. 


```{matlab}
x = linspace(0, 2*pi, 50);
y1 = sin(x);
y2 = cos(x);
e1 = rand(size(y1))*.5+.5;
e2 = [.25 .5];

ax(1) = subplot(2,2,1);
[l,p] = boundedline(x, y1, e1, '-b*', x, y2, e2, '--ro');
outlinebounds(l,p);
title('Opaque bounds, with outline');
axis tight;

fig2plotly(gcf)
```


For our second axis, we use the same 2 lines, and this time assign x-varying bounds to both lines.  Rather than using the LineSpec syntax, this  example uses the default color order to assign the colors of the lines and patches.  I also turn on the |'alpha'| option, which renders the patch with partial transparency.


```{matlab}
x = linspace(0, 2*pi, 50);
y1 = sin(x);
y2 = cos(x);
e1 = rand(size(y1))*.5+.5;
e2 = [.25 .5];

ax(1) = subplot(2,2,1);
[l,p] = boundedline(x, y1, e1, '-b*', x, y2, e2, '--ro');
outlinebounds(l,p);
title('Opaque bounds, with outline');
axis tight;

ax(2) = subplot(2,2,2);
boundedline(x, [y1;y2], rand(length(y1),2,2)*.5+.5, 'alpha');
title('Transparent bounds');
axis tight;

fig2plotly(gcf)
```

The bounds can also be assigned to a horizontal orientation, for a case where the x-axis represents the dependent variable.  In this case, the scalar error bound value applies to both lines and both sides of the lines.

```{matlab}
x = linspace(0, 2*pi, 50);
y1 = sin(x);
y2 = cos(x);
e1 = rand(size(y1))*.5+.5;
e2 = [.25 .5];

ax(1) = subplot(2,2,1);
[l,p] = boundedline(x, y1, e1, '-b*', x, y2, e2, '--ro');
outlinebounds(l,p);
title('Opaque bounds, with outline');
axis tight;

ax(2) = subplot(2,2,2);
boundedline(x, [y1;y2], rand(length(y1),2,2)*.5+.5, 'alpha');
title('Transparent bounds');
axis tight;

ax(3) = subplot(2,2,3);
boundedline([y1;y2], x, e1(1), 'orientation', 'horiz')
title('Horizontal bounds');
axis tight;

fig2plotly(gcf)
```

Rather than use a LineSpec or the default color order, a colormap array can be used to assign colors.  In this case, increasingly-narrower bounds are added on top of the same line.


```{matlab}
x = linspace(0, 2*pi, 50);
y1 = sin(x);
y2 = cos(x);
e1 = rand(size(y1))*.5+.5;
e2 = [.25 .5];

ax(1) = subplot(2,2,1);
[l,p] = boundedline(x, y1, e1, '-b*', x, y2, e2, '--ro');
outlinebounds(l,p);
title('Opaque bounds, with outline');
axis tight;

ax(2) = subplot(2,2,2);
boundedline(x, [y1;y2], rand(length(y1),2,2)*.5+.5, 'alpha');
title('Transparent bounds');
axis tight;

ax(3) = subplot(2,2,3);
boundedline([y1;y2], x, e1(1), 'orientation', 'horiz')
title('Horizontal bounds');
axis tight;

ax(4) = subplot(2,2,4);
boundedline(x, repmat(y1, 4,1), permute(0.5:-0.1:0.2, [3 1 2]), ...
    'cmap', cool(4), ...
    'transparency', 0.5);
title('Multiple bounds using colormap');

set(ax([1 2 4]), 'xlim', [0 2*pi]);
set(ax(3), 'ylim', [0 2*pi]);
axis tight;

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Filling gaps

If you plot a line with one or more NaNs in either the |x| or |y| vector, the NaN location is rendered as a missing marker with a gap in the line.

```{matlab}
x = linspace(0, 2*pi, 50);
y = sin(x);
b = [ones(size(y))*0.2; rand(size(y))*.5+.5]';
y(10)   = NaN;  % NaN in the line but not bounds
b(20,1) = NaN;  % NaN in lower bound but not line
b(30,2) = NaN;  % NaN in upper bound but not line
b(40,:) = NaN;  % NaN in both sides of bound but not line

[hl,hp] = boundedline(x,y,b,'-bo', 'nan', 'fill');
ho = outlinebounds(hl,hp);
set(ho, 'linestyle', ':', 'color', 'r', 'marker', '.');

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->
