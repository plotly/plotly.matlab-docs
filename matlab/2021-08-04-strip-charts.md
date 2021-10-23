---
description: How to make Strip Plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Strip Plots
display_as: statistical
order: 14
permalink: matlab/strip-charts/
thumnail_github: strip-charts.png
layout: base
language: matlab
page_type: u-guide
---

## Strip Plot of Frequency-Modulated Sinusoid

Plot two seconds of a frequency-modulated sinusoid in 0.25-second strips. Specify a sample rate of 1 kHz.

```{matlab}
fs = 1000;
t = 0:1/fs:2;
x = vco(sin(2*pi*t),[10 490],fs);

strips(x,0.25,fs)

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Strip Plot of Speech Signal

Load a speech signal sampled at Fs=7418Hz. The file contains the recording of a female voice saying the word "MATLAB®."

Plot the signal in 0.18-second long strips. Scale the vertical axes to 125%.

```{matlab}
load mtlb

strips(mtlb,0.18,Fs,1.25)

fig2plotly(gcf);
```

<!--------------------- EXAMPLE BREAK ------------------------->

