function [J grad] = nnCostFunction(x, y)

%设置神经网络2*4*2
s = sec(1:1:22); 
theta1 = reshape(s(1:12), 4, 3);
theta2 = reshape(s(13:22), 2, 5);
m = size(x, 1);
lambda = 0;

%初始化代价函数
J = 0;
labelSize = 2;
theta1_grad = zeros(size(theta1));
theta2_grad = zeros(size(theta2));

%计算costFunction
x = [ones(m, 1), x];
s = 0;
for i=1:m,
	yt = zeros(labelSize, 1);
	yt(y(i)) = 1;
	z2 = theta1*x(i,:)';
	a2 = sigmoid(z2);
	a2 = [1;a2];
	z3 = theta2*a2;
	a3 = sigmoid(z3);
	temp = -yt.*log(a3) - (ones(labelSize, 1) - yt).*log(ones(labelSize, 1) - a3);
s = s + sum(temp);
end;
J = s/m;

 temp1 = theta1;
 temp1(:,1) = 0;
 temp2 = theta2;
 temp2(:,1) = 0;
 
 T1 = temp1.^2;
 T2 = temp2.^2;
 s2 = (0.5*lambda*(sum(T1(:)) + sum(T2(:))))/m;
 J = J + s2;

 
%梯度下降
s = 0;
TG1 = 0; TG2 = 0;
for i=1:m;
	yt = zeros(labelSize, 1);
	yt(y(i)) = 1;
	z2 = theta1*x(i,:)';
	a2 = sigmoid(z2);
	a2 = [1;a2];
	z3 = theta2*a2;
	a3 = sigmoid(z3);
	delta3 = a3 - yt;
	delta2 = (theta2(:,2:end))'*delta3.*sigmoidGradient(z2);
	TG1 = TG1 + delta2*x(i,:);
	TG2 = TG2 + delta3*a2';
	end;
theta1_grad = TG1/m;
theta2_grad = TG2/m;
temp1 = theta1;temp2 = theta2;
temp1(:,1) = 0;temp2(:,1) = 0;
theta1_grad = theta1_grad + lambda*temp1/m;
theta2_grad = theta2_grad + lambda*temp2/m;
grad = [theta1_grad(:) ; theta2_grad(:)];
end;






	 