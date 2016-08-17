%%
% This is an example of how to create an line plot with legend in MATLAB&#174;.
% 
% Read about the <http://www.mathworks.com/help/matlab/ref/plot.html |plot|> function in the MATLAB documentation.
%
% For more examples, go to <http://www.mathworks.com/discovery/gallery.html MATLAB Plot Gallery>
%
% Copyright 2012-2014 The MathWorks, Inc.

% Load data for the stock indices
load BAL time values names

% Plot the stock index values versus time



%figure
%plot(time, values,'LineWidth',3)


% Use dateticks for the x axis

figure
semilogx(time,values,'LineWidth',3)     
grid on



% Add title and axis labels
xlabel('Time (seconds)')
ylabel('Relative decrease in RMS error')

hold on;
xlim=get(gca,'Xlim'); % 获取当前图形的纵轴的范围
plot(xlim,[0.1,0.1],'k--','LineWidth',1.8); % 绘制x=4的直线
plot(xlim,[0.01,0.01],'k--','LineWidth',1.8); % 绘制x=4的直线
hold off;



% Add a legend in the top, left corner
legend(names)
