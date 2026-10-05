clc; clear;

M = 8; N = 5;
F = randi([0,20], M, N);   % матрица случайных чисел
disp('Исходная матрица F:');
disp(F);

% "Разворачиваем" матрицу в вектор по порядку обхода
vecF = F(:)';

% Находим первый максимум и минимум
[maxVal, idxMax] = max(vecF);
[minVal, idxMin] = min(vecF);

% Определяем диапазон между ними
startIdx = min(idxMax, idxMin);
endIdx   = max(idxMax, idxMin);

% Замена элементов на 1
count = 0;
for i = startIdx+1 : endIdx-1
    vecF(i) = 1;
    count = count + 1;
end

% Обратно в матрицу
F_res = reshape(vecF, M, N);

disp('Результирующая матрица F:');
disp(F_res);
fprintf('Количество заменённых элементов: %d\n', count);