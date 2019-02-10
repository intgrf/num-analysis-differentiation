clc
clear

h = 0.01;
x = 0 : h : 10;
n = length(x);
y_sin = sin(x);

der = first(y_sin, h);
y_cos = cos(x);
x_plot = 0 : 0.01 : 10;
y_cos_plot = cos(x_plot);
% скорость сходимости 
max = max_deviation(der(1 : n-1), y_cos(1 : n-1));
alpha = log(max)/log(h)

plot(x(1 : n-1), der(1 : n-1), 'r', x_plot, y_cos_plot, 'b'); grid
title('I', 'Interpreter', 'latex', 'FontSize', 14)
text(8, 0.9, ['practice: $O(h^{' num2str(alpha) '})$'], 'Interpreter', 'latex', 'FontSize', 12);
text(8, 0.8, 'theory: $O(h)$', 'Interpreter', 'latex', 'FontSize', 12);
legend('approximation', 'original', 'Location', 'NorthEastOutside');
