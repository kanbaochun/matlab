function S = sigmoid(x)
[m n] = size(x);
for i=1:m;
	for j=1:n;
		S(i,j) = 1/(1 + exp(-x(i,j)));
	end;
end;

