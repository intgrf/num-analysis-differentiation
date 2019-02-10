function max_dev = max_deviation(f, g)
diff = abs(f - g);
max_dev = max(diff);
end