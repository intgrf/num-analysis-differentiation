clc
clear

h = 0.1;
x = 0 : h : 10;
n = length(x);
y_sin = sin(x);

der = third(y_sin, h);

y_cos = cos(x);

% скорость сходимости 
max = max_deviation(der(1 : n-2), y_cos(1 : n-2));
alpha = log(max)/log(h);
plot(x(1 : n-2), der(1 : n-2), 'r', x, y_cos, 'b'); grid
title('III', 'Interpreter', 'latex', 'FontSize', 14)
text(8, 0.9, ['practice: $O(h^{' num2str(alpha) '})$'], 'Interpreter', 'latex', 'FontSize', 12);
text(8, 0.75, 'theory: $O(h^2)$', 'Interpreter', 'latex', 'FontSize', 12);
legend('approximation', 'original', 'Location', 'NorthEastOutside');

