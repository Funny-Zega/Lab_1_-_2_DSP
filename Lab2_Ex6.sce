clear; clc; clf;

// --- BƯỚC 1: ĐỊNH NGHĨA TRỤC n CHUNG ---
n = -1:3; 

// --- BƯỚC 2: CĂN CHỈNH TÍN HIỆU (Zero-padding) ---
x1 = [0, 0, 1, 3, -2]; 
x2 = [0, 1, 2, 3, 0]; 

// --- BƯỚC 3: TÍNH TỔNG ---
y = x1 + x2;

// --- CÀI ĐẶT CỬA SỔ ĐỒ HỌA ---
f = gcf();
f.figure_size = [800, 900];

// --- BƯỚC 4: VẼ 3 ĐỒ THỊ ---

// 1. Vẽ x1(n)
subplot(3, 1, 1);
plot2d3(n, x1, style=2); h1 = gce(); h1.children.thickness = 3;
plot(n, x1, 'ro', 'markersize', 10);

// Hiển thị giá trị cho x1(n)
for i = 1:length(n)
    xstring(n(i), x1(i) + 0.5, string(x1(i))); 
    txt = gce(); txt.font_size = 3; txt.font_foreground = 2;
end

title('Signal x1(n) = {0, 1, 3, -2}', 'fontsize', 4);
xlabel('n'); ylabel('Amplitude');
xgrid(color('gray'));
a1 = gca(); a1.data_bounds = [-1.5, -3; 3.5, 7]; 


// 2. Vẽ x2(n)
subplot(3, 1, 2);
plot2d3(n, x2, style=5); h2 = gce(); h2.children.thickness = 3;
plot(n, x2, 'bo', 'markersize', 10);

// Hiển thị giá trị cho x2(n)
for i = 1:length(n)
    xstring(n(i), x2(i) + 0.5, string(x2(i)));
    txt = gce(); txt.font_size = 3; txt.font_foreground = 5; 
end

title('Signal x2(n) = {0, 1, 2, 3}', 'fontsize', 4);
xlabel('n'); ylabel('Amplitude');
xgrid(color('gray'));
a2 = gca(); a2.data_bounds = [-1.5, -3; 3.5, 7];


// 3. Vẽ y(n) = x1(n) + x2(n)
subplot(3, 1, 3);
plot2d3(n, y, style=3); h3 = gce(); h3.children.thickness = 3;
plot(n, y, 'go', 'markersize', 10);

// Hiển thị giá trị cho y(n)
for i = 1:length(n)
    xstring(n(i), y(i) + 0.5, string(y(i)));
    txt = gce(); txt.font_size = 3; txt.font_foreground = 3; 
end

title('Result y(n) = x1(n) + x2(n)', 'fontsize', 4);
xlabel('n'); ylabel('Amplitude');
xgrid(color('gray'));
a3 = gca(); a3.data_bounds = [-1.5, -3; 3.5, 7];
