clc
clear
max_n = 8;
for n = 6 : max_n
   k = 1;
   max_dev = zeros(1, length(10^(-n) : -10^(-n-1) : 10^(-n-1)));
   h_val = zeros(1, length(10^(-n) : -10^(-n-1) : 10^(-n-1)));
   for h = 10^(-n) : -10^(-n-1) : 10^(-n-1)
       x = 1 : h : 1.01;
       y_sin = sin(x);
       len = length(x);
       %der = fourth(y_sin, h);
       der = second(y_sin, h);
       y_cos = cos(x);
       %max_dev(k) = max_deviation(y_cos(2 : len-1) , der(2 : len-1));
       max_dev(k) = max_deviation(y_cos(2 : len), der(2 : len));
       h_val(k) = h;
       k = k + 1;
   end
   plot(h_val, max_dev, 'r'); hold on; grid on
end

