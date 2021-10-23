load accidents
x = hwydata(:,14); %Population of states
y = hwydata(:,4); %Accidents per state

X = [ones(length(x),1) x];
b = X\y;

yCalc2 = X*b;
plot(x,yCalc2,'--');
legend({'Data'},'Location','best');

hold on
plot(x,y,'o');

fig2plotly(gcf);