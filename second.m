function y = second(f, h)
n = length(f);
y = zeros(1, n);
for k = 2 : n
    y(k) = (f(k) - f(k-1))/h;
end
end