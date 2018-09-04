function [x, y, x1, x2, y1, y2] = loadtestset();

load testset.txt;
x = testset(:,1:2);
y = testset(:, 3);
m =length(x);
a = ones(m,1);
x = [a x];
x1 = []; y1 = [];
x2 = []; y2 = [];
for i=1:m;
if y(i)==1;
x1 = [x1; x(i, 2)];
y1 = [y1; x(i, 3)];
else;
x2 = [x2; x(i, 2)];
y2 = [y2; x(i, 3)];
end;
end;




