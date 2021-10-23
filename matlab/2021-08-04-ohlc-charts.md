---
description: How to make OHLC Plots in MATLAB<sup>&reg;</sup> with Plotly.
name: OHLC Plots
display_as: financial
order: 4
permalink: matlab/ohlc-charts/
thumnail_github: ohlc-charts.png
layout: base
language: matlab
page_type: u-guide
---


## Generate a Line Break Chart for a Data Series for a Stock

Load the file `SimulatedStock.mat`, which provides a timetable (TMW) for financial data for TMW stock. This Linebreak chart is for closing prices of the stock TMW for the most recent 21 days. Note that the variable name of asset price is be renamed to 'Price' (case insensitive).

```{matlab}
load SimulatedStock.mat
TMW.Properties.VariableNames{'Close'} = 'Price';
linebreak(TMW(end-20:end,:))
title('Line Break Chart for TMW')

fig2plotly()
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Generate a Highlow Chart for a Data Series for a Stock

Load the file `SimulatedStock.mat`, which provides a timetable (TMW) for financial data for TMW stock. The highlow chart plots the price data using blue lines.

```{matlab}
load SimulatedStock.mat
range = 1:25;
highlow(TMW(range,:),'b');
title('High, Low, Open, Close Chart for TMW')

fig2plotly()
```

<!--------------------- EXAMPLE BREAK ------------------------->