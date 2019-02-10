function y = first(f, h)
n = length(f);
y = zeros(1, n);
for k = 1 : n-1
    y(k) = (f(k+1) - f(k))/h;
end
end