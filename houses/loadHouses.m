function [x, y] = loadHouses()

load houses.txt;
[m n] = size(houses);
a = ones(m, 1);
x = houses(:, 1);
x = [a x];
y = houses(:, 2);

