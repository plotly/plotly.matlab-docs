---
description: How to set the title, legend-entries, and axis-titles in MATLAB<sup>&reg;</sup>.
name: Setting the Font, Title, Legend Entries, and Axis Titles
display_as: file_settings
order: 12
permalink: matlab/figure-labels/
thumnail_github: figure-labels.png
layout: base
language: matlab
page_type: u-guide
---


## Setting Title Font Size and Font Family


```{matlab}
x = randi([0 100],1,100);
y = randi([0 100],1,100);
fig = figure;
plot(x,y,'bo');
title('Custom Title','FontSize',24,'Color','g','FontName','FixedWidth');

fig2plotly(fig,'strip',false);
```


<!--------------------- EXAMPLE BREAK ------------------------->

## Changing Axis Label Size, Font and Position


```{matlab}
x = randi([0 100],1,100);
y = randi([0 100],1,100);
fig = figure;
plot(x,y,'bo');
title('Custom Axis Labels');
xlabel('X Label','FontSize',20,'Color','b','Position',[50 -10]);
ylabel('Y Label','FontSize',20,'Color','r','Position',[-10 50] );

fig2plotly(fig, 'strip', false);
```

<!--------------------- EXAMPLE BREAK ------------------------->
