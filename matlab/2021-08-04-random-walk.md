---
description: How to make Random Walk Plots in MATLAB<sup>&reg;</sup> with Plotly.
name: Random Walk
display_as: advanced
order: 2
permalink: matlab/random-walk/
thumnail_github: thumbnail/static-image
layout: base
language: matlab
page_type: u-guide
---

A random walk can be thought of as a random process in which a token or a marker is randomly moved around some space, that is, a space with a metric used to compute distance. In the visualizations below, we will be using scatter plots as well as a colorscale to denote the time sequence of the walk.


## Random Walk in 1D

The jitter in the data points along the x and y axes are meant to illuminate where the points are being drawn and what the tendency of the random walk is.


```{matlab}
N = 500 ; % number of steps
X = 6 ;  % number of dimensions

% positions, starting at (0,0,...,0)
P = cumsum(full(sparse(1:N, randi(X,1,N), [0 2*randi([0 1],1,N-1)-1], N, X))) ; 

figure ;
hold on ;
for k=1:size(P,2),
   plot(1:size(P,1),P(:,k),'.-') ;
   text(size(P,1),P(end, k), sprintf(' dim %d',k)) ;
end

xlabel('Step') ;
ylabel('Position') ;
hold off ;

fig2plotly(gcf)
```

<!--------------------- EXAMPLE BREAK ------------------------->

## Random Walk in 2D


```{matlab}
clc;
clearvars;
N = 100; % Length of the x-axis, also known as the length of the random walks.
M = 400; % The amount of random walks.
x_t(1) = 0;
y_t(1) = 0;

for m=1:M
  for n = 1:N % Looping all values of N into x_t(n).
    A = sign(randn); % Generates either +1/-1 depending on the SIGN of RAND.
    x_t(n+1) = x_t(n) + A;
    A = sign(randn); % Generates either +1/-1 depending on the SIGN of RAND.
    y_t(n+1) = y_t(n) + A;
  end
  plot(x_t, y_t);
  hold on
end

grid on;
% Enlarge figure to full screen.
set(gcf, 'Units', 'Normalized', 'Outerposition', [0, 0.05, 1, 0.95]);
axis square;

fig2plotly(gcf)
```


<!--------------------- EXAMPLE BREAK ------------------------->