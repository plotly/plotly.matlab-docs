---
description: How to make Waterfall Plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Waterfall Plots
display_as: financial
order: 3
permalink: matlab/waterfall-charts/
thumnail_github: thumbnail/waterfall-charts.jpg
layout: base
language: matlab
page_type: u-guide
---

## Plot Cash Flows

Define `CFlowAmounts` and `CFlowDates` using the `cfamounts` function. 

```{matlab}
CouponRate = [0.06; 0.05; 0.03];
Settle = '03-Jun-1999';
Maturity = ['15-Aug-2000';'15-Dec-2000';'15-Jun-2000'];
Period = [1; 2; 2];  Basis = [1; 0; 0];
[CFlowAmounts, CFlowDates] = cfamounts(...
CouponRate, Settle, Maturity, Period, Basis)
```


Plot all cash flows on the same axes, and label the first two. 

```{matlab}
CouponRate = [0.06; 0.05; 0.03];
Settle = '03-Jun-1999';
Maturity = ['15-Aug-2000';'15-Dec-2000';'15-Jun-2000'];
Period = [1; 2; 2];  Basis = [1; 0; 0];
[CFlowAmounts, CFlowDates] = cfamounts(...
CouponRate, Settle, Maturity, Period, Basis)

cfplot(CFlowDates, CFlowAmounts, 'ShowAmnt', [1 2])

fig2plotly(gcf)
```

Group the second and third cash flows. 

```{matlab}
CouponRate = [0.06; 0.05; 0.03];
Settle = '03-Jun-1999';
Maturity = ['15-Aug-2000';'15-Dec-2000';'15-Jun-2000'];
Period = [1; 2; 2];  Basis = [1; 0; 0];
[CFlowAmounts, CFlowDates] = cfamounts(...
CouponRate, Settle, Maturity, Period, Basis)

figure;
cfplot(CFlowDates, CFlowAmounts, 'Groups', {[2 3]}, 'ShowAmnt', 1);

fig2plotly(gcf)
```

Format the date axis and place ticks on actual cash flow dates. 

```{matlab}
CouponRate = [0.06; 0.05; 0.03];
Settle = '03-Jun-1999';
Maturity = ['15-Aug-2000';'15-Dec-2000';'15-Jun-2000'];
Period = [1; 2; 2];  Basis = [1; 0; 0];
[CFlowAmounts, CFlowDates] = cfamounts(...
CouponRate, Settle, Maturity, Period, Basis)

figure;
cfplot(CFlowDates, CFlowAmounts, 'Groups', {[2 3]}, 'ShowAmnt', 1, ...
'DateFormat', 6, 'DateSpacing', 100);

fig2plotly(gcf)
```

Stack the cash flow arrows occurring on the same dates. 

```{matlab}
CouponRate = [0.06; 0.05; 0.03];
Settle = '03-Jun-1999';
Maturity = ['15-Aug-2000';'15-Dec-2000';'15-Jun-2000'];
Period = [1; 2; 2];  Basis = [1; 0; 0];
[CFlowAmounts, CFlowDates] = cfamounts(...
CouponRate, Settle, Maturity, Period, Basis)

figure;
cfplot(CFlowDates, CFlowAmounts, 'Groups', {[2 3]}, 'ShowAmnt', 1, ...
'DateFormat', 6, 'DateSpacing', 100, 'Stacked', 1);

fig2plotly(gcf)
```

Form subplots of multiple groups and add titles using axes handles. 

```{matlab}
CouponRate = [0.06; 0.05; 0.03];
Settle = '03-Jun-1999';
Maturity = ['15-Aug-2000';'15-Dec-2000';'15-Jun-2000'];
Period = [1; 2; 2];  Basis = [1; 0; 0];
[CFlowAmounts, CFlowDates] = cfamounts(...
CouponRate, Settle, Maturity, Period, Basis)

figure;
[h, axes_handle] = cfplot(CFlowDates, CFlowAmounts, ...
'Groups', {[1] [2 3]}, 'ShowAmnt', 1, 'Stacked', 2, ...
'DateSpacing', [1 60 2 100], 'DateFormat', [1 12 2 6]);
title(axes_handle(1), 'Group 1', 'FontWeight', 'bold');
title(axes_handle(2), 'Group 2', 'FontWeight', 'bold');

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Cash Flows Using datetime Input for CFlowDates

Define `CFlowDates` using `datetime` input and plot the cash flow. 

```{matlab}
CouponRate = [0.06; 0.05; 0.03];
Settle = '03-Jun-1999';
Maturity = ['15-Aug-2000';'15-Dec-2000';'15-Jun-2000'];
Period = [1; 2; 2];  Basis = [1; 0; 0];
[CFlowAmounts, CFlowDates] = cfamounts(...
CouponRate, Settle, Maturity, Period, Basis);
cfplot(datetime(CFlowDates,'ConvertFrom','datenum','Locale','en_US'), CFlowAmounts, 'ShowAmnt', [1 2])

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Plot Cash Flows for Swap

Define the swap using the `swapbyzero` function. 

```{matlab}
Settle = datenum('08-Jun-2010');
RateSpec = intenvset('Rates', [.005 .0075 .01 .014 .02 .025 .03]',...
'StartDates',Settle, 'EndDates',{'08-Dec-2010','08-Jun-2011',...
'08-Jun-2012','08-Jun-2013','08-Jun-2015','08-Jun-2017',...
'08-Jun-2020'}');
Maturity = datenum('15-Sep-2020');
LegRate = [.025 50];
LegType = [1 0]; % fixed/floating
LatestFloatingRate = .005;
[Price, SwapRate, AI, RecCF, RecCFDates, PayCF,PayCFDates] = ...
swapbyzero(RateSpec, LegRate, Settle, Maturity,'LegType',LegType,...
'LatestFloatingRate',LatestFloatingRate)
```

Define `CFlowDates` and `CFlowAmounts` for the swap and generate a cash flow plot using `cfplot`. 

```{matlab}
CFlowDates = [PayCFDates;RecCFDates];
CFlowAmounts = [-PayCF;RecCF];
cfplot(CFlowDates, CFlowAmounts, 'Groups', {[1 2]});
xlabel('Numeric Cash Flow Dates');

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

