clc; clear; clf; 

// ================================================================
// ANALOG SIGNAL xa(t) = 3*sin(100*pi*t)
// ================================================================
Fa = 50;              
Ta = 1 / Fa;          
t_5_periods = 5 * Ta; 
t_analog = linspace(0, t_5_periods, 1000);
xa_t = 3 * sin(100 * %pi * t_analog);

subplot(3, 1, 1);
plot(t_analog, xa_t, 'b', 'thickness', 2);
title("Analog Signal xa(t) = 3.sin(100πt) [5 periods]");
xlabel("Time t (s)"); ylabel("Amplitude");
xgrid(color('gray'));

// --- ĐÓNG KHUNG TRỤC ANALOG ---
ax1 = gca();
ax1.data_bounds = [0, -4 ; t_5_periods, 4]; // Ép X từ 0->t_5_periods, Y từ -4->4

// ================================================================
// BƯỚC 1: DISCRETE-TIME SIGNAL x(n) VỚI Fs = 300
// ================================================================
Fs = 300;
N_period = 6;               
n = 0 : (5 * N_period - 1); 
x_n = 3 * sin(%pi * n / 3);

subplot(3, 1, 2);
plot2d3(n, x_n, style=2); 
plot(n, x_n, 'r.'); 
for i = 1 : length(n)
    val = x_n(i);
    dy = 0.25 * bool2s(val >= 0) - 0.42 * bool2s(val < 0);
    xstring(n(i) - 0.35, val + dy, msprintf("%.3f", val));
    
    tx = gce();
    tx.foreground = color(180, 0, 0); 
end

title(msprintf("Discrete Signal x(n) = 3.sin(πn/3), Fs=300 (Period N=6) [5 periods]"));
xlabel("n (samples)"); ylabel("Amplitude");
xgrid(color('gray'));

// --- ĐÓNG KHUNG TRỤC DISCRETE ---
ax2 = gca();
ax2.data_bounds = [-0.5, -4 ; length(n) - 0.5, 4]; 

// ================================================================
// BƯỚC 2: QUANTIZED SIGNAL xq(n) BẰNG TRUNCATION METHOD
// ================================================================
delta = 0.1; 
xq_n = fix(x_n / delta) * delta; 

subplot(3, 1, 3);
plot2d3(n, xq_n, style=3);
plot(n, xq_n, 'g.'); 

for i = 1 : length(n)
    val = xq_n(i);
    dy = 0.22 * bool2s(val >= 0) - 0.38 * bool2s(val < 0);
    xstring(n(i) - 0.25, val + dy, msprintf("%.1f", val));
    
    tx = gce();
    tx.foreground = color(0, 130, 0);
end

title("Quantized Signal xq(n) using Truncated Method (Δ=0.1) [5 periods]");
xlabel("n (samples)"); ylabel("Amplitude");
xgrid(color('gray'));

// --- ĐÓNG KHUNG TRỤC QUANTIZED ---
ax3 = gca();
ax3.data_bounds = [-0.5, -4 ; length(n) - 0.5, 4];

// ================================================================
// BƯỚC 3: ĐỒNG BỘ FONT CHỮ TOÀN BỘ ĐỒ THỊ
// ================================================================
h = gcf(); 
h.children.font_size = 2; 
h.children.font_style = 2; 
