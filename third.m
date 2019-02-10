function y = third(f, h)
n = length(f);
y = zeros(1, n);

for k = 1 : n-2
    y(k) = (4*f(k+1) - 3*f(k) - f(k+2))/ (2 * h);
end