---
description: How to make Bubblecloud Plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Bubblecloud Plots
display_as: basic
order: 21
permalink: matlab/bubblecloud/
thumnail_github: bubblecloud.png
layout: base
language: matlab
page_type: u-guide
---

## Create Bubble Cloud with Table Data

Create a table with three variables. For example, create a table that shows the number of mislabeled Halloween costumes in 10 states. Of the 10,000 princess kits sold, 1,000 had spooky monster labels by mistake. 

```{matlab}
n = [58 115 81 252 180 124 40 80 50 20]';
loc = ["NJ" "NY" "MA" "OH" "NH" "ME" "CT" "PA" "RI" "VT"]';
plant = ["Plant A" "Plant A" "Plant A" "Plant A" ...
       "Plant A" "Plant A" "Plant A" "Plant B" "Plant B" "Plant B"]';
tbl = table(n,loc,plant,'VariableNames',["Mislabeled" "State" "Manufacturing Plant"]);
```

Create a bubble cloud to visualize the mislabeled costumes by state.

```{matlab}
n = [58 115 81 252 180 124 40 80 50 20]';
loc = ["NJ" "NY" "MA" "OH" "NH" "ME" "CT" "PA" "RI" "VT"]';
plant = ["Plant A" "Plant A" "Plant A" "Plant A" ...
       "Plant A" "Plant A" "Plant A" "Plant B" "Plant B" "Plant B"]';
tbl = table(n,loc,plant,'VariableNames',["Mislabeled" "State" "Manufacturing Plant"]);

bubblecloud(tbl,"Mislabeled","State");

fig2plotly(gcf);
```
{% capture plot_207730621996 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_207730621996 index=207730621996 %}


Divide the bubbles into groups by specifying the `groupvar` argument. In this case, the groups are in the variable called `"Manufacturing Plant"`.

```{matlab}
n = [58 115 81 252 180 124 40 80 50 20]';
loc = ["NJ" "NY" "MA" "OH" "NH" "ME" "CT" "PA" "RI" "VT"]';
plant = ["Plant A" "Plant A" "Plant A" "Plant A" ...
       "Plant A" "Plant A" "Plant A" "Plant B" "Plant B" "Plant B"]';
tbl = table(n,loc,plant,'VariableNames',["Mislabeled" "State" "Manufacturing Plant"]);

bubblecloud(tbl,"Mislabeled","State","Manufacturing Plant");

fig2plotly(gcf);
```
{% capture plot_219283588182 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_219283588182 index=219283588182 %}




<!--------------------- EXAMPLE BREAK ------------------------->

## Create Bubble Cloud with Vector Data

Define `n` as a vector of bubble sizes with the numbers from a survey of favorite ice cream flavors. Define `flavs` as a string vector containing the flavor names. Then create a bubble cloud that shows the distribution of favorite ice cream flavors.

```{matlab}
n = [58 115 81 252 200 224 70 120 140];
flavs = ["Rum" "Pumpkin" "Mint" "Vanilla" "Chocolate" ...
    "Strawberry" "Twist" "Coffee" "Cookie"];
bubblecloud(n,flavs);

fig2plotly(gcf);
```
{% capture plot_325806262734 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_325806262734 index=325806262734 %}


Define `ages` as a categorical vector containing the age group that prefers each flavor. Specify the order of the categories by calling the `reordercats` function. Then create a new bubble cloud with the bubbles grouped by age, and return the `BubbleCloud` object as `b`. When you specify group data, the chart displays a legend by default. Add a title to the legend by setting the `LegendTitle` property of `b`.

```{matlab}
n = [58 115 81 252 200 224 70 120 140];
flavs = ["Rum" "Pumpkin" "Mint" "Vanilla" "Chocolate" ...
    "Strawberry" "Twist" "Coffee" "Cookie"];

ages = categorical(["40-90+" "5-15" "16-39" "40-90+" ...
   "5-15" "16-39" "5-15" "16-39" "40-90+"]);
ages = reordercats(ages,["5-15" "16-39" "40-90+"] );
b = bubblecloud(n,flavs,ages);
b.LegendTitle = 'Age Range';

fig2plotly(gcf);
```
{% capture plot_95949416608 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_95949416608 index=95949416608 %}


<!--------------------- EXAMPLE BREAK ------------------------->

## Customize Bubble Color

Load the `patients` data set, and create a bubble cloud of 20 patient weight measurements with the corresponding self-assessed health status values (`'poor'`, `'fair'`, `'good`', or `'excellent'`). Customize the color of the bubbles by specifying the `FaceColor` name-value argument. Return the `BubbleCloud` object as `b`, so you can set properties on the object later. 

```{matlab}
load patients
b = bubblecloud(Weight(1:20),SelfAssessedHealthStatus(1:20), ...
    'FaceColor',[0.3 0.6 0.4]);

fig2plotly(gcf);
```
{% capture plot_747533661738 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_747533661738 index=747533661738 %}


Group the bubbles according to whether the patients are smokers. When you group the data, a legend automatically appears in the figure. Specify a title for the legend. Then, retain the visibility of the bubble labels by increasing the size of the figure and setting the font size to `9` points.

```{matlab}
load patients
b = bubblecloud(Weight(1:20),SelfAssessedHealthStatus(1:20), ...
    'FaceColor',[0.3 0.6 0.4]);

b.GroupData = Smoker(1:20);
b.LegendTitle = "Smoker";
f = gcf;
f.Position([3 4]) = [655 395];
b.FontSize = 9;

fig2plotly(gcf);
```
{% capture plot_748508957393 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 982.5, "height": 592.5, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_748508957393 index=748508957393 %}


To visualize the groups with different colors, set the `FaceColor` property back to the default value of `'flat'`. To make the edges of the bubbles use those same colors, set the `EdgeColor` property to `'flat'`.

```{matlab}
load patients
b = bubblecloud(Weight(1:20),SelfAssessedHealthStatus(1:20), ...
    'FaceColor',[0.3 0.6 0.4]);

b.GroupData = Smoker(1:20);
b.LegendTitle = "Smoker";
f = gcf;
f.Position([3 4]) = [655 395];
b.FontSize = 9;

b.FaceColor = 'flat';
b.EdgeColor = 'flat';

fig2plotly(gcf);
```
{% capture plot_543299433085 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 982.5, "height": 592.5, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_543299433085 index=543299433085 %}


To customize the group colors, set the `ColorOrder` property to a matrix containing the RGB triplets for the new colors.

```{matlab}
load patients
b = bubblecloud(Weight(1:20),SelfAssessedHealthStatus(1:20), ...
    'FaceColor',[0.3 0.6 0.4]);

b.GroupData = Smoker(1:20);
b.LegendTitle = "Smoker";
f = gcf;
f.Position([3 4]) = [655 395];
b.FontSize = 9;

b.FaceColor = 'flat';
b.EdgeColor = 'flat';

b.ColorOrder = [0.3 0.6 0.4; 0.4 0.3 0.6];

fig2plotly(gcf);
```
{% capture plot_338132316524 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 982.5, "height": 592.5, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_338132316524 index=338132316524 %}



Alternatively, you can pass the `BubbleCloud` object to the `colororder` function to set this property. When you use this function, you can specify the colors as RGB triplets, hexadecimal color codes, or predefined color names. For example, specify the hexadecimal color codes for two colors.

```{matlab}
load patients
b = bubblecloud(Weight(1:20),SelfAssessedHealthStatus(1:20), ...
    'FaceColor',[0.3 0.6 0.4]);

b.GroupData = Smoker(1:20);
b.LegendTitle = "Smoker";
f = gcf;
f.Position([3 4]) = [655 395];
b.FontSize = 9;

b.FaceColor = 'flat';
b.EdgeColor = 'flat';

b.ColorOrder = [0.3 0.6 0.4; 0.4 0.3 0.6];

colororder(b,["#E6CC1A"; "#4D9966"]);

fig2plotly(gcf);
```
{% capture plot_832333661621 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 982.5, "height": 592.5, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_832333661621 index=832333661621 %}




<!--------------------- EXAMPLE BREAK ------------------------->

## Visualize Categorical Data with Bubble Cloud

Define `c` as a categorical array. Use the `histounts` function to bin the categorical data and return the bubble sizes and the labels. Then pass the bubble sizes and labels to the `bubblecloud` function. 

```{matlab}
c = categorical(["Pumpkin" "Princess" "Princess" "Princess" "Spooky Monster" ...
    "Spooky Monster" "Spooky Monster" "Spooky Monster" "Spooky Monster"]);
[sz,labels] = histcounts(c);
bubblecloud(sz,labels);

fig2plotly(gcf);
```
{% capture plot_552572178026 %}{% raw %}{"data": [], "layout": {"autosize": false, "margin": {"pad": 0, "l": 0, "r": 0, "b": 0, "t": 0}, "showlegend": false, "width": 840, "height": 630, "paper_bgcolor": "rgb(255,255,255)", "hovermode": "closest", "annotations": [{"showarrow": false, "xref": "paper", "yref": "paper"}]}, "frames": []}{% endraw %}{% endcapture %}{% include posts/ssim_frame.html raw_json_file=plot_552572178026 index=552572178026 %}



<!--------------------- EXAMPLE BREAK ------------------------->

