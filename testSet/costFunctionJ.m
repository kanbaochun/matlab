function [J t] = costFunctionJ(x, y)

[m n] = size(x); 
alpha = 0.01;
theta = zeros(n,1);                                                                  
for i=1:5000,
sq = 1/m * x' * (sigmoid(x * theta) - y);
theta = theta - alpha * sq;
end;
t = theta;

J = sum((sigmoid(x * theta) - y).^2)/(2*m);