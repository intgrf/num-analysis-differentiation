function y = fourth(f, h)
n = length(f);
y = zeros(1, n);

for k = 2 : n-1
    y(k)= (f(k+1) - f(k-1))/(2*h);
end
end