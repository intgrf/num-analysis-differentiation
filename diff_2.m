clc
clear

h = 0.1;
x = 0 : h : 10;
n = length(x);
y_sin = sin(x);

der = second(y_sin, h);

y_cos = cos(x);

% скорость сходимости 
max = max_deviation(der(2 : n), y_cos(2 : n));
alpha = log(max)/log(h);
plot(x(2 : n), der(2 : n), 'r', x, y_cos, 'b'); grid
title('II', 'Interpreter', 'latex', 'FontSize', 14)
text(8, 0.9, ['practice: $O(h^{' num2str(alpha) '})$'], 'Interpreter', 'latex', 'FontSize', 12);
text(8, 0.8, 'theory: $O(h)$', 'Interpreter', 'latex', 'FontSize', 12);
legend('approximation', 'original', 'Location', 'NorthEastOutside');

