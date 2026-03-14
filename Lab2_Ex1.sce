clear; clc ;clf
/////////////////////////////////////////////////////////////////
//a
//plot2d3(0:5, [0,2,3,4,5,6]);
/////////////////////////////////////////////////////////////////
//b và c
/*
A= [5,2,9,1];
disp(A);

Min_Number = min(A);
disp(Min_Number);

Max_Number = max(A);
disp(Max_Number);
*/
/////////////////////////////////////////////////////////////////
//d-e-f-g

clear; clc; clf;
x = linspace(0, 2*%pi, 100);
// Ô SỐ 1: Góc trên bên trái
subplot(2, 2, 1); 
plot(x, sin(x), 'r'); 
title('Ô số 1: Hàm Sin');
xlabel('Trục góc x (radian)'); 
ylabel('Biên độ sin(x)');      

// Ô SỐ 2: Góc trên bên phải
subplot(2, 2, 2); 
plot(x, cos(x), 'b'); 
title('Ô số 2: Hàm Cos');
xlabel('Trục góc x (radian)'); 
ylabel('Biên độ cos(x)');


// Ô SỐ 3: Góc dưới bên trái
subplot(2, 2, 3); 
plot(x, x, 'g'); 
title('Ô số 3: Đường thẳng y = x');
xlabel('Giá trị đầu vào x');
ylabel('Giá trị đầu ra y');

// Ô SỐ 4: Góc dưới bên phải
subplot(2, 2, 4); 
plot(x, x.^2, 'm'); 
title('Ô số 4: Parabol y = x^2');
xlabel('Giá trị đầu vào x');   
ylabel('Giá trị bình phương'); 

/////////////////////////////////////////////////////////////////
//h + i 
/*
clear; clc;
deff('[u] = unit_step(n)', 'u = bool2s(n >= 0)');
n = -3:3; 
kq = unit_step(n);
disp("Với trục n là:");
disp(n);
disp("Kết quả của hàm unit_step(n) là:");
disp();
*/ 
/////////////////////////////////////////////////////////////////















