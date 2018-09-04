%为输入层添加偏置项
X = [ones(m,1) X];

%前向传播
z_2 = X*Theta1'; %m*25
a_2 = sigmoid(X*Theta1'); %m*25
a_2_new = [ones(m,1) a_2]; %为隐藏层添加偏置单元，m*26
h_x = sigmoid(a_2_new*Theta2');%m*10

%将y提供的1-10数字转化为神经网络输出的向量形式
Vec_y = zeros(m,num_labels);
for i = 1:m
    Vec_y(i,y(i)) = 1;
end

%normal cost function（无正则化的代价函数）
J = -1/m*sum(sum(Vec_y.*log(h_x)+(1-Vec_y).*log(1-h_x))); 

%regularized cost function（带有正则化的代价函数）
J = -1/m*sum(sum(Vec_y.*log(h_x)+(1-Vec_y).*log(1-h_x)))+lambda/2/m*(sum(sum(Theta1(:,2:end).^2))+sum(sum(Theta2(:,2:end).^2)));