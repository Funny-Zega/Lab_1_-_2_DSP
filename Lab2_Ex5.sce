clear; clc; clf;

// --- BƯỚC 1: ĐỊNH NGHĨA TÍN HIỆU GỐC x(n) ---
n = -1:1;           
x = [1, 3, -2];     

// --- BƯỚC 2: TÌM TÍN HIỆU ĐẢO x(-n) ---
x_neg = [x(3), x(2), x(1)]; 

// --- BƯỚC 3: TÍNH TOÁN THÀNH PHẦN CHẴN VÀ LẺ ---
xe = 0.5 * (x + x_neg); 
xo = 0.5 * (x - x_neg); 

// --- CÀI ĐẶT CỬA SỔ TỔNG ---
f = gcf();
f.figure_size = [800, 900]; 

// --- BƯỚC 4: VẼ ĐỒ THỊ ---

// 1. Tín hiệu gốc x(n)
subplot(3, 1, 1);
plot2d3(n, x, style=2); 
h1 = gce(); h1.children.thickness = 3; 
plot(n, x, 'ro', 'markersize', 10);    

// HIỂN THỊ GIÁ TRỊ TÍN HIỆU x(n)
for i = 1:length(n)
    xstring(n(i), x(i) + 0.4, string(x(i)));
    txt = gce(); txt.font_size = 3; txt.font_foreground = 2; 
end

title('Original Signal x(n)', 'fontsize', 4);
xlabel('n', 'fontsize', 2); ylabel('Amplitude', 'fontsize', 2);
a1 = gca(); a1.data_bounds = [-1.5, -3; 1.5, 5]; // Nới rộng khung
xgrid(color('gray'));


// 2. Thành phần chẵn xe(n)
subplot(3, 1, 2);
plot2d3(n, xe, style=5); 
h2 = gce(); h2.children.thickness = 3;
plot(n, xe, 'bo', 'markersize', 10);   

// HIỂN THỊ GIÁ TRỊ TÍN HIỆU xe(n)
for i = 1:length(n)
    xstring(n(i), xe(i) + 0.4, string(xe(i)));
    txt = gce(); txt.font_size = 3; txt.font_foreground = 5; 
end

title('Even Component xe(n)', 'fontsize', 4);
xlabel('n', 'fontsize', 2); ylabel('Amplitude', 'fontsize', 2);
a2 = gca(); a2.data_bounds = [-1.5, -3; 1.5, 5];
xgrid(color('gray'));


// 3. Thành phần lẻ xo(n)
subplot(3, 1, 3);
plot2d3(n, xo, style=3); 
h3 = gce(); h3.children.thickness = 3;
plot(n, xo, 'go', 'markersize', 10);   

// HIỂN THỊ GIÁ TRỊ TÍN HIỆU xo(n)
for i = 1:length(n)
    xstring(n(i), xo(i) + 0.4, string(xo(i)));
    txt = gce(); txt.font_size = 3; txt.font_foreground = 3; 
end

title('Odd Component xo(n)', 'fontsize', 4);
xlabel('n', 'fontsize', 2); ylabel('Amplitude', 'fontsize', 2);
a3 = gca(); a3.data_bounds = [-1.5, -3; 1.5, 5 ];
xgrid(color('gray'));
