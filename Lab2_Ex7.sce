clear; clc; clf;

// --- BƯỚC 1: ĐỊNH NGHĨA TRỤC n CHUNG ---
n = -1:3; 

// --- BƯỚC 2: KHAI BÁO TÍN HIỆU ĐÃ CĂN CHỈNH ---
x1 = [0, 0, 1, 3, -2]; // Thêm 0 vào vị trí n = -1
x2 = [0, 1, 2, 3, 0];  // Thêm 0 vào vị trí n = 3

// --- BƯỚC 3: NHÂN TỪNG PHẦN TỬ (Element-wise) ---
y = x1 .* x2;

// --- CÀI ĐẶT CỬA SỔ ĐỒ HỌA ---
f = gcf();
f.figure_size = [800, 950];

// --- BƯỚC 4: VẼ 3 ĐỒ THỊ ---

// 1. Vẽ x1(n)
subplot(3, 1, 1);
plot2d3(n, x1, style=2); h1 = gce(); h1.children.thickness = 3; 
plot(n, x1, 'ro', 'markersize', 10);    

// Hiển thị giá trị cho x1(n)
for i = 1:length(n)
    xstring(n(i), x1(i) + 0.8, string(x1(i)));
    txt = gce(); txt.font_size = 3; txt.font_foreground = 2; 
end

title('Signal x1(n) = {0, 1, 3, -2}', 'fontsize', 4);
xlabel('n'); ylabel('Amplitude');
a1 = gca(); a1.data_bounds = [-1.5, -3; 3.5, 11]; 
xgrid(color('gray'));


// 2. Vẽ x2(n)
subplot(3, 1, 2);
plot2d3(n, x2, style=5); h2 = gce(); h2.children.thickness = 3;
plot(n, x2, 'bo', 'markersize', 10);    

// Hiển thị giá trị cho x2(n)
for i = 1:length(n)
    xstring(n(i), x2(i) + 0.8, string(x2(i)));
    txt = gce(); txt.font_size = 3; txt.font_foreground = 5; 
end

title('Signal x2(n) = {0, 1, 2, 3}', 'fontsize', 4);
xlabel('n'); ylabel('Amplitude');
a2 = gca(); a2.data_bounds = [-1.5, -3; 3.5, 11]; 
xgrid(color('gray'));


// 3. Vẽ y(n) = x1(n) * x2(n)
subplot(3, 1, 3);
plot2d3(n, y, style=3); h3 = gce(); h3.children.thickness = 3;
plot(n, y, 'go', 'markersize', 10);    

// Hiển thị giá trị cho y(n)
for i = 1:length(n)
    xstring(n(i), y(i) + 0.8, string(y(i)));
    txt = gce(); txt.font_size = 3; txt.font_foreground = 3; 
end

title('Result y(n) = x1(n) * x2(n)', 'fontsize', 4);
xlabel('n'); ylabel('Amplitude');
a3 = gca(); a3.data_bounds = [-1.5, -3; 3.5, 11]; 
xgrid(color('gray'));
