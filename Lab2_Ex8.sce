clear; clc; clf;

// --- ĐỊNH NGHĨA TÍN HIỆU GỐC ---
n_x = -2:1;
x = [1, -2, 3, 6];

// --- HÀM HỖ TRỢ VẼ ---
function draw_pair(win_num, n1, x1, title1, n2, x2, title2)
    scf(win_num); 
    f = gcf(); f.figure_size = [800, 700];
    
    min_n = min([n1, n2]) - 1;
    max_n = max([n1, n2]) + 1;
    min_x = min([x1, x2]) - 2;
    max_x = max([x1, x2]) + 4; 
    
    // Hình trên: Tín hiệu gốc
    subplot(2, 1, 1);
    plot2d3(n1, x1, style=2); 
    e = gce(); e.children.thickness = 3;
    plot(n1, x1, 'ro', 'markersize', 10);

    // Hiển thị giá trị cho tín hiệu 1
    for i = 1:length(n1)
        xstring(n1(i), x1(i) + 0.8, string(x1(i))); 
        txt = gce(); txt.font_size = 3; txt.font_foreground = 2; 
    end

    title(title1, 'fontsize', 4);
    xlabel('n'); ylabel('Amplitude');
    xgrid(color('gray'));
    a1 = gca(); a1.data_bounds = [min_n, min_x; max_n, max_x];

    // Hình dưới: Tín hiệu đã biến đổi
    subplot(2, 1, 2);
    plot2d3(n2, x2, style=5); 
    e = gce(); e.children.thickness = 3;
    plot(n2, x2, 'bo', 'markersize', 10);
    
    // Hiển thị giá trị cho tín hiệu 2
    for i = 1:length(n2)
        xstring(n2(i), x2(i) + 0.8, string(x2(i))); 
        txt = gce(); txt.font_size = 3; txt.font_foreground = 5; 
    end

    title(title2, 'fontsize', 4);
    xlabel('n'); ylabel('Amplitude');
    xgrid(color('gray'));
    a2 = gca(); a2.data_bounds = [min_n, min_x; max_n, max_x];
endfunction

// --- THỰC HIỆN CÁC CÂU a, b, c ---
// Câu a: y1(n) = x(-n)
n_a = -1:2;
y1 = [6, 3, -2, 1];
draw_pair(0, n_x, x, 'Original x(n)', n_a, y1, 'a. Time Reversal y1(n) = x(-n)');

// Câu b: y2(n) = x(n+3)
n_b = -5:-2;
y2 = x;
draw_pair(1, n_x, x, 'Original x(n)', n_b, y2, 'b. Time Shift y2(n) = x(n+3)');

// Câu c: y3(n) = 2x(-n-2)
n_c = -3:0;
y3 = [12, 6, -4, 2];
draw_pair(2, n_x, x, 'Original x(n)', n_c, y3, 'c. Composite y3(n) = 2x(-n-2)');
