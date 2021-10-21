---
description: How to make Candlestick Plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Candlestick Plots
display_as: statistical
order: 2
permalink: matlab/candlestick-charts/
thumnail_github: candlestick-charts.png
layout: base
language: matlab
page_type: u-guide
---

## Generate a Candlestick Chart for a Data Series for a Stock

Load the file `SimulatedStock.mat`, which provides a timetable (`TMW`) for financial data for TMW stock. This is a candlestick chart with blue candles, for the most recent 21 days in SimulatedStock`.mat`.

```{matlab}
load SimulatedStock.mat;
candle(TMW(end-20:end,:),'b');
title('Candlestick chart for TMW');

fig2plotly(gcf);
```


This example shows how to create a candle plot for Disney stock for the dates March 31, 1998 through April 30, 1998.




```{matlab}
load disney.mat
candle(dis('3/31/98::4/30/98'));
title('Disney 3/31/98 to 4/30/98');

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->