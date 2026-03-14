clear; clc; clf;
n = -5:5;
ur_n = n .* bool2s(n >= 0);
plot2d3(n, ur_n);

//Des
plot(n, ur_n, 'ro'); 
title("Exercise 4: Unit Ramp Signal ur(n)");
xlabel("Time index (n)");
ylabel("Amplitude");

//
a = gca();
a.data_bounds = [-5, 0; 5, 5.5]; 
xgrid(color('gray'));
